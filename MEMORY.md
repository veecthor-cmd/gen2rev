# Gen2Rev — Decision Log

Append-only. Add a new dated entry when a real decision is made. Don't edit past entries — supersede them with a new entry and a note.

---

**2026-08-08 — Initial planning session (Cowork)**
- Validated the concept (Phase 0). Verdict: conditional go. See `GEN2REV_MASTER_PROMPT.md` Section 2.
- Confirmed `gen2rev.lovable.app` is inspiration only, not a locked spec — mechanics open to refinement.
- Bible translation decided: public domain only. Primary text = World English Bible (WEB). KJV as a possible secondary/toggle later. No modern copyrighted translation (NIV/ESV/NLT) in MVP — avoids licensing negotiation before launch.
- Build foundation decided: fresh codebase for implementation, not an extension of the Lovable marketing shell (that project has no backend/game logic — visual/copy language carried forward as reference only).
- Shared folder connected: `C:\Users\user\Claude\Projects\Gen2Rev` — used by both Cowork and Claude Code going forward.
- No prior planning doc existed in this folder — checked via listing, folder was empty. Nothing to reconcile as of this entry.
- Open items still needing Kachi's sign-off: MVP book list (8 recommended), which age tier to build first (Disciple/general-audience recommended), named theological reviewer, final stack confirmation. See `GEN2REV_MASTER_PROMPT.md` Section 6 for the live status table.

---

**2026-08-08 — Phase 1 kickoff; MVP book list confirmed**
- Started Phase 1 (requirements docs) in `/docs`.
- **Open Decision #5 (MVP book list) confirmed by Kachi**, overriding the earlier 8-book
  recommendation: **13 books — Genesis, Exodus, Leviticus, Numbers, Joshua, Judges, Ruth,
  1 Samuel, 2 Samuel, 1 Kings, 2 Kings, 1 Chronicles, 2 Chronicles** — played in canonical order
  as one continuous Creation-through-Kingdom story, not a genre-spanning sample.
  - No New Testament content in v1 as a result — this is a deliberate product statement (the MVP
    is "the OT historical arc"), not an oversight. Say so plainly in landing/share copy.
  - World map is now a fixed sequential order, not a free-choice grid.
  - Samuel/Kings/Chronicles content overlaps (Chronicles retells Samuel/Kings) — Phase 2 content
    briefs need an explicit per-book emphasis decision so worlds 8–13 don't feel repetitive.
  - This exceeds the master prompt's original "≤10 books" guardrail (Section 5) — that guardrail
    is amended to **≤15 books** for MVP. Updated in `GEN2REV_MASTER_PROMPT.md` Sections 4, 5, 6.
- Open Decision #6 (age tier) and #8 (stack) remain **provisional**, not confirmed: Phase 1 docs
  proceed with the master prompt's recommended defaults (Disciple/general-audience tier;
  React/Vite + Supabase) so drafting isn't blocked, but these are not signed off yet.
- Open Decision #7 (named theological reviewer) remains **unresolved** — no default possible,
  this is a hard gate before any content can ship (not before Phase 1/2 docs can be drafted).

---

**2026-08-08 — Phase 1 complete; Phase 2 started (canon pass, style guide, Genesis brief)**
- Phase 1 closed: all 5 requirements docs exist in `/docs`, cross-checked against each other and
  the master prompt, stale book-count references fixed.
- Phase 2 started: `docs/CANON_STRUCTURE.md` (confirms groupings + flags two real gaps — see
  below), `docs/CONTENT_STYLE_GUIDE.md` (in/out-of-bounds content rules), `docs/CONTENT_REVIEW_LOG.md`
  (scaffolded, one `submitted` row for Genesis), and `docs/content/genesis.md` (first real content
  brief — proves out the `SKILL.md` pipeline).
- **Flagged, not re-opened as a decision:** the confirmed 13-book list skips **Deuteronomy**
  (Numbers → Joshua), meaning Moses' farewell/death is never its own world. Documented as a
  deliberate scope cut in `docs/CANON_STRUCTURE.md` §3, with a note that Joshua's content brief
  needs a one-beat bridge to cover the gap.
- Genesis content brief is **not yet reviewable** — no theological reviewer assigned (#7 still
  open) — logged as `submitted` (pipeline-proof status) in `docs/CONTENT_REVIEW_LOG.md`, not
  `approved`. Its verse text was pulled via automated web fetch and still needs the independent
  verbatim QA pass from `QA_REQUIREMENTS.md` §3 before it could ever be ingested, even after
  theological sign-off.
- `SKILL.md` updated with what actually held up vs. what was learned from running the pipeline once
  for real, per the master prompt's Phase 6 instruction to mature it only after a real run.
- Next: continue Phase 2 with the remaining 12 books' content briefs — still blocked on the same
  reviewer/QA caveats above. Age tier (#6) and reviewer (#7) still open.

---

**2026-08-08 — Deuteronomy added back in; reviewer mechanism changed to an AI agent**
- **Open Decision #5 amended:** Kachi asked to "include the skipped book." MVP list is now **14
  books**: Genesis, Exodus, Leviticus, Numbers, **Deuteronomy**, Joshua, Judges, Ruth, 1 Samuel,
  2 Samuel, 1 Kings, 2 Kings, 1 Chronicles, 2 Chronicles — full Pentateuch, still ≤15 books guardrail.
  Propagated across `PRODUCT_REQUIREMENTS.md`, `GEN2REV_MASTER_PROMPT.md`, `CANON_STRUCTURE.md`,
  `DESIGN_REQUIREMENTS.md`, `BACKEND_REQUIREMENTS.md`. The Deuteronomy-gap note in
  `CANON_STRUCTURE.md` §3 is marked resolved, kept for the reasoning trail rather than deleted.
- **Open Decision #7 (named theological reviewer) resolved differently than originally scoped:**
  Kachi asked to "create the agent to do the review, backed by actual existing data on the web"
  instead of naming a human reviewer. Built as `.claude/agents/theological-reviewer.md` — see that
  file for its exact grounding/escalation rules. This is a real amendment to the non-negotiable
  content rule in `CLAUDE.md` (which named a human reviewer specifically) — flagged explicitly to
  Kachi rather than silently reinterpreted, and documented in `GEN2REV_MASTER_PROMPT.md` Section 6
  as new item #7b. The gate itself (no content ships without a logged sign-off) is unchanged; only
  *who/what* satisfies it changed. Residual risk: Phase 0 named denominational sensitivity as the
  single biggest product risk — an AI reviewer grounded in web sources is not the same as a real
  seminary-trained human's judgment, particularly for genuinely contested material. The agent is
  designed to escalate/flag rather than self-approve when it finds real cross-denominational
  disagreement — see the agent file for the exact rule.
- **First real run completed the same session** (the new subagent type wasn't loadable via the
  Agent tool until a fresh session picks it up, so the review was run manually following the
  agent's own written procedure instead of waiting). Genesis: **`approved-with-changes`** — see
  `docs/reviews/genesis-review.md`. Two structural changes applied to `docs/content/genesis.md`
  (Gen 3:15 and Gen 1:27 restricted to recall-only challenge format, since both are read
  differently across traditions and recall-only avoids grading either reading). Not escalated —
  no unresolved cross-tradition disagreement was found bearing on a graded item. Genesis is still
  **blocked on ingestion** pending the separate verbatim-text QA pass (`QA_REQUIREMENTS.md` §3).
- Next session: confirm the `theological-reviewer` subagent actually appears in the Agent tool's
  available types (fresh session should pick up `.claude/agents/theological-reviewer.md`
  automatically); if so, use it directly via the Agent tool for the next book instead of
  hand-running the procedure again.

---

**2026-08-08 — Phase 2 content authoring complete for all 14 MVP books; 2 escalations pending**
- Delegated the remaining 13 books (Exodus through 2 Chronicles) to 5 parallel background agents,
  each authoring content briefs and self-running the theological-review procedure (agents ran
  before this session confirmed whether the new `theological-reviewer` subagent type was
  selectable, so each hand-applied the procedure from `.claude/agents/theological-reviewer.md`
  directly, same as done manually for Genesis).
- **All 14 books now have a content brief (`docs/content/*.md`) and a full cited review
  (`docs/reviews/*.md`), consolidated into `docs/CONTENT_REVIEW_LOG.md`.**
- **Result: 12/14 `approved` or `approved-with-changes`. 2/14 partially `escalate-to-human`:**
  - **Joshua** — the conquest-campaign scenes (Josh 10-11) and the ḥerem/destruction clauses (6:17,
    6:21, 10:40) are blocked. Reviewer found the conquest-ethics debate genuinely unresolved across
    *and within* traditions, and judged that — unlike Genesis 22 — part of the disputed territory is
    "what happened," not just "what it means," so exclusion-based bounding wasn't fully sufficient
    given the audience includes children.
  - **2 Samuel** — the Bathsheba/Uriah/Nathan scene is blocked. The chosen bounding (only Nathan's
    parable and David's confession, nothing from ch. 11 itself) matches real children's-ministry
    precedent the reviewer researched, but it wasn't confident that precedent transfers cleanly to
    Gen2Rev's general-audience (not child-specific) "Disciple" tier, informally distributed via
    shared links — sexual content plus premeditated killing pushed it to escalate rather than
    self-approve.
  - Both escalations are scoped narrowly (one scene each) — everything else in both books is clear.
  - **Neither escalation has anywhere to land: Open Decision #7 still has no named human reviewer.**
    This is now a real, live blocker, not a theoretical gap — flagged plainly to Kachi, not buried.
- Self-review also caught and fixed real errors along the way (the design working as intended):
  Exodus's review found a false claim about which verse appeared in graded content and excluded the
  Pharaoh's-heart-hardening motif entirely after finding the Calvinist/Arminian/Maimonides divide
  too deep for narrative bounding; Judges and Ruth reviews each caught one WebFetch
  paraphrase/truncation during authoring and re-verified before finalizing.
- Every book's independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) is still outstanding —
  that is a distinct, still-required check separate from theological review, for all 14 books.
- `GEN2REV_MASTER_PROMPT.md` Phase 2 DoD updated: book list, style guide, and per-book citation
  requirements are done; the "100% signed off" box stays unchecked until the two escalations
  resolve.
---

**2026-08-08 — Open Decision #7 resolved: Kachi is the named human theological reviewer; Phase 2 closed**
- **Kachi Okere is now the named human theological reviewer** (Open Decision #7). Role as designed:
  the `theological-reviewer` agent (#7b) remains the first-pass reviewer for all routine content;
  Kachi is the human backstop specifically for whatever the agent escalates — not a manual re-review
  of every book. This closes the "escalation has nowhere to land" gap flagged earlier the same day.
- **Both pending escalations resolved same-day, by accepting the agent's recommended bounding
  exactly as proposed (no loosening):**
  - **Joshua** — Scene 4 (conquest campaigns) stays in the brief and boss-battle rotation, limited
    to its two geographic/summary verses (10:41-42); the ḥerem/destruction-clause verses (6:17,
    6:21, 10:40) remain permanently excluded from challenge-ready content.
  - **2 Samuel** — Scene 4 (Nathan/Bathsheba turning point) stays limited to 12:1, 12:7, 12:13 only;
    nothing from chapter 11 itself is ever challenge-ready.
  - Recorded as dated addenda at the bottom of `docs/reviews/joshua-review.md` and
    `docs/reviews/2-samuel-review.md` (original findings left unedited, per this project's
    append-only review convention), and reflected in both books' `docs/content/*.md` status headers
    and `docs/CONTENT_REVIEW_LOG.md`.
- **All 14/14 MVP books are now `approved` or `approved-with-changes`.** `GEN2REV_MASTER_PROMPT.md`
  Phase 2's Definition of Done is fully checked off. **Phase 2 is complete.**
- **Still genuinely outstanding, not closed by this decision:** the independent verbatim-text QA
  pass (`QA_REQUIREMENTS.md` §3) for all 14 books — a separate, still-required gate before any
  content reaches `challenge` table ingestion, regardless of theological-review status. Also still
  open: Open Decision #6 (age tier — Disciple is still only a provisional default) and Open
  Decision #8 (stack — deferred to Phase 4 as planned).
- Next: Phase 3 (design screens) is unblocked whenever work resumes.

---

**2026-08-08 — Independent verbatim-text QA pass run for all 14 books, ahead of schedule**
- At Kachi's explicit request, ran the `QA_REQUIREMENTS.md` §3 verbatim-text QA pass for all 14
  MVP books now, rather than waiting for its originally-planned Phase 5 slot — "before designs."
- Delegated to 5 parallel background agents (same batching pattern as Phase 2 authoring), each
  independently re-verifying every challenge-ready verse against sources not already relied on
  during drafting/review, closing every "single source only" gap each book's theological review
  had flagged, prioritizing the specific verses/discrepancies each review called out by name.
- **Result: all 14/14 books `pass` or `pass-with-corrections`.** 187 verse-blocks checked total.
  - **Real wording corrections (2):** 1 Samuel 16:13 and 2 Kings 19:15 had each silently dropped a
    trailing clause/phrase without the ellipsis marker used everywhere else in their briefs — both
    restored to match verified source text.
  - **Labeling-only fix (1 book, no wording changed):** 1 Kings had two partial quotes mislabeled
    as complete.
  - **11 books needed nothing** — every difference found was cosmetic (quote style, trim-boundary
    punctuation).
  - Also closed a loose end Exodus's theological review had left open (a one-word discrepancy at
    Ex 20:4 between two sources): a third source confirmed "in," not "on" — moot for graded content
    either way since that verse isn't challenge-ready, but the discrepancy is now resolved for the
    record rather than left dangling.
- Full detail in `docs/QA_SIGNOFF.md` (consolidated centrally, same single-writer pattern as
  `docs/CONTENT_REVIEW_LOG.md`, to avoid parallel-agent race conditions on a shared file) and
  per-book detail in `docs/qa/<book-slug>-verbatim-qa.md`.
- **Every MVP book has now cleared both required content gates** — theological/neutrality review
  and independent verbatim-text QA. What's left before Phase 4 ingestion is the functional
  end-to-end pass and accessibility audit (`QA_REQUIREMENTS.md` §1/§4), which need an actual built
  game to run against — still correctly scheduled for Phase 5, not skipped, just not yet possible.
- Next: Phase 3 (design screens), per Kachi's instruction to do this QA pass first.

---

**2026-08-13 — Phase 4 vertical slice built, tested, and deployed live**
- **Live production URL: https://gen2rev.vercel.app** (Vercel project `gen2rev`, team
  `veecthor-2201s-projects`). Verified working end-to-end on the actual deployed URL, not just
  locally — guest sign-in → World Map → all 10 Genesis challenges → boss battle (3 items) → Result
  screen (points, streak, next-world-unlock) all confirmed live.
- **Supabase project:** `mlehvnufyxwtfbsddtgh` (`gen2rev`), org `zigevhodusebrnskvfra`. Full schema
  applied per `docs/BACKEND_REQUIREMENTS.md` §1 (9 tables, RLS enabled + policies on every
  player-scoped table, one security lint found and fixed — a trigger function was publicly
  RPC-callable, revoked). `world` table seeded with all 14 books in order. `challenge` table seeded
  with Genesis's 10 reviewed/QA'd items only (3 marked `is_boss_item`) — **the other 13 books are
  reviewed and QA'd but NOT yet ingested into `challenge`**, that's real remaining work, not
  forgotten.
  - **Anonymous sign-ins had to be manually enabled** in the Supabase dashboard (Authentication →
    Providers) — not exposed via any MCP tool, Kachi did this by hand.
  - **Real bug found and fixed during testing, not just "looked right":** React StrictMode's dev-mode
    double effect invocation raced two concurrent `signInAnonymously()` calls, which clobbered the
    Supabase client's session mid-flight and caused a 403 on the `world_progress` insert (RLS
    correctly rejected a payload whose `player_id` no longer matched the current session's
    `auth.uid()`). Fixed with a module-level singleton promise in `useSession.ts` so concurrent
    mounts share one in-flight sign-in instead of racing. This is exactly the class of bug the
    global verification-discipline note warns about — invisible from reading the code, only caught
    by actually clicking through the running app.
  - **Also caught by the TS build** (not by inspection): a real closure-narrowing issue in
    `Play.tsx` where `world`/`challenges` were correctly null-checked before render but TypeScript
    couldn't carry that narrowing into an async closure (`handleAnswered`) that could fire on a
    later tick. Fixed properly by splitting into a `Play` (data-loading) / `PlayLoaded` (typed
    non-null props) component boundary — the idiomatic React+TS fix, not a cast.
- **Stack finalized as planned:** React 19 + Vite 6 + TypeScript, plain CSS (tokens ported directly
  from `docs/mockups/styles.css`, same custom-property names — deliberately did not add Tailwind,
  partly to avoid another native-binary dependency class on this machine), React Router, Supabase
  JS client, deployed via Vercel CLI.
- **Two more platform/tool bugs hit and worked around this session** (beyond the WSL2 one from
  2026-08-09):
  - Supabase MCP's `confirm_cost` tool rejects any numeric `amount` as "expected number, received
    string" regardless of how it's sent — blocked `create_project` entirely. Worked around by having
    Kachi create the Supabase project manually via the dashboard instead.
  - Vercel MCP's `deploy_to_vercel` tool has the identical bug for its `files` array parameter.
    Worked around with the Vercel CLI directly (`npx vercel`) using a token Kachi generated,
    run through WSL2. **Both tools showed an empty `{"type":"object"}` schema via ToolSearch with no
    listed properties** — that seems to be the common thread; worth trying these MCP tools again in
    a future session in case the schema registration gets fixed, rather than assuming they're
    permanently broken.
- **Credential hygiene note:** Kachi pasted both a Supabase DB password and a Vercel deploy token
  directly into chat during this session. Neither was used for anything requiring them (the DB
  password wasn't needed at all — Supabase JS only needs the project URL + anon key; the Vercel
  token was used only as an ephemeral CLI env var, never written to any file). Both were flagged
  back to Kachi as exposed-in-chat-history and worth rotating.
- **What's built:** Landing, World Map, Play (handles all 3 challenge types + boss-battle
  transition), Result. **What's NOT built yet:** Onboarding, Memory Vault, Profile/Rank, Home/Streak
  dashboard, Share screen — all exist as HTML mockups (`docs/mockups/`) and are designed, just not
  implemented as React screens yet. Account-claim flow (guest → permanent account) also not built.
- **Phase 4 DoD status:** core bar met (guest plays one full world end-to-end, progress persists,
  deployed to a real public URL) but not 100% — "all screens match Phase 3 designs" is partial
  (4 of ~9 screens), and "zero P0/P1 bugs" is true only for the tested path, not a full QA pass.
  Don't mark Phase 4 fully closed in `GEN2REV_MASTER_PROMPT.md` until the remaining screens and the
  other 13 books' content ingestion land.
- Next: build the remaining screens (Memory Vault and Home/Streak are probably highest-value next,
  since Result already links into "Continue Your Journey" but there's no dedicated dashboard yet),
  ingest the other 13 books, build the account-claim flow, then Phase 5 (QA hardening pass —
  functional/accessibility, which needed a real build to run against and now has one).

---

**2026-08-13 (later) — Logo/home-redirect, Resume Your Journey, retake + Review screen**
- **Logo/header**: `components/Logo.tsx` — wordmark always links to `/`. Added to World Map and
  Result via `<AppHeader/>`. Deliberately NOT added to Play's Challenge/Boss Battle screens — no
  exit affordance mid-gameplay, a product judgment call, not an oversight.
- **Session auto-save**: was already the `supabase-js` default; made explicit in `lib/supabase.ts`
  (`persistSession`, `autoRefreshToken`, `detectSessionInUrl: false`) so it's documented intent.
- **Resume Your Journey**: `Landing.tsx` now fetches points on load; a returning player with
  `totalPoints > 0` sees "Welcome back — Xd streak, Y points" + a Resume button straight to `/map`;
  a fresh session still sees the normal first-time pitch. Verified both branches, including that a
  brand-new production session (separate origin/localStorage from local dev) correctly showed the
  first-time pitch rather than false-positiving on Resume.
- **Retake (2 more attempts) + Review screen**, per Kachi's request:
  - Schema: `world_progress.attempt_count` added (migration `add_world_progress_attempt_count`).
    `MAX_WORLD_ATTEMPTS = 3` (1 initial + 2 retakes) in `lib/types.ts`.
  - `lib/game.ts`: new `incrementWorldAttempt()`, called once per finished run (right or wrong) —
    **before** `completeWorld()`, not instead of it. This is the key design point: a run's
    points/streak/vault entries are only committed when the player clicks **Proceed**, not merely by
    finishing the challenge sequence. Retaking discards that run's rewards entirely; nothing is
    double-counted across a retake into the eventual accepted run.
  - `Play.tsx`: now collects a `ChallengeResult[]` (per-item correctness + a human-readable version
    of what the player actually submitted) instead of calling `completeWorld` directly. On the last
    item it calls `incrementWorldAttempt` then navigates to the new `/review/:bookSlug` route.
  - New `pages/Review.tsx`: lists every question with a ✓/✗ indicator, the player's own answer shown
    only when wrong, and the correct answer always shown (reconstructed per challenge type — recall
    fills the template, multiple-choice shows the option text, sequence shows the correct order
    joined with →). **Retake World** button shows only when `correctCount < total &&
    attemptCount < MAX_WORLD_ATTEMPTS`; **Proceed to Next World** always shows and is what actually
    calls `completeWorld`.
  - **Verified live, not just read**: played an intentionally-imperfect run (2 wrong recalls) →
    confirmed Review showed both wrong answers with the player's actual bad input plus correct
    answers, and both buttons appeared → clicked Retake → confirmed Play restarted cleanly at
    question 1 → played a perfect run → confirmed Retake button correctly disappeared (only Proceed
    shown) → clicked Proceed → confirmed Result showed +120 (not double-counted) and DB showed
    `attempt_count = 2`, `total_points = 240` (120 from the original pre-this-session completion +
    exactly 120 from this test, none leaked in from the discarded imperfect run).
  - Did **not** separately test the "3rd attempt, still imperfect, Retake hidden" edge case live —
    the gating logic (`attemptCount < MAX_WORLD_ATTEMPTS`) is simple enough to trust from code
    review alone here, but flagging that this specific path wasn't click-tested if it ever misbehaves.
- **Tool quirk encountered again this session**: the Browser pane's `computer` click-by-coordinate
  action intermittently failed to register clicks (both on localhost and on the production URL)
  with no error — the page just didn't respond. Switched to `javascript_tool`-driven DOM
  clicks (`element.click()`) for all interaction testing this session, which worked reliably. Also
  learned: the JS execution context persists `const`/`let` bindings **across separate
  `javascript_exec` calls** on the same tab (redeclaring a name errors) — wrap each script's
  declarations in a block (`{ ... }`) to avoid collisions. Also: rapid sequential `.click()` calls
  on React state-updating buttons *within a single script* don't reliably compound (React batches/
  re-renders between them), so multi-step UI sequences (e.g. reordering a sequence-challenge list)
  need one `javascript_exec` call per click, not several clicks batched into one script.
- Deployed: https://gen2rev.vercel.app (same URL, redeployed twice this round — once for
  logo/resume, once for retake/review).

