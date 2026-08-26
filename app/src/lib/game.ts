import { supabase } from './supabase'
import type { Challenge, DifficultyMode, Player, PersistedResult, VaultEntryWithChallenge, World, WorldProgress, WorldStatus } from './types'

export interface WorldWithProgress extends World {
  status: WorldStatus
}

export async function getWorldsWithProgress(playerId: string): Promise<WorldWithProgress[]> {
  const [{ data: worlds, error: worldsError }, { data: progress, error: progressError }] =
    await Promise.all([
      supabase.from('world').select('*').order('sequence_order', { ascending: true }),
      supabase.from('world_progress').select('*').eq('player_id', playerId),
    ])

  if (worldsError) throw worldsError
  if (progressError) throw progressError

  const progressByWorld = new Map<string, WorldProgress>(
    (progress ?? []).map((p) => [p.world_id, p]),
  )

  return (worlds ?? []).map((w) => ({
    ...w,
    status: progressByWorld.get(w.id)?.status ?? 'locked',
  }))
}

export async function getWorldCount(): Promise<number> {
  const { count, error } = await supabase.from('world').select('id', { count: 'exact', head: true })
  if (error) throw error
  return count ?? 0
}

export async function getWorldBySlug(bookSlug: string): Promise<World | null> {
  const { data, error } = await supabase
    .from('world')
    .select('*')
    .eq('book_slug', bookSlug)
    .maybeSingle()
  if (error) throw error
  return data
}

export interface ChallengesResult {
  challenges: Challenge[]
  /** True if `tier` had no content for this world yet and medium content was served instead. */
  usedFallback: boolean
}

/**
 * Fetches a world's challenges at the player's chosen difficulty. Easy/hard
 * content is authored per-book over time (each tier needs its own
 * theological-review + verbatim-QA pass before it can ship, same as every
 * other item in this game) — until a given world has content at the
 * requested tier, this falls back to medium (the original, fully-reviewed
 * default) rather than dead-ending the player with an empty world.
 */
export async function getChallenges(worldId: string, tier: DifficultyMode = 'medium'): Promise<ChallengesResult> {
  const { data, error } = await supabase
    .from('challenge')
    .select('*')
    .eq('world_id', worldId)
    .eq('difficulty_tier', tier)
    .order('sort_order', { ascending: true })
  if (error) throw error

  if ((data?.length ?? 0) > 0 || tier === 'medium') {
    return { challenges: data ?? [], usedFallback: false }
  }

  const { data: fallback, error: fallbackError } = await supabase
    .from('challenge')
    .select('*')
    .eq('world_id', worldId)
    .eq('difficulty_tier', 'medium')
    .order('sort_order', { ascending: true })
  if (fallbackError) throw fallbackError
  return { challenges: fallback ?? [], usedFallback: true }
}

export async function getChallengeCount(worldId: string, tier: DifficultyMode = 'medium'): Promise<number> {
  const { count, error } = await supabase
    .from('challenge')
    .select('id', { count: 'exact', head: true })
    .eq('world_id', worldId)
    .eq('difficulty_tier', tier)
  if (error) throw error
  if (count && count > 0) return count
  if (tier === 'medium') return 0

  const { count: fallbackCount, error: fallbackError } = await supabase
    .from('challenge')
    .select('id', { count: 'exact', head: true })
    .eq('world_id', worldId)
    .eq('difficulty_tier', 'medium')
  if (fallbackError) throw fallbackError
  return fallbackCount ?? 0
}

export async function setDifficultyMode(playerId: string, mode: DifficultyMode): Promise<void> {
  await supabase.from('player').update({ difficulty_mode: mode }).eq('id', playerId)
}

export async function getWorldProgress(playerId: string, worldId: string): Promise<WorldProgress | null> {
  const { data, error } = await supabase
    .from('world_progress')
    .select('*')
    .eq('player_id', playerId)
    .eq('world_id', worldId)
    .maybeSingle()
  if (error) throw error
  return data
}

