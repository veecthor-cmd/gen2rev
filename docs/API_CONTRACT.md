# Gen2Rev — `lib/*.ts` API Contract

Status: written 2026-08-25. This is the de facto internal API for the app — there is no server API
to document instead (see `ARCHITECTURE.md` §3). Every function below lives in `app/src/lib/` and is
called directly from page components. Keep this in sync when a function's signature or contract
changes; it doesn't need to track every implementation detail, just what a caller needs to know.

Pure functions (no I/O, unit-tested directly) are marked **pure**. Everything else reads/writes the
real Supabase project through `lib/supabase.ts`'s client and is subject to the RLS policies in
`BACKEND_REQUIREMENTS.md` §1 — calls will silently return empty/null (for SELECT) or fail (for
INSERT/UPDATE) if the caller isn't authenticated as the row's owner.

## `lib/grading.ts`

| Function | Signature | Contract |
|---|---|---|
| `isRecallCorrect` **(pure)** | `(userInput: string, correctAnswer: string, mode: DifficultyMode) => boolean` | Easy/medium: case-insensitive, trailing punctuation ignored, one trailing `s`/`es` interchangeable. Hard: exact trimmed match, case-sensitive. |
| `isMultipleChoiceCorrect` **(pure)** | `(selectedIndex: number \| null, correctIndex: number) => boolean` | `null` (nothing selected) is always `false`. |
| `isSequenceCorrect` **(pure)** | `(order: number[], correctOrder: number[]) => boolean` | Element-wise equality; also `false` on a length mismatch (defensive — shouldn't happen given both arrays are built from the same items list). |

## `lib/game.ts`

Grouped by the feature area each function serves.

**World / challenge reads**
- `getWorldsWithProgress(playerId): Promise<WorldWithProgress[]>` — every world joined with the
  player's `world_progress` row; a world with no row gets `status: 'locked'` (see
  `BACKEND_REQUIREMENTS.md` §1 — `locked` is a derived default, not usually a stored value).
- `getWorldBySlug(bookSlug): Promise<World | null>`
- `getChallenges(worldId, tier?): Promise<{ challenges: Challenge[]; usedFallback: boolean }>` —
  serves `tier`'s content if any exists for that world, else silently falls back to `medium` and
  sets `usedFallback: true` so the UI can show an honest note. As of 2026-08-25 all 14 books have
  content at every tier, so `usedFallback` is never actually `true` in production today — kept as
  the defensive default, not because any book currently needs it.
