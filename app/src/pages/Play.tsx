import { useEffect, useMemo, useState } from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import { useCurrentPlayer } from '../lib/sessionContext'
import {
  getChallenges,
  getPlayer,
  getWorldBySlug,
  getWorldProgress,
  incrementWorldAttempt,
  recordAttempt,
  saveWorldProgress,
} from '../lib/game'
import type { Challenge, ChallengeResult, DifficultyMode, PersistedResult, World, WorldProgress } from '../lib/types'
import { DIFFICULTY_LABEL } from '../lib/types'
import { isMultipleChoiceCorrect, isRecallCorrect, isSequenceCorrect } from '../lib/grading'
import { Button } from '../components/Button'
import { LoadingPanel, StatePanel } from '../components/StatePanel'

export function Play() {
  const { bookSlug } = useParams<{ bookSlug: string }>()
  const { userId } = useCurrentPlayer()
  const navigate = useNavigate()

  const [world, setWorld] = useState<World | null>(null)
  const [challenges, setChallenges] = useState<Challenge[] | null>(null)
  const [progress, setProgress] = useState<WorldProgress | null>(null)
  const [usedFallback, setUsedFallback] = useState(false)
  const [requestedMode, setRequestedMode] = useState<DifficultyMode>('medium')
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    if (!bookSlug) return
    let cancelled = false
    getWorldBySlug(bookSlug)
      .then(async (w) => {
        if (!w) throw new Error('World not found')
        const player = await getPlayer(userId)
        const [{ challenges: c, usedFallback: fb }, p] = await Promise.all([
          getChallenges(w.id, player.difficulty_mode),
          getWorldProgress(userId, w.id),
        ])
        if (cancelled) return
        setWorld(w)
        setChallenges(c)
        setProgress(p)
        setUsedFallback(fb)
        setRequestedMode(player.difficulty_mode)
      })
      .catch((e) => !cancelled && setError(e.message))
    return () => {
      cancelled = true
    }
  }, [bookSlug, userId])

  if (error) {
    return (
      <div className="screen">
        <StatePanel icon="⚠️" title="Couldn't load this world" body={error} tone="error" />
      </div>
    )
  }

  if (!world || !challenges) {
    return (
      <div className="screen">
        <LoadingPanel />
      </div>
    )
  }

  if (challenges.length === 0) {
    return (
      <div className="screen">
        <StatePanel
          icon="📖"
          title="No challenges yet"
          body={`${world.title} doesn't have content ready to play yet.`}
          action={
            <Button onClick={() => navigate('/map')}>Back to Map</Button>
          }
        />
      </div>
    )
  }

  // Handing off to a child typed with non-null world/challenges — the cleanest
  // fix for a real TS limitation, not a workaround: narrowing above doesn't
  // survive into closures (handleAnswered) that React may invoke on a later
  // tick, since TS can't prove the state hasn't been reassigned by then.
  return (
    <PlayLoaded
      world={world}
      challenges={challenges}
      progress={progress}
      mode={requestedMode}
      usedFallback={usedFallback}
    />
  )
}

