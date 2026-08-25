# Gen2Rev — Product Requirements (MVP)

Status: Draft v1, Phase 1. Owner discipline: Product.
Source: `GEN2REV_MASTER_PROMPT.md` Sections 1, 2, 4 (Phase 1), 5, 6.

> **Decision status (updated 2026-08-25).** Open Decision #5 (book list) is **confirmed by
> Kachi**, and amended twice since — see Section 3. Open Decision #6 (age tier) is **also
> confirmed**: Disciple/general-audience is the sole MVP tier, locked in 2026-08-09 — no longer
> provisional. **Book-count expansion beyond the current 14 is on hold**, a deliberate decision
> made 2026-08-25 (not a default or an oversight) pending real player/retention data — see
> `MEMORY.md`'s 2026-08-25 "(later still)" entry before proposing books 15+ in a future session.
> See `MEMORY.md` for the full standing decision log.

---

## 1. Problem Statement

Bible-literacy tools today split into two camps: habit/reading-plan tools (YouVersion) with light
gamification, or memorization/trivia apps (FlashRecall, Bible Trivia Quiz) with no narrative
structure. Neither combines a full-canon narrative progression with a mastery mechanic that
produces durable, verifiable retention of actual scripture text.

Gen2Rev's bet: a "world map" narrative structure (one world per Bible book) with boss-battle
progression and a spaced-repetition "Memory Vault" produces both higher engagement (narrative +
game-loop hooks) and a real learning outcome (verses actually retained), while staying
theologically defensible by restricting graded content to narrative fact and direct verse
recall — never contested doctrine.

MVP question this build must answer: can a first-time visitor, arriving cold from a shared link
with zero setup, complete one full world and come away having actually memorized scripture?

## 2. Primary Persona (MVP)

Per Open Decision #6, MVP targets **one** age/skill tier fully rather than five shallowly.

**Primary persona — "Disciple" tier (general audience):** *(confirmed 2026-08-09 — no longer provisional)*
- Comfortable with standard English reading level (no simplification needed, no read-aloud
  requirement).
- Plays alone, on a phone, most likely opened from a link shared in a text thread or church group
  chat — not from an app store search.
- Motivated by a mix of curiosity, mastery, and social proof (streaks, shareable progress) rather
  than pure trivia competitiveness.
- Not assumed to be a committed daily user on day one — the first session (world 1, guest, no
  signup) has to work as a complete, satisfying unit on its own.

Other rank tiers (Seeker/child-directed, Scribe, Prophet, Apostle) are v2+ scope. If Kachi
confirms Seeker (ages 5–8) as the first tier instead, this document's screens, reading level, and
child-data guardrails need a full pass before Phase 2 proceeds — do not silently blend the two.

## 3. MVP Scope Table

| In scope (v1) | Out of scope (v2+) |
|---|---|
| Single shareable web link, no install | Native mobile/desktop apps |
| Guest play by default, optional account claim | Forced account creation |
| 14 books as playable worlds, Genesis → 2 Chronicles, full Pentateuch included (confirmed — see below) | Remaining 52 books, including all of the New Testament, for v1 |
| One age/skill tier (Disciple — recommended, still provisional) built fully | All five rank tiers |
| Single-player only | Multiplayer PVP ("Bible Bowl") |
| World map, challenges (recall / multiple choice / sequence), boss battle, Memory Vault, streak, points | Church/school league admin tools |
| **Difficulty modes (Easy/Medium/Hard), chosen at onboarding and adjustable after each world** — added 2026-08-18, shipped for all 14 books 2026-08-25. Easy/medium grade recall answers leniently (case/singular-plural insensitive); hard requires verbatim recall. Each tier has genuinely distinct content (not just a grading-strictness toggle) per book, gated behind the same theological-review + verbatim-QA pipeline as the original 14 books. | A computed rank ladder tied to difficulty (rank display is still the static "Disciple" label — see Profile) |
| Public-domain scripture text (WEB primary) | Live masterclasses |
| No payments | Monetization / payments of any kind |
| — | AI-personalization engine |
| — | "Armor of God" gear shop / cosmetic economy |

**MVP book list (Open Decision #5 — confirmed by Kachi 2026-08-08, amended 2026-08-08 to add
Deuteronomy):**
Genesis, Exodus, Leviticus, Numbers, Deuteronomy, Joshua, Judges, Ruth, 1 Samuel, 2 Samuel,
1 Kings, 2 Kings, 1 Chronicles, 2 Chronicles — 14 books, played in that order as a single
continuous world map. This is the complete Pentateuch/Torah plus the full run of history books
through Chronicles — no gap in the Numbers→Joshua transition anymore (see
`docs/CANON_STRUCTURE.md`, updated to reflect this).

