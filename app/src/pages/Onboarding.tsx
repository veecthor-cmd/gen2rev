import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useCurrentPlayer } from '../lib/sessionContext'
import { setDifficultyMode, updatePlayerProfile } from '../lib/game'
import { DIFFICULTY_ORDER, DIFFICULTY_LABEL, type DifficultyMode } from '../lib/types'
import { Button } from '../components/Button'

const AVATARS = [
  { id: 'lion', emoji: '🦁' },
  { id: 'dove', emoji: '🕊️' },
  { id: 'wheat', emoji: '🌾' },
  { id: 'star', emoji: '⭐' },
] as const

const DIFFICULTY_HINT: Record<DifficultyMode, string> = {
  easy: 'Forgiving grading — capitalization and singular/plural don’t matter.',
  medium: "Gen2Rev's standard challenge mix.",
  hard: 'Verbatim recall required — exact wording, for deep Scripture knowledge.',
}

export function Onboarding() {
  const { userId } = useCurrentPlayer()
  const navigate = useNavigate()
  const [name, setName] = useState('')
  const [avatarId, setAvatarId] = useState<string>('dove')
  const [mode, setMode] = useState<DifficultyMode>('easy')
  const [saving, setSaving] = useState(false)

  async function handleStart() {
    setSaving(true)
    await Promise.all([updatePlayerProfile(userId, name.trim() || null, avatarId), setDifficultyMode(userId, mode)])
    navigate('/map')
  }

  async function handleSkip() {
    setSaving(true)
    // Name/avatar are skippable, but the chosen difficulty still applies — it's a real
    // gameplay setting, not a throwaway profile flourish, so it's saved either way.
    await setDifficultyMode(userId, mode)
    navigate('/map')
  }

  return (
    <div className="screen">
      <div
        style={{
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'center',
          gap: 'var(--spacing-24)',
          padding: 'var(--spacing-64) var(--spacing-24) var(--spacing-32)',
          textAlign: 'center',
          flex: 1,
        }}
      >
        <p className="eyebrow">✦ Welcome ✦</p>
        <h1 className="world-title">Who's playing?</h1>
        <p className="body-text">Optional — pick a name and avatar, or jump straight in.</p>

        <input
          type="text"
          placeholder="Enter a name (optional)"
          value={name}
          onChange={(e) => setName(e.target.value)}
          maxLength={40}
          style={{
            width: '100%',
            maxWidth: 280,
            padding: 'var(--spacing-16)',
            borderRadius: 'var(--radius-md)',
            border: '1.5px solid var(--color-bg-parchment-dark)',
            background: '#fff',
            fontFamily: 'var(--font-body)',
            fontSize: 16,
            textAlign: 'center',
          }}
        />

        <div style={{ display: 'flex', gap: 'var(--spacing-16)' }}>
          {AVATARS.map((a) => (
            <button
              key={a.id}
              onClick={() => setAvatarId(a.id)}
              aria-label={`Choose ${a.id} avatar`}
              aria-pressed={avatarId === a.id}
              style={{
                width: 56,
                height: 56,
                borderRadius: '50%',
                background: avatarId === a.id ? '#FBF3E3' : 'var(--color-bg-parchment-dark)',
                border: `2px solid ${avatarId === a.id ? 'var(--color-highlight-gold)' : 'transparent'}`,
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                fontSize: 24,
                cursor: 'pointer',
              }}
            >
              {a.emoji}
            </button>
          ))}
        </div>

        <div style={{ width: '100%', maxWidth: 360 }}>
          <p className="body-small" style={{ marginBottom: 12 }}>Choose your challenge level</p>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 8 }}>
            {DIFFICULTY_ORDER.map((m) => (
              <button
                key={m}
                onClick={() => setMode(m)}
                aria-pressed={mode === m}
                style={{
                  display: 'flex',
                  flexDirection: 'column',
                  alignItems: 'flex-start',
                  gap: 2,
                  textAlign: 'left',
                  padding: '12px 16px',
                  borderRadius: 'var(--radius-md)',
                  border: `2px solid ${mode === m ? 'var(--color-highlight-gold)' : 'var(--color-bg-parchment-dark)'}`,
                  background: mode === m ? '#FBF3E3' : '#fff',
                  cursor: 'pointer',
                }}
              >
                <span style={{ fontFamily: 'var(--font-label)', fontWeight: 700, fontSize: 14 }}>{DIFFICULTY_LABEL[m]}</span>
                <span className="body-small" style={{ opacity: 0.75 }}>{DIFFICULTY_HINT[m]}</span>
              </button>
            ))}
          </div>
        </div>
      </div>

      <div className="challenge-footer" style={{ display: 'flex', flexDirection: 'column', gap: 'var(--spacing-16)', alignItems: 'center' }}>
        <Button fullWidth disabled={saving} onClick={handleStart}>
          {saving ? 'Saving…' : 'Start Playing'}
        </Button>
        <button
          onClick={handleSkip}
          disabled={saving}
          style={{
            fontFamily: 'var(--font-label)',
            fontSize: 13,
            color: 'var(--color-accent-olive)',
            textDecoration: 'underline',
            background: 'none',
            border: 'none',
            cursor: 'pointer',
          }}
        >
          Skip for now →
        </button>
      </div>
    </div>
  )
}