---

**2026-08-08 — Phase 3 started in Figma; paused on rate limit, resume tomorrow**
- Kachi asked to work in a live Figma file, watched via the browser pane, rather than static
  mockup docs. Created **Figma file "Gen2Rev — MVP Screens"**, team **KACHI**
  (`team::1034928767527473705`), file key **`emmGaQpykO9rP70z5qHKqe`** —
  `https://www.figma.com/design/emmGaQpykO9rP70z5qHKqe`.
- **Built so far (all live in the file):**
  - `Foundations` page — color variables (9, matching `DESIGN_REQUIREMENTS.md` §1 palette),
    spacing variables (8/16/24/32/48/64), text styles (Display/Wordmark, Display/World Title,
    Display/Boss Header, Accent/Tagline, Label/Nav Eyebrow, Body/Default, Body/Verse, Body/Small,
    Body/Bold) — all bound to variables, not hardcoded, with WEB code syntax set.
  - `Components` page — a `Button` component set (Style=Primary/Secondary, State=Default/Disabled),
    fully token-bound. Key: `fe04a838100b16f1a1d9454861f3a41485e1c9bd`.
  - `Screens` page — **Landing (mobile), complete**: eyebrow, wordmark, tagline, subhead, CTA
    buttons, a 7-node world-preview strip, footer. Kachi confirmed the visual direction (palette,
    type pairing, tone) after seeing this one — cleared to keep going in the same style.
  - **World Map (mobile), partially built**: wrapper frame, top status bar (streak/points chips),
    title done. **The 14-world serpentine path itself was NOT built** — the `use_figma` call
    creating it hit Figma's MCP rate limit mid-script and failed atomically (no partial/broken
    nodes left behind, per that tool's atomicity guarantee — safe to just retry this call as-is
    next session).
- **Blocker: hit the Figma MCP tool-call rate limit on the team's Starter plan.** Not a code bug —
  a plan-tier limit. Kachi chose to pick this up again another day rather than upgrade the plan or
  switch away from Figma. **Do not proceed with an upgrade or purchase without Kachi explicitly
  saying so in that session.**
- **Resume checklist for next session:**
  1. Re-open the file (`fileKey: emmGaQpykO9rP70z5qHKqe`), confirm the rate limit has reset
     (retry a small read-only `use_figma` call first).
  2. Finish the World Map path (14 nodes, book order per `PRODUCT_REQUIREMENTS.md` §3, states:
     complete/current/locked per `DESIGN_REQUIREMENTS.md` §4) — the script for this was already
     written this session, just re-run it against the existing wrapper (node id `10:4`).
  3. Continue through the remaining Phase 3 screens in priority order: Challenge (3 variants:
     recall/multiple-choice/sequence), Boss Battle, Result/Reward, Memory Vault, Profile/Rank,
     Home/Streak dashboard, Share, Onboarding.
  4. Per `FRONTEND_REQUIREMENTS.md` §2, the empty/loading/error/offline states are **one shared
     pattern reused across all screens**, not bespoke per screen — build those once, not 11 times.
  5. Desktop variants of each screen are still needed per Phase 3's DoD but haven't been started —
     mobile was prioritized first as the majority-traffic breakpoint per
     `FRONTEND_REQUIREMENTS.md` §1.
  6. Watch tool-call budget against the Starter plan limit this time — pace `use_figma` calls
     (each call here did ~1 section per call, which is already the recommended incremental
     pattern per the `figma-use` skill; the limit was hit on total call *count*, not call size, so
     there isn't an obvious way to do meaningfully fewer calls without sacrificing the
     incremental-validation discipline that skill requires).

---

**2026-08-09 — Figma rate limit still not reset; pivoted to HTML mockups, Phase 3 screen set complete**
- Resumed this session, retried a read-only `use_figma` call — still rate-limited (same message as
  yesterday). The Starter plan's limit apparently resets on a longer cycle than overnight; exact
  reset time unknown. Did **not** upgrade the plan — that's Kachi's call, not made without asking.
- Kachi chose to switch tooling (their option 2 from the prior session) rather than wait further.
- **Built all 13 MVP screens (+ the shared universal-states pattern) as real, responsive HTML/CSS
  mockups in `docs/mockups/`**, viewable directly in a browser (opened live via the Browser pane
  as each file was written) — no build step, no server needed, just open any `.html` file.
  - `styles.css` — every token name mirrors the Figma variables 1:1 (`--color-bg-parchment`,
    `--spacing-24`, etc.) specifically so this can port back into the Figma file once MCP quota
    returns, without re-deriving the palette/type scale from scratch.
  - `index.html` — a nav/overview linking every screen.
  - One file per screen: `landing.html`, `onboarding.html`, `world-map.html`,
    `challenge-recall.html`, `challenge-multiple-choice.html`, `challenge-sequence.html`,
    `boss-battle.html`, `result-reward.html`, `memory-vault.html`, `profile.html`,
    `home-streak.html`, `share.html`.
  - `states.html` — the empty/loading/error/offline pattern, built **once** and meant to be reused
    across every screen (per `FRONTEND_REQUIREMENTS.md` §2 — explicitly not bespoke per screen).
  - Real advantage over the Figma-only plan: these are actually responsive via CSS media queries
    (breakpoint at 1024px per `DESIGN_REQUIREMENTS.md` §2) — resizing the browser window shows the
    mobile → desktop transition live, in one file, rather than needing separate static frames per
    breakpoint. Verified each page's content via `get_page_text` (screenshot/pixel capture wasn't
    available this session — the Browser pane wasn't in a compositing state — so verification was
    text-content-based, not visual; worth a visual pass once the pane is available).
  - Sequence challenge explicitly uses up/down reorder buttons, not drag-only interaction —
    directly satisfies the accessibility requirement in `FRONTEND_REQUIREMENTS.md` §4 that
    drag-based challenges need a non-drag alternative.
- **Not yet done from the original Figma component-library plan:** the World Map path (14 nodes)
  never got finished as actual Figma nodes — it exists now only in `world-map.html`. Same for every
  other screen — none of them exist as Figma components/instances yet, only as HTML. Porting into
  Figma (using `styles.css`'s tokens as the source of truth) is the real remaining work once MCP
  quota is back, not new design decisions.
- Phase 3's `GEN2REV_MASTER_PROMPT.md` DoD is being treated as **provisionally met by the HTML
  mockups** (a complete, testable screen set with default/empty/loading/error states, responsive,
  matching `DESIGN_REQUIREMENTS.md` tokens) — but Kachi's sign-off on this design set (a named DoD
  item) hasn't happened yet, and the Figma port is still owed. Don't treat Phase 3 as fully closed
  until both land.

---

**2026-08-09 — Phase 3 closed; Phase 4 (implementation) starting**
- Kachi approved the `docs/mockups/` design set as-is (Phase 3 DoD item, was the last blocker).
- **Open Decision #6 locked in: "Disciple" (general-audience) tier is the sole MVP age tier** — no
  longer provisional.
- **Open Decision #8 confirmed at Phase 4 kickoff, as planned:** React + Vite (TypeScript) frontend,
  Supabase (Postgres, anonymous/guest auth) backend, Vercel deployment. No counter-indication arose
  during Phase 1-3 work; both Supabase and Vercel MCP tooling are connected.
- All of Phases 0-3 are now formally complete except the still-open contrast/tap-target audit
  (explicitly deferred to Phase 5 in `QA_REQUIREMENTS.md`, not a Phase 3 blocker per that doc's own
  scoping) and the still-owed Figma port of the HTML mockups (blocked on Figma MCP rate limit,
  not urgent now that Phase 4 has its own real reference in `docs/mockups/`).
- Starting Phase 4: scaffold the app, set up Supabase schema per `BACKEND_REQUIREMENTS.md` §1,
  build the guest-session + progress-persistence flow, implement World 1 (Genesis) end-to-end as
  the vertical slice the Phase 4 DoD requires ("at least one full world end to end"), then expand.

---

**2026-08-09 — Windows native-binary blocking hit again; fixed via WSL2 (Tier 2)**
- Scaffolded the app (`npm create vite@latest app -- --template react-ts`) and immediately hit the
  documented Windows Application Control blocking issue from the global `CLAUDE.md`. This time it
  wasn't a Tier-1 single-dependency fix: Vite 8's default bundler (rolldown) got blocked, downgrading
  to classic Vite 6 (Rollup) got blocked too on Rollup's own native binary — two different native
  bundlers blocked in a row is exactly the "Tier 1 keeps resurfacing" signal the skill says means go
  straight to Tier 2.
