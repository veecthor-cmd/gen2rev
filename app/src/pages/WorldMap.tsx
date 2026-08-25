import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useCurrentPlayer } from '../lib/sessionContext'
import { getStreakAndPoints, getWorldsWithProgress, type WorldWithProgress } from '../lib/game'
import { LoadingPanel, StatePanel } from '../components/StatePanel'
import { AppHeader } from '../components/Logo'
import { NavBar } from '../components/NavBar'

const BADGE_TEXT = { complete: '✓ Complete', in_progress: '▶ In Progress', locked: '🔒 Locked' } as const

function initials(title: string) {
  const parts = title.split(' ')
  if (parts.length > 1 && /^\d/.test(parts[0])) return parts[0] + parts[1][0]
  return title.slice(0, 2)
}

export function WorldMap() {
  const { userId } = useCurrentPlayer()
  const navigate = useNavigate()
  const [worlds, setWorlds] = useState<WorldWithProgress[] | null>(null)
  const [stats, setStats] = useState({ currentStreak: 0, totalPoints: 0 })
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    let cancelled = false
    Promise.all([getWorldsWithProgress(userId), getStreakAndPoints(userId)])
      .then(([w, s]) => {
        if (cancelled) return
        setWorlds(w)
        setStats(s)
      })
      .catch((e) => !cancelled && setError(e.message))
    return () => {
      cancelled = true
    }
  }, [userId])

  if (error) {
    return (
      <div className="screen">
        <StatePanel icon="⚠️" title="Couldn't load your journey" body={error} tone="error" />
      </div>
    )
  }

  if (!worlds) {
    return (
      <div className="screen">
        <LoadingPanel />
      </div>
    )
  }

  return (
    <div className="screen">
      <AppHeader />
      <NavBar />
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '16px 24px' }}>
        <span className="chip" style={{ color: 'var(--color-highlight-gold)' }}>🔥 {stats.currentStreak} day streak</span>
        <span className="chip" style={{ color: 'var(--color-accent-olive)' }}>✦ {stats.totalPoints} pts</span>
      </div>
      <h1 className="world-title" style={{ textAlign: 'center', marginBottom: 32 }}>Your Journey</h1>

      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', padding: '0 24px 64px', gap: 8 }}>
        {worlds.map((w, i) => {
          const alignRight = i % 2 === 1
          const clickable = w.status !== 'locked'
          const node = (
            <div
              className={`node-circle node-circle--${w.status === 'in_progress' ? 'current' : w.status}`}
              key={`node-${w.id}`}
            >
              {initials(w.title)}
            </div>
          )
          const label = (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 4, alignItems: alignRight ? 'flex-end' : 'flex-start' }}>
              <span style={{ fontFamily: 'var(--font-label)', fontWeight: 700, fontSize: 15 }}>
                World {i + 1}: {w.title}
              </span>
              <span className={`badge badge--${w.status === 'in_progress' ? 'current' : w.status}`}>
                {BADGE_TEXT[w.status]}
              </span>
            </div>
          )
          return (
            <div key={w.id} style={{ width: '100%' }}>
              {i > 0 && (
                <div style={{ width: 3, height: 20, background: 'var(--color-state-locked)', opacity: 0.4, margin: '0 auto' }} />
              )}
              <button
                onClick={() => clickable && navigate(`/play/${w.book_slug}`)}
                disabled={!clickable}
                style={{
                  all: 'unset',
                  display: 'flex',
                  width: '100%',
                  alignItems: 'center',
                  gap: 16,
                  justifyContent: alignRight ? 'flex-end' : 'flex-start',
                  cursor: clickable ? 'pointer' : 'default',
                }}
              >
                {alignRight ? (
                  <>
                    {label}
                    {node}
                  </>
                ) : (
                  <>
                    {node}
                    {label}
                  </>
                )}
              </button>
            </div>
          )
        })}
      </div>
    </div>
  )
}
