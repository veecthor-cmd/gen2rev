import { useEffect, useState, type CSSProperties, type FormEvent } from 'react'
import { useCurrentPlayer } from '../lib/sessionContext'
import { claimAccount, getPlayer, getStreakAndPoints, getWorldsCompleteCount } from '../lib/game'
import type { Player } from '../lib/types'
import { LoadingPanel, StatePanel } from '../components/StatePanel'
import { AppHeader } from '../components/Logo'
import { NavBar } from '../components/NavBar'
import { Button } from '../components/Button'

const inputStyle: CSSProperties = {
  fontFamily: 'var(--font-body)',
  fontSize: 15,
  padding: '12px 14px',
  borderRadius: 'var(--radius-sm)',
  border: '1.5px solid var(--color-bg-parchment-dark)',
  background: '#fff',
  color: 'var(--color-text-primary)',
  width: '100%',
}

interface Stats {
  worldsComplete: number
  currentStreak: number
  totalPoints: number
}

export function Profile() {
  const { userId } = useCurrentPlayer()
  const [player, setPlayer] = useState<Player | null>(null)
  const [stats, setStats] = useState<Stats | null>(null)
  const [error, setError] = useState<string | null>(null)

  const [showClaimForm, setShowClaimForm] = useState(false)
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [claiming, setClaiming] = useState(false)
  const [claimError, setClaimError] = useState<string | null>(null)
  const [claimSuccess, setClaimSuccess] = useState<'confirmed' | 'needs_confirmation' | null>(null)

  useEffect(() => {
    let cancelled = false
    Promise.all([getPlayer(userId), getWorldsCompleteCount(userId), getStreakAndPoints(userId)])
      .then(([p, worldsComplete, sp]) => {
        if (cancelled) return
        setPlayer(p)
        setStats({ worldsComplete, currentStreak: sp.currentStreak, totalPoints: sp.totalPoints })
      })
      .catch((e) => !cancelled && setError(e.message))
    return () => {
      cancelled = true
    }
  }, [userId])

  async function handleClaim(e: FormEvent) {
    e.preventDefault()
    setClaiming(true)
    setClaimError(null)
    try {
      const result = await claimAccount(userId, email, password)
      setClaimSuccess(result.needsEmailConfirmation ? 'needs_confirmation' : 'confirmed')
      setPlayer((p) => (p ? { ...p, auth_type: 'claimed', claimed_at: new Date().toISOString() } : p))
    } catch (err) {
      setClaimError(err instanceof Error ? err.message : String(err))
    } finally {
      setClaiming(false)
    }
  }

  if (error) {
    return (
      <div className="screen">
        <AppHeader />
        <NavBar />
        <StatePanel icon="⚠️" title="Couldn't load your profile" body={error} tone="error" />
      </div>
    )
  }

  if (!player || !stats) {
    return (
      <div className="screen">
        <AppHeader />
        <NavBar />
        <LoadingPanel />
      </div>
    )
  }

  return (
    <div className="screen">
      <AppHeader />
      <NavBar />
      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 8, padding: '48px 24px 24px', textAlign: 'center' }}>
        <div
          style={{
            width: 96,
            height: 96,
            borderRadius: '50%',
            background: 'var(--color-accent-olive)',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            fontSize: 40,
            marginBottom: 8,
          }}
        >
          🌱
        </div>
        <p className="eyebrow">Rank</p>
        <h1 className="world-title">Disciple</h1>
        <p className="body-small">
          {player.auth_type === 'claimed'
            ? `Signed in${player.display_name ? ` as ${player.display_name}` : ''}`
            : `Playing as ${player.display_name || 'Guest'}`}
        </p>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: 16, padding: '0 24px 24px' }}>
        <StatTile num={stats.worldsComplete} label="Worlds Complete" />
        <StatTile num={stats.currentStreak} label="Day Streak" />
        <StatTile num={stats.totalPoints} label="Glory Points" />
      </div>

      {player.auth_type === 'guest' && claimSuccess === null && (
        <div
          style={{
            margin: '0 24px 48px',
            background: 'var(--color-bg-parchment-dark)',
            borderRadius: 'var(--radius-md)',
            padding: 24,
            textAlign: 'center',
          }}
        >
          <p className="body-text" style={{ marginBottom: 16 }}>
            Playing as a guest — your progress is saved on this device only.
          </p>

          {!showClaimForm ? (
            <Button onClick={() => setShowClaimForm(true)}>Claim Your Account</Button>
          ) : (
            <form onSubmit={handleClaim} style={{ display: 'flex', flexDirection: 'column', gap: 12, textAlign: 'left' }}>
              <input
                type="email"
                required
                placeholder="Email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                style={inputStyle}
              />
              <input
                type="password"
                required
                minLength={6}
                placeholder="Password (min. 6 characters)"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                style={inputStyle}
              />
              {claimError && (
                <p className="body-small" style={{ color: 'var(--color-state-error)', margin: 0 }}>
                  {claimError}
                </p>
              )}
              <Button type="submit" fullWidth disabled={claiming}>
                {claiming ? 'Saving your progress…' : 'Save My Progress'}
              </Button>
            </form>
          )}
        </div>
      )}

      {claimSuccess && (
        <div
          style={{
            margin: '0 24px 48px',
            background: 'var(--color-bg-parchment-dark)',
            borderRadius: 'var(--radius-md)',
            padding: 24,
            textAlign: 'center',
          }}
        >
          <p className="body-text">
            {claimSuccess === 'confirmed'
              ? 'Account claimed — your progress is safe, on any device.'
              : "Almost there — check your email to confirm your account. Your progress is already saved either way."}
          </p>
        </div>
      )}

      {player.auth_type === 'claimed' && claimSuccess === null && (
        <div style={{ margin: '0 24px 48px', textAlign: 'center' }}>
          <p className="body-small" style={{ color: 'var(--color-accent-olive)' }}>
            Your progress is saved to your account.
          </p>
        </div>
      )}
    </div>
  )
}

function StatTile({ num, label }: { num: number; label: string }) {
  return (
    <div className="card" style={{ textAlign: 'center', padding: 16 }}>
      <div style={{ fontFamily: 'var(--font-display)', fontWeight: 700, fontSize: 22, color: 'var(--color-accent-olive)' }}>{num}</div>
      <div style={{ fontFamily: 'var(--font-label)', fontSize: 11, opacity: 0.7, marginTop: 4 }}>{label}</div>
    </div>
  )
}
