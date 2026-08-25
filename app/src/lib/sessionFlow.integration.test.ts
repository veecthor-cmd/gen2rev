/**
 * Integration test for QA_REQUIREMENTS.md §1's named highest-value test: guest session creation
 * → progress write → account claim → progress preserved (per BACKEND_REQUIREMENTS.md §2's
 * "additive, never destructive" requirement). Runs against the in-memory FakeSupabase
 * (testUtils/fakeSupabase.ts) rather than a real project — see MEMORY.md 2026-08-25 for why
 * (creating a Supabase test branch is a billable action, not taken without sign-off).
 *
 * This exercises real orchestration logic in lib/useSession.ts and lib/game.ts, not just pure
 * functions — including the exact self-heal path added 2026-08-18 after a real production bug
 * (a returning guest whose World 1 row went missing saw every world permanently locked).
 */
import { beforeEach, describe, expect, it, vi } from 'vitest'
import type { FakeSupabase } from './testUtils/fakeSupabase'

// vi.mock factories are hoisted above all imports, so the fake is constructed inside the (async)
// factory itself rather than referencing an outer variable — the standard pattern for avoiding a
// temporal-dead-zone error here. Re-importing './supabase' afterward returns the same mocked
// instance the app modules below will also receive, since the module cache is shared.
vi.mock('./supabase', async () => {
  const { FakeSupabase } = await import('./testUtils/fakeSupabase')
  return { supabase: new FakeSupabase() }
})

const { supabase } = await import('./supabase')
const fake = supabase as unknown as FakeSupabase
const { ensureWorldOneUnlocked } = await import('./useSession')
const { claimAccount } = await import('./game')

const WORLD_1 = { id: 'world-genesis', book_slug: 'genesis', sequence_order: 1, title: 'Genesis' }
const PLAYER_ID = 'player-abc'

beforeEach(() => {
  fake.reset()
  fake.seed('world', [WORLD_1])
})

describe('ensureWorldOneUnlocked (guest session creation -> progress write)', () => {
  it('unlocks World 1 for a brand-new player with no progress row yet', async () => {
    await ensureWorldOneUnlocked(PLAYER_ID)

    const progress = fake.peek('world_progress')
    expect(progress).toEqual([{ player_id: PLAYER_ID, world_id: WORLD_1.id, status: 'in_progress' }])
  })

  it('does not duplicate the row for a returning player who already has one', async () => {
    fake.seed('world_progress', [
      { player_id: PLAYER_ID, world_id: WORLD_1.id, status: 'complete', current_index: 10 },
    ])

    await ensureWorldOneUnlocked(PLAYER_ID)

    const progress = fake.peek('world_progress')
    expect(progress).toHaveLength(1)
    // Existing progress (status/current_index) must survive untouched, not get reset to 'in_progress'.
    expect(progress[0]).toMatchObject({ status: 'complete', current_index: 10 })
  })

  it('self-heals a returning player whose World 1 row went missing (the real 2026-08-18 bug)', async () => {
    // This player has progress on a *later* world but no row at all for World 1 — the exact
    // shape of the production incident (a cleanup delete wiped World 1's row only).
    fake.seed('world_progress', [
      { player_id: PLAYER_ID, world_id: 'world-exodus', status: 'in_progress' },
    ])

    await ensureWorldOneUnlocked(PLAYER_ID)

    const progress = fake.peek('world_progress')
    expect(progress).toContainEqual({ player_id: PLAYER_ID, world_id: WORLD_1.id, status: 'in_progress' })
    // The other world's row must be untouched, not clobbered by the self-heal.
    expect(progress).toContainEqual({ player_id: PLAYER_ID, world_id: 'world-exodus', status: 'in_progress' })
  })
})

describe('claimAccount (account claim -> progress preserved)', () => {
  beforeEach(() => {
    fake.seed('player', [{ id: PLAYER_ID, auth_type: 'guest', claimed_at: null }])
    fake.seed('world_progress', [
      { player_id: PLAYER_ID, world_id: WORLD_1.id, status: 'complete', current_index: 10, attempt_count: 1 },
      { player_id: PLAYER_ID, world_id: 'world-exodus', status: 'in_progress', current_index: 3, attempt_count: 0 },
    ])
    fake.seed('points', [{ player_id: PLAYER_ID, total_points: 240 }])
    fake.seed('streak', [{ player_id: PLAYER_ID, current_streak: 5, longest_streak: 8 }])
  })

  it('marks the player claimed and leaves every progress/points/streak row completely untouched', async () => {
    fake.setUpdateUserResult({
      data: { user: { id: PLAYER_ID, email: 'kachi@example.com', email_confirmed_at: '2026-08-25T00:00:00Z' } },
      error: null,
    })

    const beforeProgress = fake.peek('world_progress')
    const beforePoints = fake.peek('points')
    const beforeStreak = fake.peek('streak')

    const result = await claimAccount(PLAYER_ID, 'kachi@example.com', 'hunter2!')

    expect(result).toEqual({ needsEmailConfirmation: false })
    const player = fake.peek('player')[0]
    expect(player.auth_type).toBe('claimed')
    expect(player.claimed_at).not.toBeNull()

    // The core regression guard this test exists for: claiming an account must never touch
    // world_progress, points, or streak — identity continuity, not row migration, is what
    // preserves progress (per BACKEND_REQUIREMENTS.md §2's "additive, never destructive" rule).
    expect(fake.peek('world_progress')).toEqual(beforeProgress)
    expect(fake.peek('points')).toEqual(beforePoints)
    expect(fake.peek('streak')).toEqual(beforeStreak)
  })

  it('reports needsEmailConfirmation when the new email is not yet confirmed', async () => {
    fake.setUpdateUserResult({
      data: { user: { id: PLAYER_ID, email: 'kachi@example.com', email_confirmed_at: null } },
      error: null,
    })

    const result = await claimAccount(PLAYER_ID, 'kachi@example.com', 'hunter2!')
    expect(result).toEqual({ needsEmailConfirmation: true })
  })

  it('fails atomically: an auth error leaves the player row as an unclaimed guest, not partially updated', async () => {
    fake.setUpdateUserResult({ data: { user: null }, error: new Error('email rate limit exceeded') })

    await expect(claimAccount(PLAYER_ID, 'kachi@example.com', 'hunter2!')).rejects.toThrow('email rate limit exceeded')

    const player = fake.peek('player')[0]
    expect(player.auth_type).toBe('guest')
    expect(player.claimed_at).toBeNull()
  })
})
