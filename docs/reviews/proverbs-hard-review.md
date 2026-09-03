# Theological Review — Proverbs, Hard Tier (World 20)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored
`docs/content/proverbs-hard.md`, following the exact procedure in
`.claude/agents/theological-reviewer.md`.
Brief reviewed: `docs/content/proverbs-hard.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`
Prior review checked against: `docs/reviews/proverbs-review.md` (medium tier), `docs/reviews/proverbs-easy-review.md`

---

## 1. Verse-Text Verification

Ten new verses are introduced by this brief (items 1, 2, 4-10, and boss item 11); items 3, 12, and 13
reuse already-approved verse text at a new blank position.

| Item(s) | Verse(s) | Sources checked | Result |
|---|---|---|---|
| **1** | **Prov 1:8-9** | [ebible.org/web/PRO01.htm](https://ebible.org/web/PRO01.htm), [biblegateway.com](https://www.biblegateway.com/passage/?search=Proverbs+1%3A8-9%2C+Proverbs+3%3A7-8%2C+Proverbs+4%3A26-27%2C+Proverbs+15%3A3%2C+Proverbs+22%3A2&version=WEB) | **Match, two independent sources, fetched 2026-09-02** |
| **2** | **Prov 3:7-8** | same two sources as above | **Match, two independent sources, fetched 2026-09-02** |
| 3 | Prov 3:15 | `docs/content/proverbs.md` (medium, single-source, flagged for QA §3) | Match |
| **4** | **Prov 4:26-27** | same two sources as item 1 | **Match, two independent sources, fetched 2026-09-02** |
| **5** | **Prov 15:3** | same two sources as item 1 | **Match, two independent sources, fetched 2026-09-02** |
| **6** | **Prov 16:9** | [biblegateway.com](https://www.biblegateway.com/passage/?search=Proverbs+16%3A9%2C+Proverbs+27%3A2&version=WEB), [ebible.org/web/PRO16.htm](https://ebible.org/web/PRO16.htm) | **Match, two independent sources, fetched 2026-09-02** |
| **7** | **Prov 27:1** | [ebible.org/web/PRO27.htm](https://ebible.org/web/PRO27.htm), [biblegateway.com](https://www.biblegateway.com/passage/?search=Proverbs+27%3A1%2C+Proverbs+31%3A20%2C+Proverbs+31%3A28&version=WEB) | **Match, two independent sources, fetched 2026-09-02 — see Finding A below** |
| **8** | **Prov 27:2** | [biblegateway.com](https://www.biblegateway.com/passage/?search=Proverbs+16%3A9%2C+Proverbs+27%3A2&version=WEB), [ebible.org/web/PRO27.htm](https://ebible.org/web/PRO27.htm) | **Match, two independent sources, fetched 2026-09-02** |
| **9** | **Prov 22:2** | same two sources as item 1 | **Match, two independent sources, fetched 2026-09-02** |
| **10** | **Prov 31:20** | [ebible.org/web/PRO31.htm](https://ebible.org/web/PRO31.htm), [biblegateway.com](https://www.biblegateway.com/passage/?search=Proverbs+27%3A1%2C+Proverbs+31%3A20%2C+Proverbs+31%3A28&version=WEB) | **Match, two independent sources, fetched 2026-09-02** |
| **11** | **Prov 31:28** | same two sources as item 10 | **Match, two independent sources, fetched 2026-09-02 — see Finding B below** |
| 12 | Prov 15:1; 16:18 (sequence) | `docs/content/proverbs.md` (medium) | Match |
| 13 | Prov 3:13-15 | `docs/content/proverbs.md` (medium, single-source, flagged for QA §3) | Match |

**Finding A (caught during drafting, corrected before this review):** the brief's first draft of item
7 (Prov 27:1) rendered the verse's closing clause as "for you don't know what a day may bring forth,"
matching the more familiar KJV-tradition phrasing from memory. Both live WEB sources agree the actual
WEB text ends "...what a day may bring" — no "forth." Corrected in `docs/content/proverbs-hard.md`
before this review; the version in that brief is the corrected text.

**Finding B (caught during drafting, corrected before this review):** the brief's first draft of boss
item 11 (Prov 31:28) rendered the verse's second clause as "Her husband also, and he praises her:"
Both live WEB sources agree the actual WEB text reads "Her husband also praises her:" — no "and he."
Corrected in `docs/content/proverbs-hard.md` before this review; the version in that brief is the
corrected text.

Both findings are the same class of issue the Genesis and Leviticus hard-tier reviews each caught at
least once (an unlabelled trim or a memory-drawn phrasing drifting from what WEB actually prints) —
worth recording so a future authoring pass double-checks precise wording against a live source rather
than a half-remembered "classic" phrasing, especially for less-famous verses where the classic and WEB
phrasings genuinely diverge. Not a substitute for the dedicated character-for-character QA pass in
`QA_REQUIREMENTS.md` §3, which must still run before ingestion, with priority on the ten newly-fetched
verses above.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — both findings above were caught and fixed precisely
  because this check was run against live sources rather than assumed from memory. **Pass, post-fix.**
- All challenge-ready content is verbatim verse text — no editorial doctrinal commentary added.
  **Pass.**
- Recall-heavy format honored throughout — 12 of 13 items are fill-in-blank recall, one is a
  sequence, and none are multiple-choice, matching the tier's design intent. **Pass.**
- **No challenge item is framed in "what should you do" / application style — checked every item
  individually, the same specific instruction the medium review held this book to, extended here to
  all ten new verses.** **Pass.**
- Items 10 and 11 (Prov 31:20, 31:28) individually checked against the inherited Proverbs 31:10-31
  recall-of-wording-only rule — both comply (see §3). **Pass.**

## 3. Contested-Territory Cross-Check

### Proverbs 3:7-8, "health to your body...fear Yahweh, and depart from evil" (item 2) — newly flagged
Confirmed this sits in the same family of concern `docs/reviews/proverbs-review.md` identified as this
book's single biggest risk (the promise-vs-general-wisdom question at Proverbs 22:6): a
wisdom-literature saying correlating right conduct with bodily wellbeing. Commentary aggregation
confirms the correlation is read as wisdom literature's general pattern (embracing wisdom and turning
from evil "leads to physical, emotional, and spiritual well-being" as a general truth), not a
guarantee of health regardless of circumstance. [Source: Bible Hub commentary aggregation on Proverbs
3:7](https://biblehub.com/commentaries/proverbs/3-7.htm).

**The brief's proposed structural rule (recall/attribution-only, matching the 22:6 rule exactly) is
confirmed sufficient and is applied in the brief as written.** Item 2 is a bare fill-in-blank on
"bones," with no application framing in the stem ("what will happen if you fear the Lord" is exactly
the kind of question this rule forecloses). **Approved with this rule applied**, extending the medium
review's own 22:6 precedent to a second verse in the same risk family, the same way that review's
Proverbs 31:10-31 rule was written to cover the whole cluster rather than only the three verses medium
happened to select from it.

### Proverbs 16:9, "A man's heart plans his course, but Yahweh directs his steps" (item 6) — newly flagged
Confirmed a live emphasis difference on human agency versus divine sovereignty over human plans —
commentary explicitly frames this as "the balance between human responsibility and divine
sovereignty" and states "a person can plan out every aspect of their life; yet God is the one who
ultimately decides what will happen." [Source: GotQuestions, "What does it mean that a man's heart
plans his ways, but the Lord directs his steps (Proverbs 16:9)?"](https://www.gotquestions.org/Lord-directs-steps.html).
A classic-commentary aggregation page shows the same verse read by different commentators with
different emphases on how much the verse implies about restraining human freedom versus simply noting
God's providential oversight. [Source: Bible Hub commentary page, Proverbs 16:9](https://biblehub.com/proverbs/16-9.htm).
This sits closer to an intra-Christian Reformed/Arminian-style tension than a hard Jewish-vs-Christian
split, but is genuine and unresolved among mainstream sources, the same category of "don't require the
player to resolve this" question the style guide's historicity/interpretation-debate rule (§3) is
built for.

**Structural rule, confirmed and applied: no challenge built from this verse may ask whether human
planning or divine direction is ultimately determinative, or require a player to affirm a position on
free will versus divine sovereignty — the item tests only that the text pairs "plans his course" with
"directs his steps."** Item 6 already complies (a bare fill-in-blank on "steps," no framing asking the
player to resolve the tension). **Approved with this rule applied.**

### Proverbs 31:20 and 31:28 (item 10, boss item 11) — inherited structural rule
`docs/reviews/proverbs-review.md`'s rule (every item from the 31:10-31 cluster restricted to recall of
the poem's own wording, never evaluative/prescriptive framing) is honored: both items are bare
fill-in-blanks ("extends her hands to the ___"; "call her ___") describing what the poem says the
woman does, with no framing asking whether this is a model women should follow. **Complies with the
inherited rule. No change needed.**

### "Fear of Yahweh" (item 2's display text, "Fear Yahweh, and depart from evil")
The phrase appears in item 2's displayed verse text but is not itself the graded token (the blank
falls on "bones," in the following clause). Per the medium review's existing bounding for this phrase
(test only that it appears, never what it means), no further action is needed since the phrase isn't
graded content here at all. **Not applicable as a separate concern.**

### All other new verses (items 1, 4, 5, 7, 8, 9, boss item 11 — Prov 1:8-9, 4:26-27, 15:3, 27:1,
27:2, 22:2, 31:28)
All are plain parental-instruction imagery (1:8-9), practical/ethical instruction (4:26-27, 27:1,
27:2), descriptive statements about God's omniscience or common creaturely status (15:3, 22:2), or
description of the poem's own praise for the woman (31:28) — no live cross-tradition disagreement
found on any of these specific verses. **No contested ground identified.**

### The Solomon/multiple-author question, the virtuous-woman poem generally
Already fully catalogued in `docs/reviews/proverbs-review.md` and re-confirmed not reopened by any new
item in this tier beyond what's addressed above for items 10-11.

## 4. Additional Items Found

Two, both already flagged by the brief itself and both structural-rule additions rather than content
removal (matching the medium review's own pattern of adding the 22:6 and 31:10-31 rules): Proverbs
3:7-8 (item 2) and Proverbs 16:9 (item 6), both discussed in §3 above. No further unflagged item was
found in this pass.

## 5. Verdict

**`approved-with-changes`** — two structural rules confirmed and applied: Proverbs 3:7-8 (item 2)
restricted to recall/attribution format, matching the existing 22:6 rule; Proverbs 16:9 (item 6)
restricted to recall-only, no challenge may ask the player to resolve the human-agency-vs-divine-
sovereignty question. Both items as drafted already comply; the rules are recorded so a future
authoring pass cannot silently convert either into an application- or resolution-framed item. Two
verbatim-text findings (Prov 27:1, Prov 31:28 — see §1, Findings A and B) were also caught and
corrected before this review.

**Not escalated.** Every newly-introduced verse was checked against real, cross-tradition or classic-
commentary sources; the two genuinely contested ones (3:7-8, 16:9) both have bounding that fully
neutralizes the concern using patterns this project has already established elsewhere (the 22:6 rule;
the "stay narrative, don't grade the interpretation" pattern from Genesis 3:15 and Psalm 1:5).

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, with priority on the ten newly-fetched verses (items 1, 2, 4-10, boss item
11) — especially items 7 and 11, where this review's own drafting process already caught and fixed one
wording error each, underscoring why that separate QA pass matters even after careful drafting. Also
outstanding: this tier's entry in `docs/CONTENT_REVIEW_LOG.md`, consolidated by the orchestrating
session, not written here.