- `getChallengeCount(worldId, tier?): Promise<number>` — same fallback rule as `getChallenges`,
  used where only the count is needed (e.g. Home's "Challenge N of M" resume label).

**Progress / attempt tracking** — all of these are `world_progress` reads/writes scoped to
`(playerId, worldId)`:
- `getWorldProgress`, `saveWorldProgress(playerId, worldId, currentIndex, sessionResults)` (called
  after every answer, not just at the end — this is what makes mid-world resume possible),
  `resetWorldProgress` (call before Retake so Play doesn't resume into the run being discarded),
  `incrementWorldAttempt` (call once per finished run, before `completeWorld` — a run's rewards
  aren't committed until the player clicks Proceed, so retaking discards them entirely; returns the
  new count so the Review screen can gate the Retake button without a second round-trip).
- `recordAttempt(playerId, challengeId, isCorrect)` — one `challenge_attempt` row per submitted
  answer, fire-and-forget from the caller's perspective (not awaited for its result anywhere).

**Completing a world**
- `computePointsEarned(correctCount): number` **(pure)** — `correctCount * 10 + 20` (flat
  per-item reward plus a completion bonus).
- `completeWorld(playerId, world, correctCount, bossItems): Promise<{ pointsEarned, newStreak,
  nextWorldUnlocked }>` — **not atomic** (see `ARCHITECTURE.md` §3/§6): sequentially marks
  `world_progress` complete, unlocks the next world (inserts its `world_progress` row if it
  doesn't already exist — idempotent against a replayed completion), awards points, bumps the
  streak, and adds boss items to the Memory Vault. Call this exactly once per accepted run (Review
  screen's Proceed button), never on every answer.
- `computeStreakUpdate(lastActiveDate, today, currentStreak, longestStreak): StreakUpdate` **(pure)**
  — `today`/`lastActiveDate` are plain `YYYY-MM-DD` strings (UTC-safe day arithmetic internally, no
  `Date.now()` call, which is what makes this unit-testable across leap-year/month/year boundaries).
  **No grace period**: missing even one calendar day resets `current_streak` to 1 — confirmed as
  current actual behavior 2026-08-25, not a design decision made that session (flagged as a
  spec-vs-code gap against `QA_REQUIREMENTS.md` §1's mention of a "grace-period rule").

**Memory Vault**
- `getVaultEntries(playerId): Promise<VaultEntryWithChallenge[]>` — ordered by `next_review_at`
  ascending, so `[0]` is always the soonest-due entry (relied on by Home's "today's verse" nudge).
- `computeVaultReviewProgress(remembered, currentStreak): { review_streak, review_interval }`
  **(pure)** — interval sequence 1/2/4/7/14/30/60 days, indexed by the *new* streak and capped at
  the sequence's last value; a miss resets both to the start (0 streak, 1-day interval).
- `reviewVaultEntry(entryId, remembered, currentStreak): Promise<VaultReviewUpdate>` — wraps the
  pure function above with the `Date.now()`-dependent `next_review_at` timestamp and persists it.
  Takes `currentStreak` from the caller (already in memory from `getVaultEntries`) rather than
  re-fetching it.

**Player profile / account**
- `getPlayer(playerId): Promise<Player>` — throws if no row exists (uses `.single()`, not
  `.maybeSingle()` — every authenticated session has a `player` row by construction, so a missing
  one is treated as a real error, not an expected empty case).
- `updatePlayerProfile(playerId, displayName, avatarId)` — both params nullable (Onboarding's
  optional name/avatar step).
- `setDifficultyMode(playerId, mode)`.
- `getWorldsCompleteCount(playerId): Promise<number>`.
- `getStreakAndPoints(playerId): Promise<{ currentStreak, totalPoints }>` — defaults both to `0`
  if no `streak`/`points` row exists yet (a brand-new guest who hasn't finished a world).
- `claimAccount(playerId, email, password): Promise<{ needsEmailConfirmation: boolean }>` — calls
  Supabase Auth's `updateUser` while signed in anonymously (same `auth.uid()`, so every other
  table's rows stay attached automatically — see `ARCHITECTURE.md` §3). **Fails atomically**: if
  `updateUser` errors (e.g. the real "email rate limit exceeded" this project has hit in
  production), the function throws before touching the `player` row at all — never a
  half-claimed state. Verified by `sessionFlow.integration.test.ts`.

## `lib/useSession.ts`

- `useSession(): { userId: string \| null; loading: boolean; error: string \| null }` — the root
  hook `App.tsx` gates all routing behind. Internally uses a module-level singleton promise so
  React StrictMode's double-mount (or any other concurrent mount) can't fire two competing
  `signInAnonymously()` calls — this exact race was a real production bug on 2026-08-13.
- `ensureWorldOneUnlocked(playerId): Promise<void>` — exported for testing (2026-08-25). Creates
  World 1's `world_progress` row (`status: 'in_progress'`) if missing; a no-op if it already
  exists. Called on **both** the brand-new-session and returning-session branches inside
  `useSession` — this dual-branch call was itself a 2026-08-18 bug fix (a returning guest whose
  World 1 row went missing, e.g. from a manual cleanup delete, would otherwise see every world
  permanently locked with no recovery path). Regression-tested in `sessionFlow.integration.test.ts`.

## `lib/sessionContext.ts`

- `SessionContext: React.Context<{ userId: string } | null>` and `useCurrentPlayer()` — thin
  context plumbing so page components don't each need `useSession()`'s loading/error branches;
  `useCurrentPlayer()` throws if called outside the provider (a programmer error, not a runtime
  state the UI needs to handle).
