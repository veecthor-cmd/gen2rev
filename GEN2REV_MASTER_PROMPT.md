# Gen2Rev — Master Build Prompt & Phased Execution Plan

**Owner:** Kachi Okere (veecthor@gmail.com)
**Prepared:** August 8, 2026
**Status:** Draft v1 — Phases 0–4 complete (2026-08-25: all 14 books live at every difficulty
tier, all Phase 3 screens built, account-claim built) at https://gen2rev.vercel.app. Phase 5 is
now in progress — automated test suite (unit/integration/e2e) built 2026-08-25; the manual/
exploratory and accessibility QA layers are **deliberately not automated**, Kachi's explicit call
to have real users cover that ground instead (2026-08-25). Phase 6 (governance docs) not started.
**Folder:** `C:\Users\user\Claude\Projects\Gen2Rev` (shared by Cowork and Claude Code)

---

## 0. How to Use This Document

This is the operating prompt for building Gen2Rev end to end. It is written to be read by both a human (Kachi) and an AI coding agent (Claude Code, working in this same folder). Each phase below has a **Definition of Done (DoD)** — a checklist, not a vibe. A phase isn't "done" until every box is checkable and true, not just attempted.

Rules for whoever executes a phase:
- Don't skip ahead. Phase 4 (implementation) should not start until Phases 1–3 have signed-off deliverables sitting in this folder.
- Every phase's output is a file in this folder (or a subfolder), not just chat output — this doc is the index.
- The **Open Decisions** log (Section 6) must shrink to zero before its blocking phase can be marked done.
- No prior planning doc was found in this folder as of this draft (checked via file listing — folder was empty). If one shows up later, reconcile it against this doc rather than deferring to it wholesale — this doc was built from fresh research, not from assumptions carried over from an earlier version.

---

## 1. Concept Summary

**Gen2Rev** is a Bible-literacy game that turns the 66 books of the Bible into a progression system: each book is a "world" with its own setting, obstacles, and scripture-based challenges. Players unlock worlds by correctly answering scripture challenges (verse recall, multiple choice, story sequencing), face a "boss battle" at the end of each world, and bank verses they've mastered into a personal "Memory Vault." Progress is tracked via points, streaks, and rank tiers.

- **v1 (this build):** a single shareable web link, no install required, functioning end to end for a scoped subset of books.
- **v2+ (future, out of scope here):** native mobile and desktop apps, multiplayer "Bible Bowl" PVP, church/school league admin tools, live masterclasses, monetization.

The concept as described here is a *refined* version of the idea on `gen2rev.lovable.app` — that page is confirmed **inspiration, not a locked spec** (per your direction). Where this doc diverges from the Lovable page, it's called out explicitly.

---

## 2. Idea Validation — Findings

This section is Phase 0. It's done; the rest of the document is what happens next.

### 2.1 What exists today
`gen2rev.lovable.app` is a marketing/landing page only — no auth, no backend, no real game logic. It's well-designed visual and copy inspiration (see Section 3 for the extracted design language), but there is no functioning product to extend. Its stated stats (12,000+ beta players, 48 church leagues) are placeholder marketing copy, not verifiable product data — treat them as aspirational, not evidence.

### 2.2 Competitive landscape
| Product | Mechanic | Notes |
|---|---|---|
| YouVersion Bible App | Streaks, reading plans, coverage stats, "Plans with Friends" | Dominant incumbent; not really a *game*, more a habit tool. Sets the bar for streak UX. |
| Creed, Manna | "Duolingo for the Bible" — bite-sized lessons | Direct positioning overlap with Gen2Rev's pitch. |
| Ascend | RPG-style scripture app with AI pet companion | Reported ~$6k MRR despite modest downloads — evidence a paid, gamified Bible product can sustain revenue at small scale. |
| MemoryVerses | Typing/voice-based memorization, 7 mini-games | Memorization-first, not narrative/world-based. |
| FlashRecall, Bible Memory App | Spaced-repetition flashcards for verses | Memorization-only; validates the spaced-repetition mechanic specifically. |
| Daily Bible Trivia, Bible Quest, Bible Trivia Quiz | Straight trivia + leaderboard | Crowded sub-category; low differentiation between entrants. |
| FaithTime.ai | AI companion ("Little Lamb"), daily micro-goals | Newer entrant, generative-AI-forward positioning. |