/** Persisted after every answer so a player who leaves mid-world resumes exactly where they left off. */
export async function saveWorldProgress(
  playerId: string,
  worldId: string,
  currentIndex: number,
  sessionResults: PersistedResult[],
): Promise<void> {
  await supabase
    .from('world_progress')
    .update({ current_index: currentIndex, session_results: sessionResults })
    .eq('player_id', playerId)
    .eq('world_id', worldId)
}

/** Called before starting a genuinely new attempt (Retake) so the stale position from the last attempt doesn't leak into it. */
export async function resetWorldProgress(playerId: string, worldId: string): Promise<void> {
  await supabase
    .from('world_progress')
    .update({ current_index: 0, session_results: [] })
    .eq('player_id', playerId)
    .eq('world_id', worldId)
}

export async function recordAttempt(playerId: string, challengeId: string, isCorrect: boolean) {
  await supabase
    .from('challenge_attempt')
    .insert({ player_id: playerId, challenge_id: challengeId, is_correct: isCorrect })
}

/**
 * Called once when a full run of a world's challenge set finishes (right or
 * wrong), before completeWorld — separate from it because a run that isn't
 * perfect doesn't necessarily get "completed" (the player may retake instead).
 * Returns the new count so the Review screen can gate the Retake button
 * against MAX_WORLD_ATTEMPTS without a second round-trip.
 */
export async function incrementWorldAttempt(playerId: string, worldId: string): Promise<number> {
  const { data: existing } = await supabase
    .from('world_progress')
    .select('attempt_count')
    .eq('player_id', playerId)
    .eq('world_id', worldId)
    .maybeSingle()

  const nextCount = (existing?.attempt_count ?? 0) + 1
  await supabase
    .from('world_progress')
    .update({ attempt_count: nextCount })
    .eq('player_id', playerId)
    .eq('world_id', worldId)

  return nextCount
}

const POINTS_PER_CHALLENGE = 10
const POINTS_WORLD_BONUS = 20

/** Points awarded for finishing a world: a flat per-item reward plus a completion bonus. */
export function computePointsEarned(correctCount: number): number {
  return correctCount * POINTS_PER_CHALLENGE + POINTS_WORLD_BONUS
}

export interface CompleteWorldResult {
  pointsEarned: number
  newStreak: number
  nextWorldUnlocked: boolean
}

/**
 * Marks a world complete, unlocks the next one, awards points, updates the
 * daily streak, and banks every boss-item challenge into the Memory Vault
 * spaced-repetition queue. Client-orchestrated for MVP simplicity — a good
 * candidate to move into a single Postgres function post-MVP for atomicity.
 */
export async function completeWorld(
  playerId: string,
  world: World,
  correctCount: number,
  bossItems: Challenge[],
): Promise<CompleteWorldResult> {
  await supabase
    .from('world_progress')
    .update({ status: 'complete', boss_battle_complete_at: new Date().toISOString() })
    .eq('player_id', playerId)
    .eq('world_id', world.id)

  const { data: nextWorld } = await supabase
    .from('world')
    .select('*')
    .eq('sequence_order', world.sequence_order + 1)
    .maybeSingle()

  let nextWorldUnlocked = false
  if (nextWorld) {
    const { data: existing } = await supabase
      .from('world_progress')
      .select('player_id')
      .eq('player_id', playerId)
      .eq('world_id', nextWorld.id)
      .maybeSingle()
    if (!existing) {
      await supabase
        .from('world_progress')
        .insert({ player_id: playerId, world_id: nextWorld.id, status: 'in_progress' })
      nextWorldUnlocked = true
    }
  }

  const pointsEarned = computePointsEarned(correctCount)
  await awardPoints(playerId, pointsEarned, `world_complete:${world.book_slug}`)
  const newStreak = await bumpStreak(playerId)
  await addToVault(playerId, bossItems)

  return { pointsEarned, newStreak, nextWorldUnlocked }
}

