# Gen2Rev — Project Conventions

Status: written 2026-08-25, capturing conventions that already existed only as scattered prose
across `MEMORY.md`'s history. These are things a new contributor (or a fresh Claude Code session)
would otherwise have to reconstruct by reading months of decision-log entries — write new ones
here as they emerge, don't let them accumulate in `MEMORY.md` alone.

## Code conventions

- **Extract pure logic out of DB-coupled functions specifically so it's unit-testable.** Every
  `lib/game.ts` function that does real calculation (streak math, points, spaced-repetition
  interval) has a pure sibling (`computeStreakUpdate`, `computePointsEarned`,
  `computeVaultReviewProgress`) that the async, Supabase-calling version wraps. When adding new
  game logic with any nontrivial branching, follow this split rather than writing calculation and
  I/O in the same function — see `lib/game.test.ts` for what this buys you (date-boundary tests
  with no system-clock mocking).
- **No global state management library.** One React Context (`SessionContext`) for `userId`, plain
  `useState`/`useEffect` per page otherwise. Don't reach for Redux/Zustand/Jotai without a concrete
  need that two unrelated screens must share live state — see `ARCHITECTURE.md` §2.
- **Plain CSS with custom-property tokens, not Tailwind/CSS-in-JS.** Token names mirror
  `docs/mockups/styles.css` / the (unfinished) Figma variables 1:1. Partly a deliberate choice to
  avoid adding another native-binary build dependency on this project's Windows dev machine (see
  the Windows native-binary note below).
- **No comments explaining *what* code does** — names should do that. A comment is for a
  non-obvious *why*: a hidden constraint, a past bug it fixes, a tradeoff. Nearly every comment in
  `lib/game.ts` follows this — read them as a model.

## Database / content conventions

- **Sole-writer discipline for shared-state writes.** When content authoring or ingestion runs in
  parallel background agents (established during the 14-book rollout), each agent **writes a file
  only** (`docs/ingest/*.sql`) — never calls `apply_migration`/`execute_sql` directly. Exactly one
  process (the orchestrating session) reviews every file in full and is the sole caller of
  `apply_migration`. This avoids race conditions on shared DB state and has been the pattern since
  the original 13-book ingestion (2026-08-13) through the full difficulty-tier rollout.
- **SQL string-literal escaping: double the apostrophe (`''`), never quadruple it.** A real,
  shipped bug (`numbers-deuteronomy-tiers.sql`, caught 2026-08-25) used `''''` instead of `''`
  inside JSON `answer_key` literals — a JS/Python escaping reflex that's wrong in Postgres, where
  double-quotes are identifiers, not string delimiters. Before applying any hand-written SQL ingest
  file, run a JSON/structural validation pass (parse every `answer_key` literal after simulating
  Postgres's `''` → `'` unescaping) — don't trust "the SQL ran without erroring" as proof the
  content is correct, since a doubled-vs-quadrupled apostrophe bug doesn't throw, it just stores
  wrong text.
- **No content reaches `challenge` without a `docs/CONTENT_REVIEW_LOG.md` row whose Decision is
  `approved` or `approved-with-changes`.** Run `node scripts/check-content-reviewed.mjs
  docs/content/<book>.md [...]` before every `apply_migration` that ingests new content — see
  `BACKEND_REQUIREMENTS.md` §4. This is now a real, technically-enforced gate, not just discipline
  to remember.
- **Every book/tier's content brief needs a theological-reviewer sign-off *and* an independent
  verbatim-text QA pass** — two distinct checks (`docs/reviews/*.md` and `docs/qa/*.md`
  respectively), neither substitutes for the other. See `CLAUDE.md`'s non-negotiable content rule.

## Testing conventions

- **Match the test layer to what you're actually testing** (see `ARCHITECTURE.md` §5): pure
  calculation → unit test, no I/O. Orchestration logic that calls Supabase in a specific sequence
  → integration test against the in-memory `testUtils/fakeSupabase.ts`, not a real database. Real
  user-facing wiring (does the running app actually reach the database, does routing/auth/RLS
  actually work end-to-end) → Playwright e2e against the real Supabase project, not local mocks.
- **Don't spin up billable infrastructure (a Supabase branch, a paid CI runner, etc.) without
  asking first** — this is a real, repeated pattern in this project's history (the same rule
  applies to Vercel/Supabase spend generally). When a testing decision has a cost/coverage
  tradeoff, present the options rather than picking silently — see `MEMORY.md` 2026-08-25's
  mock-vs-branch decision for the concrete example.
- **"The code looks right" is not verification.** Every nontrivial change in this project's
  history that turned out to have a real bug was caught by actually running the thing — see the
  global `CLAUDE.md` verification-discipline note for the specific incidents. This applies to test
  code too: a passing test suite you haven't watched fail once (to confirm it actually exercises
  the thing you think it does) is a weaker guarantee than one you have.

## Windows / WSL2 dev environment

- **All `npm`/`node` commands run inside WSL2 (Ubuntu), not the Windows side** — this project hit
  the Windows Application Control native-binary blocking issue early (2026-08-09) and standardized
  on WSL2 (Tier 2 of the `windows-native-binary-fix` skill) rather than re-fighting it per
  dependency. `.claude/launch.json`'s dev-server config already routes through
  `wsl.exe -d Ubuntu -- bash -lc "source ~/.nvm/nvm.sh && cd '/mnt/c/.../app' && npm run dev"` —
  follow the same pattern for any new npm command (`npm install`, `npm run build`, `npx playwright
  install`, etc.), don't run them from a plain Windows PowerShell/cmd prompt.
- **HMR needs polling** (`vite.config.ts`'s `server.watch.usePolling = true`) because WSL2's file
  watcher doesn't reliably see edits made from the Windows side on a `/mnt/c/...` mount. If a dev
  server seems to have a stale build after an edit, restart it before assuming the edit didn't
  land.

## Deploy conventions

- **Vercel CLI, not the Vercel MCP's `deploy_to_vercel` tool.** That MCP tool expects a full
  inline file tree, which doesn't fit a built Vite SPA with hashed asset bundles — the CLI
  (`npx vercel --prod --yes --scope veecthor-2201s-projects`) is the established path. Always pass
  `--scope veecthor-2201s-projects` explicitly (a real deploy failure on 2026-08-17 was the CLI
  defaulting to the wrong team scope). Re-authenticate via `vercel login`'s device-authorization
  flow (run as a **background** task with a long enough window to approve it — a short foreground
  timeout has killed this before) rather than asking for a pasted token.
