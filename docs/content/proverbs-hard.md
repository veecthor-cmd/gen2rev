# Content Brief — Proverbs, Hard Tier (World 20)

Status: **approved-with-changes** — self-run theological review complete, see
`docs/reviews/proverbs-hard-review.md`. Two structural rules (new for this tier, on Proverbs 3:7-8
and Proverbs 16:9) are applied below.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has not
run — theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql` file has
been written for this tier — out of scope for this task.

Second half of the Proverbs tier-scaling pass (see `docs/content/proverbs-easy.md` for the shared
design rationale). Reuses the same 5 pivotal thematic clusters already approved in
`docs/content/proverbs.md` — no new clusters — but selects less commonly memorized, more precise
verses and skews toward typed recall over multiple choice. **The two structural format rules the
medium review added (Proverbs 22:6 recall/attribution-only; the Proverbs 31:10-31 cluster
recall-of-wording-only) are honored unchanged in this tier — item 10 (Prov 31:20) and boss item 11
(Prov 31:28) comply by construction, being plain recall of the poem's own words.**

> **Verbatim-text caveat:** ten new verses are introduced by this tier, all within the already-
> approved clusters' chapter ranges (Prov 1, 3, 4, 15-17, 22, 27, 31) — the same "extend within an
> approved passage, add no new passage" move Genesis's and Psalms' hard tiers made. Every new verse
> was fetched from ebible.org and cross-checked against biblegateway.com (`version=WEB`) on
> 2026-09-02, with no mismatch found on any verse. This is a draft pull, not the final
> character-for-character QA check required by `QA_REQUIREMENTS.md` §3. **Do not ingest into the
> `challenge` table until that separate verbatim QA pass has run.**

Translation: World English Bible (WEB) throughout.

---

## Design intent for this tier

Per the Genesis pilot's design rule: "hard... needs very deep scripture knowledge." This tier draws
on verses that are theologically or narratively significant but less likely to be immediately
recognized — secondary sayings within already-approved chapters, precise phrasing — and requires
typed recall (no multiple-choice scaffolding) wherever the format allows. Same guardrails as every
other tier: verbatim WEB text only, no doctrinal position required, no application/evaluative
framing (the single biggest risk this book's medium review flagged). As in `easy`, this brief works
from Proverbs' already-established **pivotal thematic clusters**, not scenes.

## Pivotal Thematic Clusters — reused from `docs/content/proverbs.md`, no new clusters added

Same 5 clusters as `medium` and `easy`: The Beginning and Value of Wisdom (Proverbs 1, 3), Guard Your
Heart (Proverbs 4), Well-Known Wisdom Sayings (Proverbs 15-17, 27), "Train Up a Child" (Proverbs 22),
The Virtuous Woman (Proverbs 31).

## Challenge Items (13: 10 regular + 3 boss)

Matches `medium`'s own ingested shape (13 items, 3 boss — verified against
`docs/ingest/proverbs-ecclesiastes-song-of-solomon.sql`, same as `easy`).

### Regular (10)

1. **Prov 1:8-9** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 1's
   Proverbs 1 range): "My son, listen to your father's instruction, and don't forsake your mother's
   teaching; for they will be a garland to grace your head, and chains around your neck." — recall:
   "...for they will be a garland to grace your head, and ___ around your neck." → **chains**.
2. **Prov 3:7-8** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 1's
   Proverbs 3 range; see Contested Territory below): "Don't be wise in your own eyes. Fear Yahweh,
   and depart from evil. It will be health to your body, and nourishment to your bones." — recall:
   "It will be health to your body, and nourishment to your ___." → **bones**.
3. **Prov 3:15** (WEB, already-approved verse, new blank — `medium` graded "rubies"; this targets the
   final clause instead): "She is more precious than rubies. None of the things you can desire are to
   be compared to her." — recall: "None of the things you can desire are to be compared to ___." →
   **her**.
4. **Prov 4:26-27** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 2's
   Proverbs 4 range): "Make the path of your feet level. Let all of your ways be established. Don't
   turn to the right hand nor to the left. Remove your foot from evil." — recall: "Don't turn to the
   right hand nor to the ___." → **left**.
5. **Prov 15:3** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 3's
   Proverbs 15-17/27 range): "Yahweh's eyes are everywhere, keeping watch on the evil and the good." —
   recall: "Yahweh's eyes are everywhere, keeping watch on the evil and the ___." → **good**.
6. **Prov 16:9** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 3's
   range; see Contested Territory below): "A man's heart plans his course, but Yahweh directs his
   steps." — recall: "A man's heart plans his course, but Yahweh directs his ___." → **steps**.
7. **Prov 27:1** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 3's
   range): "Don't boast about tomorrow; for you don't know what a day may bring." — recall: "Don't
   boast about ___; for you don't know what a day may bring." → **tomorrow**.
8. **Prov 27:2** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 3's
   range): "Let another man praise you, and not your own mouth; a stranger, and not your own lips." —
   recall: "Let another man praise you, and not your own ___." → **mouth**.
9. **Prov 22:2** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 4's
   Proverbs 22 range, distinct from the already-used 22:1 and 22:6): "The rich and the poor have this
   in common: Yahweh is the maker of them all." — recall: "The rich and the poor have this in common:
   Yahweh is the ___ of them all." → **maker**.
10. **Prov 31:20** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 5's
    already-approved 31:10-31 range; complies with the inherited recall-of-wording-only rule): "She
    opens her arms to the poor; yes, she extends her hands to the needy." — recall: "She opens her
    arms to the poor; yes, she extends her hands to the ___." → **needy**.

### Boss (3)

11. **Prov 31:28** (WEB, new — draft-pulled and two-source verified 2026-09-02, within Cluster 5's
    range; complies with the inherited recall-of-wording-only rule): "Her children rise up and call
    her blessed. Her husband also praises her:" — recall: "Her children rise up and call her ___." →
    **blessed**.
12. **Boss sequence — new, extends `medium`'s single-proverb parallelism-ordering format to two
    proverbs for hard-tier complexity**: given the four half-lines "A gentle answer turns away wrath"
    / "but a harsh word stirs up anger" (Prov 15:1) and "Pride goes before destruction" / "and an
    arrogant spirit before a fall" (Prov 16:18), pair each first half with its correct second half and
    place the two completed proverbs in the order they occur in the book (15:1 before 16:18).
13. **Prov 3:13-15** (WEB, already-approved verse, new blank — a different precise clause than items 3
    and `medium`'s own item): "For her good profit is better than getting silver, and her return is
    better than fine gold." — recall: "For her good profit is better than getting silver, and her
    return is better than fine ___." → **gold**.

*(Ten of this brief's thirteen items — 1, 2, 4-10, and boss item 11 — introduce verses beyond what
`docs/content/proverbs.md` already quotes. Every one of them sits within a chapter range one of the 5
already-approved clusters already covers — no new cluster or theme is added, the same discipline
Genesis's and Leviticus's hard tiers applied.)*

## Contested Territory

Everything already flagged in `docs/content/proverbs.md`/`docs/reviews/proverbs-review.md` applies
unchanged: Proverbs as promise vs. general wisdom, the virtuous-woman poem as a gender-role
prescription (items 10, 11 — both comply with the inherited recall-of-wording-only rule), the
Solomon/multiple-author question, and "fear of Yahweh" (item 2 uses "Fear Yahweh" as display-only
text, not a graded token).

**New for this tier — checked against live cross-tradition sources:**

- **Proverbs 3:7-8, "It will be health to your body...fear Yahweh, and depart from evil" (item 2).**
  This is the same family of concern the medium review already identified as this book's single
  biggest risk at Proverbs 22:6: a wisdom-literature saying correlating right conduct with wellbeing,
  which popular usage can misread as an unconditional guarantee rather than a general principle.
  Commentary confirms the correlation is real in the text and is read across sources as wisdom
  literature's general pattern, not a promise of guaranteed physical health regardless of
  circumstance ([Source: Bible Hub commentary aggregation on Proverbs 3:7](https://biblehub.com/commentaries/proverbs/3-7.htm)).
  **Structural rule, applied here per the same reasoning `docs/reviews/proverbs-review.md` used for
  22:6: Proverbs 3:7-8 may only be used in recall/fill-in-blank or attribution-matching format —
  never presented as a multiple-choice "what will happen if you fear the Lord" or any other
  application-framed format.** Item 2 already complies (a bare fill-in-blank on "bones," no
  application framing in the stem).
- **Proverbs 16:9, "A man's heart plans his course, but Yahweh directs his steps" (item 6).** This
  touches the human-agency-vs-divine-sovereignty question directly — commentary confirms a live
  emphasis difference on how much weight to put on divine control of human plans, sitting closer to
  an intra-Christian Reformed/Arminian-style tension than a hard Jewish-vs-Christian split ([Source:
  GotQuestions, "What does it mean that a man's heart plans his ways, but the Lord directs his steps
  (Proverbs 16:9)?"](https://www.gotquestions.org/Lord-directs-steps.html); [Source: Bible Hub
  commentary aggregation on Proverbs 16:9](https://biblehub.com/proverbs/16-9.htm)). **Structural
  rule: no challenge built from this verse may ask whether human planning or divine direction is
  ultimately determinative, or require a player to affirm a position on free will versus divine
  sovereignty — the item tests only that the text pairs "plans his course" with "directs his steps,"
  the same "stay narrative, don't grade the interpretation" pattern already applied to Genesis 3:15
  and Psalm 1:5's "judgment."** Item 6 already complies (a bare fill-in-blank on "steps," no framing
  that asks the player to resolve the tension).
- **No other new contested ground** — items 1, 4, 5, 7, 8, 9, 10 and boss item 11 (Prov 1:8-9,
  4:26-27, 15:3, 27:1, 27:2, 22:2, 31:20, 31:28) are plain parental-instruction, descriptive, or
  charitable-conduct sayings with no live cross-tradition disagreement found; item 3 and boss item 13
  (Prov 3:13-15's remaining clauses) were already fully catalogued as uncontested in the medium
  review's verse-text table and carry no new interpretive content at a different blank position.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) —
      `approved-with-changes`, two structural rules applied (Prov 3:7-8 item 2; Prov 16:9 item 6) —
      see `docs/reviews/proverbs-hard-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off; both required before ingestion — items 1, 2, 4-10 and boss
      item 11 are this brief's newly-fetched verses and should be prioritized in that pass)
- [x] Every challenge item traceable to one of the 5 pivotal clusters above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      recall-only bounding
- [x] Proverbs 22:6 (not used in this tier) and the Proverbs 31:10-31 cluster (items 10, 11) confirmed
      compliant with the inherited structural format rules
- [x] Proverbs 3:7-8 and Proverbs 16:9 confirmed recall-only per the structural rules above
