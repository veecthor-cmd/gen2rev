import { useState } from 'react'
import { useLocation, useNavigate, useParams } from 'react-router-dom'
import { Button } from '../components/Button'
import { AppHeader } from '../components/Logo'
import { completeWorld, resetWorldProgress } from '../lib/game'
import { useCurrentPlayer } from '../lib/sessionContext'
import { MAX_WORLD_ATTEMPTS, type Challenge, type ChallengeResult, type World } from '../lib/types'

interface ReviewState {
  world: World
  results: ChallengeResult[]
  attemptCount: number
}

function formatCorrectAnswer(challenge: Challenge): string {
  const key = challenge.answer_key
  if (key.type === 'recall') return key.template.replace('___', key.answer)
  if (key.type === 'multiple_choice') return key.options[key.correct_index]
  return key.correct_order.map((i) => key.items[i]).join(' → ')
}

export function Review() {
  const { bookSlug } = useParams<{ bookSlug: string }>()
  const { userId } = useCurrentPlayer()
  const navigate = useNavigate()
  const location = useLocation()
  const state = location.state as ReviewState | null
  const [proceeding, setProceeding] = useState(false)
  const [retaking, setRetaking] = useState(false)

  if (!state) {
    // Direct navigation without state (e.g. page refresh) — nothing to review, back to the map.
    navigate('/map', { replace: true })
    return null
  }

  const { world, results, attemptCount } = state
  const correctCount = results.filter((r) => r.isCorrect).length
  const isPerfect = correctCount === results.length
  const canRetake = !isPerfect && attemptCount < MAX_WORLD_ATTEMPTS

  async function handleProceed() {
    setProceeding(true)
    const bossItems = results.filter((r) => r.challenge.is_boss_item).map((r) => r.challenge)
    const result = await completeWorld(userId, world, correctCount, bossItems)
    navigate(`/result/${world.book_slug}`, {
      state: { ...result, totalChallenges: results.length, correctCount },
    })
  }

  async function handleRetake() {
    setRetaking(true)
    // Clear the saved position from this finished attempt first, so Play starts a genuinely
    // fresh run at question 1 instead of resuming at the end of the run being retaken.
    await resetWorldProgress(userId, world.id)
    navigate(`/play/${bookSlug}`)
  }

  return (
    <div className="screen">
      <AppHeader />
      <div style={{ padding: '16px 24px', textAlign: 'center' }}>
        <p className="eyebrow">Review</p>
        <h1 className="world-title" style={{ marginBottom: 8 }}>{world.title}</h1>
        <p className="body-text">
          {correctCount} / {results.length} correct
          {!isPerfect && !canRetake && attemptCount >= MAX_WORLD_ATTEMPTS
            ? ' — no retakes left'
            : ''}
        </p>
      </div>

      <div style={{ display: 'flex', flexDirection: 'column', gap: 16, padding: '16px 24px' }}>
        {results.map((r, i) => (
          <div
            key={r.challenge.id}
            className="card"
            style={{ borderLeft: `4px solid ${r.isCorrect ? 'var(--color-state-success)' : 'var(--color-state-error)'}` }}
          >
            <p className="body-small" style={{ color: 'var(--color-accent-ochre)', margin: '0 0 4px' }}>
              {r.isCorrect ? '✓' : '✗'} Question {i + 1} · {r.challenge.verse_ref}
            </p>
            <p className="body-text" style={{ margin: '0 0 8px' }}>{r.challenge.prompt}</p>
            {!r.isCorrect && (
              <p className="body-small" style={{ margin: '0 0 4px', color: 'var(--color-state-error)' }}>
                Your answer: {r.userAnswerDisplay || '(none)'}
              </p>
            )}
            <p className="body-small" style={{ margin: 0, color: 'var(--color-state-success)', fontStyle: 'italic' }}>
              Correct: {formatCorrectAnswer(r.challenge)}
            </p>
          </div>
        ))}
      </div>

      <div className="challenge-footer" style={{ display: 'flex', flexDirection: 'column', gap: 16 }}>
        {canRetake && (
          <Button
            variant="secondary"
            fullWidth
            disabled={proceeding || retaking}
            onClick={handleRetake}
          >
            {retaking ? 'Starting Over…' : 'Retake World'}
          </Button>
        )}
        <Button fullWidth disabled={proceeding || retaking} onClick={handleProceed}>
          Proceed to Next World
        </Button>
      </div>
    </div>
  )
}
