# Skill (draft): Author a New Gen2Rev World

Status: run once for real (Genesis, 2026-08-08 — see `docs/content/genesis.md`). Procedure below
held up; two things learned from that run are folded in as notes. Revisit again after a second
book (ideally one with more contested territory, e.g. Joshua) to see if the notes still hold.

**What held up:** the scene-count (3–5), the verse-citation format, and the difficulty-ladder
shape (recall → sequence → application-bounded-to-narrative-fact) all worked cleanly for Genesis
without needing adjustment.

**What was learned:**
- **Verbatim text needs two passes, not one.** Drafting the brief pulls verse text from a source
  (web fetch, reference text) to work fast, but that pull is not the same as the
  character-for-character QA check in `QA_REQUIREMENTS.md` §3. Every brief should carry an
  explicit caveat flagging draft-sourced text as unverified until that separate pass runs — don't
  let "I looked it up" substitute for the dedicated QA step.
- **The reviewer gate can block *approval* without blocking *drafting*.** With no named reviewer
  yet (Open Decision #7), content briefs can still be written and logged as `submitted` in
  `docs/CONTENT_REVIEW_LOG.md` — the gate stops ingestion/shipping (step 4 onward below), not
  authorship (steps 1–2). Don't let an unresolved Open Decision stall content research entirely.

## When to use this
Whenever adding a new Bible book as a playable "world" — either during initial MVP content build (Phase 2) or when expanding beyond the MVP book list later.

## Procedure
1. **Content brief.** Write `docs/content/<book>.md` covering: setting/era, 3–5 pivotal scenes, challenge-ready verses (text + reference, World English Bible translation), a difficulty ladder (recall → sequence → application-style question). Follow `docs/CONTENT_STYLE_GUIDE.md` once it exists.
2. **Flag contested territory.** Note anywhere the book touches denominational or interpretive disagreement (end-times material, prophecy timelines, sovereignty debates, etc.). Default posture for MVP: stay in narrative-fact and direct-verse territory; don't write challenge questions that require picking a doctrinal side.
3. **Reviewer gate.** Invoke the `theological-reviewer` subagent (`.claude/agents/theological-reviewer.md`) on the brief — it reads the style guide, verifies verse text against live cross-tradition web sources, and returns a verdict (`approved` / `approved-with-changes` / `rejected` / `escalate-to-human`). Log the outcome in `docs/CONTENT_REVIEW_LOG.md` yourself (the agent doesn't edit the log — see its own file for why) and its full cited review in `docs/reviews/<book-slug>-review.md`. Do not proceed to step 4 without an `approved` or `approved-with-changes` (changes applied) entry. If it returns `escalate-to-human`, route it to **Kachi Okere**, the named human reviewer (Open Decision #7, resolved 2026-08-08) — record the resolution as an addendum at the bottom of the review file (don't rewrite the agent's original findings) and update the brief's status header once resolved. First two real uses (Joshua, 2 Samuel) both resolved same-day by accepting the agent's recommended bounding as-is.
4. **Challenge authoring.** Convert the approved brief into the challenge data format defined in `docs/BACKEND_REQUIREMENTS.md` (verse recall / multiple choice / sequence variants). Every challenge item must carry verse text + reference + translation.
5. **Design pass.** Confirm the world's flavor text/icon/palette accent fits the design tokens in `docs/DESIGN_REQUIREMENTS.md` (era/setting-appropriate, consistent with existing worlds).
6. **QA pass.** Verse-accuracy check against source text (100%, no sampling) plus a normal functional pass through the world end to end. Record in `docs/QA_SIGNOFF.md`.
7. **Ship.** Only after 3, 4, 5, and 6 are all complete.

## Guardrails this procedure exists to enforce
- No content ships without a logged reviewer sign-off (step 3).
- No verse text ships unverified (step 6).
- No world skips the design system (step 5) and ends up visually inconsistent.
