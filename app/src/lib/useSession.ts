import { useEffect, useState } from 'react'
import { supabase } from './supabase'

interface SessionState {
  userId: string | null
  loading: boolean
  error: string | null
}

// Module-level singleton so React StrictMode's double effect-invocation (or any
// other concurrent mount) can't fire signInAnonymously() twice and race two
// different anonymous users against the client's single session slot — the
// second write would silently RLS-reject under the first user's stale token.
let sessionPromise: Promise<string> | null = null

function ensureSession(): Promise<string> {
  if (!sessionPromise) {
    sessionPromise = (async () => {
      const { data: existing } = await supabase.auth.getSession()
      if (existing.session?.user.id) {
        // Also checked for a returning session, not just a brand-new one: if World 1's
        // world_progress row is ever missing (e.g. an admin/cleanup delete), a returning
        // player would otherwise see every world locked with no way back in.
        await ensureWorldOneUnlocked(existing.session.user.id)
        return existing.session.user.id
      }

      const { data, error } = await supabase.auth.signInAnonymously()
      if (error || !data.user) {
        sessionPromise = null // allow retry on next call
        throw error ?? new Error('Sign-in returned no user')
      }
      await ensureWorldOneUnlocked(data.user.id)
      return data.user.id
    })()
  }
  return sessionPromise
}

/**
 * Guest-first session per docs/BACKEND_REQUIREMENTS.md §2: a session is created
 * transparently on first load (anonymous auth), no signup step. Ensures World 1
 * is unlocked for a brand-new player, per §3 ("World 1 is unlocked by default").
 */
export function useSession(): SessionState {
  const [userId, setUserId] = useState<string | null>(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    let cancelled = false
    ensureSession()
      .then((uid) => {
        if (!cancelled) {
          setUserId(uid)
          setLoading(false)
        }
      })
      .catch((e) => {
        if (!cancelled) {
          setError(e instanceof Error ? e.message : String(e))
          setLoading(false)
        }
      })
    return () => {
      cancelled = true
    }
  }, [])

  return { userId, loading, error }
}

/** Exported for testing — also called directly by ensureSession above (both branches, per the 2026-08-18 self-heal fix). */
export async function ensureWorldOneUnlocked(playerId: string) {
  const { data: world1 } = await supabase
    .from('world')
    .select('id')
    .eq('sequence_order', 1)
    .single()

  if (!world1) return

  const { data: existingProgress } = await supabase
    .from('world_progress')
    .select('player_id')
    .eq('player_id', playerId)
    .eq('world_id', world1.id)
    .maybeSingle()

  if (!existingProgress) {
    await supabase
      .from('world_progress')
      .insert({ player_id: playerId, world_id: world1.id, status: 'in_progress' })
  }
}
