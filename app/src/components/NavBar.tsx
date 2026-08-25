import { useLocation, useNavigate } from 'react-router-dom'

const ITEMS = [
  { path: '/home', icon: '🏠', label: 'Home' },
  { path: '/map', icon: '🗺️', label: 'Journey' },
  { path: '/vault', icon: '🗝️', label: 'Vault' },
  { path: '/profile', icon: '🌱', label: 'Profile' },
  { path: '/share', icon: '✦', label: 'Share' },
] as const

/** Quick-nav row between the app's five hub screens. Not shown during Play/Boss Battle, same rationale as AppHeader — no exit affordance mid-gameplay. */
export function NavBar() {
  const location = useLocation()
  const navigate = useNavigate()

  return (
    <nav style={{ display: 'flex', justifyContent: 'space-around', padding: '12px 12px 16px' }}>
      {ITEMS.map((item) => {
        const active = location.pathname === item.path
        return (
          <button
            key={item.path}
            onClick={() => navigate(item.path)}
            aria-current={active ? 'page' : undefined}
            style={{
              all: 'unset',
              cursor: 'pointer',
              display: 'flex',
              flexDirection: 'column',
              alignItems: 'center',
              gap: 2,
              fontFamily: 'var(--font-label)',
              fontSize: 10,
              fontWeight: 600,
              color: active ? 'var(--color-accent-olive)' : 'var(--color-text-primary)',
              opacity: active ? 1 : 0.6,
            }}
          >
            <span style={{ fontSize: 18 }}>{item.icon}</span>
            {item.label}
          </button>
        )
      })}
    </nav>
  )
}