function PlayLoaded({
  world,
  challenges,
  progress,
  mode,
  usedFallback,
}: {
  world: World
  challenges: Challenge[]
  progress: WorldProgress | null
  mode: DifficultyMode
  usedFallback: boolean
}) {
  const { userId } = useCurrentPlayer()
  const navigate = useNavigate()

  const ordered = useMemo(() => {
    const regular = challenges.filter((c) => !c.is_boss_item)
    const boss = challenges.filter((c) => c.is_boss_item)
    return [...regular, ...boss]
  }, [challenges])

  const challengeById = useMemo(() => new Map(challenges.map((c) => [c.id, c])), [challenges])

  // A saved position from a previous, unfinished visit — resume there instead of restarting at 1.
  const resumeIndex = progress ? Math.min(progress.current_index, ordered.length) : 0
  const resumeResults = useMemo<ChallengeResult[]>(() => {
    if (!progress) return []
    return progress.session_results.flatMap((r) => {
      const challenge = challengeById.get(r.challenge_id)
      return challenge ? [{ challenge, isCorrect: r.isCorrect, userAnswerDisplay: r.userAnswerDisplay }] : []
    })
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progress, challengeById])

  const [index, setIndex] = useState(resumeIndex)
  const [results, setResults] = useState<ChallengeResult[]>(resumeResults)
  const [submitting, setSubmitting] = useState(false)

  const bossStartIndex = useMemo(
    () => ordered.findIndex((c) => c.is_boss_item),
    [ordered],
  )

  // Edge case: the player answered every item last visit but never reached Review (closed the
  // tab right at the finish line). Finish that attempt now instead of crashing on an out-of-bounds
  // `ordered[index]` read.
  useEffect(() => {
    if (resumeIndex < ordered.length) return
    let cancelled = false
    ;(async () => {
      const attemptCount = await incrementWorldAttempt(userId, world.id)
      if (cancelled) return
      navigate(`/review/${world.book_slug}`, { state: { world, results: resumeResults, attemptCount }, replace: true })
    })()
    return () => {
      cancelled = true
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])

  if (resumeIndex >= ordered.length) {
    return (
      <div className="screen">
        <LoadingPanel />
      </div>
    )
  }

  const current = ordered[index]
  const isBossPhase = current.is_boss_item

  async function handleAnswered(isCorrect: boolean, userAnswerDisplay: string) {
    setSubmitting(true)
    const thisResult: ChallengeResult = { challenge: current, isCorrect, userAnswerDisplay }
    const nextResults = [...results, thisResult]
    const nextIndex = index + 1
    const isLast = index === ordered.length - 1

    const persisted: PersistedResult[] = nextResults.map((r) => ({
      challenge_id: r.challenge.id,
      isCorrect: r.isCorrect,
      userAnswerDisplay: r.userAnswerDisplay,
    }))
    await saveWorldProgress(userId, world.id, nextIndex, persisted)

    if (isLast) {
      const attemptCount = await incrementWorldAttempt(userId, world.id)
      navigate(`/review/${world.book_slug}`, { state: { world, results: nextResults, attemptCount } })
      return
    }

    setResults(nextResults)
    setIndex(nextIndex)
    setSubmitting(false)
  }

  const progressPct = Math.round(((index + 1) / ordered.length) * 100)

  return (
    <div className="screen">
      {isBossPhase ? (
        <div style={{ background: 'var(--color-text-primary)', padding: '32px 24px', textAlign: 'center' }}>
          <div style={{ fontSize: 40, marginBottom: 8 }}>⚔️</div>
          <h1 className="boss-header" style={{ color: 'var(--color-bg-parchment)' }}>
            Boss Battle: {world.title}
          </h1>
          <div style={{ height: 14, background: 'rgba(244,237,224,0.15)', borderRadius: 999, overflow: 'hidden', marginTop: 16 }}>
            <div style={{ height: '100%', width: `${progressPct}%`, background: 'var(--color-highlight-gold)' }} />
          </div>
          <p style={{ fontFamily: 'var(--font-label)', fontSize: 12, color: 'var(--color-bg-parchment)', opacity: 0.8, marginTop: 6 }}>
            {index - bossStartIndex + 1} of {ordered.length - bossStartIndex} boss challenges
          </p>
        </div>
      ) : (
        <div className="challenge-top">
          <span
            className="challenge-exit"
            role="button"
            onClick={() => navigate('/map')}
          >
            ✕
          </span>
          <div className="progress-track">
            <div className="progress-fill" style={{ width: `${progressPct}%` }} />
          </div>
          <span className="progress-label">{index + 1} / {ordered.length}</span>
        </div>
      )}

      {usedFallback && (
        <p
          className="body-small"
          style={{ textAlign: 'center', color: 'var(--color-accent-olive)', opacity: 0.8, margin: '8px 24px 0' }}
        >
          {DIFFICULTY_LABEL[mode]} content for {world.title} isn't ready yet — playing on Medium.
        </p>
      )}

      <ChallengeBody key={current.id} challenge={current} disabled={submitting} mode={mode} onAnswered={handleAnswered} />
    </div>
  )
}

function ChallengeBody({
  challenge,
  disabled,
  mode,
  onAnswered,
}: {
  challenge: Challenge
  disabled: boolean
  mode: DifficultyMode
  onAnswered: (correct: boolean, userAnswerDisplay: string) => void
}) {
  const { userId } = useCurrentPlayer()

  async function submit(isCorrect: boolean, userAnswerDisplay: string) {
    await recordAttempt(userId, challenge.id, isCorrect)
    onAnswered(isCorrect, userAnswerDisplay)
  }

  return (
    // data-challenge-id lets e2e tests detect a genuine re-mount to the next challenge — the
    // surrounding structure/classes stay the same across a transition, which isn't enough on its
    // own to tell "still this question, mid-submit" apart from "already the next question."
    <div className="challenge-body" data-challenge-id={challenge.id} style={{ paddingTop: 32 }}>
      <p className="challenge-ref">{challenge.verse_ref}</p>
      <p className="challenge-prompt">{challenge.prompt}</p>

      {challenge.answer_key.type === 'recall' && (
        <RecallChallenge
          template={challenge.answer_key.template}
          answer={challenge.answer_key.answer}
          disabled={disabled}
          mode={mode}
          onSubmit={submit}
        />
      )}
      {challenge.answer_key.type === 'multiple_choice' && (
        <MultipleChoiceChallenge
          options={challenge.answer_key.options}
          correctIndex={challenge.answer_key.correct_index}
          disabled={disabled}
          onSubmit={submit}
        />
      )}
      {challenge.answer_key.type === 'sequence' && (
        <SequenceChallenge
          items={challenge.answer_key.items}
          correctOrder={challenge.answer_key.correct_order}
          disabled={disabled}
          onSubmit={submit}
        />
      )}
    </div>
  )
}

function RecallChallenge({
  template,
  answer,
  disabled,
  mode,
  onSubmit,
}: {
  template: string
  answer: string
  disabled: boolean
  mode: DifficultyMode
  onSubmit: (correct: boolean, userAnswerDisplay: string) => void
}) {
  const [value, setValue] = useState('')
  const [before, after] = template.split('___')

  return (
    <>
      <div className="recall-card">
        {before}
        <input
          type="text"
          className="recall-blank"
          value={value}
          onChange={(e) => setValue(e.target.value)}
          placeholder="___"
          disabled={disabled}
        />
        {after}
      </div>
      <div className="challenge-footer">
        <Button
          fullWidth
          disabled={disabled || value.trim().length === 0}
          onClick={() => onSubmit(isRecallCorrect(value, answer, mode), value.trim())}
        >
          Submit Answer
        </Button>
      </div>
    </>
  )
}

function MultipleChoiceChallenge({
  options,
  correctIndex,
  disabled,
  onSubmit,
}: {
  options: string[]
  correctIndex: number
  disabled: boolean
  onSubmit: (correct: boolean, userAnswerDisplay: string) => void
}) {
  const [selected, setSelected] = useState<number | null>(null)
  const letters = ['A', 'B', 'C', 'D']

  return (
    <>
      <div className="option-list">
        {options.map((opt, i) => (
          <button
            key={opt}
            className={`option${selected === i ? ' is-selected' : ''}`}
            onClick={() => setSelected(i)}
            disabled={disabled}
          >
            <span className="option-letter">{letters[i]}</span> {opt}
          </button>
        ))}
      </div>
      <div className="challenge-footer">
        <Button
          fullWidth
          disabled={disabled || selected === null}
          onClick={() => onSubmit(isMultipleChoiceCorrect(selected, correctIndex), selected !== null ? options[selected] : '')}
        >
          Submit Answer
        </Button>
      </div>
    </>
  )
}

function SequenceChallenge({
  items,
  correctOrder,
  disabled,
  onSubmit,
}: {
  items: string[]
  correctOrder: number[]
  disabled: boolean
  onSubmit: (correct: boolean, userAnswerDisplay: string) => void
}) {
  const [order, setOrder] = useState<number[]>(() => {
    // start shuffled (reverse) so it's not trivially already-correct
    return items.map((_, i) => i).reverse()
  })

  function move(pos: number, dir: -1 | 1) {
    const target = pos + dir
    if (target < 0 || target >= order.length) return
    const next = [...order]
    ;[next[pos], next[target]] = [next[target], next[pos]]
    setOrder(next)
  }

  function checkCorrect() {
    return isSequenceCorrect(order, correctOrder)
  }

  return (
    <>
      <div className="sequence-list">
        {order.map((itemIndex, pos) => (
          <div className="sequence-item" key={itemIndex}>
            <span className="sequence-number">{pos + 1}</span>
            <span className="sequence-text">{items[itemIndex]}</span>
            <div className="sequence-reorder">
              <button onClick={() => move(pos, -1)} disabled={disabled || pos === 0}>▲</button>
              <button onClick={() => move(pos, 1)} disabled={disabled || pos === order.length - 1}>▼</button>
            </div>
          </div>
        ))}
      </div>
      <div className="challenge-footer">
        <Button
          fullWidth
          disabled={disabled}
          onClick={() => onSubmit(checkCorrect(), order.map((i) => items[i]).join(' → '))}
        >
          Submit Order
        </Button>
      </div>
    </>
  )
}