This is a deliberate departure from the original 8-book "canon breadth" recommendation. Instead of
sampling across genres (Law, Wisdom, Prophets, Gospel, Acts, Revelation), MVP now tells one
continuous story — Creation through the era of the Kingdom of Israel/Judah and the Chronicles
retelling — in canonical/chronological order. Product implications:

- **World map ordering is now fixed and sequential**, not a free-choice grid — world *N+1* should
  make narrative sense as following world *N*. This is a stronger fit for a "map" progression UI
  than a genre sample would have been.
- **No New Testament content ships in v1.** The player never reaches Jesus, the Gospels, Acts, or
  Revelation in this build. That's a real product statement, not an oversight — Gen2Rev v1 is "the
  Old Testament historical arc," not "the whole Bible." Say this plainly in any external-facing
  copy (landing page, share screen) so players aren't surprised mid-playthrough.
- **1/2 Samuel, 1/2 Kings, and 1/2 Chronicles overlap in content** (Chronicles retells much of
  Samuel/Kings from a different narrative angle). Phase 2 content briefs must decide per-book
  which scenes/verses get emphasis so worlds 9–14 don't feel repetitive — flag this explicitly in
  each of those books' content brief rather than discovering it during content authoring.
- **This exceeds the master prompt's original "≤10 books" scope guardrail** (Section 5). That
  guardrail is amended to **≤15 books** for MVP as of this confirmed decision — recorded in
  `MEMORY.md`. Still a real ceiling: this list is not to grow further without another explicit
  Open Decision.

## 4. Success Metrics

All metrics must be measurable from analytics events defined in `FRONTEND_REQUIREMENTS.md` §6 —
no metric here without a corresponding event.

| Metric | Definition | Target (initial, revisit after first real data) |
|---|---|---|
| World 1 completion rate | % of sessions that reach the world-1 boss-battle result screen | ≥ 40% of first-time visitors |
| D1 retention | % of players who open the link again within 24h of first session | ≥ 20% |
| D7 retention | % of players who open the link again within 7 days of first session | ≥ 10% |
| Streak length distribution | Histogram of consecutive-day play streaks at day 30 | Report only for v1 — no target, this is a baseline-gathering metric |
| Memory Vault entries per completer | Avg. verses banked per player who completes ≥1 world | ≥ 3 |
| Share-link generation rate | % of sessions that use the Share screen at least once | Report only for v1 |
| Guest-to-account claim rate | % of guest sessions that claim an account within 7 days | Report only for v1 |

Metrics with "report only" targets are intentionally unset — there's no existing baseline for this
product; set real targets after the first 2–4 weeks of live data, not before.

## 5. Monetization Stance (v1)

**None.** No payments, no in-app purchases, no ads, no paywalled worlds or tiers in MVP. This is a
deliberate scope cut (see Guardrails, master prompt Section 5) — validate the core loop and
retention story before introducing a business model. Revisit post-MVP once D7 retention and
completion-rate data exist. **Reaffirmed 2026-08-25**: no payment-processing or other billable
third-party integrations get built into the app until a payment layer is explicitly decided — a
standing scope guard for any future session, not just a Phase 1 default.

## 6. Release Phasing

- **v1 (this build):** single shareable web link. Guest play default. 14 books, Genesis → 2
  Chronicles including the full Pentateuch (confirmed), Disciple tier only (still pending
  confirmation). No payments, no multiplayer.
- **v2 (future, not this build):** native mobile/desktop apps; additional books toward full canon;
  additional age/rank tiers; Memory Vault enhancements (voice recall, typing mode).
- **v3+ (future, not this build):** multiplayer "Bible Bowl" PVP; church/school league admin
  tooling; live masterclasses; monetization; AI-personalization engine; cosmetic gear economy.

No v2/v3 item may be pulled into v1 scope without going through the Open Decisions log first (see
`GEN2REV_MASTER_PROMPT.md` Section 6 and the "No silent scope creep" guardrail in Section 5).

## 7. Acceptance Criteria for This Document

- [x] Book list (Section 3) confirmed by Kachi (2026-08-08, amended same day) — 14 books, further
      expansion deliberately on hold as of 2026-08-25 (see decision-status note at top of this doc)
- [x] Age tier (Section 2/3) confirmed by Kachi (2026-08-09) — Disciple, sole MVP tier
- [x] MVP scope table reviewed for contradictions against `FRONTEND_REQUIREMENTS.md`,
      `BACKEND_REQUIREMENTS.md`, `DESIGN_REQUIREMENTS.md`, `QA_REQUIREMENTS.md` (2026-08-25 pass —
      also added the difficulty-mode feature, which shipped without ever being logged in this doc)
- [x] No v2/v3 item present in the "in scope" column