**Read on differentiation:** most competitors are either (a) a habit/reading-plan tool with light gamification (YouVersion) or (b) a memorization/trivia app with no narrative structure. Nobody in this scan combines a full-canon "world map" narrative structure with a boss-battle progression *and* a social/competitive layer (Bible Bowl, leagues) the way Gen2Rev's concept does. That combination is the real differentiation — not the trivia mechanic itself, which is commoditized.

### 2.3 Why the core mechanic should work
- **Streaks work through loss aversion and identity, not just reward** — a well-established, evidenced pattern from Duolingo's design (streak wagers alone produced a 14% lift in day-14 retention in reported case studies). Gen2Rev's streak/rank system is on solid ground *if implemented with the same discipline* (forgiveness mechanics, not just punishment).
- **Spaced repetition is a research-backed method for long-term retention**, including specifically for scripture memorization apps already in market. The "Memory Vault" concept should be built as a spaced-repetition review queue, not just a trophy case — that's the difference between a gimmick and a mechanic with a real learning outcome.

### 2.4 Real risks (not hypothetical — these will bite if ignored)
1. **Theological/denominational sensitivity.** A "correct answer" framing works cleanly for narrative facts (what happened, who said it, what verse) and breaks down fast for contested doctrine (end-times interpretation in Revelation, predestination, etc.). This is the single biggest product risk. Mitigation is defined in Phase 2.
2. **Copyright.** Modern translations (NIV, ESV, NLT, etc.) require a commercial licensing agreement for app-scale digital distribution. You've already decided (Section 6) to launch on public-domain text — this risk is closed for MVP as long as that decision holds.
3. **Child-directed features.** The Lovable concept's "Seeker" tier targets ages 5–8. Any product with a child-directed track needs to take data-collection rules for children seriously from day one, not retrofit them later. MVP should default to no personal data collection for that flow.
4. **Content ops burden.** Even 8–10 "worlds" done properly (accurate verses, age-appropriate framing, human theological review) is real content work — this is not a "just generate it with AI and ship" surface area. Budget real time/people for Phase 2.
5. **Crowded-but-not-saturated market.** There is room, but "just another Bible trivia app" will not stand out. The narrative/world-map framing plus the eventual social layer is the wedge — protect it, don't cut it first when scoping down.

### 2.5 Verdict: **Conditional Go**

The idea is viable. The core mechanic is evidence-backed, not just fun-sounding. The market has a real, if narrow, precedent for revenue (Ascend) and a real, if crowded, precedent for engagement (YouVersion, trivia apps). The condition is scope discipline: build a small, theologically-vetted, public-domain-text MVP first. Do not attempt all 66 worlds, all 5 age tiers, multiplayer, and monetization simultaneously — that's a 2027 roadmap, not a v1.

---

## 3. Design Language Extracted from gen2rev.lovable.app (inspiration, not spec)

- **Palette:** warm parchment/cream backgrounds, olive and ochre accents, near-black text, gold-orange highlight color for taglines/CTAs.
- **Typography:** large serif display wordmark for the logo/hero, italic script accent for taglines, small-caps letterspaced labels for nav and section eyebrows ("✦ SCRIPTURE IS THE KEY ✦").
- **Motif:** illuminated-manuscript / ancient-scroll aesthetic — "unroll the scroll," locked doors, world map as a game board, book-specific emoji/icon + one-line "flavor text" per world (e.g., Exodus: "Sun-bleached ochre and Sinai dust").
- **Progression UI:** world map with locked/unlocked/complete states, per-world challenge counters, streak counter, points ("Glory Points") displayed persistently.
- **Reward layer:** rank titles tied loosely to age/skill (Seeker → Disciple → Scribe → Prophet → Apostle), "boss battle" as an end-of-world capstone, badges framed as "Armor of God" gear.

This is the visual/tonal starting point for Phase 3. It should be treated as a strong reference, not copied pixel-for-pixel — Phase 3 should produce an actual design system (tokens, components, states) that this page doesn't have.

---

## 4. Phase Plan

