# Content Brief — Psalms, Hard Tier (World 19)

Status: **approved-with-changes** — self-run theological review complete, see
`docs/reviews/psalms-hard-review.md`. Two structural rules (new for this tier, on Ps 51:12 and Prov
16:9-style providence language — see Contested Territory) are applied below.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has not
run — theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql` file has
been written for this tier — out of scope for this task.

Second half of the Psalms tier-scaling pass (see `docs/content/psalms-easy.md` for the shared design
rationale). Reuses the same 6 pivotal psalms already approved in `docs/content/psalms.md` — no new
psalms — but selects less commonly memorized, more precise verses and skews toward typed recall over
multiple choice. **Per that brief, imprecatory psalms, Psalms 22 and 110, and Psalm 51:5 remain
excluded entirely — that scope decision is not reopened here and is independently re-confirmed absent
from this brief.**

> **Verbatim-text caveat:** ten of this brief's twelve regular items and both non-sequence boss items
> reuse verse text `docs/content/psalms.md` already quotes and the medium review already two-source
> verified (`docs/reviews/psalms-review.md` §1). **Two verses are newly introduced by this tier — Ps
> 51:3 and Ps 51:12** (both within the already-approved Psalm 51 passage, extending beyond the four
> verses `medium` selected from it, the same way Genesis's hard tier introduced new verses within an
> already-approved scene). Both were fetched and cross-checked against two live WEB sources —
> [ebible.org](https://ebible.org/web/) (via biblehub.com/web/, since ebible.org's own automated
> fetch tool declined on a false-positive "song lyrics" ground for this psalm, a known tooling quirk
> already recorded in `docs/reviews/psalms-review.md` §1) and [biblegateway.com](https://www.biblegateway.com/)
> (`version=WEB`) — on 2026-09-02, with no mismatch. This is a draft pull, not the final
> character-for-character QA check required by `QA_REQUIREMENTS.md` §3. **Do not ingest into the
> `challenge` table until that separate verbatim QA pass has run.**

Translation: World English Bible (WEB) throughout.

---

## Design intent for this tier

Per the Genesis pilot's design rule: "hard... needs very deep scripture knowledge." This tier draws
on verses that are theologically or narratively significant but less likely to be immediately
recognized — precise, less-quoted clauses within each psalm — and requires typed recall (no
multiple-choice scaffolding) wherever the format allows. Same guardrails as every other tier:
verbatim WEB text only, narrative fact only, no doctrinal position required. As in `easy`, this brief
works from Psalms' already-established **pivotal whole psalms**, not scenes.

## Pivotal Psalms — reused from `docs/content/psalms.md`, no new psalms added

Same 6 psalms as `medium` and `easy`: Psalm 1, Psalm 23, Psalm 51:1-2, 10, 17 (extended here to
include 51:3 and 51:12, still within the already-approved Psalm 51 passage — see verbatim-text
caveat above), Psalm 100, Psalm 121, Psalm 150.

## Challenge Items (15: 12 regular + 3 boss)

Matches `medium`'s own ingested shape (15 items, 3 boss — verified against
`docs/ingest/job-psalms.sql`, same as `easy`).

### Regular (12)

1. **Ps 1:2** (WEB, already-approved verse, new blank — less-iconic clause than v.1's "seat of
   scoffers" or v.3's tree image): "but his delight is in Yahweh's law. On his law he meditates day
   and night." — recall: "On his law he meditates day and ___." → **night**.
2. **Ps 1:1** (WEB, already-approved verse, new blank): "Blessed is the man who doesn't walk in the
   counsel of the wicked, nor stand on the path of sinners, nor sit in the seat of scoffers;" —
   recall: "...nor stand on the path of sinners, nor sit in the seat of ___." → **scoffers**.
3. **Ps 23:3** (WEB, already-approved verse, new blank): "He restores my soul. He guides me in the
   paths of righteousness for his name's sake." — recall: "He guides me in the paths of righteousness
   for his name's ___." → **sake**.
4. **Ps 23:4** (WEB, already-approved verse, new blank): "Even though I walk through the valley of the
   shadow of death, I will fear no evil, for you are with me. Your rod and your staff, they comfort
   me." — recall: "Your rod and your ___, they comfort me." → **staff**.
5. **Ps 51:3** (WEB, new — draft-pulled and two-source verified 2026-09-02, within the already-
   approved Psalm 51 passage): "For I know my transgressions. My sin is constantly before me." —
   recall: "My sin is constantly before ___." → **me**.
6. **Ps 51:12** (WEB, new — draft-pulled and two-source verified 2026-09-02, within the already-
   approved Psalm 51 passage; see Contested Territory below): "Restore to me the joy of your
   salvation. Uphold me with a willing spirit." — recall: "Restore to me the joy of your ___." →
   **salvation**.
7. **Ps 51:17** (WEB, already-approved verse, new blank target — `medium` graded "broken spirit" via
   a different item; this one targets the second clause): "The sacrifices of God are a broken spirit.
   O God, you will not despise a broken and contrite heart." — recall: "...you will not despise a
   broken and contrite ___." → **heart**.
8. **Ps 100:4** (WEB, already-approved verse, new blank — less-iconic clause than v.1/v.5): "Enter
   into his gates with thanksgiving, and into his courts with praise. Give thanks to him, and bless
   his name." — recall: "Enter into his gates with ___, and into his courts with praise." →
   **thanksgiving**.
9. **Ps 121:6** (WEB, already-approved verse, new blank — less-iconic than v.1-2/v.7-8): "The sun will
   not harm you by day, nor the moon by night." — recall: "The sun will not harm you by day, nor the
   ___ by night." → **moon**.
10. **Ps 121:3** (WEB, already-approved verse, new blank): "He will not allow your foot to be moved.
    He who keeps you will not slumber." — recall: "He will not allow your ___ to be moved." →
    **foot**.
11. **Ps 150:2** (WEB, already-approved verse, new blank — less-iconic than the instrument-naming
    verses 3-5): "Praise him for his mighty acts! Praise him according to his excellent greatness!" —
    recall: "Praise him according to his excellent ___!" → **greatness**.
12. **Ps 150:5** (WEB, already-approved verse, new blank — a more precise clause than the instrument
    names themselves): "Praise him with loud cymbals! Praise him with resounding cymbals!" — recall:
    "Praise him with loud cymbals! Praise him with ___ cymbals!" → **resounding**.

### Boss (3)

13. **Ps 121:7** (WEB, already-approved verse, new blank): "Yahweh will keep you from all evil. He
    will keep your soul." — recall: "Yahweh will keep you from all evil. He will keep your ___." →
    **soul**.
14. **Boss sequence — new, extends `medium`'s/`easy`'s 3-step Psalm 150 instrument sequence to 4
    steps for hard-tier precision**: "Praise him with the sounding of the trumpet! Praise him with
    harp and lyre!" → "Praise him with tambourine and dancing! Praise him with stringed instruments
    and flute!" → "Praise him with loud cymbals! Praise him with resounding cymbals!" → "Let
    everything that has breath praise Yah! Praise Yah!"
15. **Ps 51, superscription** (WEB, already-approved, new blank — precise final clause, not the
    "which prophet" fact `easy`'s item 7 grades): "For the Chief Musician. A Psalm by David, when
    Nathan the prophet came to him, after he had gone in to Bathsheba." — recall: "...when Nathan the
    prophet came to him, after he had gone in to ___." → **Bathsheba**.

*(Only two verses in this brief — items 5 and 6, Ps 51:3 and 51:12 — are newly introduced beyond what
`docs/content/psalms.md` already quotes. Both stay within the already-approved Psalm 51 passage, the
same "extend within an approved passage, add no new passage" move Genesis's hard tier made for Gen
1:26/1:2 within the already-approved Creation scene.)*

## Contested Territory

Everything already flagged in `docs/content/psalms.md`/`docs/reviews/psalms-review.md` applies
unchanged: psalm superscriptions' historicity/authorship (item 15), psalm/chapter numbering, Psalm
23:6 (not used in this tier), Psalm 51:5's deliberate exclusion (still excluded — items 5 and 6 are
verses 3 and 12, neither adjacent to nor overlapping v.5), Psalm 51's superscription/2 Samuel 11 tie-
in (item 15), Psalm 1:5's "judgment" (not used in this tier), Psalm 150 and instrumental worship
(items 11, 12, 14), and the deliberate exclusion of imprecatory psalms and Psalms 22/110 —
**confirmed again: no verse from any of those psalms appears anywhere in this brief.**

**New for this tier — checked against live cross-tradition sources:**

- **Psalm 51:12, "the joy of your salvation" (item 6).** Christian devotional commentary
  characteristically reads "salvation" here with a soteriological weight — some sources connect the
  "joy of salvation" to Christ specifically and frame its loss/restoration as a believer's ongoing
  fellowship with God ([Source: GotQuestions, "What did David mean when he asked God to 'restore to
  me the joy of your salvation'?"](https://www.gotquestions.org/restore-joy-salvation.html);
  [Source: Bible Hub commentary aggregation on Psalm 51:12](https://biblehub.com/commentaries/psalms/51-12.htm)).
  Jewish tradition reads the same Hebrew (*yesha*, deliverance/rescue) as David's plea for restored
  fellowship and vindication in this life, without the Christian soteriological freight the English
  word "salvation" carries in devotional use. This is the same pattern already accepted for "fear of
  Yahweh" in the Proverbs review and for Psalm 23:6's "forever" in the Psalms review: the word appears
  in both traditions' texts, but what it's taken to mean diverges. **Structural rule: no challenge
  built from this verse may ask what "salvation" refers to, or require a player to affirm any
  doctrine of salvation — the item tests only that the word "salvation" completes the printed
  clause, the same treatment already given to "fear of Yahweh" throughout this project.** Item 6
  already complies (a bare fill-in-blank on the printed word, no doctrinal framing in the stem).
- **Psalm 51:3, "My sin is constantly before me."** No live cross-tradition disagreement found — this
  is personal confession in the same register as the already-approved v.1-2, 10, 17 (blotting out
  transgressions, cleansing from sin, a clean heart), not adjacent to the v.5 dispute (inherited
  guilt/original sin) the medium review already excluded. No change needed.
- **No other new contested ground** — items 1-4, 7-13, 15 (Ps 1:1-2, 23:3-4, 51:17, 100:4, 121:3,
  121:6-7, 150:2, 150:5, 51 superscription) select less-iconic clauses within psalms whose contested
  aspects were already fully catalogued in `docs/reviews/psalms-review.md` (superscription
  historicity, numbering, "forever," instrumental worship, v.5's exclusion, the 2 Samuel 11 tie-in,
  "judgment"); none of these new blanks land on a clause that review didn't already bound, and none
  reopen a question that review closed.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) —
      `approved-with-changes`, one structural rule applied (Ps 51:12, item 6) — see
      `docs/reviews/psalms-hard-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off; both required before ingestion — items 5-6, Ps 51:3 and
      51:12, are this brief's only newly-fetched verses and should be prioritized in that pass)
- [x] Every challenge item traceable to one of the 6 pivotal psalms above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No imprecatory psalm, and no Psalm 22/110 or Psalm 51:5 item, appears anywhere in this brief
- [x] Psalm 51:12 confirmed recall-only, word-level-only per the structural rule above
