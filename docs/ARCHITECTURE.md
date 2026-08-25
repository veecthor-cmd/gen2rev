# Gen2Rev — Architecture

Status: written 2026-08-25, describing the system **as actually built** through the difficulty-tier
rollout and initial test-suite work — not a pre-implementation plan. This doc did not exist before
this date; a 2026-08-22 whole-project audit (`MEMORY.md`) flagged its absence as the single biggest
documentation gap next to the missing test suite. Keep this current when the shape of the system
changes materially (new backend, new hosting, a real API server, etc.) — see `CLAUDE.md`.

---

## 1. System shape, in one paragraph

Gen2Rev is a single-page React app that talks **directly** to Supabase (Postgres + Auth) over the
`supabase-js` client SDK. There is no custom backend server, no API layer, and no separate staging
database — one Supabase project (`mlehvnufyxwtfbsddtgh`) serves local dev, every deployed
environment, and every automated test that hits a real database. All game logic (scoring, streak
math, points, spaced repetition, world-unlock rules) lives client-side in `app/src/lib/*.ts` and is
enforced by Postgres Row-Level Security (RLS) rather than a trusted server — the browser is, by
necessity, part of the trust boundary for *which rows a request can touch* (RLS), but not for *game
outcomes* (a determined player could forge a `challenge_attempt` row client-side; this is accepted
MVP-scale risk, not a gap anyone has treated as urgent — see §6).

```
┌─────────────────────────────┐
│  Browser (React SPA)         │
│  ── React Router pages ──    │
│  ── lib/game.ts (orchestr.)  │────┐
│  ── lib/grading.ts (pure)    │    │  supabase-js client SDK
│  ── lib/useSession.ts (auth) │    │  (anon key, RLS-enforced)
└─────────────────────────────┘    │
                                     ▼
                          ┌────────────────────┐
                          │  Supabase project    │
                          │  - Postgres (9 tables)│
                          │  - Auth (anonymous +  │
                          │    email/password)    │
                          │  - RLS on every table  │
                          └────────────────────┘
                                     ▲
                                     │  apply_migration / execute_sql
                                     │  (Supabase MCP, human/agent-run,
                                     │   never from app runtime code)
                          ┌────────────────────┐
                          │  Content pipeline     │
                          │  docs/content/*.md    │
                          │  → theological review │
                          │  → verbatim QA        │
                          │  → docs/ingest/*.sql  │
                          └────────────────────┘
```

Hosting: static build (Vite) deployed to Vercel (`gen2rev.vercel.app`), with a catch-all
`vercel.json` SPA rewrite (added 2026-08-16 after a real production 404 on deep-linked/refreshed
routes — see `MEMORY.md`). No server-side rendering, no edge functions.

## 2. Frontend

- **Stack**: React 19, Vite 6, TypeScript, React Router 7 (client-side routing only), plain CSS
  (tokens ported from `docs/mockups/styles.css`, no Tailwind — a deliberate choice made partly to
  avoid another native-binary dependency class on this project's Windows dev machine).
- **Routing** (`app/src/App.tsx`): `/` (Landing) → `/onboarding` (first-time only) → `/map`
  (World Map, the hub) → `/play/:bookSlug` → `/review/:bookSlug` → `/result/:bookSlug`, plus four
  standalone hub screens (`/vault`, `/profile`, `/home`, `/share`) reachable from `NavBar`. `App`
  itself gates all routes behind `useSession()` resolving — nothing renders until a guest (or
  returning) session exists.
- **State management**: no global store (Redux/Zustand/etc.) — each page owns its own
  `useState`/`useEffect` data-fetching, with one React Context (`SessionContext`, providing just
  `userId`) as the sole piece of app-wide state. This is a deliberate fit for the app's shape (a
  linear, mostly-sequential flow through a handful of screens), not an oversight — revisit only if
  a future feature needs state shared across more than two unrelated screens at once.
- **Component inventory**: page components in `app/src/pages/*.tsx` (one per route, ten total —
  Landing, Onboarding, WorldMap, Play, Review, Result, MemoryVault, Profile, Home, Share); shared
  components in `app/src/components/*.tsx` (`Button`, `StatePanel`/`LoadingPanel` — the universal
  empty/loading/error pattern from `FRONTEND_REQUIREMENTS.md` §2, `Logo`/`AppHeader`, `NavBar`).
  `Play.tsx` additionally defines its three challenge-type sub-components
  (`RecallChallenge`/`MultipleChoiceChallenge`/`SequenceChallenge`) inline rather than as separate
  files — small enough not to warrant splitting yet.

## 3. Backend: Supabase, no custom server

See `BACKEND_REQUIREMENTS.md` §1 for the live table-by-table schema and RLS policy list — this
section covers the *shape* of the backend, not the field-level detail.

