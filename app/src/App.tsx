import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom'
import { useSession } from './lib/useSession'
import { SessionContext } from './lib/sessionContext'
import { StatePanel, LoadingPanel } from './components/StatePanel'
import { Landing } from './pages/Landing'
import { Onboarding } from './pages/Onboarding'
import { WorldMap } from './pages/WorldMap'
import { Play } from './pages/Play'
import { Review } from './pages/Review'
import { Result } from './pages/Result'
import { MemoryVault } from './pages/MemoryVault'
import { Profile } from './pages/Profile'
import { Home } from './pages/Home'
import { Share } from './pages/Share'

function App() {
  const session = useSession()

  if (session.loading) {
    return (
      <div className="screen">
        <LoadingPanel />
      </div>
    )
  }

  if (session.error || !session.userId) {
    return (
      <div className="screen">
        <StatePanel
          icon="⚠️"
          title="Something went wrong"
          body={session.error ?? 'Could not start a session. Check your connection and try again.'}
          tone="error"
          action={
            <button className="btn btn--primary" onClick={() => window.location.reload()}>
              Try Again
            </button>
          }
        />
      </div>
    )
  }

  return (
    <SessionContext.Provider value={{ userId: session.userId }}>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Landing />} />
          <Route path="/onboarding" element={<Onboarding />} />
          <Route path="/map" element={<WorldMap />} />
          <Route path="/play/:bookSlug" element={<Play />} />
          <Route path="/review/:bookSlug" element={<Review />} />
          <Route path="/result/:bookSlug" element={<Result />} />
          <Route path="/vault" element={<MemoryVault />} />
          <Route path="/profile" element={<Profile />} />
          <Route path="/home" element={<Home />} />
          <Route path="/share" element={<Share />} />
          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </BrowserRouter>
    </SessionContext.Provider>
  )
}

export default App
