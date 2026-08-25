import { createContext, useContext } from 'react'

export interface SessionContextValue {
  userId: string
}

export const SessionContext = createContext<SessionContextValue | null>(null)

export function useCurrentPlayer(): SessionContextValue {
  const ctx = useContext(SessionContext)
  if (!ctx) throw new Error('useCurrentPlayer must be used within SessionContext.Provider')
  return ctx
}
