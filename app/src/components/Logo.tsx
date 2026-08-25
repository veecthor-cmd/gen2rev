import { Link } from 'react-router-dom'

interface LogoProps {
  size?: 'small' | 'large'
}

/** The wordmark, everywhere it appears, always links home — standard site-logo convention. */
export function Logo({ size = 'small' }: LogoProps) {
  return (
    <Link
      to="/"
      className="wordmark"
      style={{
        fontSize: size === 'small' ? 20 : undefined,
        textDecoration: 'none',
        color: 'var(--color-text-primary)',
        display: 'inline-block',
      }}
      aria-label="Gen2Rev home"
    >
      Gen2Rev
    </Link>
  )
}

/** Persistent header bar for in-app screens (not shown during active Challenge/Boss Battle — keeps gameplay focused). */
export function AppHeader() {
  return (
    <div style={{ padding: '20px 24px 0' }}>
      <Logo />
    </div>
  )
}