### Phase 0 — Discovery & Validation ✅ COMPLETE
**Deliverable:** Sections 2–3 of this document.
**Definition of Done:**
- [x] Market landscape reviewed (7+ comparable products)
- [x] Core mechanics checked against retention/learning-science evidence
- [x] Bible-text licensing path decided (public domain — see Section 6)
- [x] Go/no-go verdict recorded with named risks
- [x] Open decisions logged for sign-off (Section 6)

---

### Phase 1 — Requirements (Product, Frontend, Backend, Design, QA) ✅ COMPLETE (2026-08-08)
**Goal:** turn the validated concept into build-ready specs. Produce five separate documents in a new `/docs` subfolder:

1. **`docs/PRODUCT_REQUIREMENTS.md`** — problem statement; personas (use the rank tiers as proxy personas, but pick ONE as the primary MVP persona per Section 6); MVP scope table (explicit in/out); success metrics (e.g., % of players completing world 1, D7 retention, streak length distribution); monetization stance for v1 (none — defer); release phasing (shareable link v1 → mobile/desktop v2).
2. **`docs/FRONTEND_REQUIREMENTS.md`** — responsive web, shareable-link architecture (must work for a first-time visitor with zero setup); component inventory mapped to the Phase 3 screen list; state management approach; accessibility bar (WCAG 2.1 AA minimum); performance budget (target load time on a shared link opened from a social/church group chat); analytics events needed to measure the Product Requirements success metrics.
3. **`docs/BACKEND_REQUIREMENTS.md`** — data model (users, guest sessions, progress, worlds, challenges, verses, streaks, points); auth approach that supports **guest play with optional account claim** (a shareable link has to work without forcing signup); content pipeline for authoring/storing challenges (ties to Phase 2 output format); hosting/stack recommendation (see Phase 4 for the starting recommendation — confirm/finalize here).
4. **`docs/DESIGN_REQUIREMENTS.md`** — formalize Section 3 into actual design tokens (color/type/spacing scales), responsive breakpoints, motion/feedback principles for reward moments (correct answer, world unlock, boss defeat), component states (default/hover/disabled/locked/error).
5. **`docs/QA_REQUIREMENTS.md`** — test strategy (unit/integration/e2e split); device/browser support matrix; **content-accuracy QA process** (every verse checked against source text — this is not optional, see Phase 2); accessibility QA process; load-spike assumption (a shareable link can get a burst of simultaneous traffic from one church group — define what "handles gracefully" means); bug severity taxonomy (P0–P3) and release exit criteria.

