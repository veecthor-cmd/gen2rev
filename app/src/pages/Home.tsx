import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useCurrentPlayer } from '../lib/sessionContext'
import {
  getChallengeCount,
  getPlayer,
  getStreakAndPoints,
  getVaultEntries,
  getWorldProgress,
  getWorldsWithProgress,
  type WorldWithProgress,
} from '../lib/game'
import type { VaultEntryWithChallenge } from '../lib/types'
import { LoadingPanel, StatePanel } from '../components/StatePanel'
import { AppHeader } from '../components/Logo'
import { NavBar } from '../components/NavBar'
import { Button } from '../components/Button'

function initials(title: string) {
  const parts = title.split(' ')
  if (parts.length > 1 && /^\d/.test(parts[0])) return parts[0] + parts[1][0]
  return title.slice(0, 2)
}

export function Home() {
  const { userId } = useCurrentPlayer()
  const navigate = useNavigate()
  const [worlds, setWorlds] = useState<WorldWithProgress[] | null>(null)
  const [stats, setStats] = useState({ currentStreak: 0, totalPoints: 0 })
  const [nextDue, setNextDue] = useState<VaultEntryWithChallenge | null>(null)
  const [error, setError] = useState<string | null>(null)
  const [continuePosition, setContinuePosition] = useState<{ index: number; total: number } | null>(null)

  useEffect(() => {
    let cancelled = false
    Promise.all([getWorldsWithProgress(userId), getStreakAndPoints(userId), getVaultEntries(userId)])
      .then(([w, sp, vault]) => {
        if (cancelled) return
        setWorlds(w)
        setStats(sp)
        setNextDue(vault[0] ?? null) // getVaultEntries already orders by next_review_at ascending
      })
      .catch((e) => !cancelled && setError(e.message))
    return () => {
      cancelled = true
    }
  }, [userId])

  const continueWorldId = worlds?.find((w) => w.status === 'in_progress')?.id

  useEffect(() => {
    if (!continueWorldId) return
    let cancelled = false
    getPlayer(userId)
      .then((player) =>
        Promise.all([getWorldProgress(userId, continueWorldId), getChallengeCount(continueWorldId, player.difficulty_mode)]),
      )
      .then(([p, total]) => {
        if (cancelled || !p) return
        setContinuePosition({ index: p.current_index, total })
      })
      .catch(() => {}) // decorative — the continue card still works fine without a position
    return () => {
      cancelled = true
    }
  }, [userId, continueWorldId])

  if (error) {
    return (
      <div className="screen">
        <AppHeader />
        <NavBar />
        <StatePanel icon="⚠️" title="Couldn't load your dashboard" body={error} tone="error" />
      </div>
    )
  }

  if (!worlds) {
    return (
      <div className="screen">
        <AppHeader />
        <NavBar />
        <LoadingPanel />
      </div>
    )
  }

  const continueWorld = worlds.find((w) => w.status === 'in_progress')

  return (
    <div className="screen">
      <AppHeader />
      <NavBar />
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: 24 }}>
        <span className="chip" style={{ color: 'var(--color-accent-olive)' }}>✦ {stats.totalPoints} pts</span>
        <span className="body-small">Disciple</span>
      </div>

      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 8, padding: '0 24px 32px', textAlign: 'center' }}>
        <div style={{ fontSize: 48 }}>🔥</div>
        <p style={{ fontFamily: 'var(--font-display)', fontWeight: 900, fontSize: 36, margin: 0 }}>{stats.currentStreak}</p>
        <p className="body-small">
          {stats.currentStreak > 0 ? 'day streak — come back tomorrow to keep it alive' : 'no streak yet — play today to start one'}
        </p>
      </div>

      {continueWorld && (
        <button
          onClick={() => navigate(`/play/${continueWorld.book_slug}`)}
          className="card"
          style={{
            all: 'unset',
            cursor: 'pointer',
            display: 'flex',
            alignItems: 'center',
            gap: 16,
            margin: '0 24px 24px',
            background: '#fff',
            borderRadius: 'var(--radius-md)',
            boxShadow: 'var(--shadow-card)',
            padding: 24,
          }}
        >
          <div className="node-circle node-circle--current" style={{ flexShrink: 0 }}>
            {initials(continueWorld.title)}
          </div>
          <div style={{ flex: 1 }}>
            <p style={{ fontFamily: 'var(--font-label)', fontSize: 11, textTransform: 'uppercase', letterSpacing: '0.06em', color: 'var(--color-accent-olive)', margin: '0 0 4px' }}>
              Continue where you left off
            </p>
            <p style={{ fontFamily: 'var(--font-display)', fontWeight: 700, fontSize: 17, margin: 0 }}>
              World {continueWorld.sequence_order}: {continueWorld.title}
              {continuePosition && continuePosition.index > 0
                ? ` — Challenge ${Math.min(continuePosition.index + 1, continuePosition.total)} of ${continuePosition.total}`
                : ''}
            </p>
          </div>
        </button>
      )}

      {nextDue && (
        <div
          style={{
            margin: '0 24px 48px',
            background: 'var(--color-bg-parchment-dark)',
            borderRadius: 'var(--radius-md)',
            padding: '16px 24px',
            fontFamily: 'var(--font-body)',
            fontSize: 14,
            textAlign: 'center',
          }}
        >
          ✦ Today's verse: {nextDue.challenge.verse_ref} — review it in your{' '}
          <span
            role="link"
            tabIndex={0}
            onClick={() => navigate('/vault')}
            style={{ textDecoration: 'underline', cursor: 'pointer', color: 'var(--color-accent-olive)' }}
          >
            Memory Vault
          </span>
        </div>
      )}

      <div className="challenge-footer">
        <Button
          fullWidth
          onClick={() => navigate(continueWorld ? `/play/${continueWorld.book_slug}` : '/map')}
        >
          {continueWorld ? 'Continue Playing' : 'Go to Your Journey'}
        </Button>
      </div>
    </div>
  )
}