async function awardPoints(playerId: string, amount: number, source: string) {
  const { data: existing } = await supabase
    .from('points')
    .select('total_points')
    .eq('player_id', playerId)
    .maybeSingle()

  if (existing) {
    await supabase
      .from('points')
      .update({ total_points: existing.total_points + amount })
      .eq('player_id', playerId)
  } else {
    await supabase.from('points').insert({ player_id: playerId, total_points: amount })
  }

  await supabase.from('points_log').insert({ player_id: playerId, source, amount })
}

/** Adds `days` (may be negative) to a `YYYY-MM-DD` date string, in UTC — avoids local-timezone drift across month/year boundaries. */
function addDaysUTC(dateStr: string, days: number): string {
  const d = new Date(`${dateStr}T00:00:00.000Z`)
  d.setUTCDate(d.getUTCDate() + days)
  return d.toISOString().slice(0, 10)
}

export interface StreakUpdate {
  current_streak: number
  longest_streak: number
  /** False when today's activity was already recorded (same-day replay) — no write needed. */
  changed: boolean
}

/**
 * Computes the next streak state for a player being active on `today`. No grace period: missing
 * even one calendar day resets the streak to 1. Dates are plain `YYYY-MM-DD` strings compared in
 * UTC, so this is safe to unit-test without mocking the system clock.
 */
export function computeStreakUpdate(
  lastActiveDate: string | null,
  today: string,
  currentStreak: number,
  longestStreak: number,
): StreakUpdate {
  if (lastActiveDate === today) {
    return { current_streak: currentStreak, longest_streak: longestStreak, changed: false }
  }
  const yesterday = addDaysUTC(today, -1)
  const nextStreak = lastActiveDate === yesterday ? currentStreak + 1 : 1
  const nextLongest = Math.max(longestStreak, nextStreak)
  return { current_streak: nextStreak, longest_streak: nextLongest, changed: true }
}

async function bumpStreak(playerId: string): Promise<number> {
  const today = new Date().toISOString().slice(0, 10)
  const { data: existing } = await supabase
    .from('streak')
    .select('*')
    .eq('player_id', playerId)
    .maybeSingle()

  if (!existing) {
    await supabase
      .from('streak')
      .insert({ player_id: playerId, current_streak: 1, longest_streak: 1, last_active_date: today })
    return 1
  }

  const update = computeStreakUpdate(existing.last_active_date, today, existing.current_streak, existing.longest_streak)
  if (!update.changed) {
    return update.current_streak
  }

  await supabase
    .from('streak')
    .update({ current_streak: update.current_streak, longest_streak: update.longest_streak, last_active_date: today })
    .eq('player_id', playerId)

  return update.current_streak
}

async function addToVault(playerId: string, bossItems: Challenge[]) {
  if (bossItems.length === 0) return
  const rows = bossItems.map((c) => ({
    player_id: playerId,
    challenge_id: c.id,
    next_review_at: new Date().toISOString(),
    review_interval: 1,
    review_streak: 0,
  }))
  // upsert so replaying a world doesn't duplicate/error on the unique (player_id, challenge_id) constraint
  await supabase.from('vault_entry').upsert(rows, { onConflict: 'player_id,challenge_id', ignoreDuplicates: true })
}

export async function getVaultEntries(playerId: string): Promise<VaultEntryWithChallenge[]> {
  const { data, error } = await supabase
    .from('vault_entry')
    .select('*, challenge(*)')
    .eq('player_id', playerId)
    .order('next_review_at', { ascending: true })
  if (error) throw error
  return (data ?? []).map((row) => {
    const { challenge, ...entry } = row as VaultEntryWithChallenge & { challenge: Challenge }
    return { ...entry, challenge }
  })
}

// A verse's review interval grows along this sequence each time the player self-reports
// remembering it (index = review_streak, capped at the last value); one miss resets to the start.
const REVIEW_INTERVALS_DAYS = [1, 2, 4, 7, 14, 30, 60]

