# Gen2Rev — Backend Requirements (MVP)

Status: Draft v1, Phase 1. Owner discipline: Backend Engineering.
Source: `GEN2REV_MASTER_PROMPT.md` Section 4 (Phase 1, Phase 4), Section 5.
Depends on: `PRODUCT_REQUIREMENTS.md` (scope, book list), feeds `FRONTEND_REQUIREMENTS.md` §3
(state sync) and Phase 2 content pipeline.

---

## 1. Data Model

**Updated 2026-08-25 to reflect the live schema** (9 tables, `mlehvnufyxwtfbsddtgh`, confirmed via
`list_tables`/`pg_policies` against the running project — this replaces the original Phase 1
pre-implementation sketch below the table). See `docs/ARCHITECTURE.md` for how these are used at
runtime and `docs/API_CONTRACT.md` for the `lib/*.ts` functions that read/write them.

| Table | Key fields (live) | Notes |
|---|---|---|
| `player` | `id` (uuid, = `auth.users.id`), `display_name`, `avatar_id` (both nullable), `auth_type` (`guest`\|`claimed`, check constraint), `created_at`, `claimed_at` (nullable), `difficulty_mode` (`easy`\|`medium`\|`hard`, check constraint) | A guest player is a real row from first session (created by `ensureWorldOneUnlocked`'s caller path), not a placeholder. Claiming (`claimAccount`) upgrades the anonymous `auth.users` row in place via `supabase.auth.updateUser` — same `id`, so every other table's rows stay attached by construction, not by a migration step. |
| `world` | `id` (uuid), `book_slug` (unique), `sequence_order` (unique, 1–14), `title`, `flavor_text`, `icon_ref` (nullable) | Fixed 14-book order, Genesis → 2 Chronicles. `sequence_order` gates unlock logic (§3). Public read (RLS: `true`) — no player-scoping needed, it's shared reference data. |
| `challenge` | `id`, `world_id` (FK), `type` (`recall`\|`multiple_choice`\|`sequence`, check), `prompt`, `verse_ref`, `verse_text`, `translation` (default `WEB`), `difficulty_rank` (int, legacy — superseded by `difficulty_tier` below, kept but unused by any query), `difficulty_tier` (`easy`\|`medium`\|`hard`, check, default `medium`), `answer_key` (jsonb, shape below), `is_boss_item` (bool), `sort_order` (int) | 472 live rows: 14 books × 3 tiers, fully ingested (see `docs/CONTENT_REVIEW_LOG.md`). Public read (RLS: `true`). `answer_key`'s shape is a discriminated union on `type` — see `lib/types.ts`'s `AnswerKey` and `docs/API_CONTRACT.md`. |
| `world_progress` | PK (`player_id`, `world_id`), `status` (`locked`\|`in_progress`\|`complete`, check, default `locked`), `boss_battle_complete_at` (nullable), `updated_at`, `attempt_count` (int, default 0), `current_index` (int, default 0), `session_results` (jsonb, default `[]`) | **A missing row means "locked"** — the `locked` status value exists in the check constraint but is never actually written; `getWorldsWithProgress` derives `locked` for any world with no row at all. `current_index`/`session_results` are the mid-world resume state (added 2026-08-18); `attempt_count` gates the retake limit (`MAX_WORLD_ATTEMPTS = 3`). Owner-only RLS (SELECT/INSERT/UPDATE, `auth.uid() = player_id`) — **no DELETE policy exists on this or any player-scoped table**, which is why e2e/integration test cleanup needs a privileged connection (see `app/e2e/golden-path.spec.ts`). |
| `challenge_attempt` | `id`, `player_id` (FK), `challenge_id` (FK), `is_correct`, `attempted_at` | One row per submitted answer (`recordAttempt`), including wrong answers and retaken attempts — an append-only history, not deduplicated. Not surfaced to the player as a feature; exists for future analytics/tuning. Owner-only SELECT/INSERT RLS. |
| `vault_entry` | `id`, `player_id` (FK), `challenge_id` (FK), `added_at`, `next_review_at` (default now), `review_interval` (int, default 1), `review_streak` (int, default 0) | The spaced-repetition queue. Populated only from `is_boss_item = true` challenges on world completion (`addToVault`), unconditionally on correctness — the Memory Vault is "verses you fought to reach," not "verses you got right." Interval sequence: 1/2/4/7/14/30/60 days, indexed by `review_streak`, capped at 60; a missed review resets `review_streak` to 0 (see `lib/game.ts`'s `computeVaultReviewProgress`, unit-tested in `lib/game.test.ts`). Owner-only SELECT/INSERT/UPDATE RLS; upserted with `onConflict: 'player_id,challenge_id'` so replaying a world never duplicates an entry. |
| `streak` | PK `player_id`, `current_streak`, `longest_streak`, `last_active_date` (date, nullable) | **No grace period, confirmed as of 2026-08-25**: missing even one calendar day resets `current_streak` to 1 — the Phase 1 note below about a "forgiveness/grace-period rule" was never implemented; flagged as a real spec-vs-code gap in `MEMORY.md`, not silently resolved either way. Pure logic in `lib/game.ts`'s `computeStreakUpdate`, date-boundary-tested (leap years, month/year rollovers) in `lib/game.test.ts`. Owner-only SELECT/INSERT/UPDATE RLS. |
| `points` | PK `player_id`, `total_points` (int, default 0) | Running total only — see `points_log` for the append-only history. Owner-only SELECT/INSERT/UPDATE RLS. |
| `points_log` | `id`, `player_id` (FK), `source` (text, e.g. `world_complete:genesis`), `amount`, `at` | Append-only audit trail behind `points.total_points`, written alongside every `points` update in `awardPoints`. Not queried by any screen yet (no history UI) — exists for future debugging/rank-tier work per the original Phase 1 intent. Owner-only SELECT/INSERT RLS. |

**RLS pattern used everywhere above**: every player-scoped table restricts SELECT/INSERT/UPDATE to
`auth.uid() = player_id` (or `= id` for `player` itself); `world` and `challenge` are the only
public-read tables (no player scoping — they're shared reference data). **No table has a DELETE
policy at all** — by design, nothing in the app ever deletes a row; the one operational
consequence worth knowing is that automated test/CI cleanup of rows created against the real
project needs a privileged (service-role) connection, which this project has deliberately not
wired into any automated test run (see `app/e2e/golden-path.spec.ts` and `MEMORY.md` 2026-08-25).

## 2. Auth Approach: Guest-First, Optional Claim

This is the single most load-bearing backend decision for the "shareable link, zero setup"
product requirement (`PRODUCT_REQUIREMENTS.md` §1, `FRONTEND_REQUIREMENTS.md` §1).

- **Guest session on first load, no explicit signup step.** A `player` row and session token are
  created transparently the moment someone opens the link and starts playing — not gated behind a
  "create guest account" button.
- **Session persistence:** guest identity persists via a long-lived session token (cookie or
  local-storage-backed token depending on final stack choice in §4) so a returning visitor on the
  same device resumes their progress without re-onboarding. This is what `session_return` in
  `FRONTEND_REQUIREMENTS.md` §6 actually measures — it must be measuring real returning identity,
  not a new guest row every visit.
- **Account claim is additive, never destructive.** Claiming (email/password or OAuth — finalize
  provider choice with the Phase 4 stack decision) attaches real credentials to the *existing*
  guest `player` row. A claimed player keeps every `world_progress`, `vault_entry`, `streak`, and
  `points` row they already had. This is a hard requirement, not a nice-to-have — losing progress
  on claim would directly contradict the product's zero-friction pitch and would be exactly the
  kind of "looks right in the diff, breaks in the running app" bug the global verification
  discipline warns about; this flow must be manually tested end-to-end, not just unit-tested.
- **Child-safety guardrail applies here directly** (master prompt Section 5): for MVP's confirmed
  Disciple/general-audience tier this is lower-risk, but if Open Decision #6 is later revisited
  toward the Seeker (ages 5–8) tier, guest play must remain the default for that tier and no
  personal data (name, email, avatar photo) may be collected without a parent-facing consent step
  — build the guest/claim split now so that constraint is easy to enforce later, not bolted on.

## 3. World Unlock Logic

Because the confirmed book list (`PRODUCT_REQUIREMENTS.md` §3) is played in fixed canonical order,
unlock logic is strictly sequential, not a graph:

- World *N* is `locked` until world *N−1*'s `world_progress.status = complete` (boss battle beaten).
- World 1 (Genesis) is unlocked by default for every new `player` row.
- No world-skipping, no branching paths, in MVP — this is simpler than a generic "world map"
  system might suggest, and the schema/API should reflect that simplicity rather than
  over-generalizing for a branching structure the product doesn't have yet.

## 4. Content Pipeline

Ties directly to the Phase 2 content-authoring procedure already drafted in `SKILL.md`. **Updated
2026-08-25** to describe what was actually built during Phase 2/4 (all 14 books, 42 tier briefs)
rather than the pre-implementation plan — see the "as-built" note at the end of this section.

- **Source of truth for challenge content is Phase 2's per-book content briefs**
  (`docs/content/<book-slug>[-easy|-hard].md`), not ad-hoc entries typed directly into the
  database.
- **Ingestion format, as actually built:** there is no ingestion *application* — no server, no
  CLI tool that reads a brief and writes rows on its own. Each approved brief is hand-translated
  into a plain SQL `INSERT` file under `docs/ingest/<batch>.sql` (one file per authoring batch,
  often several books), reviewed in full by whichever session/agent wrote it, and applied as the
  sole writer via the Supabase MCP's `apply_migration` — never touched by more than one process at
  a time, specifically to avoid race conditions when authoring runs in parallel batches. This is
  simpler than the JSON/YAML-plus-loader-script shape originally envisioned here, and has now
  ingested all 14 books × 3 tiers (42 content sets, 472 live `challenge` rows) without needing
  more than that.
- **No content reaches the `challenge` table without a review-log entry — now technically
  enforced, not just procedural discipline.** `scripts/check-content-reviewed.mjs` reads
  `docs/CONTENT_REVIEW_LOG.md` and refuses (non-zero exit) to clear any content-brief path whose
  row is missing, or whose Decision isn't `approved`/`approved-with-changes` (e.g. `submitted`,
  `escalate-to-human`, `rejected`). Run it against every brief a `docs/ingest/*.sql` file draws
  from **before** that file's `apply_migration` call — e.g.
  `node scripts/check-content-reviewed.mjs docs/content/exodus.md docs/content/leviticus.md`.
  This is a pre-flight gate run by whoever (human or agent) is about to apply an ingest file, not
  a database trigger — there is no app-runtime code path that ingestion ever goes through for a
  trigger to sit in front of (see `ARCHITECTURE.md`). A future session adding books 15+ should run
  this before every `apply_migration` call, not treat "the review log looks approved" as
  sufficient by eye.
- **Verse text is stored verbatim from WEB**, with `verse_ref` and `translation` always present —
  no challenge item ships without both, per the content-integrity guardrail.

**As-built note (2026-08-25):** this section originally (Phase 1) described an ingestion *script*
that would refuse unreviewed content programmatically as part of a defined load process. That
script was never built during Phase 2/4 — ingestion was always the manual SQL-file-plus-
`apply_migration` process above, gated by human/agent discipline alone. An audit on this date
(`MEMORY.md`, 2026-08-25 entries) found this exact gap while adding integration tests: the
QA_REQUIREMENTS.md §1 test "content ingestion pipeline refuses unreviewed content" had no
corresponding code to test. `scripts/check-content-reviewed.mjs` closes that gap for real going
forward; it does not retroactively verify anything about the 472 rows already ingested (those
were all reviewed and QA'd per `docs/CONTENT_REVIEW_LOG.md`/`docs/QA_SIGNOFF.md`, just not through
this specific tool, which didn't exist yet).

## 5. Hosting / Stack Recommendation

Per Open Decision #8, final confirmation happens at Phase 4 kickoff — this is a recommendation to
carry forward, not a lock:

- **Supabase** for auth (including anonymous/guest sessions — Supabase's native anonymous auth
  maps directly onto the guest-first model in §2), Postgres data storage (maps cleanly onto the
  relational entities in §1), and fast MVP velocity without standing up custom backend
  infrastructure.
- **Static/edge frontend hosting** (per `FRONTEND_REQUIREMENTS.md` §1) talking to Supabase over
  its client SDK/REST — no separate custom API server needed for MVP's scope.
- If Kachi has a different stack preference, that overrides this recommendation — flag it before
  Phase 4 implementation begins so this document and `FRONTEND_REQUIREMENTS.md` §1/§3 get revised
  together rather than drifting out of sync with the actual implementation.

## 6. Acceptance Criteria for This Document

- [ ] Data model covers every entity needed by every Phase 3 screen (cross-check against
      `FRONTEND_REQUIREMENTS.md` §2 component inventory)
- [ ] Guest-claim flow has no path that loses `world_progress`, `vault_entry`, `streak`, or
      `points` data
- [ ] Content pipeline enforces the theological-review gate technically, not just procedurally
- [ ] Stack recommendation confirmed or overridden at Phase 4 kickoff (Open Decision #8)
