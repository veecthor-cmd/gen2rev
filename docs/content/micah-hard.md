# Content Brief — Micah, Hard Tier (World 33)

Status: **`approved`** — theological self-review complete, see `docs/reviews/micah-hard-review.md`.
No structural changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4).

Reuses the same 4 pivotal passages already approved in `docs/content/micah.md` (no new passages), so
the existing Contested Territory analysis — including the full exclusion of Micah 5:1-5 — still
applies unchanged, reconfirmed below.

> **Verbatim-text caveat:** verse text below was retrieved via a fresh web-fetch pull against
> [ebible.org](https://ebible.org/web/) (full chapters 1, 4, 6, 7, `version=WEB`), cross-checked
> against [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) for every verse used in
> this brief — an improvement on `docs/content/micah.md`'s own single-source rows for 6:6-7 and
> 7:18-20 (see `docs/reviews/micah-review.md` §1), both of which are double-sourced here. This is
> not yet the independent character-for-character QA check required by `QA_REQUIREMENTS.md` §3.
> **Do not ingest into the `challenge` table (`BACKEND_REQUIREMENTS.md` §4) until that separate
> verbatim QA pass has run**, even after theological sign-off.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

This tier draws on wording that is theologically or narratively significant but less commonly
memorized than the tier's most-quoted lines — secondary clauses and precise phrasing — and requires
typed recall (no multiple-choice scaffolding) throughout. It stays inside the same guardrails as
every other tier: verbatim WEB text only, narrative fact only, no doctrinal position required.
`difficulty_rank` skews to 5 throughout.

## Pivotal Passages — reused from `docs/content/micah.md`, no new passages added

Same 4 passages as `medium` and `easy`: Micah 1:2-4 (Yahweh Comes in Judgment), Micah 4:1-4 (Swords
into Plowshares), Micah 6:6-8 (What Does Yahweh Require?), Micah 7:18-20 ("Who Is a God Like You?").
**Micah 5:1-5 remains excluded entirely — no verse from Micah 5 appears anywhere in this brief.**

## Challenge Items (11: 8 regular + 3 boss)

### Regular (8)

1. **Micah 1:2** (WEB, already-approved verse, new blank — less commonly memorized clause): "Hear,
   you peoples, all of you! Listen, O earth, and all that is therein. Let the Lord Yahweh be witness
   against you, the Lord from his holy temple." — recall: "Let the Lord Yahweh be witness against
   you, the Lord from his holy ___." → **temple**.
2. **Micah 1:3** (WEB, already-approved verse, new blank): "For behold, Yahweh comes out of his
   place, and will come down and tread on the high places of the earth." — recall: "For behold,
   Yahweh comes out of his place, and will come down and tread on the high places of the ___." →
   **earth**.
3. **Micah 4:1** (WEB, already-approved verse, new blank): "But in the latter days, it will happen
   that the mountain of Yahweh's temple will be established on the top of the mountains, and it will
   be exalted above the hills; and peoples will stream to it." — recall: "...and it will be exalted
   above the hills; and peoples will ___ to it." → **stream**.
4. **Micah 4:2** (WEB, already-approved verse, new blank — precise clause): "...For the law will go
   out of Zion, and Yahweh's word from Jerusalem..." — recall: "For the law will go out of Zion, and
   Yahweh's word from ___." → **Jerusalem**.
5. **Micah 6:7** (WEB, already-approved verse, new blank — less commonly memorized than 6:8): "Will
   Yahweh be pleased with thousands of rams? With tens of thousands of rivers of oil? Shall I give
   my firstborn for my disobedience? The fruit of my body for the sin of my soul?" — recall: "Will
   Yahweh be pleased with thousands of rams? With tens of thousands of rivers of ___?" → **oil**.
6. **Micah 6:6** (WEB, already-approved verse, new blank): "How shall I come before Yahweh, and bow
   myself before the exalted God? Shall I come before him with burnt offerings, with calves a year
   old?" — recall: "Shall I come before him with burnt offerings, with calves a year ___?" → **old**.
7. **Micah 7:18** (WEB, already-approved verse, new blank — precise clause, less commonly memorized
   than the verse's opening question): "Who is a God like you, who pardons iniquity, and passes over
   the disobedience of the remnant of his heritage? He doesn't retain his anger forever, because he
   delights in loving kindness." — recall: "He doesn't retain his anger forever, because he delights
   in loving ___." → **kindness**.
8. **Micah 7:20** (WEB, already-approved verse, new blank): "You will give truth to Jacob, and mercy
   to Abraham, as you have sworn to our fathers from the days of old." — recall: "...as you have
   sworn to our fathers from the days of ___." → **old**.

### Boss (3)

9. **Micah 4:4** (WEB, already-approved verse, new blank — precise clause): "But every man will sit
   under his vine and under his fig tree. No one will make them afraid, for the mouth of Yahweh of
   Armies has spoken." — recall: "No one will make them afraid, for the mouth of Yahweh of ___ has
   spoken." → **Armies**.
10. **Boss sequence + attribution — new item, same format as medium's Level 4**: Given three
    quotations (Micah 1:4, "The mountains melt under him..."; Micah 6:7, "With tens of thousands of
    rivers of oil?"; Micah 7:19, "You will cast all their sins into the depths of the sea"), place
    them in the order they occur in the book and match each to its reference.
11. **Micah 6:8** (WEB, already-approved verse, new blank — different clause than the easy tier's
    "God" blank) — boss capstone, recall format: "He has shown you, O man, what is good. What does
    Yahweh require of you, but to act justly, to love mercy, and to walk humbly with your God?" —
    recall: "What does Yahweh require of you, but to act ___, to love mercy, and to walk humbly with
    your God?" → **justly**.

## Contested Territory

Everything already flagged in `docs/content/micah.md` applies unchanged. Reconfirmed against this
tier's specific items:

- **Micah 5:1-5 remains excluded entirely.** No item in this brief uses any verse from Micah 5 —
  confirmed by direct check against the item list above (only chapters 1, 4, 6, and 7 appear). The
  full-unit exclusion reasoning in `docs/content/micah.md` (the Bethlehem-ruler oracle's wording is
  itself the contested Matthew 2:6 identity-claim, not separable context around it) applies without
  modification, since this tier introduces no new verses from that chapter or adjacent ones.
- **Micah 4:1-4's relationship to Isaiah 2:2-4** (items 3, 4, 9): items cite the passage purely as
  Micah's own text, by its own reference — no claim of priority or borrowing is made or implied by
  any recall blank. Bounding holds.
- **Micah 6:6-8's sacrifice language** (items 5, 6, 11): items test only the text's own stated
  question and answer — no item asserts a theological position on what sacrifice accomplishes.
  Bounding holds, same as medium and easy tiers.
- No new contested ground introduced by this tier's items — every verse used (1:2, 1:3, 4:1, 4:2,
  4:4, 6:6, 6:7, 6:8, 7:18, 7:19, 7:20) is drawn from the same four passages already cleared in
  `docs/reviews/micah-review.md` §3, reused here at a different (harder, recall-only) format only.

## Acceptance Criteria for This Brief

- [x] Reviewed by theological self-review (agent procedure, self-applied) — `approved`, no
      structural changes required (see `docs/reviews/micah-hard-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3 —
      not yet run, blocks ingestion
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding
- [x] No verse from Micah 5 appears anywhere in this brief