- **Went with WSL2.** Kachi ran `wsl --install` themselves (needed the elevation I can't do) —
  turned out Ubuntu/WSL2 was already installed from a prior fix on this machine, just needed
  discovering (`wsl --list --verbose` showed it, version 2, already there).
- **Node 22.23.2 installed inside WSL2 via nvm** (not the Windows Node install) —
  `~/.nvm` for user `kach1_91-`. Reinstalled the app's `node_modules` from within WSL2 (deleted the
  Windows-installed `node_modules`/`package-lock.json` first — native binaries are OS-specific, the
  Windows-built ones don't work from WSL2 or vice versa).
- **Confirmed working**: `vite --host` starts cleanly under WSL2 with zero native-binary errors, and
  WSL2's automatic localhost-port-forwarding means `http://localhost:5173` still works from the
  Windows-side Browser pane with no extra networking setup.
- **`.claude/launch.json`'s `gen2rev-dev` config now routes through WSL2**: `runtimeExecutable:
  wsl.exe`, args `-d Ubuntu -- bash -lc "source ~/.nvm/nvm.sh && cd '/mnt/c/.../app' && npm run dev
  -- --host"`. Use this launch config (via the Browser pane's `preview_start`), not plain `npm run
  dev` on the Windows side, for all future work on this app.
- **Known gotcha to remember**: per the skill, WSL2's file watcher doesn't reliably see edits made
  from the Windows side on a `/mnt/c/...` mount, so Vite's default HMR may not pick up changes made
  through Claude Code's Write/Edit tools (which write from Windows). Plan: set
  `server.watch.usePolling = true` in `vite.config.ts` to work around this — polling-based watching
  does cross the WSL⇄Windows filesystem boundary, native `fs.watch` doesn't. If HMR still seems
  stale after an edit, manually restart the dev server before assuming the edit didn't apply.
- **Local-dev-only**: this WSL2 setup is for local development on this machine only. Vercel builds
  run on Linux already and were never affected by this issue — no deploy-config changes needed.
- **Package versions as of this fix**: `vite ^6.4.3`, `@vitejs/plugin-react ^4.7.0` (downgraded from
  the initial `vite ^8.2.0` scaffold default before the WSL2 fix was applied — could try bumping back
  to a current Vite major later since the underlying blocking issue is now moot under WSL2, but no
  need to chase that unless a real reason comes up).

---

**2026-08-13 (later still) — All 13 remaining books' challenge content ingested; content pipeline fully closed**
- Kachi: "lets proceed with exodus and don't stop till the remaining 13 books/world are done." All
  13 books (Exodus through 2 Chronicles) now have live challenge rows in Supabase, alongside
  Genesis. **All 14/14 MVP worlds are fully playable end-to-end with reviewed, QA'd content.**
- **Delegation pattern**: 5 parallel background `Agent` calls, each writing a SQL file to
  `docs/ingest/<batch>.sql` (never touching the DB directly) sourced strictly from the
  already-approved `docs/content/<book>.md` briefs — no re-fetching or paraphrasing verse text, and
  each respecting that brief's documented exclusions/structural rules (e.g., recall-only
  restrictions, permanently-excluded verses like Josh 6:17/6:21/10:40 and 2 Sam ch. 11). I reviewed
  every file in full before applying, then applied each as the sole DB writer via `apply_migration`
  — avoids any race condition on shared DB state, same pattern already proven for Phase 2 authoring
  and QA. Batches: Exodus+Leviticus, 1-2 Samuel, Joshua+Judges+Ruth, Numbers+Deuteronomy,
  1-2 Kings+1-2 Chronicles.
- **Account-level spend limit hit on first launch**: all 5 parallel agents failed instantly
  ("You've hit your monthly spend limit") — not a code bug, a hard account cap. No SQL files were
  written on that attempt. Retried one batch alone as a test — succeeded — then relaunched the
  remaining 4, all succeeded. The limit turned out to be transient; if this recurs, retry rather
  than assuming something is broken.
- **Final verified counts** (all worlds, via SQL against `mlehvnufyxwtfbsddtgh`): Genesis 10 (3
  boss), Exodus 12 (4), Leviticus 11 (3), Numbers 12 (4), Deuteronomy 12 (4), Joshua 10 (3), Judges
  11 (3), Ruth 9 (3), 1 Samuel 11 (3), 2 Samuel 12 (4), 1 Kings 12 (4), 2 Kings 12 (4),
  1 Chronicles 6 (2, deliberately thin per the brief's genealogy-handling guidance), 2 Chronicles
  12 (4). Every world has non-zero challenges; zero gaps.
- **Content pipeline is now fully closed end-to-end**: all 14 books have a content brief, a cited
  theological review (12 approved outright, 2 approved-with-changes after human escalation
  resolution — see 2026-08-08 entries), an independent verbatim-text QA pass, and now live ingested
  challenge rows. Nothing left in the content pipeline itself; remaining Phase 4 work is UI screens
  (Onboarding, Memory Vault, Profile/Rank, Home/Streak dashboard, Share, account-claim flow) and the
  deferred Phase 5 QA/accessibility hardening pass.
- Did not redeploy to Vercel for this — DB-only content change, no frontend code touched, so the
  live app picks up the new challenges automatically on next fetch. Worth a live click-through of a
  newly-ingested book (e.g., Exodus) next session to confirm the Play/Review flow handles a
  12-item/4-boss world correctly, since so far only Genesis's 10/3 shape has been click-tested live.

---

**2026-08-16 — Live playthrough of Exodus on production; found and fixed a real SPA-routing bug**
- At Kachi's request, played Exodus live on `https://gen2rev.vercel.app` (not just Genesis) to
  confirm a freshly-ingested, differently-shaped world (12 items/4 boss, vs. Genesis's 10/3) works
  end-to-end. Had to first complete Genesis (10/10) on a fresh guest session to unlock it, since
  World Map gates are sequential by design. **Result: 12/12 correct, Boss Battle transitioned
  correctly at item 9, Review screen showed all 12 with correct answers, +140 points awarded,
  Leviticus unlocked** — confirmed both in the UI and via direct SQL against `world_progress`
  (Genesis and Exodus both `status: complete`, `attempt_count: 1`, not double-incremented).
- **Real bug found while testing, not from reading code**: navigating directly to a non-root URL in
  production (e.g. `gen2rev.vercel.app/play/exodus`, or refreshing mid-game) returned Vercel's
  `404: NOT_FOUND`. Root cause: the app had no `vercel.json`, so Vercel's static router had no SPA
  fallback rewrite — only `/` resolved to `index.html`; every other path 404'd unless reached via
  client-side navigation (React Router). This is a real product risk for a "single shareable web
  link" game if anyone ever shares a deep link or refreshes mid-session.
  - **Fix**: added `app/vercel.json` with a catch-all rewrite (`"source": "/(.*)"` →
    `"destination": "/index.html"`), confirmed the project root Vercel builds from is `app/` (per
    `app/.vercel/project.json`), rebuilt (`npm run build`, clean), and redeployed to production.
  - **Verified live after redeploy**: direct-loaded `gen2rev.vercel.app/play/exodus` in a fresh
    browser context (no prior session) — correctly rendered question 1 of Exodus (a new guest
    session auto-created) instead of 404ing.
- **Deploy-auth note for future sessions**: the Vercel CLI's saved login from the 2026-08-13 deploy
  didn't persist (that used an ephemeral token, not a saved session) — `npx vercel whoami` came back
  logged out. Re-authenticated via `vercel login`'s **device-authorization flow**
  (`vercel.com/oauth/device?user_code=...`) instead of asking Kachi to paste another token — Kachi
  approved the link in their own browser, no credential ever touched chat. This is the preferred
  re-auth method going forward over asking for a fresh token. One gotcha: the first attempt's `npx
  vercel login` was run with a 20s foreground timeout and got killed before Kachi could approve it
  in time — the fix was re-running it as a **background** task with a longer window (180s), which
  gave enough time for approval and completed with exit 0.
  - The Vercel MCP tools (`deploy_to_vercel`) are still not practical for this project even though
    `list_projects`/`list_teams`/`get_deployment` now work fine with an explicit `teamId` — `deploy_to_vercel`
    expects a full inline file tree (path+content per file), which doesn't fit a built Vite SPA with
    hashed asset bundles. CLI deploy via WSL2 remains the right tool for this project's deploys.
- **Still not click-tested live**: books other than Genesis/Exodus, the 3rd-attempt-retake-hidden
  edge case (noted 2026-08-13), and Memory Vault/Profile/Home screens (not built yet regardless).

---

**2026-08-17 — Confirmed all 14 books fully done; built and shipped the Memory Vault screen**
- **Verification pass, not just re-reading old notes**: cross-checked `docs/content/*.md`,
  `docs/reviews/*.md`, `docs/qa/*-verbatim-qa.md` (all 14 present), `docs/CONTENT_REVIEW_LOG.md`'s
  status table (all 14 rows `approved` or `approved-with-changes`, verbatim QA `pass` or
  `pass-with-corrections`), and a fresh SQL count against `challenge` (all 14 worlds non-zero,
  matching the 2026-08-13 ingestion counts exactly). **All 14 books are genuinely complete —
  content brief, theological review, verbatim QA, and live ingested rows, nothing outstanding.**
- **Built the Memory Vault screen** (`app/src/pages/MemoryVault.tsx`), the first of the five
  not-yet-built Phase 3 screens. Backed by the `vault_entry` table that `completeWorld()` was
  already populating on every boss-battle win since Phase 4 — this data existed and was silently
  unused until now.
  - `lib/game.ts`: added `getVaultEntries()` (embedded `vault_entry` → `challenge` select, works
    because the FK + RLS were already in place from the original schema) and `reviewVaultEntry()`,
    a simple spaced-repetition step — remembering a verse advances `review_streak` and pushes
    `next_review_at` out along a fixed interval sequence (1/2/4/7/14/30/60 days); missing it resets
    the streak to 0 and makes it due again immediately. Deliberately self-assessed ("I Remembered
    It" / "Need Practice") rather than text-graded — matches the mockup, which shows the full verse
    rather than a fill-in blank, and avoids building fragile free-text grading for a feature that
    doesn't need it.
  - `lib/types.ts`: added `VaultEntry` / `VaultEntryWithChallenge`.
  - Screen has three states: list (verse cards with a due badge, matches `docs/mockups/memory-vault.html`
    closely), an in-page review flow (reveal-then-self-assess, one card at a time, reusing the
    `.challenge-*` CSS classes from the Play screen rather than inventing new ones), and an empty
    state via the shared `StatePanel` pattern for a player with zero vault entries.
  - Added a route (`/vault`) and a small "🗝 Vault" link in `WorldMap.tsx`'s header row — no nav
    bar exists yet for the still-unbuilt screens, so this is the only current entry point; worth
    revisiting once Profile/Home are built and a real bottom-nav pattern is warranted.
  - **Real bug caught by live testing, not code review**: the first `dueLabel()` implementation
    used a "boundary + ceil + 1" formula that overcounted by a day for any due date not exactly at
    midnight (e.g. a verse due in exactly 3 days showed "Due in 4 days"). Rewrote it as a plain
    calendar-day difference (`startOfDay(due) - startOfDay(now)`) — simpler and correct. Caught by
    actually seeding a 3-days-out entry and reading what rendered, not by inspecting the function.
  - **Verified end-to-end twice** — once locally (seeded real `vault_entry` rows via SQL for a
    fresh guest session rather than replaying a full world just to populate test data; confirmed
    list rendering, the due/upcoming badge split, the full review loop for both outcomes, and via
    direct SQL query that `reviewVaultEntry()`'s writes actually persisted with the right streak/
    interval math) — and again on **production** (`gen2rev.vercel.app/vault`): confirmed the
    empty state for a brand-new guest, then seeded one entry for that same session and confirmed
    the populated view rendered correctly there too. Test rows deleted afterward; the one real
    production player's actual vault data (7 entries from their earlier Genesis+Exodus playthrough)
    was left untouched and confirmed intact throughout.
  - Redeployed to `gen2rev.vercel.app`. **New deploy-auth gotcha**: `npx vercel --prod --yes`
    failed with "Not authorized" even though `whoami` showed logged in — the CLI's default scope
    wasn't the team the project lives under. Fixed by passing `--scope veecthor-2201s-projects`
    explicitly. Worth doing this by default on future deploys from a fresh WSL2 login rather than
    rediscovering the same failure.
- **Still not built**: Profile/Rank, Home/Streak dashboard, Share screen, account-claim flow, and
  the Phase 5 QA/accessibility pass.

---

**2026-08-18 — Profile/Rank, Home/Streak, Share, and account-claim all built and shipped; QA'd stage by stage**
- Closes out four of the five remaining Phase 3 screens (Onboarding is the only one left) plus the
  account-claim flow named as a hard requirement back in `BACKEND_REQUIREMENTS.md` §2. Built and
  verified one at a time, matching Kachi's "qa every stage" instruction, rather than all four blind
  then one big test pass at the end.
- **Profile/Rank** (`pages/Profile.tsx`, `/profile`): rank badge is a static "Disciple" label, not a
  computed tier — confirmed from `PRODUCT_REQUIREMENTS.md` §2 that "rank tiers" (Seeker/Disciple/
  Scribe/Prophet/Apostle) are the age/skill-tier system, and only Disciple is in scope for MVP, so
  there's no ladder to compute. Stat grid (`getWorldsCompleteCount`, reused streak/points queries) is
  all real data, no placeholders.
- **Account-claim flow**, inline on Profile: uses Supabase's anonymous-to-permanent upgrade
  (`supabase.auth.updateUser({ email, password })` while signed in anonymously) rather than creating
  a new account and migrating rows — this keeps the same `auth.uid()`, so every `world_progress`,
  `vault_entry`, `streak`, and `points` row stays attached automatically. Satisfies
  `BACKEND_REQUIREMENTS.md` §2's "additive, never destructive" requirement by construction, not by
  extra migration code. On success, `player.auth_type`/`claimed_at` are updated client-side (same
  client-orchestrated pattern as `completeWorld`).
  - **Scoped deliberately narrow**: claim-from-guest only. No separate "log in with existing account
    on a new device" screen — not named in the backend requirements and would meaningfully expand
    scope; flagging as a real gap if Kachi wants returning claimed users to be able to sign in from a
    second device.
  - **Genuinely could not verify the full happy path live**: Supabase's project hit "email rate limit
    exceeded" on the very first real submission attempt (its built-in/sandbox email sender has a low
    default send cap) and stayed rate-limited through a retry ~15s later. Confirmed this is a
    platform limit, not app-code — the request never left a stray unconfirmed email on `auth.users`
    (checked directly), meaning `updateUser` fails atomically rather than partially applying. What
    **is** verified: the error path renders cleanly (no crash, message shown), and the "already
    claimed" UI branch (`Signed in` / no claim card) renders correctly when tested by flipping
    `player.auth_type` directly via SQL. **Open decision for Kachi**: either configure a custom SMTP
    provider before this ships for real, or reconsider whether email confirmation should be required
    at all given the zero-friction philosophy — right now a claiming guest gets "check your email"
    messaging but that confirmation email may not reliably send until SMTP is configured.
- **Home/Streak** (`pages/Home.tsx`, `/home`): streak hero, a real "continue where you left off" card
  driven by whichever world is `in_progress`, and a Memory Vault nudge showing the single
  nearest-due verse (`getVaultEntries()[0]`, already sorted). **Deviates from the static mockup on
  purpose**: the mockup showed a fabricated "Challenge 3 of 8" position — Gen2Rev doesn't persist a
  mid-world challenge index (Play always restarts a world at item 1), so showing that would be
  fabricated data. Shows just the world title instead. Worth a product call from Kachi on whether
  mid-world resume position is worth adding later.
- **Share** (`pages/Share.tsx`, `/share`): copyable link (`window.location.origin`, so it's correct
  in both dev and prod — verified separately on each), Web Share API with a copy-link fallback for
  browsers without it, "Share My Progress" only shown once `worldsComplete > 0` (real count, not
  the mockup's hardcoded "World 1 Complete!"). No referral/ref-code query param — the mockup implied
  one (`?ref=abc123`) but there's no `referral_code` field or attribution tracking built, so a fake
  param would've been dishonest UI; flagged rather than fabricated.
- **New shared `components/NavBar.tsx`**: a 5-item icon row (Home/Journey/Vault/Profile/Share)
  replacing the one-off "🗝 Vault" link hacked into `WorldMap.tsx` in the prior session. Added to
  every hub screen (WorldMap, Vault, Home, Profile, Share) but deliberately **not** Play/Boss
  Battle/Result — same "no exit affordance mid-gameplay / mid-celebration" rationale as `AppHeader`.
- **Real bug caught during testing, not app code**: the Browser pane's `javascript_tool` synthetic
  `dispatchEvent(new Event('input', ...))` trick — used successfully all session for recall-challenge
  inputs — silently failed to update React state on the claim form's `<input type="email">`/
  `type="password">` fields specifically. The DOM's visible `.value` updated but the component's
  `email`/`password` state stayed empty, so the first claim submission sent an empty email to
  Supabase (confirmed by the exact error string `Email address "" is invalid` being a genuine
  server-side response, not a local validation message). **Fixed by switching to real keystroke
  simulation** (`computer` tool's `type` action) for this form instead of DOM event dispatch — that
  correctly drove React state and the request reached Supabase with real values. Worth remembering
  for any future form-testing in this app: prefer `computer.type` over synthetic `dispatchEvent` when
  a dispatched-event fill doesn't seem to "take."
- **Also confirmed environmental, not app bugs, while testing Share**: `navigator.clipboard.writeText`
  threw `NotAllowedError: Document is not focused` in the automated Browser pane (permission was
  separately confirmed `granted` via `navigator.permissions.query` — it's a focus issue, not a
  permission issue) and `navigator.share` is `undefined` in this desktop browser entirely. Both are
  already handled by `Share.tsx`'s try/catch fallbacks, confirmed by exercising the failure path
  directly rather than assuming the try/catch was sufficient.
- **QA method for Home/Profile/Share's populated states**: rather than replaying a full Genesis
  run again, seeded a realistic `completeWorld()` outcome directly via SQL (world_progress complete
  + next world in_progress, points, streak, one vault entry) for the same local test session, then
  verified all three screens rendered the real numbers correctly, then deleted the seeded rows
  afterward. Same "seed real data via SQL rather than re-clicking a proven flow" pattern used for
  Memory Vault's QA on 2026-08-17.
- Deployed with `--scope veecthor-2201s-projects` from the start this time (the gotcha from the
  previous session's final deploy). Verified live on `gen2rev.vercel.app/home`, `/profile`, `/share`
  directly — all three resolve correctly, and Share's link correctly showed the real production
  origin rather than localhost.
- **Still not built**: Onboarding screen, sign-in-on-a-new-device for already-claimed accounts, and
  the Phase 5 formal QA/accessibility audit (contrast, tap targets, full 14-book functional matrix)
  — "qa every stage" this session meant verifying each new piece as it was built, not that broader
  audit; flagging so it isn't assumed done.

---

**2026-08-18 (later) — Mid-world resume (real "Challenge N of M"), Onboarding screen, and a self-heal bug fix**
- Kachi called for building real resume behavior for Home's continue card (flagged as an open gap
  the prior session) rather than leaving it decorative, plus the Onboarding screen, plus turning off
  required email confirmation for account-claim.
- **Mid-world resume, not just a display number**: `world_progress` gained `current_index` (count
  of challenges answered in the current unfinished attempt) and `session_results` (jsonb log of
  each answer so far — challenge_id/isCorrect/userAnswerDisplay). `Play.tsx` now persists both after
  every answer (`saveWorldProgress`) and, on load, resumes from them instead of always restarting at
  question 1 — reconstructing `ChallengeResult[]` by looking up each logged `challenge_id` against
  the already-fetched challenge list. Chose to build actual resume rather than just a cosmetic
  counter: the mockup/Home copy ("Continue where you left off — Challenge 3 of 8") promises
  resumption, and displaying a number that Play then ignored would be dishonest UI.
  - **Edge case handled, not just theorized**: if a player answers every item in a world but closes
    the tab right before reaching Review (so `current_index` lands at the world's total), `Play.tsx`
    detects this on the next visit and immediately finishes that attempt (increments attempt_count,
    navigates to Review with the reconstructed results) instead of crashing on an out-of-bounds
    `ordered[index]` read.
  - **Retake still starts genuinely fresh**: Review's "Retake World" now calls a new
    `resetWorldProgress()` (clears `current_index`/`session_results` to 0/`[]`) *before* navigating
    to Play, so a retake never resumes into the run being discarded. Verified via SQL that after
    Retake, `current_index = 0`, `session_results = []`, and `attempt_count` is unchanged (retake
    itself doesn't count as a new attempt until it's finished).
  - **Verified live, not just by reading the diff**: answered 3 of Genesis's 10 questions, confirmed
    via SQL `current_index = 3`, checked Home showed "Challenge 4 of 10", clicked Continue Playing
    and confirmed Play actually resumed at question 4 (not question 1), finished the remaining 7
    questions, and confirmed Review showed all 10 with the correct 9/10 result — proving the
    pre-resume and post-resume answers merge correctly into one Review, not just that resume
    "looked" right.
- **Real, pre-existing bug found and fixed along the way (not caused by today's changes)**:
  `useSession.ts`'s `ensureWorldOneUnlocked()` only ran on a *brand-new* anonymous sign-in, never on
  a *returning* session (the `existing.session` early-return branch skipped it entirely). Any
  returning guest whose World 1 `world_progress` row ever went missing — which happened by accident
  to a test player this session after an earlier cleanup `DELETE` — would see every world "🔒 Locked"
  with **no recovery path**, since nothing would ever re-create that row. Fixed by calling
  `ensureWorldOneUnlocked()` on both branches. Confirmed the fix self-heals: reloaded the affected
  test session and Genesis correctly flipped back to "▶ In Progress" with no manual DB intervention.
- **Onboarding** (`pages/Onboarding.tsx`, `/onboarding`): optional name input + 4-avatar picker
  (lion/dove/wheat/star, stored as short codes via `updatePlayerProfile()`, not raw emoji, so a
  future avatar-asset reskin wouldn't need a data migration), "Start Playing" (saves whatever was
  entered, skippable fields included) and "Skip for now" (saves nothing). Inserted into the flow
  between Landing's "Start Playing" and `/map` for first-time visitors only — matches
  `FRONTEND_REQUIREMENTS.md`'s named target ("Start → optional name/avatar skip → World Map, ≤2
  taps"). Returning visitors' "Resume Your Journey" is untouched, still goes straight to `/map`.
  Profile's guest copy now shows the chosen name ("Playing as Kachi") when set, "Playing as Guest"
  otherwise. Verified live: name+avatar saved and reflected correctly on Profile.
- **Email confirmation — code change alone can't fix this.** GoTrue's "Confirm email" requirement is
  a project-level Supabase Auth setting, not something any exposed MCP tool can toggle (same
  category as anonymous sign-ins needing a manual dashboard flip back on 2026-08-13) — confirmed no
  `execute_sql`/`apply_migration`-reachable path controls it. **Told Kachi this needs a manual
  one-time toggle**: Supabase Dashboard → Authentication → Sign In / Providers → Email → turn off
  "Confirm email". Did not change any application code to fake this client-side, since the server
  would still enforce it regardless of what the UI claims.
- Deployed (`--scope veecthor-2201s-projects`, now the standing default for this project's deploys)
  and verified the build was clean before and after each change.
- **Mid-session pivot**: while finishing this batch's live QA, Kachi raised a much larger idea —
  three difficulty modes (easy/medium/hard) chosen at onboarding with a re-prompt after each world —
  and asked whether it's achievable. Did not start implementing; this needs real scoping first (see
  next entry once that conversation resolves). Noting here so the thread isn't lost: `challenge`
  already has a `difficulty_rank` (1-5) column from the original schema, unused by any screen so
  far — worth checking its actual value distribution across the 152 ingested challenges before
  assuming it can cleanly bucket into three tiers per world.

---

**2026-08-18 (later still) — Difficulty-mode engine built and shipped; content authoring scoped as separate follow-on work**
- **Checked the data before proposing anything**: queried `difficulty_rank`'s actual distribution
  across all 152 challenges — too thin to reuse as a mode-selector (most worlds have only 1-2 items
  at rank 4-5; **1 Chronicles has zero items above rank 3**). Filtering existing content by that
  column would leave some "hard mode" worlds nearly or completely empty, so that shortcut was ruled
  out with real numbers, not a guess.
- **Presented the real fork to Kachi** (via `AskUserQuestion`, since the two paths have wildly
  different cost): same-verses-harder-interaction (buildable this session, no new content) vs.
  genuinely new content per tier (triples authorship, needs the full theological-review +
  verbatim-QA pipeline re-run per new item — the same rigor already spent once on 14 books). **Kachi
  chose genuinely-new-content.** Given the scale, split this into two separate efforts rather than
  attempting both in one pass: build the *engine* now (schema, mode selection, mode-aware fetching,
  upgrade prompts), scope the *content authoring* separately as real multi-session follow-on work —
  did not pretend the 26 additional book-tier content sets (13 easy + 13 hard, 1 Chronicles
  potentially needing bespoke handling given its already-thin medium set) could happen in this pass.
- **Schema**: `challenge.difficulty_tier` (`'easy'|'medium'|'hard'`, default `'medium'` — all 152
  existing rows became `medium` automatically via the column default, zero backfill risk, zero
  regression) and `player.difficulty_mode` (same enum, default `'medium'`).
- **Graceful fallback is the load-bearing design decision here**: `getChallenges(worldId, tier)`
  serves `tier`'s content if any exists, else silently falls back to `medium` (fully reviewed content
  for all 14 books) and flags `usedFallback: true` so Play shows an honest note ("Hard content for
  Genesis isn't ready yet — playing on Medium"). This means **the entire game is fully playable at
  every mode selection from day one**, even though only `medium` has real content anywhere yet —
  choosing Easy or Hard never dead-ends a player, it just plays Medium with a visible, truthful note
  until that book's tier gets authored. `getChallengeCount` (used by Home's continue card) has the
  same fallback so the displayed total always matches what Play will actually serve.
- **Real, independent difficulty lever shipped ahead of any new content**: mid-session, Kachi asked
  for lenient case/singular-plural grading on easy/medium and strict verbatim matching on hard —
  correctly recognized as orthogonal to the content-tier question (a grading-strictness axis, not a
  which-verses axis) and buildable immediately regardless of the content pipeline's timeline. New
  `lib/grading.ts`: `isRecallCorrect(input, answer, mode)` — hard is exact trimmed match
  (case-sensitive); easy/medium fold case, ignore trailing punctuation, and strip one trailing
  `s`/`es` so singular/plural interchange (e.g. "SANDAL" matches "sandals"). Threaded `mode` down
  through `Play → PlayLoaded → ChallengeBody → RecallChallenge`; multiple-choice and sequence types
  are unaffected (grading them by index/order, not text, so case/plural leniency doesn't apply).
  **This means real difficulty differentiation exists today**, even before a single new easy/hard
  verse is authored.
- **Onboarding**: added a 3-way Easy/Medium/Hard picker (Easy pre-selected, per Kachi's described
  flow of starting easy and stepping up over time), saved via `setDifficultyMode()` on both Start
  *and* Skip — treated as a real gameplay setting, not a skippable profile flourish like name/avatar.
  Caught and fixed my own copy bug before shipping: initially wrote "Easy: multiple choice, forgiving
  grading" in the hint text, but no interaction-format change was actually built (only grading
  strictness) — that would have been dishonest UI describing a feature that doesn't exist. Corrected
  to describe only what's real: case/plural leniency.
- **Result screen upgrade prompt**: after a world completes, if the player isn't already on Hard, a
  card offers the next tier up ("Ready for more of a challenge? Try Medium mode.") with
  accept/decline; accepting calls `setDifficultyMode` and shows "Now playing on Medium," declining
  just dismisses. Already-Hard players see no prompt (`NEXT_MODE` has no entry for `'hard'`).
  Verified live: reached Result via the "already-finished" resume edge case from the prior entry
  (seeded a full 12/12 Exodus attempt via SQL rather than reclicking all 12 answers again — same
  seed-real-data-not-reclick pattern used repeatedly this session) to reach a genuine Review→Result
  flow with real `location.state` (Result redirects to `/map` without it, so this can't be tested by
  direct URL navigation), clicked "Try Medium," confirmed both the UI confirmation text and the DB
  write (`player.difficulty_mode = 'medium'`).
- **Verified all three modes live, not just by reading the diff**: Hard mode — typed lowercase "god"
  against answer "God," confirmed `challenge_attempt.is_correct = false` via direct SQL (verbatim
  rejected); typed exact-case "them," confirmed `true`. Easy mode — typed "SANDAL" (wrong case +
  singular) against answer "sandals," confirmed `true` (leniency applied). Confirmed the fallback
  note rendered correctly in both cases, since neither Genesis nor Exodus has non-medium content yet.
- **Test-session mixup caught and corrected mid-verification**: a `localStorage.clear()` call
  landed on the wrong tab's origin (same class of mistake as the 2026-08-13 session, worth actually
  internalizing this time — always confirm the target tab's origin before clearing storage on it),
  and separately a preview-server restart silently produced a brand-new anonymous player instead of
  resuming the intended test session — caught immediately because a resume that should have shown
  question 2 showed question 1 instead, and cross-checking `auth.uid()` against the expected id
  revealed a totally different player. Not an app bug; a test-harness identity mixup, resolved by
  re-verifying with the actual current session's id at each step rather than assuming continuity.
- Deployed (`--scope veecthor-2201s-projects`) and confirmed the Onboarding mode picker renders
  correctly on production. Test data cleaned up afterward.
- **What's real and what isn't, to avoid future confusion**: the difficulty *mechanism* is fully
  live and correct for all 14 books today (mode selection, grading strictness, fallback messaging,
  upgrade prompts). The difficulty *content* — genuinely easier/harder verses and questions per book
  — does not exist yet anywhere; every world at every mode currently plays its original Medium
  content. Authoring the other 26 tier-sets (13 books × easy + hard) is real, separately-scoped work
  requiring the same theological-review + verbatim-QA rigor as the original 14, not started this
  session, and not something to assume is "in progress" without an explicit kickoff.

---

**2026-08-18 (later still) — Genesis easy/hard tier content authored, reviewed, QA'd, and shipped: the pilot is done, and it worked**
- Kachi: "start with Genesis as the pilot book." Ran the exact same pipeline as the original 14-book
  Phase 2 content work — content brief → theological review → verbatim QA → ingestion — twice, once
  per new tier, and it caught real problems both times. That's the actual point of the pilot: proving
  the gate does its job before scaling to 13 more books, not just proving a SQL insert works.
- **Design choice: reuse Genesis's 5 already-approved scenes for both new tiers, no new scenes.**
  Kept new-verse review risk bounded and comparable to what's already been vetted, rather than
  opening fresh contested ground on top of an already-large scope increase. Easy tier favors
  multiple-choice recognition of iconic facts (new verses: Gen 1:5, 8:11, 12:1, 22:13); hard tier
  favors typed recall of precise/less-memorized wording (new verses: Gen 1:26, 1:2, 3:19, 17:5).
  Both tiers also picked up 4 verses each that were **already in the original approved brief's
  verse list but never turned into a `medium` item** (Gen 3:6, 1:31, 7:17, 22:2) — zero incremental
  review risk, free real content. Both tiers' boss battles reuse 2 of `medium`'s 3 boss items
  verbatim (deliberately, to keep the review surface small) plus one genuinely new boss item each.
- **Both reviews came back `approved-with-changes`, and both blocking findings were real, not
  pedantic:**
  - **Easy tier**: item 4 (Gen 8:11, "what did the dove bring back to Noah?") was a genuine
    answer-key defect, not a wording nitpick — Genesis 8 has three separate dove-sendings (8:9
    returns with nothing, 8:11 returns with the olive leaf, 8:12 doesn't return), so the unanchored
    question had a *second, defensible correct answer* among its own distractors. Fixed by anchoring
    the stem to the specific verse ("According to Genesis 8:11..."). Also caught: the item's quote
    was silently trimmed without the brief's own labelling convention, and the scene list had
    silently drifted to include Genesis 17 (unused, but stated scope now exceeded what was reviewed).
  - **Hard tier**: item 8 spliced Gen 9:12's "for perpetual generations" onto a Gen 9:13 citation —
    that exact string appears nowhere in WEB; the two clauses are adjacent but belong to different
    verses in the opposite order. This slipped through drafting specifically *because* the full
    9:12-13 block was already verbatim-QA'd for `medium` — cutting a new blank out of an
    already-approved multi-verse block without re-checking the internal verse boundary is exactly
    the kind of mistake "already verified text" can hide. Fixed by re-citing to 9:12 alone.
  - **Two genuinely new contested-territory items were checked against real live sources, not
    assumed safe**: Gen 1:26's "us/our" plural pronoun (confirmed live disagreement across
    Sefaria/Rashi — angelic council; USCCB/NABRE footnote — heavenly assembly; classic Protestant
    commentators internally split on a Trinitarian reading) and Gen 17:5 sitting inside the
    covenant-of-circumcision chapter (confirmed circumcision doesn't enter until v.10, five verses
    later, no shared clause). Both bounded successfully with the same recall-only /
    single-verse-scope pattern already established for Gen 3:15 and Gen 1:27 back on 2026-08-08 —
    the pattern generalizes, which is itself a useful pilot finding.
  - **One contested item neither drafter nor original review scoping had flagged was caught cold by
    the reviewer**: Gen 1:2's "God's Spirit was hovering" is itself a translation choice with real
    doctrinal weight (Revised JPS: "a wind from God"; Catholic NABRE: "a mighty wind" with a footnote
    on the literal *ruach*). The graded token ("empty") was already safe, but the brief hadn't
    noticed the adjacent clause was contested — now flagged and structurally bounded the same way.
  - Full detail: `docs/reviews/genesis-easy-review.md`, `docs/reviews/genesis-hard-review.md`.
- **All required and recommended fixes from both reviews applied directly to the content briefs**
  (`docs/content/genesis-easy.md`, `docs/content/genesis-hard.md`) before QA, not left as review
  findings sitting separately from the shipped content.
- **Verbatim QA** (`docs/qa/genesis-easy-verbatim-qa.md`, `docs/qa/genesis-hard-verbatim-qa.md`):
  independently re-fetched all 8 newly-introduced/corrected verses from BibleGateway (a source
  already used during review, but not the primary ebible.org source used during drafting) — zero
  discrepancies, including a specific re-check of hard tier's corrected item 8 citation per the
  review's explicit instruction to do so. Both `pass`. Logged in `docs/CONTENT_REVIEW_LOG.md` and
  `docs/QA_SIGNOFF.md` following the exact same table/row format as the original 14 books, tagged
  "1e."/"1h." (World 1, easy/hard) rather than a new book number, with a new "difficulty-mode pilot
  status" section in each doc separate from the "MVP-wide status" section so the two efforts don't
  get conflated in future reads of either log.
- **Ingestion**: one migration, 20 rows (`difficulty_tier='easy'`/`'hard'`, 10 items each — 7 regular
  + 3 boss, matching `medium`'s shape). Hit and fixed a real SQL bug immediately: used double-quoted
  strings for a few prompt/verse_text literals containing apostrophes (a JS/Python escaping reflex,
  wrong in Postgres — double quotes are identifiers there, not string literals) — caught instantly by
  the migration erroring on an "unknown column" rather than silently doing the wrong thing, fixed by
  switching to single-quoted literals with doubled apostrophes throughout.
- **Verified live, both tiers, full 10-item runs, both localhost and production**: easy tier —
  played the first 4 items for real (both MC and the recall item, including a wrong-case "FRUIT"
  correctly accepted), then seed-finished the rest via SQL (the same technique from the resume-testing
  session) to confirm the full Review screen renders all 10 correctly. Hard tier — played item 1 for
  real with a deliberately wrong-case answer ("Image" vs. the verbatim "image") and confirmed via SQL
  that `challenge_attempt.is_correct = false` — verbatim grading actually rejects a near-miss, not
  just in theory — then seed-finished the rest and confirmed Review shows item 8's corrected Gen 9:12
  citation displaying real, verbatim text. Also reconfirmed on production (`gen2rev.vercel.app`) that
  a fresh guest set to Easy mode gets real content with no fallback note. No app code changed this
  round (content/DB only), so no redeploy was needed — production already reflects the new rows via
  the shared Supabase project.
- **Pilot verdict: the pipeline works and is worth repeating.** Both tiers cleared both gates for
  real, non-trivial reasons (an answer-key defect and a text-splicing citation error), not rubber-
  stamped. The remaining 13 books' easy/hard tiers are the same shape of work, not yet started —
  next natural step is deciding batching (parallel-delegate like the original Phase 2 batches, or
  continue hand-running a few more books first) before committing to a full-scale run.

---

**2026-08-19 to 2026-08-22 — 13-book difficulty-tier rollout run in parallel batches (content side complete, ingestion partial); full whole-project doc audit run 2026-08-22**

- **Difficulty-tier content rollout** (Kachi: "delegate the remaining 13 books in parallel batches
  like Phase 2"): all 13 remaining books' easy/hard content briefs authored, theologically reviewed,
  fixed, and independently verbatim-QA'd — same rigor as the Genesis pilot above. **All 26 new tier
  content briefs (`docs/content/*-easy.md` / `*-hard.md`), 26 reviews (`docs/reviews/`), and 26
  verbatim-QA docs (`docs/qa/`) now exist and are complete** (confirmed via directory listing:
  42 files each in `docs/content/`, `docs/reviews/`, `docs/qa/` — 14 medium + 26 easy/hard = 42).
  - Found and fixed **two real bugs in already-shipped `medium` production content** during this
    pass (the reviewer re-checking "settled ground" while drafting new tiers): 2 Chr 5:13-14 had a
    wrong "The trumpeters...the house was filled" quote structure (should be "**when**...**then**");
    Exodus 20:12-15's multiple-choice stem was versification-dependent (a Jewish/Masoretic reading
    made a listed distractor technically correct). Both corrected directly in the live `challenge`
    table via `apply_migration` (migration `fix_medium_tier_verbatim_bugs`) and logged as an
    addendum in `docs/QA_SIGNOFF.md` (2026-08-19) — this is the kind of defect the *original*
    2026-08-08 QA pass's method (checking words, not grammatical connectives or versification
    ambiguity) couldn't have caught; worth remembering for any future QA pass.
  - **One real escalate-to-human item found and correctly NOT resolved unilaterally**: Joshua-easy
    item 10 blanks "Gaza" from Josh 10:41-42 as a recall answer — the reviewer wasn't confident this
    is safely bounded the same way the original Joshua ḥerem-verse exclusions were. **`docs/ingest/joshua-judges-ruth-tiers.sql` ships Joshua-easy with only 9 items (not 10)**, with detailed
    inline SQL-comment documentation of the exclusion and an explicit instruction not to add item 10
    until Kachi decides. **This is a live open decision needing Kachi's input** — see "Outstanding
    decisions" below.
  - Repeatedly hit and worked around "You've hit your monthly spend limit" API errors (dozens of
    times, across every phase of this rollout) and at least one full process restart, via the
    established resume-via-`SendMessage`-to-the-same-agent-id pattern — no work was lost, confirmed
    by checking already-written files before each resume rather than relaunching fresh.
- **Ingestion is genuinely partial, not done**: of the 5 SQL ingest files this rollout needed
  (`docs/ingest/exodus-leviticus-tiers.sql`, `numbers-deuteronomy-tiers.sql`,
  `joshua-judges-ruth-tiers.sql`, `1-2-samuel-tiers.sql`, and a 5th for Kings/Chronicles that kept
  failing to spend-limit errors mid-write and **does not exist yet**), only
  **`exodus-leviticus-tiers.sql` has actually been applied to the live DB** (2026-08-22, this
  session). **Confirmed via live SQL query against `mlehvnufyxwtfbsddtgh`**: Genesis, Exodus, and
  Leviticus now have easy/medium/hard rows; **Numbers through 2 Chronicles (11 of 14 books) still
  have `medium` only** — the difficulty-mode picker on those books silently falls back to Medium
  content with the honest fallback note, per the existing fallback design (2026-08-18 entry above),
  so nothing is broken for players, but the feature isn't actually live for most of the book list yet.
- **`docs/CONTENT_REVIEW_LOG.md` and `docs/QA_SIGNOFF.md` are stale**: only Genesis's easy/hard rows
  (the pilot) are logged in either. **The other 24 new tier reviews/QA passes (12 books × 2 tiers)
  are complete and sitting in `docs/reviews/`/`docs/qa/` but not yet transcribed into either log.**
- **Whole-project documentation audit run 2026-08-22** (Kachi asked for a review against a 10-step
  framework: product requirements → architecture → domain model → API/contracts → design system →
  conventions → implementation plan → AI-implementation → tests → review/refactor). Findings, by
  step:
  1. **Product requirements** — `PRODUCT_REQUIREMENTS.md` stale: age-tier/book-list sign-off
     checkboxes never flipped despite being confirmed 2026-08-09; **the difficulty-mode feature is
     entirely unmentioned** (no scope line, no success metric, no analytics event).
  2. **System architecture** — **no `ARCHITECTURE.md` exists at all.** The as-built shape (React SPA
     talking directly to Supabase via the JS client + RLS, zero custom API server, all business
     logic client-side in `lib/game.ts`) has never been written down anywhere.
  3. **Domain model** — `BACKEND_REQUIREMENTS.md` §1 is the pre-build Phase-1 version only; the live
     schema has grown substantially since (`attempt_count`, `current_index`, `session_results`,
     `difficulty_tier`, `difficulty_mode`, `avatar_id`, and more) with zero doc updates. `types.ts`
     is the real source of truth but isn't documentation.
  4. **API/contracts** — no doc for the `lib/*.ts` function surface that is the de facto internal API
     (`getChallenges`, `setDifficultyMode`, `reviewVaultEntry`, `completeWorld`, etc.).
  5. **Design system** — `DESIGN_REQUIREMENTS.md` + `docs/mockups/` are solid but the Figma port
     (blocked since 2026-08-09) and the **contrast/tap-target accessibility audit have still never
     run** — flagged as outstanding in three separate places across the project's history.
  6. **Project conventions** — no `CONVENTIONS.md`; real conventions (client-orchestrated writes,
     sole-DB-writer ingestion pattern, SQL single-quote-escaping discipline) exist only as scattered
     `MEMORY.md` prose. `CLAUDE.md` (28 lines) is actively stale — still says "don't start Phase 4
     until Phase 1-3 sign-off," which is misleading now that Phase 4 is essentially complete.
  7. **Implementation plan** — `GEN2REV_MASTER_PROMPT.md`'s phase table still shows Phase 4 "IN
     PROGRESS" as of its last edit (2026-08-13) and has no tracked entry at all for the
     difficulty-tier rollout, now the dominant remaining body of work.
  8. **AI implementation** — OK, `SKILL.md` covers the content-authoring loop well and has
     demonstrably worked across 42 briefs now.
  9. **Tests** — **the single biggest gap.** `QA_REQUIREMENTS.md` specifies a unit/integration/e2e
     split; **zero automated tests exist anywhere in `app/`** (no test runner in `package.json`, no
     `.test.`/`.spec.` files). Every verification to date has been manual live-clicking + ad hoc SQL
     checks, documented only as prose in this file. Phase 5's functional/accessibility QA pass has
     never run.
  10. **Review/refactor** — no code review has ever run against the app itself (content has a very
      rigorous review log; code has none), and there's no architecture doc to check conformance
      against even if one did.
- **Decision: all of the above queued, not started, until token/usage limits reset Tuesday
  (2026-08-25)** — Kachi: "queue all these, but for when token resets on tuesday. usage credits
  won't suffice for the updates." **Nothing above was implemented this session beyond the audit
  itself** (except applying `exodus-leviticus-tiers.sql`, which was already in flight before the
  audit was requested). Recommended order when work resumes, in this priority (not yet confirmed by
  Kachi beyond "queue all"):
  1. **Finish the in-flight rollout first** — apply the 3 remaining ready SQL files
     (`numbers-deuteronomy-tiers.sql`, `joshua-judges-ruth-tiers.sql`, `1-2-samuel-tiers.sql`), write
     and apply the still-missing Kings/Chronicles tiers SQL, verify row counts per the established
     query pattern, then log all 26 new reviews/QA passes into `CONTENT_REVIEW_LOG.md`/`QA_SIGNOFF.md`.
     Closes out real work already ~85% done before starting anything new.
  2. **Write the missing docs** — `ARCHITECTURE.md`, an updated domain-model doc (or a rewritten
     `BACKEND_REQUIREMENTS.md` §1 reflecting the live schema), a lightweight API/contract doc for the
     `lib/*.ts` surface, and `CONVENTIONS.md`. Pure documentation, no code risk.
  3. **Update the stale docs** — `PRODUCT_REQUIREMENTS.md` (difficulty mode scoped in, checkboxes
     closed), `GEN2REV_MASTER_PROMPT.md`'s phase table (Phase 4 status corrected, difficulty-tier
     rollout added as a tracked phase/sub-phase), `CLAUDE.md` (implementation status corrected).
  4. **Stand up a real test suite + run Phase 5 QA** — add Vitest, write unit tests for grading/
     streak/points logic per `QA_REQUIREMENTS.md` §1, then run the deferred functional +
     accessibility hardening pass. Real implementation work, not just docs — expect this to be the
     most expensive of the four tracks.
- **Outstanding decision needing Kachi specifically, unresolved as of this entry**: Joshua-easy item
  10 (the Gaza recall blank) needs an explicit accept/reject/modify decision before that item can be
  added to the ingest file — see the "Difficulty-tier content rollout" note above. Not blocking
  anything else; Joshua-easy ships with 9 items in the meantime.

---

**2026-08-22 (same day) — Joshua-easy escalation resolved; Joshua/Judges/Ruth difficulty tiers shipped**

- Kachi: "actually lets work on the Joshua open Item now. proceed with the ship." Resumed the queued
  work early, scoped narrowly to this one item plus shipping the batch it blocked — did not start the
  other three queued tracks (missing architecture/domain/conventions docs, stale-doc updates, test
  suite) from the prior entry.
- **Presented the review's four resolution options to Kachi directly** (not defaulted into), per the
  review's own explicit request that this decision be deliberate. **Kachi chose the reviewer's
  preferred option: move the blanked token from "Gaza" to "Gibeon"** — same verse (Josh 10:41), same
  recall format, same difficulty class, politically inert, confirmed distinct from
  `joshua-hard.md`'s item 10 (which blanks "Goshen," also from 10:41 — corrected the review's own
  addendum, which had assumed hard blanked "Israel" from 10:42; checked the actual hard-tier brief
  before finalizing, no overlap either way).
- **Updated four docs to record the resolution**, following the project's established append-only
  conventions: `docs/content/joshua-easy.md` (item 10's template and status header updated in place —
  this file tracks current state, not history), `docs/reviews/joshua-easy-review.md` (a dated addendum
  appended at the bottom, original findings left untouched), `docs/qa/joshua-easy-verbatim-qa.md`
  (item 10's row updated to confirm "Gibeon" verbatim in Josh 10:41, conclusion changed to `pass` for
  all 10 items), `docs/ingest/joshua-judges-ruth-tiers.sql` (the "CRITICAL EXCLUSION" header replaced
  with a "RESOLVED ESCALATION" note, item 10 added to the Joshua-easy insert block).
- **Applied the full `joshua-judges-ruth-tiers.sql` file to the live DB** (migration
  `seed_joshua_judges_ruth_difficulty_tiers`) — this file hadn't been touched since the prior queued
  entry, so this ships Joshua/Judges/Ruth's easy AND hard tiers in one migration, not just the one
  resolved item. **Verified via live SQL query**: Joshua easy/hard/medium all 10 items (3 boss),
  Judges all 11 (3 boss), Ruth all 9 (3 boss) — matches every tier's expected shape. Also directly
  queried item 10's live `answer_key` to confirm the graded token is genuinely "Gibeon," not "Gaza,"
  in production — not just trusted the source file.
- **Logged all 6 new tier reviews/QA passes** into `docs/CONTENT_REVIEW_LOG.md` (rows 6e/6h/7e/7h/8e/8h)
  and `docs/QA_SIGNOFF.md`, and updated both docs' "difficulty-mode pilot status" sections into a
  single "rollout status" section reflecting real current state: **6 of 14 books now have live
  easy/medium/hard content** (Genesis, Exodus, Leviticus, Joshua, Judges, Ruth). This logging wasn't
  explicitly requested this turn, but shipping content without a review-log entry would violate this
  project's own non-negotiable content rule (`CLAUDE.md`) — done as part of "proceed with the ship,"
  not treated as separate scope.
- **Remaining from the prior entry's queue, still not started**: Numbers, Deuteronomy, 1-2 Samuel,
  1-2 Kings, 1-2 Chronicles ingestion (content/review/QA already complete for all of these, per the
  prior entry); the missing architecture/domain/conventions docs; the stale-doc updates
  (`PRODUCT_REQUIREMENTS.md`, `GEN2REV_MASTER_PROMPT.md`, `CLAUDE.md`); the automated test suite and
  Phase 5 QA hardening pass. Still queued for whenever Kachi resumes that broader work.

---

**2026-08-25 — Full difficulty-tier rollout: Numbers/Deuteronomy/1-2 Samuel shipped; a real
SQL-escaping bug caught and fixed pre-deploy; Kings/Chronicles authoring delegated**

- Kachi: "new goal, complete and ship all modes for the remainder of the 14 books/worlds yet to be
  built/shipped. Ensure all due diligence is carried out before deploying to live." Explicit
  instruction to prioritize due diligence over speed — treated as a mandate to re-verify everything
  from scratch (escalation check, sensitive-content grep, JSON/structural validation, live-DB
  spot-checks) rather than trusting prior sessions' "confirmed ready" notes at face value.
- **Escalation sweep across all 16 remaining reviews (Numbers/Deuteronomy/1-2 Samuel/1-2 Kings/1-2
  Chronicles × easy/hard)**: zero `escalate-to-human` verdicts — all 16 are `approved-with-changes`
  with every review's required fixes already applied to its content brief (verified via each brief's
  own status header, not assumed). No Kachi-level content decision needed for this batch, unlike
  Joshua. One near-miss worth recording: `1-samuel-hard-review.md` §6.2 had the reviewer "deliberately
  handing up" a narrower concern (item 11, 1 Sam 17:47, originally made "Yahweh" the *typed* graded
  answer — flagged as a real cross-tradition sensitivity distinct from merely *displaying* the divine
  name, since Jewish/Catholic/eBible sources all avoid or substitute it in that exact verse) — but the
  review's own proposed one-word fix (move the blank to "hand") had **already been adopted** in the
  content brief before this session touched it, confirmed by reading the brief's actual item-11 text
  and status header. No open decision remained; verified rather than assumed.
- **Sensitive-content grep sweep** across all 8 remaining books' new tier briefs for every book's own
  known exclusions (Numbers 25/Baal Peor, Deuteronomy 28's curse list, 2 Samuel ch. 11, 1 Kings 18:40,
  2 Kings 25:6-7/6:26-29/2:23-24, 2 Chronicles 7:14/36:17) — all confirmed absent from actual challenge
  content; every grep hit was either an exclusion-note reference or (for 2 Samuel 15, Absalom's
  rebellion) a different, in-bounds chapter that happened to share a chapter number with an excluded
  book's chapter 15 (1 Samuel 15, Amalek ḥerem — confirmed zero matches).
- **Real bug found and fixed during pre-deploy validation, not by inspection alone**:
  `docs/ingest/numbers-deuteronomy-tiers.sql` (written 2026-08-20, never previously applied) had every
  JSON `answer_key` literal using quadrupled apostrophe escaping (`''''`) instead of the correct
  doubled escaping (`''`) — e.g. `father''''s` instead of `father''s`. Postgres would have decoded this
  into a stored string with two literal apostrophe characters ("father''s," doubled) rather than one
  correct apostrophe. Confirmed via a Python simulation script (extract every answer_key literal by
  regex, apply Postgres's `''`→`'` unescaping, parse as JSON) that this affected 19 lines / 40
  occurrences across 48 total answer_key literals in the file, and that zero occurrences of this bug
  pattern existed in any already-applied sibling file (`exodus-leviticus-tiers.sql`,
  `joshua-judges-ruth-tiers.sql`) or the not-yet-applied `1-2-samuel-tiers.sql` — isolated to this one
  file, presumably a transcription habit from whichever agent/session wrote it originally. **Fixed via
  a global `sed` replace (`''''` → `''`)**, then re-validated: all 48 literals now parse as correct
  JSON, all multiple_choice items have exactly 4 options with a valid `correct_index`, all sequence
  items have a valid permutation, all recall templates contain `___`, and every easy/hard row's
  `difficulty_rank` matches its `difficulty_tier` (1/easy, 5/hard). **Confirmed live in production
  after applying**: queried a known-affected row directly and confirmed the displayed text now reads
  "father's house's banner" (single apostrophes), not the doubled form.
- **Applied `numbers-deuteronomy-tiers.sql`** (migration `seed_numbers_deuteronomy_difficulty_tiers`,
  after the fix above) and **`1-2-samuel-tiers.sql`** (migration `seed_1_2_samuel_difficulty_tiers`,
  no defects found — clean on first validation pass). **Verified via live SQL query**: Numbers 12/12/12
  (4 boss), Deuteronomy 12/12/12 (4 boss), 1 Samuel 11/11/11 (3 boss), 2 Samuel 12/12/12 (4 boss)
  across easy/medium/hard — all match expected shapes.
- **Logged all 8 newly-shipped tier reviews/QA passes** into `docs/CONTENT_REVIEW_LOG.md` and
  `docs/QA_SIGNOFF.md` (rows 4e/4h/5e/5h/9e/9h/10e/10h), including an explicit note on the escaping
  bug in both logs (not just here) so a future reader of either gate log sees the real defect that was
  caught, not just a silent `pass`. **10 of 14 books now have live easy/medium/hard content** — up
  from 6 at the start of this session.
- **Kings/Chronicles (the 4 remaining books: 1 Kings, 2 Kings, 1 Chronicles, 2 Chronicles) still had
  no SQL ingest file at all** — this is the file that repeatedly failed to spend-limit errors across
  the entire 2026-08-19 to 2026-08-22 rollout and was never completed. **Delegated authoring to a
  background agent** (100 items across 8 insert blocks: 1/2 Kings 16 items each tier, 1 Chronicles 6
  items each tier — deliberately thin, not padded, per its established genealogy-handling guidance —
  2 Chronicles 12 items each tier), with the escaping-discipline lesson from this session's bug fix
  written explicitly into the delegation prompt (correct doubled-quote escaping, both for plain text
  fields and JSON literals) and an explicit self-validation step (the same Python JSON/structural
  simulation used above) required before the agent's own report is trusted. Per this project's
  established sole-DB-writer convention, the agent was instructed to write the file only, never touch
  the live database — full independent re-verification and the actual `apply_migration` call remain
  the orchestrating session's job, not delegated. **Still in progress as of this entry** — not yet
  applied, not yet independently re-verified beyond the agent's own self-report.
- **Not yet started this session**: the four-track queue from the 2026-08-22 audit entry (missing
  architecture/domain/conventions docs, stale-doc updates, automated test suite + Phase 5 QA) — this
  session's scope was narrowly "ship the remaining difficulty tiers with real due diligence," not the
  broader audit follow-up. Once Kings/Chronicles ships, 14/14 books will have full easy/medium/hard
  content and the difficulty-tier rollout itself will be fully closed for the first time.

---

**2026-08-25 (later) — Kings/Chronicles shipped; difficulty-tier rollout fully closed, 14/14 books**

- The delegated `docs/ingest/kings-chronicles-tiers.sql` (100 items across 8 insert blocks) came back
  from the background agent complete, with its own self-report claiming full validation. **Did not
  trust the self-report at face value** — ran independent due diligence before applying, matching the
  same rigor used earlier this session:
  - Independent Python validation (own script, not the agent's): confirmed 100/100 answer_key JSON
    literals parse correctly after simulated Postgres unescaping, all multiple_choice items have
    exactly 4 options with a valid `correct_index`, all sequence items have a valid permutation, all
    recall templates contain a blank. Also grepped for the quadruple-quote bug pattern from earlier
    this session — found exactly one occurrence, confirmed it was inside the file's own header
    comment (explaining the escaping rule, not an actual defect), not live content.
  - Re-confirmed the exclusion list myself (18:40, 1 Kings 3:16's "prostitutes" detail, 2 Kings
    25:6-7/6:26-29/2:23-24, 2 Chronicles 7:14/36:17, 2 Chronicles 29:10's "fierce anger" reading) via
    direct grep of the finished file — all clean, all hits confined to the header's documentation.
  - **Specifically scrutinized the one judgment call the agent flagged itself**: 1 Kings items 16
    (both tiers), a boss sequence citing broad scene ranges (e.g. "1 Kings 3:5-14"), where the agent
    said it built `verse_text` from "representative already-used verbatim quotes" rather than a fresh
    quotation, since the brief supplies event descriptions with citations but no new text to
    transcribe. Checked this directly against `docs/content/1-kings-easy.md`'s own item 16 and its
    "Items 13-15 reuse... item 16 adds one genuinely new piece of content" note — confirmed this is
    exactly the established sequence-item convention used throughout every prior ingest file in this
    project (Numbers' Korah sequence, Joshua's entry-into-Canaan sequence, etc.): `verse_text` is a
    semicolon-joined concatenation of the same verbatim verses already used and QA'd elsewhere in the
    same brief, `answer_key.items` holds narrative-summary labels, never fresh/invented quotation. Not
    a defect — the agent's own uncertainty about this call was unwarranted, but flagging it rather than
    silently proceeding was the right instinct on its part.
  - Also independently re-confirmed the 3:16 "two women" narrative-summary handling (item 13's
    sequence: 3:16 is cited in the reference string but never displayed as verse text, only as the
    sanitized label "The women are brought before the king") matches the brief's own item 13 exactly.
  - Queried the live `world` table directly to confirm the four book_slug values ('1-kings', '2-kings',
    '1-chronicles', '2-chronicles') before applying, rather than trusting the file's own comment that
    they'd been checked.
- **Applied `kings-chronicles-tiers.sql`** (migration `seed_kings_chronicles_difficulty_tiers`).
  **Verified via a full live SQL query across all 14 books**: every book now has non-zero, matching-
  shape rows at easy/medium/hard. Note one legitimate, reviewed asymmetry: 1 Kings and 2 Kings's
  easy/hard tiers have 16 items each vs. medium's 12 — unlike every other book in the rollout, where
  all three tiers hold equal counts. This isn't a defect; both briefs' own headers state 16 items
  explicitly and both cleared full theological review + verbatim QA at that count — just noting it
  here since it's an outlier shape worth a future reader knowing was deliberate, not a leftover
  padding bug.
- **One real, non-doctrinal text-integrity issue surfaced during 2-kings-hard's review**: 2 Kings
  19:15 has three different live WEB readings across four sources (edition drift between ebible.org's
  current `/web` printing, its `/engwebp` printing, and the older printing BibleGateway/BibleHub still
  serve) — the new hard-tier brief's drafter-sourced text didn't match the already-shipped `medium`
  tier's reading for the same verse. Not doctrinal (the graded token, "cherubim," is identical across
  every printing) — resolved by aligning to the already-shipped `medium` reading, independently
  re-verified before this session ingested it. **This is the second time WEB edition drift has caused
  a real discrepancy in this project** (the first: Gen 12:1, `docs/reviews/genesis-easy-review.md`
  §1) — logged in both `docs/CONTENT_REVIEW_LOG.md` and `docs/QA_SIGNOFF.md`, and flagged here as a
  real gap: **Open Decision #1 in `GEN2REV_MASTER_PROMPT.md` names the WEB translation but pins no
  specific edition or printing date**, which is the actual thing that needs deciding to stop this
  recurring. Not resolved as a formal Open Decision by this session — surfaced for Kachi, not decided
  unilaterally.
- **Logged all 8 final tier reviews/QA passes** into `docs/CONTENT_REVIEW_LOG.md` and
  `docs/QA_SIGNOFF.md` (rows 11e/11h/12e/12h/13e/13h/14e/14h), and rewrote both docs' rollout-status
  sections to read **COMPLETE** rather than "in progress."
- **Difficulty-tier rollout is now fully closed: all 14/14 MVP books have live, reviewed, QA'd
  easy/medium/hard content in production.** This closes out real work that has spanned since
  2026-08-18 (the Genesis pilot) across multiple sessions, several infrastructure interruptions
  (spend limits, a process restart, a concurrency ceiling), one resolved human escalation (Joshua's
  Gaza→Gibeon decision), and two real bugs caught by pre-deploy due diligence rather than by players
  after the fact (the numbers-deuteronomy escaping bug; the 2 Kings 19:15 edition conflict). The
  fallback-to-medium path (`MEMORY.md`, 2026-08-18 entry) is no longer exercised by any book — kept in
  the code as a defensive default, not because any book currently needs it.
- **Not started this session, still queued from the 2026-08-22 audit entry**: the missing
  architecture/domain/conventions docs, the stale `PRODUCT_REQUIREMENTS.md`/`GEN2REV_MASTER_PROMPT.md`/
  `CLAUDE.md` updates, and the automated test suite + Phase 5 QA hardening pass. **New item to add to
  that queue**: formalize the WEB-edition-pinning decision (a specific ebible.org edition or printing
  date, not just "WEB") as a numbered Open Decision in `GEN2REV_MASTER_PROMPT.md` — two real
  discrepancies have now surfaced from this exact gap.

---

**2026-08-25 (later still) — Decision: hold book-count expansion; validate before scaling**

- Kachi asked, now that the 14-book difficulty-tier rollout is fully closed and verified live,
  whether it's time to extend to the next 14 books, or even the rest of the Old Testament in one go
  (leaving only the New Testament to complete).
- **Recommended against expanding right now**, and Kachi agreed (chose "Ship & validate first" over
  "rest of the OT in one go" and "a smaller bridge batch"). Reasoning given: the MVP's own founding
  strategy (`GEN2REV_MASTER_PROMPT.md` §2.5, "Conditional Go") was explicitly to validate a small,
  vetted core before scaling — "do not attempt all 66 worlds... simultaneously — that's a 2027
  roadmap, not a v1." Phase 5 (the functional end-to-end + accessibility hardening pass) has never
  run, and no real player has been through the loop yet — scaling content 2-3x now would invert the
  validate-before-scale bet rather than test it. Also flagged directly: `PRODUCT_REQUIREMENTS.md` and
  the master prompt both hard-cap MVP scope at **≤15 books**, stated explicitly as "not to grow
  further without another explicit Open Decision" — going to 28 or 66 books is a documented scope
  boundary this project set for itself on purpose, not just "more work."
- **Decided: book-count expansion is on hold, indefinitely, pending real usage/retention data.** This
  is now the standing decision — do not start authoring new books (15+) in a future session without
  either (a) Kachi explicitly reopening this, or (b) Phase 5 QA having actually run and real player
  data existing to inform the call. If asked again "should we add more books," point back to this
  entry rather than re-litigating from scratch.
- **What "ship & validate first" concretely means, next**: this folds directly into track 4 of the
  2026-08-22 audit's queue (stand up a real automated test suite — currently zero tests exist anywhere
  in `app/` — then run the deferred Phase 5 functional + accessibility hardening pass). That queue
  item is now the actual next priority for this project, not one of several equally-weighted options.
  Not started as of this entry — Kachi has not yet said to begin it this session.

---

**2026-08-25 (later still yet) — Vitest added; unit tests for scoring/streak/points/spaced-repetition logic (QA_REQUIREMENTS.md §1)**

- Started track 4 of the queued audit work: "stand up a real automated test suite." Scoped this pass
  to the unit-test layer specifically (`QA_REQUIREMENTS.md` §1's first row: challenge scoring, streak
  calculation, points math, spaced-repetition interval) — integration/e2e/manual layers and the
  Phase 5 hardening pass itself are still queued, not started.
- **Installed via WSL2** (`npm install -D vitest`, run from inside the WSL2 Ubuntu shell per the
  2026-08-09 native-binary fix, not the Windows side) — clean install, no native-binary blocking hit.
  Added `test`/`test:watch` scripts to `app/package.json` and a `test` block to `app/vite.config.ts`
  (switched its `defineConfig` import from `vite` to `vitest/config`, which is a strict superset —
  Vitest reads the same `.env` Supabase credentials the dev server already uses via Vite's own
  `loadEnv`, so no separate test-env setup was needed).
- **Refactored pure calculation logic out of DB-coupled functions specifically so it's unit-testable
  without mocking Supabase or the system clock** — this is the real engineering work here, not just
  adding a test runner:
  - `lib/grading.ts` gained `isMultipleChoiceCorrect` and `isSequenceCorrect`, extracted from inline
    comparisons that previously lived only inside `Play.tsx`'s `MultipleChoiceChallenge`/
    `SequenceChallenge` components (which now call these instead of duplicating the logic) —
    `isRecallCorrect` already existed and was already pure.
  - `lib/game.ts` gained `computePointsEarned` (pulled out of `completeWorld`), `computeStreakUpdate`
    (pulled out of `bumpStreak`, now takes `today`/`lastActiveDate` as plain `YYYY-MM-DD` strings
    instead of calling `Date.now()` internally — this is what makes date-boundary tests possible
    without faking the system clock) with a new `addDaysUTC` helper for UTC-safe day arithmetic, and
    `computeVaultReviewProgress` (pulled out of `reviewVaultEntry`, splits the pure streak/interval
    math from the `Date.now()`-dependent `next_review_at` timestamp). All three original async
    functions now just call the pure version and persist the result — behavior is unchanged, verified
    by a clean `npm run build` + `npm run lint` (0 errors/warnings) after the refactor.
- **41 unit tests written, all passing on first real run** (`npm run test` via WSL2):
  `grading.test.ts` (23 tests: recall leniency rules for easy/medium — case, punctuation, singular/
  plural — vs. hard's exact verbatim match including a same-word-wrong-case rejection; multiple-choice
  index matching including the index-0 edge case; sequence order-checking including a reversed order,
  a single adjacent swap, and a defensive mismatched-length case) and `game.test.ts` (18 tests:
  streak — fresh start, same-day replay (no double-count), consecutive day, longest-streak tracking,
  multi-day gap reset, **no grace period** confirmed as current actual behavior (not a design decision
  made this session — flagging since `QA_REQUIREMENTS.md` §1 names "the grace-period rule" as if one
  exists; the shipped code has never had one, this pass documented what's real rather than inventing
  one), month/year boundaries, and — the one genuinely subtle bug class this style of test is meant to
  catch — the Feb 29 leap-day boundary in both directions (2028: Feb 28→29 and 29→Mar 1 both correctly
  consecutive) plus the non-leap-year contrast (2026 has no Feb 29, so Feb 28→Mar 1 is *also*
  consecutive there) and the real trap case (a leap year's Feb 28→Mar 1 skips Feb 29 and correctly
  resets); points math; spaced-repetition interval progression through the full 1/2/4/7/14/30/60-day
  sequence, the cap at the max interval once streak exceeds the table, and reset-on-miss regardless of
  prior streak.
- **No component/integration/e2e tests written this session** — deliberately scoped to the unit layer
  first per `QA_REQUIREMENTS.md` §1's own priority ordering ("most likely to have a looks-right-but-
  wrong-under-a-real-date-edge-case bug"). The claim-flow integration test the doc calls "the single
  highest-value integration test in this product" is still outstanding, as is the full Phase 5
  functional/accessibility pass.
- **Still queued, not started this session**: the integration/e2e/manual QA layers from
  `QA_REQUIREMENTS.md` §1, the Phase 5 functional + accessibility hardening pass, the missing
  architecture/domain/conventions docs, and the stale-doc updates (`PRODUCT_REQUIREMENTS.md`,
  `GEN2REV_MASTER_PROMPT.md`, `CLAUDE.md`) — same queue as the 2026-08-22 audit entry, one item now
  partially done rather than fully closed.

---

**2026-08-25 (later still yet, continued further) — E2E suite written; missing architecture/API/
conventions docs written; BACKEND_REQUIREMENTS.md §4 gap closed with a real enforcement script;
stale docs updated; a real analytics gap surfaced**

- Kachi's instructions this round: build e2e tests; explicitly skip the manual QA pass ("I'll have
  people run that plus it's not a show stopper"); write the missing architecture/domain docs;
  update all stale docs; resolve the `BACKEND_REQUIREMENTS.md` gap found earlier this session; no
  real third-party integrations (payment layer specifically named) until that's separately decided.
- **E2E: Playwright installed via WSL2**, `app/playwright.config.ts` + `app/e2e/golden-path.spec.ts`
  written — a content-agnostic full golden path (guest session → onboarding → Genesis (all 13
  items, regular+boss) → Review → Result → World 2 unlocked → Memory Vault entries → reload
  persists), deliberately not hardcoding verse text/answers so it doesn't rot if content changes.
  Runs against the **real** Supabase project (no staging DB exists) — same real-guest-row tradeoff
  as every manual QA pass in this project's history; no automated cleanup exists because RLS has
  no DELETE policy for the anon role on any player-scoped table (confirmed via `pg_policies`).
  Deliberately NOT covered: the day-2 streak-increment case (needs wall-clock time or a privileged
  DB write neither an anon e2e session nor a repeatable CI run can do — already covered by
  `computeStreakUpdate`'s unit tests instead) and account-claim (avoids repeatedly hitting Supabase's
  real email-send rate limit on every CI run — already covered by the mocked integration suite).
  **Real, still-unresolved environment blocker found: the e2e suite cannot run on this machine yet.**
  Chromium's OS-level shared libraries (`libnspr4.so` and the rest of the standard Chrome-headless
  dependency list — `libnss3`, `libatk*`, `libcups2`, etc.) are not installed in this project's
  WSL2 Ubuntu image, and installing them needs `sudo apt-get`, which requires an interactive
  password this session doesn't have (confirmed: `sudo -n true` → "interactive authentication
  required"). Eventually got the **binary itself** downloaded successfully (`npx playwright install
  chromium`, no `--with-deps`, run via the harness's own `run_in_background` — ~13 minutes over a
  slow WSL2 connection averaging under 1MB/s, confirmed via a direct `curl` throughput test; two
  earlier attempts either silently produced nothing after 15 min or got stuck at `T` (stopped)
  process state on the `sudo` step — a job-control/no-TTY issue specific to backgrounding `sudo`
  from this environment, not a Playwright bug), but running the actual test then failed exactly as
  expected: `chrome-headless-shell: error while loading shared libraries: libnspr4.so: cannot open
  shared object file`. **This needs a one-time human step**: run
  `sudo npx playwright install --with-deps chromium` from `app/` inside the WSL2 Ubuntu shell
  (interactive password). Asked Kachi via `AskUserQuestion` whether to do this now or leave it
  unverified — no answer came back, so per auto-mode's "make the reasonable call and keep going"
  guidance, left the suite **code-complete but not yet proven to run**, documented plainly rather
  than claimed as verified. Everything else this session (docs, `BE-reqs` gap, unit/integration
  tests) does not depend on this and is fully done and verified.
- **`docs/ARCHITECTURE.md` written** (new file) — system-shape diagram, frontend/backend/testing
  architecture, and a "known architectural debt" section listing things deliberately not fixed
  (client-orchestrated non-atomic multi-table writes in `completeWorld`; game outcomes trusted from
  the client with RLS only checking row ownership, not truthfulness — explicitly flagged as needing
  revisiting before any real-money feature; no DELETE policy anywhere).
- **`docs/API_CONTRACT.md` written** (new file) — full `lib/*.ts` function-by-function contract,
  marking which functions are pure vs. Supabase-coupled, cross-referenced to the tests that cover
  each one.
- **`docs/CONVENTIONS.md` written** (new file) — consolidates conventions that previously existed
  only as scattered `MEMORY.md` prose: the pure/impure logic split, sole-DB-writer discipline for
  parallel content authoring, the doubled-vs-quadrupled-apostrophe SQL escaping lesson, the
  WSL2-only npm/node convention, and the Vercel CLI `--scope` deploy gotcha.
- **`docs/BACKEND_REQUIREMENTS.md` §1 rewritten** against the live schema (`list_tables` +
  `pg_policies` against `mlehvnufyxwtfbsddtgh`, not the original Phase 1 sketch) — all 9 tables,
  every RLS policy, and the "no DELETE policy anywhere" fact called out explicitly since it has a
  real downstream consequence for test cleanup.
- **`BACKEND_REQUIREMENTS.md` §4 gap (flagged earlier this session) actually closed, not just
  documented**: wrote `scripts/check-content-reviewed.mjs`, a real Node script that parses
  `docs/CONTENT_REVIEW_LOG.md` and refuses (non-zero exit) any content-brief path that's missing or
  not `approved`/`approved-with-changes` — tested against real log data (confirmed it accepts
  `docs/content/genesis.md`, `joshua-easy.md`, `numbers-hard.md`, and correctly refuses a
  nonexistent path). This is a pre-flight gate to run before `apply_migration`, not a DB trigger —
  ingestion has never been app-runtime code (see `ARCHITECTURE.md` §4). Doc rewritten to describe
  this as the real, working enforcement, with an "as-built note" explaining what was originally
  planned (Phase 1) vs. what actually existed until today (nothing) vs. what exists now.
- **E2E suite verified passing, twice in a row, after fixing two real bugs — not just "code
  written."** Kachi resolved the sudo blocker by authorizing a root WSL2 shell (`wsl -d Ubuntu -u
  root`, no password needed — the standard WSL recovery path for a forgotten Linux user password,
  since whoever controls the Windows account already fully owns the WSL VM) after an
  `AskUserQuestion` went unanswered once and was asked again more plainly ("i DON'T REMEMBER MY
  PASSWORD" → explained the root-shell option → "go ahead"). Ran `npx playwright install-deps
  chromium` as root — clean, ~3 minutes, no further issues.
  - **Bug 1 (test-only)**: `getByRole('button', { name: 'Easy', exact: true })` failed because the
    difficulty button's accessible name concatenates its label *and* hint-text spans ("Easy
    Forgiving grading..."), so an exact match on just "Easy" never matches anything. Fixed to a
    prefix regex.
  - **Bug 2 (real, and worth remembering for any future e2e work on this app)**: the helper's
    "wait for the next challenge to appear" logic checked whether `.recall-blank`/`.option`/
    `.sequence-list` had become visible — but those classes are still present (just disabled)
    on the *current* question right up until React actually swaps in the next one, so the wait
    resolved instantly against the stale, not-yet-replaced element instead of the real next
    question. This silently raced every subsequent step ahead of the true UI state — confirmed by
    adding debug logging (`isDisabled()` kept reporting `false` while `.click()` kept timing out
    on the same still-mounted, still-disabled button). **Fixed by adding
    `data-challenge-id={challenge.id}` to `Play.tsx`'s `ChallengeBody`** (a genuine, if tiny,
    production-code change — a stable per-challenge DOM marker didn't exist before) and waiting
    for that specific attribute value to change, not just for a class to be present. This is a
    generally useful lesson for this codebase: `key={current.id}` forces a real React remount per
    challenge, but a CSS-class-only wait can't tell "still this question, mid-submit" apart from
    "already the next one" when both render the same class names.
  - Also bumped Playwright's default assertion/action timeouts from 5s to 15s
    (`playwright.config.ts`) — the very first assertion (Landing's heading) intermittently failed
    at 5s because guest-session creation alone does a real Supabase auth sign-in plus two more
    queries before Landing even renders, and this WSL2 environment's network has been measurably
    inconsistent all session (a `curl` throughput test showed under 1MB/s at one point).
  - **Confirmed 2 consecutive full green runs** of the entire golden path (guest → onboarding →
    all 13 Genesis items including boss battle → Review → Result → World 2 unlocked → Memory Vault
    entries → reload persistence), ~37-47s each. `npm run build`/`lint`/`test` (47 tests) all still
    clean afterward.
  - **Test-data cleanup performed for real** (not just documented as a future TODO): queried and
    deleted the 7 real guest players these debugging runs created in production (`vault_entry`,
    `challenge_attempt`, `world_progress`, `points_log`, `points`, `streak`, `player`, and
    `auth.users` rows, in FK order), via `execute_sql` with elevated privilege (bypasses the
    RLS DELETE gap noted in `ARCHITECTURE.md` §3/§5 — this is exactly the kind of privileged,
    out-of-band cleanup that doc says the app itself can't do). Verified 0 remaining test rows
    afterward. This was a one-time manual cleanup for this session's debugging churn, not a
    standing process — future e2e runs will still need the same kind of periodic privileged
    cleanup, still not automated into the suite itself.
- **Full final status, all four audit tracks**: docs (done), stale-doc updates (done), BE-reqs gap
  (done), test suite (unit ✅ + integration ✅ + **e2e now genuinely verified working** ✅, manual/
  accessibility deliberately delegated to real users per Kachi's decision). Only Phase 6 governance
  docs (`EVAL_RUBRIC.md`, `GUARDRAILS.md`) remain from the original 2026-08-22 audit queue, and
  they were never asked for this session.

---

**2026-08-25 (evening) — Git repo created (first ever for this project), pushed public; then the
book-count-expansion hold reopened same day and immediately superseded: full remaining Old
Testament (25 books) chosen**

- **This project had never had version control.** Everything since 2026-08-08 lived only on disk,
  synced only via the shared Cowork/Claude Code folder — no `.git` anywhere. Kachi asked to
  "commit this" (referring to the day's docs/test-suite work); `git init` at the project root was
  needed first, not assumed already done.
- **Found a real, live secret before it could get committed**: `.claude/settings.local.json` had a
  Vercel API token (`vcp_...`) in plaintext, embedded inside several Bash permission-allowlist
  entries accumulated from past sessions' deploy commands (matches the *other* Vercel-token/DB-
  password exposure already flagged in this file's 2026-08-13 entry — this is evidence that
  earlier flag was never actually acted on). Excluded via `.gitignore` with an explanatory
  comment, not committed. **Still not rotated as of this entry** — flagging again, more visibly,
  since it clearly didn't get addressed the first time it was flagged in chat.
- First commit: 214 files (`app/`, `docs/`, root planning docs, `scripts/`), secret excluded,
  `node_modules`/`dist`/`.env*`/Playwright artifacts all correctly ignored via `app/.gitignore`
  (already existed from the Vite scaffold) plus a new root `.gitignore`.
- **No git identity was configured on this machine** (checked both local and global — neither
  set). Asked Kachi via `AskUserQuestion`; got no response, then a delayed mid-turn message
  "VEECTHOR@GMAIL.COM" arrived after the commit had already gone through using the sensible
  default (Kachi Okere / veecthor@gmail.com, matching every other reference to the project owner
  in this repo) — confirmed as the right call after the fact rather than before. Set via
  `git config --local` only, never `--global`, per the standing "never touch global git config"
  rule.
- **Made public at Kachi's explicit request** ("we can make this repo public actually, sign me as
  the author") — overrides the global default-to-private-for-GitHub rule, which that rule itself
  allows for an explicit instruction. `gh` was already authenticated as `veecthor-cmd`; created
  `github.com/veecthor-cmd/gen2rev` with `gh repo create --public`, pushed. Commit author was
  already correct (set during the local commit); confirmed `gh auth status` matched the same
  account so GitHub attribution lines up too. Flagged to Kachi that the repo (now public) does
  reference real infra identifiers (Supabase project ref, Vercel team slug) in its docs/MEMORY —
  not exploitable alone, but worth knowing before sharing the link.
- **Same conversation, immediately after**: Kachi said "proceed to the next stage/books" — a
  direct, same-session reopening of the book-count-expansion hold from earlier today (2026-08-25,
  "(later still)" entry above). Per that entry's own instruction ("point back to this entry rather
  than re-litigating from scratch"), surfaced the standing decision and its reasoning back to
  Kachi before proceeding (not silently overridden) — Kachi confirmed reopening it and, via
  `AskUserQuestion`, chose the **largest** of the offered options: the full remaining Old Testament
  (25 more books, not the "next 14" or a smaller bridge batch — both explicitly offered and
  declined). **No real player/retention data exists yet** (Phase 5's real-user QA was the stated
  condition for revisiting this) — Kachi chose to proceed anyway, a real, deliberate call against
  the earlier-stated condition, not an oversight; recorded here rather than silently smoothed over.
- **Scope logged in `docs/CANON_STRUCTURE.md` §6** (new section): Ezra, Nehemiah, Esther, Job,
  Psalms, Proverbs, Ecclesiastes, Song of Solomon, Isaiah, Jeremiah, Lamentations, Ezekiel, Daniel,
  Hosea, Joel, Amos, Obadiah, Jonah, Micah, Nahum, Habakkuk, Zephaniah, Haggai, Zechariah, Malachi
  — `sequence_order` 15-39, full Protestant OT (39 books total). No New Testament — that framing is
  unchanged by this decision. **Phasing matches how the original 14 books were actually built**:
  medium-tier content only for this pass (content brief → theological review → verbatim QA →
  ingestion, all 25 books) — easy/hard tiers for these new books are explicitly out of scope here,
  a separate later decision, same as how the original 14's difficulty tiers were scoped as
  follow-on work starting 2026-08-18 rather than attempted simultaneously.
- Propagated the decision into `PRODUCT_REQUIREMENTS.md` §3 (new "Expansion" note, superseding the
  "≤15 books" guardrail explicitly rather than silently exceeding it) and
  `GEN2REV_MASTER_PROMPT.md`'s Open Decision #10 (updated from "on hold" to "reopened, chose full
  OT").
- **Not yet started as of this entry**: the actual content-authoring work for any of the 25 books.
  Next: delegate Wave 1 (History remainder + Wisdom/Poetry — Ezra, Nehemiah, Esther, Job, Psalms,
  Proverbs, Ecclesiastes, Song of Solomon) to parallel background agents following the exact
  `SKILL.md` procedure already proven on the original 14 books, with explicit attention to two real
  complications flagged in `CANON_STRUCTURE.md` §6: the Wisdom books aren't narrative (need the
  Leviticus-precedent passage/theme adaptation, not forced scenes) and Song of Solomon specifically
  needs real theological-review attention given how sharply allegorical-vs-literal readings diverge
  across traditions — not a book to rubber-stamp.
- **Stale docs updated**: `PRODUCT_REQUIREMENTS.md` (age-tier "provisional" language removed —
  confirmed 2026-08-09; difficulty-mode feature added to the scope table, having shipped without
  ever being logged there; acceptance-criteria checkboxes flipped; monetization stance reaffirmed
  with today's payment-layer guard). `GEN2REV_MASTER_PROMPT.md` (header status line, Phase 4 marked
  complete with its real DoD state, Phase 5 marked in-progress with the manual-QA delegation
  explicitly recorded as a decision rather than a gap, three new Open Decisions added — #10
  book-count hold, #11 the still-open WEB-edition-pinning gap, #12 payment layer not decided).
  `CLAUDE.md` (full "Where things stand" rewrite — was still describing pre-Phase-4 status; added
  pointers to the three new docs, real test/build commands, and the WSL2 native-binary reminder).
- **A real, previously-undocumented gap surfaced while checking `FRONTEND_REQUIREMENTS.md` for
  staleness**: §6 specifies a full analytics-event plan (`session_start`, `world_completed`,
  `streak_incremented`, etc.) tied directly to every success metric in `PRODUCT_REQUIREMENTS.md`
  §4 — **none of it is implemented**. Confirmed via a full codebase check: no analytics library, no
  tracking calls anywhere in `app/`. Every named success metric (World 1 completion rate, D1/D7
  retention, Memory Vault entries per completer, etc.) currently has no way to be measured. Not
  built this session (deliberately — it's real new feature work, picking a provider and
  instrumenting ~10 pages, not a doc update) — flagged in the doc itself and here so it isn't
  silently rediscovered once Phase 5's real-user QA starts generating exactly the traffic these
  events were meant to measure.
- **Small fix alongside the e2e work**: `app/tsconfig.node.json`'s `include` was only
  `["vite.config.ts"]`, so the new `playwright.config.ts`/`e2e/*.ts` files got zero type-checking
  from `npm run build`. Added them to `include` — confirmed `npm run build`/`npm run lint`/
  `npm run test` (47 tests) all still clean after the change.

---

**2026-08-25 (later still yet, continued) — Integration test added: the claim-flow test QA_REQUIREMENTS.md names as highest-value**

- Kachi chose to keep going into the integration layer this same session (had asked whether to stop
  after the unit-test pass or continue). Scoped to exactly what `QA_REQUIREMENTS.md` §1 names as
  highest-value: "guest session creation → progress write → account claim → progress preserved."
- **Real infra decision surfaced and asked, not assumed**: the Supabase project has zero branches
  (`list_branches` confirmed), and creating one is a billable, persistent resource — per the global
  check-in rule for anything costing real money, presented three options to Kachi (mock the client /
  create a paid test branch / run against the existing production project) rather than picking one
  unilaterally. **Kachi chose mocking** — zero cost, no infra, but explicitly does not exercise real
  RLS policies (the exact class of bug that's bitten this project twice: the 2026-08-13 sign-in race,
  the 2026-08-18 missing-row self-heal). Worth remembering as a real coverage gap, not a false sense
  of security, if a future session considers this integration layer "done."
- **Built a minimal, purpose-built fake Supabase client** (`lib/testUtils/fakeSupabase.ts`) — an
  in-memory table store implementing only the exact query-builder methods this codebase actually
  calls (`select`/`eq`/`order`/`maybeSingle`/`single`/`insert`/`update`/`upsert`, plus
  `auth.updateUser`), not a general-purpose Supabase mock. Deliberately narrow so drift between the
  fake and real usage patterns surfaces immediately rather than silently mis-mocking.
- **`ensureWorldOneUnlocked` exported from `lib/useSession.ts`** (was previously module-private)
  specifically so it's directly testable — same "extract for testability" pattern as the pure
  streak/points/spaced-repetition functions pulled out of `game.ts` earlier this session.
- **6 integration tests, all passing on first real run** (`sessionFlow.integration.test.ts`):
  - `ensureWorldOneUnlocked`: unlocks World 1 for a brand-new player; does NOT duplicate or reset an
    existing World 1 row for a returning player; **self-heals a returning player whose World 1 row
    went missing while a later world's progress stays untouched** — this is a direct regression test
    for the real 2026-08-18 production bug, not a hypothetical.
  - `claimAccount`: marks the player claimed and asserts every `world_progress`/`points`/`streak` row
    is byte-for-byte unchanged after claiming (the actual "progress preserved" guarantee —
    `BACKEND_REQUIREMENTS.md` §2's "additive, never destructive" rule, tested as a real assertion
    rather than trusted by inspection); reports `needsEmailConfirmation` correctly for both confirmed
    and unconfirmed emails; **fails atomically on an auth error** — the player row stays an unclaimed
    guest, not partially updated — a direct regression test for the exact "email rate limit exceeded"
    failure mode hit live in production on 2026-08-18.
- **`docs/BACKEND_REQUIREMENTS.md` §4's other named integration test — "content ingestion pipeline
  refuses unreviewed content" — was checked and found to have no corresponding code to test.** The
  actual content pipeline has never been an automated script; every book's content has always been
  hand-written SQL in `docs/ingest/*.sql`, reviewed by a human/agent, then applied via
  `apply_migration` — there is no ingestion function in `app/` that could refuse anything. This is a
  real, pre-existing gap between what `BACKEND_REQUIREMENTS.md` §4 describes ("the ingestion script/
  process should refuse to load...") and what was ever built — flagging here rather than fabricating
  a test for code that doesn't exist. Not fixed this session (would be new scope, a product/process
  decision, not a test-writing task) — worth Kachi's attention whenever the stale-doc-update track is
  picked up.
- **Full suite status after this addition**: 47 tests total (23 grading + 18 game + 6 integration),
  all passing; `npm run build` and `npm run lint` both clean (0 errors/warnings on 27 files).
- **Still queued, not started**: e2e tests, the manual QA layer, the Phase 5 functional/accessibility
  hardening pass, the missing architecture/domain/conventions docs, the stale-doc updates, and now
  also (newly surfaced) reconciling `BACKEND_REQUIREMENTS.md` §4's ingestion-pipeline description
  with what was actually built.

---

**2026-08-25 (still later, appended here since earlier edits this session landed mid-document —
this is the true chronological tail) — Note on this entry's own log hygiene, then: GitHub repo
created and made public; OT expansion Wave 1 (8 books) fully shipped, 22 of 39 worlds now live**

- **Housekeeping note on this file**: several entries earlier in this same session were inserted by
  anchoring edits to specific existing paragraphs rather than strictly appending at the end, so this
  file's chronological order isn't perfectly linear near the end — the content is all there (e2e
  fixes/verification, the docs overhaul, the git-repo creation, Wave 1's full pipeline), just not in
  one unbroken sequence. Noting this so a future reader isn't confused by the ordering; not worth
  re-editing history to fix per this file's own append-only convention.
- **Git repo created for the first time ever this session** — zero version control existed before
  today. Found a live Vercel API token in plaintext in `.claude/settings.local.json` (accumulated in
  permission-allowlist entries from past deploy commands) before it could get committed — excluded
  via `.gitignore`, never committed, flagged for rotation. **This is the second time a Vercel token
  exposure has been flagged in this project's history without being rotated** (the first: 2026-08-13)
  — worth actually doing this time, not just re-flagging a third time later. Kachi asked to make the
  repo public and be credited as author: **github.com/veecthor-cmd/gen2rev**, public, pushed under
  the already-authenticated `veecthor-cmd` account, commit author Kachi Okere/veecthor@gmail.com.
- **Kachi then said "proceed to the next stage/books"** — reopening the book-count-expansion hold
  set earlier the same day. Presented the standing decision back before proceeding, per that entry's
  own instruction; Kachi confirmed and chose the largest option (full remaining OT, 25 books) over a
  smaller batch.
- **Wave 1 (8 books — Ezra, Nehemiah, Esther, Job, Psalms, Proverbs, Ecclesiastes, Song of Solomon)
  ran the complete pipeline this session, matching the original 14-book process exactly**: 6
  parallel content-authoring agents → 2 real theological escalations (Ezra Scene 5, Song of Solomon
  whole-book) both resolved same-day by Kachi via `AskUserQuestion` → 3 parallel verbatim-QA agents
  (real corrections in 4 of 8 books) → 3 parallel SQL-generation agents (one hit the exact
  quadrupled-apostrophe bug this project has been bitten by before, caught by its own
  self-validation, fixed) → my own independent re-validation (a fresh Python script, distinct from
  any agent's own, checking JSON structure, forbidden-reference exclusions, escaping, and
  sort_order consistency across all 108 items — zero real bugs found, two false-positive flags from
  my own overly-blunt "Job dialogue chapters excluded" rule, resolved by re-reading the brief's own
  documented exception for Job 19:25-27) → applied via `apply_migration` as sole DB writer →
  verified live via direct SQL query.
  - **Real infrastructure hiccup**: all three verbatim-QA agents failed simultaneously on a session
    usage-limit error mid-run (this project's long-running pattern of hitting spend/usage limits
    during parallel-agent batches). Checked for partial output before relaunching (none existed),
    relaunched all three fresh once Kachi confirmed the reset, rather than guessing at partial state.
  - **Real text corrections caught by verbatim QA in 4 of 8 books**, not rubber-stamped: Ezra 9:6;
    Nehemiah 13:15/19/22; Esther 3:9/7:3-4 and 3:13 (the last fully restored, not just ellipsis-
    marked, since the review's self-defense reading of Esther 9 depends on 3:13 establishing the
    decree permitted plunder); Job 1:8 ("on" → "in" the earth). Psalms, Proverbs, Ecclesiastes, Song
    of Solomon passed clean. One apparent Song of Solomon 8:6 discrepancy ("Yah" vs "Yahweh") was
    correctly resolved as a genuine cross-edition WEB variant after triangulating two more sources.
- **Live verification, not just "the migration succeeded"**: queried `challenge`/`world` directly
  post-ingestion — all 8 books non-zero, matching expected shapes (Ezra 15/3 boss, Nehemiah 15/3,
  Esther 15/3, Job 15/4, Psalms 15/3, Proverbs 13/3, Ecclesiastes 12/3, Song of Solomon 8/2 — 108
  items total). **The Old Testament now has 22 of 39 worlds playable, up from 14 at session start.**
- **Consolidated `docs/CONTENT_REVIEW_LOG.md` and `docs/QA_SIGNOFF.md` myself throughout, as sole
  writer** — no parallel agent touched either shared file, per this project's established
  convention. Both now reflect the real, current, fully-shipped state for all 8 books.
- **Every step committed and pushed to the new public repo as it landed**, not batched at the end —
  scope decision, content+review, verbatim QA, world rows, and challenge rows each got their own
  commit.
- **Still not started**: Wave 2 (Major Prophets — Isaiah, Jeremiah, Lamentations, Ezekiel, Daniel)
  and Wave 3 (Minor Prophets — 12 books). Easy/hard tiers for all 25 new books remain unscoped,
  separate follow-on work, matching the original 14 books' own phasing.
- **New task from Kachi, not yet done as of this entry**: add a README to the GitHub repo.

---

**2026-08-25 (still later) — README added; OT expansion Wave 2 (5 Major Prophets) fully shipped,
27 of 39 worlds now live, zero escalations and zero verbatim-QA corrections — the cleanest wave yet**

- **README + `.env.example` added and pushed**, per Kachi's request. Root README covers what the
  project is, live status, the two-gate content-review process, stack, and local setup. Had to add
  a `!.env.example` exception to `app/.gitignore`'s `.env*` pattern so the example file itself
  wasn't silently ignored — caught before committing, not after.
- **Kachi said "proceed"** — continuing straight into Wave 2 (the 5 Major Prophets: Isaiah,
  Jeremiah, Lamentations, Ezekiel, Daniel; worlds 23-27), no new scope decision needed since Wave 1
  through 3's plan was already set in `docs/CANON_STRUCTURE.md` §6.
- **Ran the exact same 4-stage pipeline as Wave 1** (content-author+review → escalation resolution
  → verbatim QA → SQL-generate+validate+ingest), this time briefing each authoring agent with
  specific, real contested-territory guidance up front (drawn from `GEN2REV_MASTER_PROMPT.md` §2.4,
  which named Daniel's prophecy timelines and end-times material by name as flagship content risks
  before any book was built) rather than letting each agent rediscover the same conclusions from
  scratch. **Every agent still did real independent sourcing rather than just accepting that
  framing** — Isaiah's agent surfaced an additional nuance (early rabbinic messianic readings of
  Isa. 53) I hadn't mentioned; Ezekiel's agent found independent Jewish-tradition corroboration
  (Mishnah/Talmud Megillah 25a) for excluding ch. 16; Daniel's agent verified the seventy-weeks
  prophecy's cross-tradition incoherence directly rather than citing the brief's own claim.
- **Real infrastructure hiccup, again**: all four Wave 2 content-authoring agents failed
  simultaneously on the same session usage-limit error as Wave 1's QA agents. Checked for partial
  output (none existed) before relaunching all four fresh once Kachi confirmed the reset.
- **Zero escalations this wave** (contrast Wave 1's two — Ezra Scene 5, Song of Solomon) — every
  genuinely contested item (Isaiah's 7:14/9:6-7/53, Ezekiel's chs. 16/23/38-39, Daniel's chs. 7-12)
  was resolved via confident exclusion or narrow bounding, not guessed at or punted to Kachi.
- **Zero verbatim-QA corrections needed across all 5 books** (contrast Wave 1's 4 of 8) — the
  cleanest wave yet, though the QA agents still did real, careful work: Ezekiel's pass specifically
  closed two blocks the review had flagged as single-source-only; Jeremiah's pass investigated an
  apparent discrepancy at 28:9 and correctly attributed it to a Bible Hub transcription variance
  (confirmed against a fresh ebible.org fetch) rather than "fixing" the brief incorrectly.
- **Ingestion**: 3 parallel SQL-generation agents (Isaiah alone; Jeremiah+Lamentations;
  Ezekiel+Daniel), each with the quadrupled-apostrophe warning baked into the prompt (referencing
  the exact bug that hit Wave 1's Ezra file the same day) and a required self-validation pass. My
  own independent re-validation (a fresh Python script checking JSON structure, per-book forbidden-
  chapter/verse exclusions, escaping, and sort_order consistency across all 80 items) found **zero
  bugs** — a clean run, unlike Wave 1 where my own validator caught two false-positive flags from
  its own overly-blunt rule. Applied via `apply_migration` as sole DB writer, verified live via
  direct SQL query: Isaiah 16/3 boss, Jeremiah 22/3, Lamentations 12/2, Ezekiel 14/6, Daniel 16/7 —
  80 items total, none zero.
- **The Old Testament now has 27 of 39 worlds playable**, up from 22 at the start of this entry.
  Every step (world rows, then each SQL batch) committed and pushed to the public repo as it landed.
- **Still not started**: Wave 3 (Minor Prophets — Hosea, Joel, Amos, Obadiah, Jonah, Micah, Nahum,
  Habakkuk, Zephaniah, Haggai, Zechariah, Malachi — 12 books, the largest remaining wave by book
  count though likely the smallest by content volume, since most are short and oracle-heavy per
  `docs/CANON_STRUCTURE.md` §6's own note). Easy/hard tiers for all 27 books shipped so far in this
  expansion remain unscoped, separate follow-on work.

**2026-08-26 — Wave 3 (12 Minor Prophets) shipped: the full 39-book Old Testament is now live; stale
landing-page copy fixed**

- **Kachi said "proceed"** — continuing straight into Wave 3, the final wave of the OT expansion.
  Ran the same established 3-stage pipeline (verbatim QA on already-authored/reviewed content →
  SQL-generate+validate → ingest), since Wave 3's content authoring and theological review had
  already completed in the immediately preceding session (zero escalations, the cleanest wave —
  see the 2026-08-25 entry above).
- **The prior session's 4 verbatim-QA agent batches had failed on session usage limits before
  writing any output.** Checked for partial output first (`ls docs/qa/` — confirmed empty for all
  12 Wave 3 books), then relaunched all 4 batches fresh with their original prompts once Kachi
  confirmed the limit had reset — the same recovery pattern used successfully 3 times earlier this
  project.
- **QA results: 7 of 12 books passed clean, 5 needed a correction** — Amos (3 silent truncations),
  Obadiah (1), Nahum (2), Haggai (1 citation-label fix, no wording changed), Zechariah (1, restoring
  "says Yahweh" to 8:17). Every discrepancy across the whole wave was a missing or mislabeled trim,
  never a wrong word — the cleanest correction profile of any wave so far. All named exclusions
  (Amos 9:11-12/2:7b, Micah 5:1-5, Nahum 3:3-6/3:10, Zephaniah 1:16-18/2:4-15, Haggai 2:10-19/
  2:20-23, Zechariah 9:9/11:12-13/12:10/13:7, Malachi 1:2-3/2:10-16) independently re-confirmed
  absent, not just trusted from each brief's claim.
- **Ingestion**: 4 parallel SQL-generation agents (Hosea+Joel+Amos+Obadiah; Jonah+Micah+Nahum;
  Habakkuk+Zephaniah+Haggai; Zechariah+Malachi), each with the quadrupled-apostrophe warning and a
  required self-validation pass. My own independent re-validation (fresh Python script, not reusing
  any agent's own validator) initially flagged 5 "recall reconstruction mismatch" rows in the
  Zechariah/Malachi file — investigated rather than accepted at face value, and confirmed these were
  all legitimate trims (the template quotes a sub-span of `verse_text`, an established pattern
  already present in the shipped `ezekiel-daniel.sql`), not corruption. Tightened the check to
  substring-match rather than exact-match and re-ran clean: **zero real bugs across all 174 items.**
  Applied via `apply_migration` as sole DB writer, verified live via direct SQL query: Hosea 27/3
  boss, Joel 10/2, Amos 12/3, Obadiah 8/1, Jonah 19/3, Micah 17/2, Nahum 11/2, Habakkuk 13/3,
  Zephaniah 11/2, Haggai 12/2, Zechariah 17/3, Malachi 17/3 — 174 items total, none zero.
- **The Old Testament is now 39 of 39 worlds playable — the full expansion is complete**, up from 27
  at the start of this entry and 14 at the start of the whole expansion effort (started 2026-08-25).
  Every step (world rows, each SQL batch) committed and pushed to the public repo as it landed.
  Easy/hard tiers for the 25 expansion books (worlds 15-39) remain unscoped, separate follow-on
  work — only the original 14 MVP books have all three difficulty tiers.
- **Separately, fixed a real staleness bug Kachi flagged from a live screenshot**: the Landing page
  still read "14 worlds, Genesis to Chronicles — unlocked one at a time," untouched since the
  expansion began pushing the real count past 14 hours earlier. Rather than re-hardcode a new
  number (which would just go stale again at the next book wave, the same failure mode as the
  original bug), added `getWorldCount()` (`app/src/lib/game.ts`) — a lightweight `count: 'exact',
  head: true` query — and wired the Landing page to fetch and display it live, framed against an
  aspirational "of 66" (all 66 Bible books) per Kachi's explicit instruction. Verified in the
  Browser pane against the dev server, then built and deployed to production
  (`gen2rev.vercel.app`) and re-verified live before considering it done — consistent with this
  project's verification-discipline standard for anything UI-facing.
- **README.md's status line updated** to reflect the full 39/39 completion.

**2026-08-26 (later) — Decision: New Testament reopened as next scope; planning done, Wave 1
(Gospels) about to start**

- **Kachi explicitly reversed the "no New Testament in v1" guardrail** (Open Decision #5 in
  `GEN2REV_MASTER_PROMPT.md`, originally set 2026-08-08, reaffirmed as recently as the OT
  expansion's own planning on 2026-08-25) immediately after the OT's completion — chose "New
  Testament (27 books)" via `AskUserQuestion`, after being told explicitly that this raises the
  doctrinal-review stakes substantially versus the OT (NT core content — virgin birth, resurrection,
  atonement, Trinity, sacraments, tongues, eschatology — is itself the kind of contested-
  interpretation territory the OT process mostly *excluded* rather than narrated directly, since
  almost every OT exclusion worked by keeping the OT's own plain sense and excluding a *later*
  Christian reading layered onto it — that escape hatch mostly doesn't exist once you're actually
  authoring the NT).
- Also asked directly whether I could self-track usage against the account-level "session usage
  limit" that caused 4 separate background-agent failures during the OT expansion, to auto-pause at
  ~80% and auto-resume on reset. **Answered honestly: I have no API to query that limit's current
  percentage or its reset time** — I only discover it when a request actually fails, the same way
  it surfaced during the OT expansion. What I *can* see and self-monitor is this session's context-
  window budget. Agreed approach: treat every wave as a hard checkpoint (content → review → QA →
  ingest → commit → push → this file updated) so any interruption loses nothing; on an actual
  usage-limit failure, stop, report plainly, and wait for an explicit "resume" — same recovery
  pattern already used successfully 4 times during the OT expansion, not a new mechanism.
- **Updated every doc that stated "no New Testament in v1" as settled fact**, rather than leaving
  it stale the way the Landing page copy went stale earlier this session: `CLAUDE.md`,
  `README.md`, `docs/PRODUCT_REQUIREMENTS.md` (struck the old bullet, kept for the reasoning
  trail rather than deleted), `GEN2REV_MASTER_PROMPT.md` Open Decision #5 (amended in place).
- **Added `docs/CANON_STRUCTURE.md` §7** — the NT wave plan, mirroring §6's OT-expansion-planning
  format. 27 books, `sequence_order` 40-66, standard canonical NT order. Proposed 5 waves: (1) the
  four Gospels — Matthew, Mark, Luke, John, worlds 40-43, one book per agent given size/stakes
  rather than batched like OT books were; (2) Acts + Romans/1-2 Corinthians/Galatians, worlds
  44-48; (3) the remaining 9 Pauline epistles, worlds 49-57; (4) the 8 General Epistles, worlds
  58-65; (5) Revelation alone, world 66, its own dedicated wave given it's the single most
  contested book in the Bible to render neutrally — expect the thinnest brief and the most
  escalations of the whole NT expansion.
- **Pre-briefed the known NT-specific contested categories** into both `docs/CONTENT_STYLE_GUIDE.md`
  (new §6 addendum) and `.claude/agents/theological-reviewer.md` (broadened source-list guidance,
  now weighting Protestant/Catholic/Orthodox sources as the primary NT cross-check axis instead of
  the OT's Jewish-tradition axis) *before* any book is authored — same lesson as Wave 2 of the OT
  expansion, where pre-briefing agents on Daniel's apocalyptic material up front produced better
  results than letting each agent rediscover the same conclusions from scratch. Categories flagged:
  atonement theory, faith-vs-works soteriology, sacramental theology, ecclesiology/gender-role
  passages, spiritual gifts (cessationism/continuationism), eschatology/Revelation symbolism, and
  three known textual-criticism cases (Mark 16:9-20, John 7:53-8:11, the Comma Johanneum at 1 John
  5:7-8).
- **Not yet started**: actual content authoring for any NT book. This entry closes out the planning
  work; Wave 1 (the four Gospels) is the next step.

**2026-08-26 (later still) — All 4 Wave 1 Gospel briefs completed while paused; Kachi pivoted to
Easy/Hard tiers for the 25 OT expansion books before resuming NT**

- All four Gospel content-authoring/self-review agents finished during the pause (session-limit
  reset, not a new relaunch): **Matthew** `approved-with-changes` (18 scenes, 13 contested items,
  the fulfillment-quotation formula handled as a new pattern — report Matthew's own claim as
  Matthew's claim, never grade the OT referent); **Mark** `approved-with-changes` (13 scenes,
  6 contested items, the 16:9-20 ending excluded from graded content with the full textual
  situation disclosed); **Luke** `approved-with-changes` (18 scenes, the Last Supper institution
  words flagged as worth double-checking by hand but not escalated); **John**
  `escalate-to-human` — the Prologue's divinity-claim verses (1:1, 1:14, 8:58, 10:30, 20:28) turned
  out to have zero actual cross-tradition disagreement (Protestant/Catholic/Orthodox all converge),
  so the open question isn't doctrinal neutrality but a product-policy one — whether this game
  should have graded items whose "correct answer" is a first-order divinity claim at all, even
  verbatim. Sitting open for Kachi; not yet resolved.
- **Kachi then asked what's pending from before, identified "the modes" (Easy/Hard difficulty
  tiers for the 25 medium-only expansion books, worlds 15-39) and asked to do those before
  resuming NT.** This was already flagged as pending, deferred work throughout the OT expansion's
  own docs (`docs/CANON_STRUCTURE.md` §6: "Easy/hard tiers for these 25 books are explicitly not
  in this pass — a later decision") — not a new scope decision, just triggering already-anticipated
  follow-on work ahead of the NT's Wave 1 consolidation (which is now on hold: John's escalation
  unresolved, Matthew/Mark/Luke/John not yet logged in `CONTENT_REVIEW_LOG.md`/committed).
- Confirmed the mechanism before starting: `challenge.difficulty_tier` ('easy'/'medium'/'hard') is
  a real column, separate rows per tier, with a documented graceful fallback-to-medium when a
  tier has no rows yet (`app/src/lib/game.ts`) — meaning worlds 15-39 already play fine today,
  just silently serving medium content for Easy/Hard. Confirmed the established per-tier pattern
  from the original 14 books' rollout (`docs/content/genesis-easy.md`/`genesis-hard.md`,
  `docs/ingest/numbers-deuteronomy-tiers.sql`): each tier reuses the same pivotal scenes already
  approved at medium (no new scenes, same Contested Territory rulings carried forward), but
  authors genuinely new challenge items — easy skews multiple-choice/most-iconic-facts
  (`difficulty_rank` 1 throughout), hard skews typed recall/less-common verses
  (`difficulty_rank` 5 throughout) — never simplifies or paraphrases verse text at either tier.
  Same two-gate pipeline (theological review + independent verbatim QA) applies per tier, same as
  every book so far.
- **Starting Wave 1 of this tier rollout**: the 8 History-remainder/Wisdom books (Ezra, Nehemiah,
  Esther, Job, Psalms, Proverbs, Ecclesiastes, Song of Solomon — worlds 15-22), batched 2 books per
  agent, each agent producing both easy and hard tier briefs + self-run reviews for its 2 books.
  Waves 2 (5 Major Prophets) and 3 (12 Minor Prophets) will follow the same pattern.

**2026-09-02 — Difficulty-tier rollout Wave 1 (worlds 15-22) fully shipped**

- Ran the same 4-stage pipeline used throughout this project (content-author+self-review →
  independent verbatim QA → SQL-generate+validate → ingest), applied per-tier for the first time
  since the OT expansion itself: 16 briefs total (8 books × easy/hard), each reusing that book's
  already-approved medium-tier scenes/passages and Contested Territory rulings unchanged, only
  authoring new challenge items at the tier's own difficulty posture (easy: multiple-choice-heavy,
  most-iconic facts, `difficulty_rank` 1 throughout; hard: recall-heavy, less-common verses,
  `difficulty_rank` 5 throughout).
- **Recurring session-usage-limit failures hit again, twice**: once mid-authoring (3 of 4 batches
  died after finishing their content briefs but before writing 1-4 reviews each — checked file
  existence directly rather than trusting agent status, found the content was real and complete,
  relaunched only the missing review steps rather than redoing finished work) and once mid-SQL-
  generation (3 of 4 files were actually complete despite reporting "failed" — the 4th, Esther/Job,
  had genuinely produced nothing and was relaunched alone). Both times, checking actual file state
  before relaunching avoided redoing real, already-finished work — the established recovery
  discipline paying off again.
- **My own independent SQL validator caught one real content bug** missed by both the
  authoring/review pass and the verbatim-QA pass: Nehemiah-hard's own recall template for 6:15 had
  silently inserted the word "the month" that isn't actually in the verse text (confirmed against
  both the medium-tier brief and the QA report's own biblehub.com citation) — a bug in the
  template's own construction, not a verse-text-accuracy issue either check was designed to catch.
  Fixed directly in the content brief and the generated SQL before applying.
- **QA results**: 7 of 16 briefs passed clean; 9 needed a correction — every one a missing/
  mislabeled trim or a citation-range error (e.g. Proverbs 3:5 widened to 3:5-6 to match its own
  quoted text), never a wrong word. Job 1:8's "in the earth" reading (a real cross-source
  discrepancy first found during theological review) was independently re-confirmed correct.
  Song of Solomon-hard's one flagged discrepancy (8:6 "Yah" vs "Yahweh") was investigated and
  resolved in the brief's favor after triangulating 4 sources — the third recurrence of the same
  WEB-edition-drift pattern (2 Kings 19:15, Jeremiah 28:9), still not formally pinned as its own
  Open Decision.
- **Ingestion**: 176 challenge rows applied across 4 SQL files, independently re-validated (a fresh
  Python script adapted for the `difficulty_tier` schema — `difficulty_rank` fixed at 1/5 per tier,
  `sort_order` restarting at 1 per (book, tier) pair rather than continuing from medium's
  numbering) before applying, verified live via direct SQL query: every one of the 16 (book, tier)
  pairs returned its expected row and boss-item count, none zero.
- **Worlds 15-22 now have all three difficulty tiers** (Easy/Medium/Hard), same as the original 14
  MVP books. Waves 2 (5 Major Prophets) and 3 (12 Minor Prophets) of this tier rollout have not
  started. NT Wave 1 (the four Gospels) remains paused mid-consolidation from earlier — John's
  `escalate-to-human` still needs Kachi's resolution, and `CONTENT_REVIEW_LOG.md`/SQL ingestion for
  Matthew/Mark/Luke/John haven't run yet.