export interface VaultReviewProgress {
  review_streak: number
  review_interval: number
}

export interface VaultReviewUpdate extends VaultReviewProgress {
  next_review_at: string
}

/**
 * Computes the next spaced-repetition state from a self-assessed review. Pure — the interval
 * sequence is a fixed lookup by streak, capped at the sequence's last value; a miss resets the
 * streak (and therefore the interval) to the start rather than merely shrinking it.
 */
export function computeVaultReviewProgress(remembered: boolean, currentStreak: number): VaultReviewProgress {
  const nextStreak = remembered ? currentStreak + 1 : 0
  const intervalDays = REVIEW_INTERVALS_DAYS[Math.min(nextStreak, REVIEW_INTERVALS_DAYS.length - 1)]
  return { review_streak: nextStreak, review_interval: intervalDays }
}

/**
 * Records a self-assessed Memory Vault review (the player says whether they
 * recalled the verse, there's no text grading here — matches the design,
 * which shows the full verse rather than a fill-in blank). Takes the entry's
 * current streak from the caller (already in memory from getVaultEntries)
 * rather than re-fetching it, since this is a single-field progression.
 */
export async function reviewVaultEntry(
  entryId: string,
  remembered: boolean,
  currentStreak: number,
): Promise<VaultReviewUpdate> {
  const progress = computeVaultReviewProgress(remembered, currentStreak)
  const nextReviewAt = remembered
    ? new Date(Date.now() + progress.review_interval * 86400000).toISOString()
    : new Date().toISOString()

  const update: VaultReviewUpdate = { ...progress, next_review_at: nextReviewAt }
  const { error } = await supabase.from('vault_entry').update(update).eq('id', entryId)
  if (error) throw error
  return update
}

export async function getPlayer(playerId: string): Promise<Player> {
  const { data, error } = await supabase.from('player').select('*').eq('id', playerId).single()
  if (error) throw error
  return data
}

/** Onboarding's optional name/avatar step — both nullable, since the whole step is skippable. */
export async function updatePlayerProfile(
  playerId: string,
  displayName: string | null,
  avatarId: string | null,
): Promise<void> {
  await supabase
    .from('player')
    .update({ display_name: displayName, avatar_id: avatarId })
    .eq('id', playerId)
}

export async function getWorldsCompleteCount(playerId: string): Promise<number> {
  const { count, error } = await supabase
    .from('world_progress')
    .select('player_id', { count: 'exact', head: true })
    .eq('player_id', playerId)
    .eq('status', 'complete')
  if (error) throw error
  return count ?? 0
}

export interface ClaimAccountResult {
  needsEmailConfirmation: boolean
}

/**
 * Upgrades the current anonymous session to a real email/password account via
 * Supabase's anonymous-to-permanent linking (updateUser while signed in
 * anonymously keeps the same auth.uid, so every existing world_progress,
 * vault_entry, streak, and points row stays attached automatically — no data
 * migration needed, satisfying BACKEND_REQUIREMENTS.md §2's "additive, never
 * destructive" requirement by construction rather than by extra code).
 */
export async function claimAccount(playerId: string, email: string, password: string): Promise<ClaimAccountResult> {
  const { data, error } = await supabase.auth.updateUser({ email, password })
  if (error) throw error

  await supabase
    .from('player')
    .update({ auth_type: 'claimed', claimed_at: new Date().toISOString() })
    .eq('id', playerId)

  return { needsEmailConfirmation: !data.user?.email_confirmed_at }
}

export async function getStreakAndPoints(playerId: string) {
  const [{ data: streak }, { data: points }] = await Promise.all([
    supabase.from('streak').select('*').eq('player_id', playerId).maybeSingle(),
    supabase.from('points').select('*').eq('player_id', playerId).maybeSingle(),
  ])
  return {
    currentStreak: streak?.current_streak ?? 0,
    totalPoints: points?.total_points ?? 0,
  }
}
