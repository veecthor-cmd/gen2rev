import { useEffect, useMemo, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useCurrentPlayer } from '../lib/sessionContext'
import { getVaultEntries, reviewVaultEntry } from '../lib/game'
import type { VaultEntryWithChallenge } from '../lib/types'
import { LoadingPanel, StatePanel } from '../components/StatePanel'
import { AppHeader } from '../components/Logo'
import { NavBar } from '../components/NavBar'
import { Button } from '../components/Button'

function startOfDay(d: Date): number {
  const copy = new Date(d)
  copy.setHours(0, 0, 0, 0)
  return copy.getTime()
}

function dueLabel(nextReviewAt: string): { text: string; isToday: boolean } {
  const dayDiff = Math.round((startOfDay(new Date(nextReviewAt)) - startOfDay(new Date())) / 86400000)
  if (dayDiff <= 0) return { text: 'Due today', isToday: true }
  return { text: `Due in ${dayDiff} day${dayDiff === 1 ? '' : 's'}`, isToday: false }
}

export function MemoryVault() {
  const { userId } = useCurrentPlayer()
  const navigate = useNavigate()
  const [entries, setEntries] = useState<VaultEntryWithChallenge[] | null>(null)
  const [error, setError] = useState<string | null>(null)
  const [reviewQueue, setReviewQueue] = useState<VaultEntryWithChallenge[] | null>(null)
  const [reviewIndex, setReviewIndex] = useState(0)
  const [revealed, setRevealed] = useState(false)

  useEffect(() => {
    let cancelled = false
    getVaultEntries(userId)
      .then((e) => !cancelled && setEntries(e))
      .catch((e) => !cancelled && setError(e.message))
    return () => {
      cancelled = true
    }
  }, [userId])

  const dueEntries = useMemo(() => (entries ?? []).filter((e) => dueLabel(e.next_review_at).isToday), [entries])

  if (error) {
    return (
      <div className="screen">
        <AppHeader />
        <NavBar />
        <StatePanel icon="⚠️" title="Couldn't load your Vault" body={error} tone="error" />
      </div>
    )
  }

  if (!entries) {
    return (
      <div className="screen">
        <AppHeader />
        <NavBar />
        <LoadingPanel />
      </div>
    )
  }

  function startReview() {
    setReviewQueue(dueEntries)
    setReviewIndex(0)
    setRevealed(false)
  }

  async function handleAssessment(remembered: boolean) {
    const queue = reviewQueue!
    const entry = queue[reviewIndex]
    const update = await reviewVaultEntry(entry.id, remembered, entry.review_streak)
    setEntries((prev) => (prev ?? []).map((e) => (e.id === entry.id ? { ...e, ...update } : e)))

    const nextIndex = reviewIndex + 1
    if (nextIndex >= queue.length) {
      setReviewQueue(null)
    } else {
      setReviewIndex(nextIndex)
      setRevealed(false)
    }
  }

  if (reviewQueue) {
    const entry = reviewQueue[reviewIndex]
    return (
      <div className="screen">
        <AppHeader />
        <div className="challenge-top">
          <span className="challenge-exit" role="button" onClick={() => setReviewQueue(null)}>
            ✕
          </span>
          <div className="progress-track">
            <div className="progress-fill" style={{ width: `${(reviewIndex / reviewQueue.length) * 100}%` }} />
          </div>
          <span className="progress-label">
            {reviewIndex + 1} / {reviewQueue.length}
          </span>
        </div>

        <div className="challenge-body" style={{ paddingTop: 32 }}>
          <p className="challenge-ref">{entry.challenge.verse_ref}</p>
          {revealed ? (
            <div className="recall-card">&ldquo;{entry.challenge.verse_text}&rdquo;</div>
          ) : (
            <>
              <p className="challenge-prompt">Try to recall this verse from memory, then reveal it to check yourself.</p>
              <div style={{ display: 'flex', justifyContent: 'center' }}>
                <Button onClick={() => setRevealed(true)}>Reveal Verse</Button>
              </div>
            </>
          )}
        </div>

        {revealed && (
          <div className="challenge-footer" style={{ display: 'flex', gap: 16 }}>
            <Button variant="secondary" fullWidth onClick={() => handleAssessment(false)}>
              Need Practice
            </Button>
            <Button fullWidth onClick={() => handleAssessment(true)}>
              I Remembered It
            </Button>
          </div>
        )}
      </div>
    )
  }

  if (entries.length === 0) {
    return (
      <div className="screen">
        <AppHeader />
        <NavBar />
        <StatePanel
          icon="📖"
          title="No verses yet"
          body="Beat a Boss Battle to add its verses to your Memory Vault."
          action={
            <Button onClick={() => navigate('/map')}>Back to Your Journey</Button>
          }
        />
      </div>
    )
  }

  return (
    <div className="screen">
      <AppHeader />
      <NavBar />
      <div style={{ padding: '24px 24px 0', textAlign: 'center' }}>
        <p className="eyebrow">✦ Memory Vault ✦</p>
        <h1 className="world-title" style={{ marginTop: 8 }}>
          {entries.length} Verse{entries.length === 1 ? '' : 's'} Mastered
        </h1>
      </div>

      {dueEntries.length > 0 && (
        <div style={{ padding: 24 }}>
          <Button fullWidth onClick={startReview}>
            Review {dueEntries.length} due today
          </Button>
        </div>
      )}

      <div
        style={{
          display: 'flex',
          flexDirection: 'column',
          gap: 16,
          padding: `0 24px ${dueEntries.length > 0 ? 48 : 24}px`,
        }}
      >
        {entries.map((e) => {
          const due = dueLabel(e.next_review_at)
          return (
            <div key={e.id} className="card">
              <p className="challenge-ref" style={{ textAlign: 'left' }}>
                {e.challenge.verse_ref}
              </p>
              <p className="body-text" style={{ fontStyle: 'italic', marginBottom: 16 }}>
                &ldquo;{e.challenge.verse_text}&rdquo;
              </p>
              <span
                className="badge"
                style={{
                  display: 'inline-block',
                  padding: '4px 10px',
                  borderRadius: 'var(--radius-full)',
                  background: due.isToday ? '#FBF3E3' : 'var(--color-bg-parchment-dark)',
                  color: due.isToday ? 'var(--color-highlight-gold)' : 'var(--color-accent-olive)',
                }}
              >
                {due.text}
              </span>
            </div>
          )
        })}
      </div>
    </div>
  )
}