- **Auth**: Supabase's native anonymous auth (`signInAnonymously`) creates a real `auth.users` row
  and a matching `player` row transparently on first load — no signup step, per the product's
  "single shareable link, zero setup" requirement. Claiming an account
  (`lib/game.ts`'s `claimAccount`) calls `auth.updateUser({ email, password })` *while already
  signed in anonymously*, which Supabase links to the same `auth.uid()` rather than creating a new
  identity — this is what makes "progress preserved on claim" true by construction (same foreign
  key everywhere) rather than something the app has to migrate.
- **Authorization**: entirely RLS-based. Every player-scoped table restricts SELECT/INSERT/UPDATE
  to rows where `auth.uid() = player_id` (or `= id` for `player`); `world` and `challenge` are
  public-read (shared reference data, not player-scoped). **No table has a DELETE policy** — the
  app never deletes anything, and this has a real, deliberate downstream consequence: automated
  tests that write real rows to this project (the e2e suite, `app/e2e/`) cannot clean up after
  themselves without a privileged service-role connection, which this project has not wired into
  any automated run (see §5 and `MEMORY.md` 2026-08-25).
- **No custom API server, no edge functions.** The browser talks to Postgres directly through
  `supabase-js` + RLS. This means every multi-table write (e.g. `completeWorld` touching
  `world_progress`, `points`, `points_log`, `streak`, and `vault_entry` in sequence) is
  **client-orchestrated, not atomic** — a network failure mid-sequence can leave a partial write.
  This is a known, accepted MVP-scale tradeoff (explicitly called out in `lib/game.ts`'s own
  comment on `completeWorld` as "a good candidate to move into a single Postgres function
  post-MVP for atomicity"), not an oversight — flagging it here so a future session doesn't
  rediscover it as a surprise.

## 4. Content pipeline (not app runtime code)

Ingesting a book's challenge content into the `challenge` table is a **human/agent-run workflow**,
not something the running app ever does. See `BACKEND_REQUIREMENTS.md` §4 for the full process and
`scripts/check-content-reviewed.mjs` for the technical review-gate enforcement added 2026-08-25.
Worth stating plainly here because it's an easy thing to assume is "backend code" when it isn't:
there is no ingestion server, no cron job, no endpoint — `docs/ingest/*.sql` files are applied
directly via the Supabase MCP's `apply_migration`, by whichever session is doing the ingesting.

## 5. Testing architecture

Three layers exist as of 2026-08-25 (`QA_REQUIREMENTS.md` §1's manual/exploratory layer is
explicitly not automated — Kachi's call, real users cover it):

| Layer | Tool | Talks to | Where |
|---|---|---|---|
| Unit | Vitest | Nothing (pure functions only) | `app/src/lib/*.test.ts` |
| Integration | Vitest + a hand-written in-memory fake (`app/src/lib/testUtils/fakeSupabase.ts`) | A fake, not a real database | `app/src/lib/*.integration.test.ts` |
| E2E | Playwright | The **real** Supabase project (no mocking, no staging DB — there isn't one) | `app/e2e/*.spec.ts` |

The integration layer mocks deliberately (a real Supabase test branch is a billable resource;
Kachi chose not to spin one up on 2026-08-25 — see `MEMORY.md`) — which means it does **not**
exercise real RLS policies. That's a genuine, known coverage gap, not a false sense of security:
the two worst production bugs this project has actually shipped (the 2026-08-13 anonymous
sign-in race, the 2026-08-18 missing-World-1-row self-heal) were both RLS/auth-adjacent, and only
the e2e layer — which hits the real project — actually exercises that surface. If this project
ever needs stronger integration coverage than "the orchestration logic calls the right methods in
the right order," a paid Supabase branch (or local `supabase start`) is the way, not more mocking.

E2E tests create real (harmless, PII-free) guest player rows in production on every run, with no
automated cleanup (see §3's DELETE-policy note) — periodic cleanup needs a privileged query, run
out-of-band by whoever has the service-role key, not embedded in the test suite. Account-claim is
deliberately not covered by e2e (it triggers a real Auth email send that this project's own history
shows is easy to rate-limit) — its logic is covered by the mocked integration layer instead.

**One-time setup needed before e2e can run on a fresh machine**: Chromium's OS-level shared
libraries (`libnspr4`, `libnss3`, etc.) aren't part of a bare WSL2 Ubuntu image, and installing
them needs `sudo`. Run this once, interactively, from `app/` inside the WSL2 Ubuntu shell:
`sudo npx playwright install --with-deps chromium`. This can't be done non-interactively (no
passwordless sudo is configured, confirmed 2026-08-25) — a Claude Code session cannot complete
this step on its own; it needs a human with the WSL2 user's password. Without it, `npm run
test:e2e` fails with `error while loading shared libraries: libnspr4.so: cannot open shared object
file`, not a Playwright or app bug.

## 6. Known architectural debt / accepted risk (read before "fixing" any of these)

Listed so a future session doesn't rediscover these as bugs — they're documented tradeoffs, made
for real reasons, not gaps nobody noticed:

- **Multi-table writes are client-orchestrated, not atomic** (§3). Accepted for MVP scale;
  candidate for a Postgres function/RPC if it ever causes a real partial-write incident.
- **Game outcomes (correctness, points, streak) are computed and asserted from the client**, with
  RLS only checking *row ownership*, not *whether the claimed result is truthful*. A player could
  forge `challenge_attempt`/`points_log` rows via direct API calls. Accepted MVP risk for a
  free-to-play Scripture-memory game with no real-money stakes; would need real backend validation
  before any feature introduces stakes (leaderboards with prizes, monetization tied to points,
  etc.) — **this is exactly the kind of change that should trigger revisiting this doc**, per the
  "no real integrations until a payment layer is decided" scope guard set 2026-08-25.
- **No DELETE policy anywhere** (§3). Deliberate (nothing in the product ever deletes a row), but
  has real downstream cost for automated test cleanup — see §5.
- **`difficulty_rank` (int, 1–5) on `challenge` is legacy and unused.** Superseded by
  `difficulty_tier` (the actual easy/medium/hard mechanism) during the 2026-08-18 difficulty-mode
  build — kept in the schema, not queried by any current code path. Safe to ignore; not worth a
  migration to drop it for MVP.
- **Single Supabase project for local dev, every deploy, and every DB-touching test.** There is no
  staging/preview database. This is why the integration test layer mocks instead of using a real
  DB (§5), and why e2e runs leave real rows behind. A Supabase branch would resolve this but is a
  billable resource — not created without explicit sign-off (established 2026-08-25).
