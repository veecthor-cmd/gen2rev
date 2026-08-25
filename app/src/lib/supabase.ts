import { createClient } from '@supabase/supabase-js'

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error('Missing VITE_SUPABASE_URL or VITE_SUPABASE_ANON_KEY')
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey, {
  auth: {
    // Explicit, not just relying on the library default: a guest's session
    // (and therefore their progress) must survive closing the tab/browser
    // with zero action from them, per BACKEND_REQUIREMENTS.md §2.
    persistSession: true,
    autoRefreshToken: true,
    detectSessionInUrl: false, // no OAuth redirect flow in this SPA yet
  },
})