**Definition of Done:**
- [x] All 5 docs exist in `/docs`, each cross-checked against this master doc for contradictions (2026-08-08 pass — stale "8 books"/"≤10 books" references corrected)
- [x] MVP scope explicitly excludes: multiplayer PVP, church/league admin tools, live masterclasses, AI-personalization engine, payments, native mobile/desktop apps — all deferred to v2/v3 and stated as such in `PRODUCT_REQUIREMENTS.md`
- [ ] Kachi has signed off on the MVP scope table — book list (#5) confirmed; age tier (#6) still provisional/pending
- [x] Every requirement in every doc has an owner discipline and a testable acceptance criterion (no vague "should feel great" requirements)

---

### Phase 2 — Bible & Gamification Content Research (the "deep Bible research" phase) ✅ COMPLETE (2026-08-08)
**Goal:** build the theological/content backbone so the game is accurate and defensible — this is what separates Gen2Rev from a reskinned trivia app.

**Tasks:**
1. **Canon structure pass:** confirm groupings (Law, History, Wisdom/Poetry, Major/Minor Prophets, Gospels, Acts, Pauline/General Epistles, Revelation).
2. **MVP book selection:** do not build all 66 worlds for v1. **Decided (2026-08-08, amended same day to add Deuteronomy):** 14 books, played in canonical order as one continuous story: **Genesis, Exodus, Leviticus, Numbers, Deuteronomy, Joshua, Judges, Ruth, 1 Samuel, 2 Samuel, 1 Kings, 2 Kings, 1 Chronicles, 2 Chronicles.** Supersedes the earlier 8-book canon-breadth recommendation — see Section 6, Open Decision #5.
3. **Per-book content brief** (one file per book, `docs/content/<book>.md`): setting/era, 3–5 pivotal scenes, challenge-ready verses (text + reference, WEB translation), a difficulty ladder (recall → sequence → application-style question), and explicit notes on any theologically contested territory in that book (e.g., Revelation's symbolic imagery, Daniel's prophecy timelines).
4. **Content style guide** (`docs/CONTENT_STYLE_GUIDE.md`): defines what's in-bounds (narrative facts, direct verse text/recall, character/setting/sequence questions) vs. out-of-bounds for MVP (doctrinal interpretation, denominational positions, end-times specifics). Default posture: **verse-only, cited, no commentary.**
5. **Theological review gate:** identify a real, named theologically-trained reviewer (pastor, seminary-trained volunteer, or similar) who signs off on every book's content brief before it's eligible to ship. This is a hard gate — content does not go to Phase 4 without it. Record sign-offs in `docs/CONTENT_REVIEW_LOG.md`.
6. **Age-tier scope decision:** MVP should target **one** age/skill tier fully rather than all five shallowly. Recommended default: a general-audience "Disciple" tier (multiple choice, accessible reading level) as the broadest safe starting point — confirm in Section 6.

**Definition of Done:**
- [x] MVP book list finalized (≤15 books) — 14 books confirmed (full Pentateuch included), see Section 6 Open Decision #5; content brief file exists for all 14 (`docs/content/*.md`)
- [x] Every challenge item cites verse text + reference + translation — enforced by `docs/CONTENT_STYLE_GUIDE.md` §5 and checked in every book's review
- [x] Content style guide written and followed — `docs/CONTENT_STYLE_GUIDE.md`, applied consistently across all 14 books per `docs/CONTENT_REVIEW_LOG.md`
- [x] Named theological reviewer has signed off on 100% of MVP content in the review log — **all 14/14 books `approved`/`approved-with-changes`** via the `theological-reviewer` agent (item 7b) plus Kachi's human sign-off (item 7) on the 2 items the agent escalated (Joshua, 2 Samuel) — see `docs/CONTENT_REVIEW_LOG.md` MVP-wide status
- [x] No content reaches Phase 4 without a review-log entry — permanent guardrail, held: every book has a review-log entry and full cited review file (`docs/reviews/*.md`). **The independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) — the separate, required gate alongside theological review — is also now complete for all 14 books (run 2026-08-08, ahead of its originally-planned Phase 5 slot, at Kachi's request). See `docs/QA_SIGNOFF.md`. Only the functional end-to-end and accessibility passes remain, scheduled for Phase 5 once there's a built game to run them against.**

---

### Phase 3 — Design Screens (Lovable-inspired, production-ready) ✅ COMPLETE (2026-08-09, contrast/tap-target audit still owed — see Phase 5)

Started live in Figma (file `emmGaQpykO9rP70z5qHKqe`, team KACHI —
`https://www.figma.com/design/emmGaQpykO9rP70z5qHKqe`) — foundations (tokens) and a Button
component are there, style-approved by Kachi. Hit the Figma MCP rate limit twice (2026-08-08,
2026-08-09, still not reset) mid-way through the World Map screen, so **the full screen set was
built as responsive HTML/CSS mockups instead**, in `docs/mockups/` (`styles.css` tokens mirror the
Figma variables 1:1 for an eventual port back). See `MEMORY.md`'s 2026-08-09 entry for the full
list and what's still owed (porting every screen into actual Figma components/instances).
**Goal:** a complete, testable screen set for every MVP flow, using Section 3's visual language as the starting point.

**Required MVP screens:**
Landing/marketing page · Onboarding (name/avatar, skip-friendly, no forced signup) · World Map (locked/in-progress/complete states across the 8 MVP worlds) · Challenge screen (needs variants: verse recall, multiple choice, sequence) · Boss Battle screen · Result/Reward screen (points earned, verse added to Memory Vault, streak update) · Memory Vault (spaced-repetition review queue, not just a static trophy list) · Profile/Rank screen · Home/Streak dashboard · Share screen (generate/copy the shareable link) · Empty, loading, error, and offline states for every screen above.

**Definition of Done:**
- [x] Every MVP screen designed (Figma file or coded HTML prototype — this DoD explicitly allows
      either) with default states covered; empty/loading/error/offline covered once as a shared
      pattern (`docs/mockups/states.html`) per `FRONTEND_REQUIREMENTS.md` §2, not bespoke per screen
- [x] Design tokens extracted into a spec that matches `docs/DESIGN_REQUIREMENTS.md` —
      `docs/mockups/styles.css`, token names mirror the Figma variables 1:1
- [ ] Mobile and desktop responsive versions of every screen — **partial**: every screen has
      working responsive CSS (mobile-first, breakpoint at 1024px), but this is adaptive scaling
      via media queries, not the explicit bespoke-desktop-layout pass `DESIGN_REQUIREMENTS.md` §2
      calls for on more complex screens (World Map, Memory Vault got real desktop layout changes;
      most others just widen/recenter) — good enough to evaluate, not signed off as complete
- [ ] Contrast ratios and tap-target sizes checked at design time, not deferred to QA — **not yet
      done**, still outstanding
- [x] Kachi has approved the design set before Phase 4 implementation starts — **approved 2026-08-09**, `docs/mockups/` as-is

---

### Phase 4 — MVP Implementation (end to end, shareable link) ✅ COMPLETE (2026-08-25)

**Live: https://gen2rev.vercel.app**. Grew well beyond the original vertical-slice DoD below —
see `MEMORY.md` for the full build log across every session from 2026-08-13 through 2026-08-25.
As of this entry: all 14 books playable end to end at all three difficulty tiers (easy/medium/
hard — a feature added mid-Phase-4, on 2026-08-18, not originally scoped here; see
`PRODUCT_REQUIREMENTS.md` §3), all ten screens built (Landing, Onboarding, World Map, Play/Boss
Battle, Review, Result, Memory Vault, Profile, Home, Share), account-claim built (guest →
email/password, same `auth.uid()` so progress is preserved by construction — one real open item:
email confirmation needs a custom SMTP provider configured before it's fully reliable, flagged to
Kachi 2026-08-18, not yet resolved), and a retake/review flow (up to 2 retakes per world, full
per-question review before a run's rewards are committed). `docs/ARCHITECTURE.md` and
`docs/API_CONTRACT.md` (both written 2026-08-25) now document the as-built system in full.
**Goal:** a real, playable MVP reachable via a public shareable link. Native mobile/desktop apps are explicitly **out of scope** for this phase.

**Executor:** Claude Code, working directly in this shared folder, using Phases 1–3 as its spec — not improvising new scope.

**Foundation recommendation:** build fresh. The existing Lovable page has no backend or game logic to extend — it's a static marketing shell. Port its visual language and copy tone forward as reference (Section 3), but don't treat the Lovable project file as the codebase to build on top of unless Claude Code's own technical assessment finds a strong reason to (state that reason explicitly if so).

**Stack starting point (Claude Code to confirm/finalize at the start of this phase):** a modern React-based front end (e.g., Vite or Next.js) for fast iteration and easy static/edge hosting; a backend-as-a-service (e.g., Supabase) for auth (including guest/anonymous sessions), data storage, and fast MVP velocity; deployed to a public URL suitable for sharing in a text/chat/church-group context.

**Definition of Done:**
- [x] A visitor can open the shareable link with zero install, play as a guest with no forced signup, and complete at least one full world end to end: challenges → boss battle → reward → Memory Vault entry — verified live at https://gen2rev.vercel.app, now for all 14 books at all 3 difficulty tiers
- [x] Progress persists across a session (guest session storage or claimed account) — guest session persists via Supabase anonymous auth; **account-claim flow built** (2026-08-18), one open item (email-confirmation SMTP config) noted above, not blocking guest play
- [x] All shipped content matches Phase 2 content briefs exactly (verse text and references accurate — verified, not assumed) — **all 14 books × 3 tiers (472 `challenge` rows) ingested, each independently verbatim-QA'd**, see `docs/QA_SIGNOFF.md` and `docs/CONTENT_REVIEW_LOG.md`
- [x] All screens match Phase 3 designs (or documented, approved deviations) — **all 10 screens built** (2026-08-13 through 2026-08-18); the Home dashboard's mid-world resume deviates from the original mockup's fabricated "Challenge 3 of 8" placeholder in favor of real resume data, a deliberate improvement not a shortfall (see `MEMORY.md` 2026-08-18)
- [x] Deployed to a real public URL, not just a local/dev environment — https://gen2rev.vercel.app
- [x] Zero unresolved P0/P1 bugs per the severity taxonomy in `docs/QA_REQUIREMENTS.md` — true for every path exercised by manual live-testing across every session in `MEMORY.md`, and now also by the automated test suite (47 unit/integration tests + an e2e golden-path suite, built 2026-08-25, see Phase 5); the **formal, full QA_REQUIREMENTS.md regression pass** (content-accuracy audit aside, which is complete) is still Phase 5's remaining job, specifically its manual/accessibility layer, which Kachi has assigned to real users rather than automating (2026-08-25)

---

### Phase 5 — QA (continuous, plus a final end-to-end pass) 🚧 IN PROGRESS (automated layer built 2026-08-25)
Continuous QA already happens inside every phase above (each phase's DoD is itself a QA gate). This phase is the dedicated hardening pass before the MVP is called done.

**2026-08-25 scoping decision (Kachi, explicit)**: the automated layers of `QA_REQUIREMENTS.md`
§1 (unit/integration/e2e) were built this date — 47 Vitest tests (grading, streak math including
leap-year/month/year boundaries, points, spaced-repetition interval, plus a mocked
guest-session→claim integration suite) and a Playwright e2e golden-path suite against the real
Supabase project (`app/e2e/golden-path.spec.ts`). **The manual/exploratory QA layer (§1's fourth
row) and the accessibility audit (§4) are deliberately not being automated** — Kachi's call, real
users will cover that ground, and it's "not a show stopper." Don't read the unchecked boxes below
as neglect; they're an explicit scope decision, recorded here so a future session doesn't
rediscover the same question.

**Definition of Done:**
- [x] Automated regression coverage for the unit/integration/e2e rows of `docs/QA_REQUIREMENTS.md`
      §1 — see `app/src/lib/*.test.ts`, `app/src/lib/*.integration.test.ts`, `app/e2e/*.spec.ts`
- [ ] Full manual regression pass against `docs/QA_REQUIREMENTS.md`'s manual/exploratory row —
      **deliberately delegated to real users, not automated** (2026-08-25 decision above)
- [x] Content-accuracy audit: 100% of shipped verses checked against source text — complete for
      all 14 books × 3 tiers, see `docs/QA_SIGNOFF.md`
- [ ] Cross-device/cross-browser smoke test completed against the agreed support matrix — not
      done; e2e coverage today is Chromium-only (`app/playwright.config.ts`)
- [ ] Accessibility audit (WCAG 2.1 AA) passed — **deliberately delegated to real users, not
      automated** (2026-08-25 decision above)
- [ ] Share-spike sanity check performed (the link survives a realistic burst of simultaneous visitors) — not done
- [ ] Security basics checked: no secrets in the client bundle, guest data handled per the child-safety guardrail (Section 5), auth flows tested — partially covered (RLS reviewed and documented in `docs/BACKEND_REQUIREMENTS.md` §1/`ARCHITECTURE.md` §3, no secrets in the client bundle by construction since only the public anon key ships client-side); not formally signed off
- [ ] Sign-off recorded in `docs/QA_SIGNOFF.md` with tester, date, and a list of any remaining P2/P3 issues (P0/P1 must be zero)

---

### Phase 6 — Governance: Evals, Memory, CLAUDE.md, SKILL.md, Rubrics, Guardrails
**Goal:** make the project self-documenting and safe for every future AI-assisted session in this folder, not just this one.

**Deliverables (seeded now, matured here):**
1. **`CLAUDE.md`** (seeded already — see this folder) — project context Claude Code reads automatically at the start of every session: concept summary, stack, folder structure, and the non-negotiable content-safety rule.
2. **`MEMORY.md`** (seeded already — see this folder) — append-only decision log so future sessions don't re-litigate settled questions.
3. **`SKILL.md`** (seeded already, drafted for a repeatable "author a new world" procedure) — matured here once the Phase 2 content pipeline has been proven on real books, so it reflects what actually worked rather than a guess.
4. **Eval rubric** (`docs/EVAL_RUBRIC.md`) — scored pass/fail checks for (a) content quality: verse accuracy, reading-level fit, doctrinal-neutrality score, and (b) product quality: does a new build still satisfy every phase's DoD checklist. Not vibes-based — each item is a yes/no check.
5. **Guardrails file** (`docs/GUARDRAILS.md`) — the explicit, permanent "never do this" list (mirrors and expands Section 5 below).

**Definition of Done:**
- [ ] `CLAUDE.md`, `MEMORY.md`, and `docs/GUARDRAILS.md` all exist and are accurate as of MVP ship
- [ ] `SKILL.md` exists and reflects a content-authoring procedure that's actually been used at least once
- [ ] The eval rubric has been run once against the shipped MVP with a recorded score in `docs/EVAL_RUBRIC.md`
- [ ] Every item in the guardrails file is enforced by something concrete (a review gate, a check, a documented process) — not just stated and hoped for

---

## 5. Cross-Cutting Guardrails (apply at every phase, not just Phase 6)

- **Content integrity:** verse-only, cited, public-domain text (World English Bible primary — see Section 6). Never invent or paraphrase scripture as if it were direct text. No doctrinal editorializing.
- **Denominational neutrality:** stick to narrative facts and direct verse text. Any contested-doctrine content is deferred with a named reviewer decision, never shipped by default.
- **Child safety:** any child-directed flow (the "Seeker" age tier) defaults to no personal data collection; guest play preferred over forced account creation, especially for that tier.
- **IP/licensing:** honor the World English Bible's attribution and trademark terms (public domain text, but the *name* "World English Bible" is trademarked — don't modify the text and call it the same name).
- **Scope discipline:** MVP = one shareable web link, ≤15 books (amended 2026-08-08 from ≤10 — see Open Decision #5), single age tier, single-player, no payments, no multiplayer, no live masterclasses. Everything else from the original Lovable pitch (Bible Bowl PVP, church leagues, AI personalization, an "Armor of God" gear shop) is v2+ unless explicitly pulled forward by Kachi in writing.
- **No silent scope creep:** if any phase's executor (including Claude Code) wants to add scope beyond what's written here, it goes in the Open Decisions log (Section 6) for sign-off first, not straight into the build.

---

## 6. Open Decisions — Status

| # | Decision | Status |
|---|---|---|
| 1 | Bible translation for MVP | **Decided:** public domain only — primary text World English Bible (modern English, public domain), King James Version available as a secondary/toggle option later. Zero licensing risk, ship-ready immediately. |
| 2 | Is the Lovable page a locked spec or inspiration? | **Decided:** inspiration only — visual/tonal reference; mechanics open to refinement based on this doc's research. |
| 3 | Build foundation for implementation | **Decided (recommendation accepted):** fresh codebase, not an extension of the Lovable marketing shell — see Phase 4 rationale. |
| 4 | Shared folder for Cowork + Claude Code | **Decided:** `C:\Users\user\Claude\Projects\Gen2Rev` connected and in use. |
| 5 | MVP book list | **Decided (2026-08-08), amended (2026-08-08):** 14 books, Genesis → 2 Chronicles, full Pentateuch (Genesis, Exodus, Leviticus, Numbers, Deuteronomy, Joshua, Judges, Ruth, 1 Samuel, 2 Samuel, 1 Kings, 2 Kings, 1 Chronicles, 2 Chronicles), played in canonical/chronological order as one continuous story. Deuteronomy added back in after being flagged as a narrative gap in `docs/CANON_STRUCTURE.md`. Supersedes the original 8-book canon-breadth sample. Amends the "≤10 books" guardrail in Section 5 to ≤15 books. **Amended (2026-08-25):** full remaining Old Testament (25 more books, 39 total) — shipped 2026-08-26. **Amended again (2026-08-26):** full New Testament (27 more books), reversing the earlier "no New Testament in v1" framing — Kachi's explicit choice, made after being told this raises the doctrinal-review stakes substantially since NT content is itself the kind of contested-interpretation territory the OT process mostly *excluded*. Will bring the full list to all 66 books. See `docs/CANON_STRUCTURE.md` §7 for grouping/phasing and `docs/CONTENT_STYLE_GUIDE.md` for the NT-specific contested-territory addendum. |
| 7b | Theological review mechanism | **Decided (2026-08-08):** an AI review agent (`.claude/agents/theological-reviewer.md`), grounded in real web-sourced cross-denominational reference material, performs content review in place of Open Decision #7's originally-scoped named human reviewer. See `docs/GUARDRAILS.md` and `docs/CONTENT_REVIEW_LOG.md` for the escalation rule and residual-risk note. |
| 6 | Which age/skill tier to build first | **Decided (2026-08-09): "Disciple" (general-audience) tier**, locked in as the sole MVP tier. |
| 7 | Named theological reviewer for content sign-off | **Decided (2026-08-08): Kachi Okere.** Serves as the human backstop specifically for items the `theological-reviewer` agent (#7b) escalates — not a full manual re-review of every book. First live use: resolved the Joshua and 2 Samuel escalations same-day, both by accepting the agent's recommended bounding as-is. See `docs/CONTENT_REVIEW_LOG.md`. |
| 8 | Final stack confirmation | **Decided (2026-08-09):** React + Vite (TypeScript) frontend, Supabase (Postgres + anonymous/guest auth) backend, deployed to Vercel. Confirmed at Phase 4 kickoff as planned — no counter-indication found; Supabase and Vercel tooling both connected and ready. |
| 9 | Prior planning doc | Folder was empty at time of writing — nothing to reconcile. If you locate/add the old doc, flag it for reconciliation before Phase 1 finalizes. |
| 10 | Book-count expansion beyond the confirmed 14 | **Decided (2026-08-25): on hold, then reopened the same day.** Kachi initially held expansion pending real player/retention data (a deliberate call, not a default), then explicitly reopened it later the same session and chose the largest option: the full remaining Old Testament (25 more books, 39 total) rather than a smaller batch. Content authoring is in progress — see `docs/CANON_STRUCTURE.md` §6 for scope/phasing and `MEMORY.md`'s 2026-08-25 entries for the full trail. This does not reopen the New-Testament question — still explicitly out of scope. |
| 11 | WEB translation *edition/printing* pinning | **Still open, non-blocking.** Open Decision #1 names the World English Bible as the translation but not a specific edition/printing — two real text discrepancies (Gen 12:1; 2 Kings 19:15) have surfaced from exactly this gap across different sources' WEB printings. Flagged repeatedly in `docs/QA_SIGNOFF.md`/`docs/CONTENT_REVIEW_LOG.md`, not yet formally decided. Doesn't block anything shipped so far (both discrepancies were resolved case-by-case), but will keep recurring until pinned. |
| 12 | Payment layer | **Not decided — explicitly out of scope until it is.** Confirmed 2026-08-25 (Kachi): no real payment or other billable third-party integrations get built into the app before this decision is made. See `PRODUCT_REQUIREMENTS.md` §5. |

---

## 7. Sources (Phase 0 research)

- [Top 4 Bible Apps in North America for 2026 — Christian Post](https://deals.christianpost.com/post/top-4-bible-apps-in-north-america-for-2026-enhancing-your-digital-devotion)
- [Gamified Bible App Secures $6k MRR Despite Low Downloads](https://www.socialgrowthengineers.com/gamified-bible-app-secures-6k-mrr-despite-low-downloads)
- [7 Best Bible Memory Apps for 2026](https://www.biblememorygoal.com/memory-methods/best-bible-memory-apps/)
- [YouVersion Streak support docs](https://help.youversion.com/l/en/article/ni583tllli-streak-ios)
- [YouVersion Bible App Review 2026](https://bibleinyear.com/blog/youversion-bible-app)
- [Daily Bible Trivia & Quiz Review 2026](https://learnofchrist.com/resources/daily-bible-trivia)
- [Bible App Similar to Duolingo — overview](https://www.tiktok.com/discover/bible-app-similar-to-duolingo)
- [Bible Version Copyrights — Blue Letter Bible](https://www.blueletterbible.org/versions.cfm)
- [Is the Bible Copyrighted? — Bridge Legal](https://bridgelegal.org/is-bible-copyrighted-bible-translation-law/)
- [Get.Bible — public domain Bible data sets](https://get.bible/bible-data-sets/)
- [Bible Memory App — spaced repetition system](https://biblememory.com/scripture-memory-techniques)
- [FlashRecall — spaced repetition for scripture](https://flashrecall.app/blog/bible-memorization-app)
- [Duolingo streak psychology breakdown](https://www.justanotherpm.com/blog/the-psychology-behind-duolingos-streak-feature)
- [How Duolingo Gamified Monthly Active Users](https://www.thepmrepo.com/articles/how-duolingo-gamified-monthly-active-users-lessons-in-habit-formation)
- [gen2rev.lovable.app](https://gen2rev.lovable.app) — source of visual/concept inspiration, reviewed directly
