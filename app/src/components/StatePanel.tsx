import type { ReactNode } from 'react'

interface StatePanelProps {
  icon: string
  title: string
  body: string
  action?: ReactNode
  tone?: 'default' | 'error'
}

/** The one shared empty/loading/error/offline pattern, per FRONTEND_REQUIREMENTS.md §2 — reused everywhere, not bespoke per screen. */
export function StatePanel({ icon, title, body, action, tone = 'default' }: StatePanelProps) {
  return (
    <div className="state-panel">
      <div
        className="state-panel__icon"
        style={tone === 'error' ? { color: 'var(--color-state-error)' } : undefined}
      >
        {icon}
      </div>
      <h3 className="state-panel__title">{title}</h3>
      <p className="state-panel__body">{body}</p>
      {action}
    </div>
  )
}

export function LoadingPanel() {
  return (
    <div className="skeleton-wrap" style={{ padding: 24 }}>
      <div className="skeleton" style={{ height: 20, width: '60%', marginBottom: 10 }} />
      <div className="skeleton" style={{ height: 20, width: '90%', marginBottom: 10 }} />
      <div className="skeleton" style={{ height: 20, width: '75%' }} />
    </div>
  )
}
