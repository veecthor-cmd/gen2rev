import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { Button } from '../components/Button'
import { useCurrentPlayer } from '../lib/sessionContext'
import { getStreakAndPoints } from '../lib/game'

const PREVIEW_BOOKS = ['Ge', 'Ex', 'Le', 'Nu', 'De', 'Jo', 'Ju']

export function Landing() {
  const navigate = useNavigate()
  const { userId } = useCurrentPlayer()
  const [checking, setChecking] = useState(true)
  const [progress, setProgress] = useState({ currentStreak: 0, totalPoints: 0 })

  useEffect(() => {
    let cancelled = false
    getStreakAndPoints(userId)
      .then((p) => !cancelled && setProgress(p))
      .finally(() => !cancelled && setChecking(false))
    return () => {
      cancelled = true
    }
  }, [userId])

  // A returning guest with any banked points has something to resume — greet
  // them with that instead of the first-time pitch. Brand-new visitors (or a
  // session that exists but never finished anything) see the usual marketing copy.
  const isReturning = !checking && progress.totalPoints > 0

  return (
    <div className="screen">
      <section
        style={{
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'center',
          gap: 'var(--spacing-16)',
          padding: 'var(--spacing-64) var(--spacing-24) var(--spacing-48)',
        }}
      >
        <p className="eyebrow">✦ Scripture is the key ✦</p>
        <h1 className="wordmark">Gen2Rev</h1>
        <p className="tagline">Every verse, remembered.</p>

        {isReturning ? (
          <>
            <p className="body-text" style={{ textAlign: 'center', maxWidth: 340 }}>
              Welcome back — {progress.currentStreak > 0 ? `${progress.currentStreak}-day streak, ` : ''}
              {progress.totalPoints} points and counting.
            </p>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 'var(--spacing-16)', marginTop: 8 }}>
              <Button onClick={() => navigate('/map')}>Resume Your Journey</Button>
            </div>
          </>
        ) : (
          <>
            <p className="body-text" style={{ textAlign: 'center', maxWidth: 340 }}>
              Journey through the Old Testament's founding story — Genesis to Chronicles — one world
              per book, one verse at a time.
            </p>
            {!checking && (
              <div style={{ display: 'flex', flexDirection: 'column', gap: 'var(--spacing-16)', marginTop: 8 }}>
                <Button onClick={() => navigate('/onboarding')}>Start Playing</Button>
                <Button variant="secondary" onClick={() => navigate('/map')}>
                  See How It Works
                </Button>
              </div>
            )}
          </>
        )}
      </section>

      <section
        style={{
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'center',
          gap: 'var(--spacing-16)',
          padding: '0 var(--spacing-24) var(--spacing-48)',
        }}
      >
        <div style={{ display: 'flex', gap: 'var(--spacing-8)', flexWrap: 'wrap', justifyContent: 'center' }}>
          {PREVIEW_BOOKS.map((b, i) => (
            <div
              key={b}
              className="node-circle"
              style={{
                width: 36,
                height: 36,
                fontSize: 12,
                background: i === 0 ? 'var(--color-accent-olive)' : 'var(--color-state-locked)',
              }}
            >
              {b}
            </div>
          ))}
        </div>
        <p className="body-small" style={{ textAlign: 'center' }}>
          14 worlds, Genesis to Chronicles — unlocked one at a time
        </p>
      </section>

      <footer className="footer">
        <p className="body-text">Free to play · No account needed</p>
        <p className="body-small" style={{ color: 'var(--color-accent-olive)' }}>
          Scripture text: World English Bible (public domain)
        </p>
      </footer>
    </div>
  )
}
