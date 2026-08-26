# Gen2Rev — Project Context for Claude Code

Read this first, every session. Full plan lives in `GEN2REV_MASTER_PROMPT.md` — read that too before doing anything beyond a trivial fix.

## What this is
A Bible-literacy web game. Players progress through "worlds" (one per Bible book), answer scripture challenges to unlock progress, bank mastered verses in a "Memory Vault." v1 ships as a single shareable web link — no install, guest play by default. Mobile/desktop native apps are future scope, not this build.

## Where things stand (updated 2026-08-26 — check `MEMORY.md`'s tail for anything more recent)
- Phases 0–4 are complete. The app is live at **https://gen2rev.vercel.app**. Read `docs/ARCHITECTURE.md`
  first for how the system is actually built (React SPA talking directly to Supabase, no custom API
  server), then `docs/API_CONTRACT.md` for the `lib/*.ts` function surface and `docs/CONVENTIONS.md`
  for project-specific practices before making non-trivial changes.
- **All 39 Old Testament books (Genesis → Malachi) are live and playable, medium difficulty tier.**
  The original 14 MVP books additionally have Easy/Hard tiers; the 25 expansion books (worlds 15-39)
  are medium-only for now — a separate, later decision. Full status: `docs/CONTENT_REVIEW_LOG.md`.
- **The New Testament (27 books) is now in scope and in progress** (decided 2026-08-26, reversing
  the earlier "no New Testament in v1" guardrail — see Open Decision #5 in
  `GEN2REV_MASTER_PROMPT.md` and `docs/CANON_STRUCTURE.md` §7). This raises the doctrinal-review
  stakes substantially versus the OT: NT content itself is the kind of contested-interpretation
  territory (virgin birth, resurrection, atonement, Trinity, baptism, tongues, eschatology) the OT
  process was mostly built to *exclude* rather than narrate directly. Check `docs/CONTENT_STYLE_GUIDE.md`'s
  NT addendum and `MEMORY.md`'s tail before authoring any NT book.
- Phase 5 (QA) is in progress: an automated test suite exists (Vitest unit + mocked-integration,
  Playwright e2e against the real Supabase project — see `app/src/lib/*.test.ts`,
  `app/e2e/*.spec.ts`). **Kachi has explicitly assigned the manual/exploratory and accessibility
  QA layers to real users, not automation** (2026-08-25) — don't treat those as a gap to fill
  unprompted.
- Phase 6 (governance docs — `docs/EVAL_RUBRIC.md`, `docs/GUARDRAILS.md`) has not been started.
- Full phase-by-phase detail and DoD checklists: `GEN2REV_MASTER_PROMPT.md` Section 4.

## Non-negotiable content rule
Every book/world's content must have a theological-reviewer sign-off logged in `docs/CONTENT_REVIEW_LOG.md` before it ships. No exceptions, no "we'll review it later." See `GEN2REV_MASTER_PROMPT.md` Phase 2 and `docs/GUARDRAILS.md` (once it exists).

## Guardrails (see MASTER_PROMPT Section 5 for full list)
- Scripture text only, cited, from public-domain translation (World English Bible primary). Never invent or paraphrase verse text as if it were direct quotation.
- No doctrinal commentary or denominational positions in challenge content.
- Child-directed flows collect no personal data by default; guest play preferred.
- No scope creep beyond the MVP definition without it going through the Open Decisions log first.

## Stack (confirmed — this is what's actually built, not a recommendation)
React 19 + Vite 6 + TypeScript, plain CSS, React Router, Supabase (Postgres + Auth, anonymous
guest sessions), deployed to Vercel. No custom API server — the browser talks to Supabase directly
through RLS. Full detail: `docs/ARCHITECTURE.md`. **No payment layer exists or is being built** —
per an explicit 2026-08-25 scope guard (`PRODUCT_REQUIREMENTS.md` §5), don't add real
payment-processing or other billable third-party integrations without that decision being made
first.

## Running the app and tests (all commands via WSL2 — see below)
- Dev server: use the `gen2rev-dev` launch config (routes through WSL2 automatically).
- Unit + mocked-integration tests: `npm run test` (from `app/`, inside WSL2).
- E2E tests (hit the **real** Supabase project — see `docs/ARCHITECTURE.md` §5 before assuming
  they're safe to run casually or automate cleanup for): `npm run test:e2e` (from `app/`, inside
  WSL2; needs a dev server running or Playwright's `webServer` config will start one).
- Build/lint: `npm run build`, `npm run lint`.

## Windows native-binary note
All `npm`/`node`/`npx` commands for this project run inside **WSL2 (Ubuntu)**, not plain Windows
PowerShell — this machine's Application Control policy blocks the native binaries Vite/esbuild/
Playwright etc. depend on. See the global `windows-native-binary-fix` skill and
`docs/CONVENTIONS.md`'s "Windows / WSL2 dev environment" section for the exact invocation pattern.

## Working conventions
- Every phase's output is a file in this folder, not just chat/session output.
- Update `MEMORY.md` whenever a real decision gets made (not every small step — decisions that would be expensive to re-litigate).
- Update this file if the project's shape changes materially (new stack, new scope, new folder structure).
- See `docs/CONVENTIONS.md` for code/database/testing/deploy conventions that would otherwise only
  live scattered across `MEMORY.md`'s history.
