/**
 * A minimal, purpose-built in-memory stand-in for the subset of the supabase-js query builder
 * this codebase actually calls (select/eq/order/maybeSingle/single/insert/update/upsert, plus
 * three auth methods). Not a general Supabase mock — deliberately narrow, so an unsupported call
 * throws loudly (`Unsupported ...`) rather than silently returning something misleading. This is
 * for integration tests that exercise real orchestration logic (lib/game.ts, lib/useSession.ts)
 * without hitting a real database — see docs/QA_REQUIREMENTS.md §1.
 */

type Row = Record<string, unknown>

interface AuthUpdateUserResult {
  data: { user: { id: string; email?: string; email_confirmed_at?: string | null } | null }
  error: Error | null
}

export class FakeSupabase {
  private tables = new Map<string, Row[]>()
  private updateUserResult: AuthUpdateUserResult = {
    data: { user: { id: 'fake-user', email_confirmed_at: null } },
    error: null,
  }

  /** Seeds a table's rows directly, bypassing the query builder — for test setup, not app code paths. */
  seed(table: string, rows: Row[]) {
    this.tables.set(table, rows.map((r) => ({ ...r })))
  }

  /** Reads a table's current rows directly — for test assertions, not app code paths. */
  peek(table: string): Row[] {
    return this.rows(table).map((r) => ({ ...r }))
  }

  reset() {
    this.tables.clear()
    this.updateUserResult = { data: { user: { id: 'fake-user', email_confirmed_at: null } }, error: null }
  }

  /** Controls what the next `auth.updateUser()` call resolves to. */
  setUpdateUserResult(result: AuthUpdateUserResult) {
    this.updateUserResult = result
  }

  private rows(table: string): Row[] {
    if (!this.tables.has(table)) this.tables.set(table, [])
    return this.tables.get(table)!
  }

  from(table: string) {
    const filters: [string, unknown][] = []
    let selectOpts: { count?: string; head?: boolean } | undefined
    let op: 'select' | 'insert' | 'update' | 'upsert' = 'select'
    let payload: Row | Row[] | undefined
    let upsertOnConflict: string[] = []
    let singleMode: 'strict' | 'maybe' | null = null

    const matches = (row: Row) => filters.every(([col, val]) => row[col] === val)

    const execute = () => {
      const rows = this.rows(table)

      if (op === 'insert') {
        const toInsert = (Array.isArray(payload) ? payload : [payload!]).map((r) => ({ ...r }))
        rows.push(...toInsert)
        return { data: toInsert, error: null }
      }

      if (op === 'update') {
        const affected = rows.filter(matches)
        affected.forEach((r) => Object.assign(r, payload as Row))
        return { data: affected, error: null }
      }

      if (op === 'upsert') {
        const incoming = (Array.isArray(payload) ? payload : [payload!]).map((r) => ({ ...r }))
        for (const row of incoming) {
          const existing = upsertOnConflict.length
            ? rows.find((r) => upsertOnConflict.every((c) => r[c] === row[c]))
            : undefined
          if (existing) {
            Object.assign(existing, row)
          } else {
            rows.push(row)
          }
        }
        return { data: incoming, error: null }
      }

      // select
      const matched = rows.filter(matches)
      if (selectOpts?.count === 'exact' && selectOpts.head) {
        return { count: matched.length, data: null, error: null }
      }
      if (singleMode === 'strict') {
        return matched[0]
          ? { data: { ...matched[0] }, error: null }
          : { data: null, error: new Error(`FakeSupabase: no row in "${table}" matching ${JSON.stringify(filters)}`) }
      }
      if (singleMode === 'maybe') {
        return { data: matched[0] ? { ...matched[0] } : null, error: null }
      }
      return { data: matched.map((r) => ({ ...r })), error: null }
    }

    const builder = {
      select(_cols?: string, opts?: { count?: string; head?: boolean }) {
        selectOpts = opts
        return builder
      },
      eq(col: string, val: unknown) {
        filters.push([col, val])
        return builder
      },
      order() {
        return builder
      },
      maybeSingle() {
        singleMode = 'maybe'
        return builder
      },
      single() {
        singleMode = 'strict'
        return builder
      },
      insert(rows: Row | Row[]) {
        op = 'insert'
        payload = rows
        return builder
      },
      update(patch: Row) {
        op = 'update'
        payload = patch
        return builder
      },
      upsert(rows: Row | Row[], opts?: { onConflict?: string }) {
        op = 'upsert'
        payload = rows
        upsertOnConflict = (opts?.onConflict ?? '').split(',').filter(Boolean)
        return builder
      },
      // Makes the builder awaitable directly, matching supabase-js's thenable query builders.
      then(resolve: (v: unknown) => void, reject: (e: unknown) => void) {
        try {
          resolve(execute())
        } catch (e) {
          reject(e)
        }
      },
    }
    return builder
  }

  auth = {
    getSession: async () => ({ data: { session: null }, error: null }),
    signInAnonymously: async () => ({ data: { user: null }, error: new Error('Not used by these tests') }),
    updateUser: async (_payload: { email: string; password: string }) => this.updateUserResult,
  }
}
