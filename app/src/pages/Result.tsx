import { useEffect, useState } from 'react'
import { useLocation, useNavigate, useParams } from 'react-router-dom'
import { useCurrentPlayer } from '../lib/sessionContext'
import { getPlayer, setDifficultyMode } from '../lib/game'
import { DIFFICULTY_LABEL, type DifficultyMode } from '../lib/types'
import { Button } from '../components/Button'
import { AppHeader } from '../components/Logo'

interface ResultState {
  pointsEarned: number
  newStreak: number
  nextWorldUnlocked: boolean
  totalChallenges: number
  correctCount: number
}

const NEXT_MODE: Partial<Record<DifficultyMode, DifficultyMode>> = { easy: 'medium', medium: 'hard' }

export function Result() {
  const { bookSlug } = useParams<{ bookSlug: string }>()
  const { userId } = useCurrentPlayer()
  const navigate = useNavigate()
  const location = useLocation()
  const state = location.state as ResultState | null

  const [mode, setMode] = useState<DifficultyMode | null>(null)
  const [promptResolved, setPromptResolved] = useState(false)
  const [upgraded, setUpgraded] = useState(false)
  const [bumping, setBumping] = useState(false)

  useEffect(() => {
    let cancelled = false
    getPlayer(userId)
      .then((p) => !cancelled && setMode(p.difficulty_mode))
      .catch(() => {}) // decorative — the upgrade prompt just won't show if this fails
    return () => {
      cancelled = true
    }
  }, [userId])

  if (!state) {
    // Direct navigation without state (e.g. page refresh) — send back to the map rather than show broken numbers.
    navigate('/map', { replace: true })
    return null
  }

  const nextMode = mode ? NEXT_MODE[mode] : undefined

  async function handleUpgrade() {
    if (!nextMode) return
    setBumping(true)
    await setDifficultyMode(userId, nextMode)
    setMode(nextMode)
    setPromptResolved(true)
    setUpgraded(true)
    setBumping(false)
  }

  return (
    <div className="screen">
      <AppHeader />
      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 8, padding: '48px 24px 24px', textAlign: 'center' }}>
        <div style={{ fontSize: 64 }}>🏆</div>
        <p className="eyebrow">World Complete</p>
        <h1 className="world-title">{bookSlug}: Beaten</h1>
      </div>

      <div style={{ display: 'flex', flexDirection: 'column', gap: 16, padding: 24 }}>
        <StatRow label="✦ Points earned" value={`+${state.pointsEarned}`} />
        <StatRow label="🔥 Streak" value={`${state.newStreak} day${state.newStreak === 1 ? '' : 's'}`} />
        <StatRow label="✓ Correct answers" value={`${state.correctCount} / ${state.totalChallenges}`} />
      </div>

      {state.nextWorldUnlocked && (
        <div
          style={{
            margin: '0 24px 24px',
            background: 'var(--color-bg-parchment-dark)',
            borderRadius: 'var(--radius-md)',
            padding: '16px 24px',
            textAlign: 'center',
            fontFamily: 'var(--font-body)',
            fontStyle: 'italic',
          }}
        >
          A new world has been unlocked!
        </div>
      )}

      {nextMode && !promptResolved && (
        <div className="card" style={{ margin: '0 24px 24px', textAlign: 'center' }}>
          <p className="body-text" style={{ marginBottom: 16 }}>
            Ready for more of a challenge? Try {DIFFICULTY_LABEL[nextMode]} mode.
          </p>
          <div style={{ display: 'flex', gap: 12, justifyContent: 'center' }}>
            <Button variant="secondary" disabled={bumping} onClick={() => setPromptResolved(true)}>
              Stay on {mode ? DIFFICULTY_LABEL[mode] : ''}
            </Button>
            <Button disabled={bumping} onClick={handleUpgrade}>
              Try {DIFFICULTY_LABEL[nextMode]}
            </Button>
          </div>
        </div>
      )}

      {upgraded && mode && (
        <p className="body-small" style={{ textAlign: 'center', color: 'var(--color-accent-olive)', margin: '0 24px 24px' }}>
          Now playing on {DIFFICULTY_LABEL[mode]}.
        </p>
      )}

      <div className="challenge-footer">
        <Button fullWidth onClick={() => navigate('/map')}>
          Continue Your Journey
        </Button>
      </div>
    </div>
  )
}

function StatRow({ label, value }: { label: string; value: string }) {
  return (
    <div
      style={{
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'space-between',
        background: '#fff',
        borderRadius: 'var(--radius-md)',
        boxShadow: 'var(--shadow-card)',
        padding: '16px 24px',
      }}
    >
      <span style={{ fontFamily: 'var(--font-label)', fontWeight: 600, fontSize: 14 }}>{label}</span>
      <span style={{ fontFamily: 'var(--font-display)', fontWeight: 700, fontSize: 20, color: 'var(--color-accent-olive)' }}>
        {value}
      </span>
    </div>
  )
}
