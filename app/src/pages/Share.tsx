import { useEffect, useState } from 'react'
import { useCurrentPlayer } from '../lib/sessionContext'
import { getWorldsCompleteCount } from '../lib/game'
import { LoadingPanel } from '../components/StatePanel'
import { AppHeader } from '../components/Logo'
import { NavBar } from '../components/NavBar'
import { Button } from '../components/Button'

const SHARE_URL = window.location.origin + '/'

export function Share() {
  const { userId } = useCurrentPlayer()
  const [worldsComplete, setWorldsComplete] = useState<number | null>(null)
  const [copyLabel, setCopyLabel] = useState('Copy')

  useEffect(() => {
    let cancelled = false
    getWorldsCompleteCount(userId).then((n) => !cancelled && setWorldsComplete(n))
    return () => {
      cancelled = true
    }
  }, [userId])

  async function copyLink() {
    try {
      await navigator.clipboard.writeText(SHARE_URL)
      setCopyLabel('Copied!')
      setTimeout(() => setCopyLabel('Copy'), 2000)
    } catch {
      setCopyLabel('Select & copy the link above')
    }
  }

  async function shareVia() {
    if (navigator.share) {
      try {
        await navigator.share({ title: 'Gen2Rev', text: 'Every verse, remembered. Play Gen2Rev with me.', url: SHARE_URL })
      } catch {
        // user cancelled the native share sheet — nothing to do
      }
    } else {
      copyLink()
    }
  }

  async function shareProgress() {
    const text = `I just cleared World ${worldsComplete} in Gen2Rev — Bible-literacy game, one verse at a time. Play free:`
    if (navigator.share) {
      try {
        await navigator.share({ title: 'Gen2Rev', text, url: SHARE_URL })
      } catch {
        // cancelled
      }
    } else {
      await navigator.clipboard.writeText(`${text} ${SHARE_URL}`)
      setCopyLabel('Progress copied!')
      setTimeout(() => setCopyLabel('Copy'), 2000)
    }
  }

  if (worldsComplete === null) {
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
        <div style={{ fontSize: 48 }}>✦</div>
        <h1 className="world-title">Share Gen2Rev</h1>
        <p className="body-small">Invite friends or your group chat — no account needed to start.</p>
      </div>

      <div
        style={{
          display: 'flex',
          alignItems: 'center',
          gap: 8,
          margin: '0 24px 24px',
          background: '#fff',
          border: '1.5px dashed var(--color-accent-olive)',
          borderRadius: 'var(--radius-md)',
          padding: 16,
        }}
      >
        <span style={{ fontFamily: 'var(--font-label)', fontSize: 13, flex: 1, overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>
          {SHARE_URL}
        </span>
        <button
          onClick={copyLink}
          style={{
            background: 'var(--color-accent-olive)',
            color: '#fff',
            border: 'none',
            borderRadius: 'var(--radius-sm)',
            padding: '8px 14px',
            fontFamily: 'var(--font-label)',
            fontWeight: 600,
            fontSize: 13,
            cursor: 'pointer',
          }}
        >
          {copyLabel}
        </button>
      </div>

      <div style={{ display: 'flex', flexDirection: 'column', gap: 16, padding: '0 24px' }}>
        <Button fullWidth onClick={shareVia}>
          Share via…
        </Button>
        {worldsComplete > 0 && (
          <Button variant="secondary" fullWidth onClick={shareProgress}>
            Share My Progress (World {worldsComplete} Complete!)
          </Button>
        )}
      </div>
    </div>
  )
}
