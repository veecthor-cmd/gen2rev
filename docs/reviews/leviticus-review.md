# Theological Review — Leviticus (World 3)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored
`docs/content/leviticus.md`, following the exact procedure in
`.claude/agents/theological-reviewer.md`.
Brief reviewed: `docs/content/leviticus.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`

---

## 1. Verse-Text Verification

| Verse(s) | Sources checked | Result |
|---|---|---|
| Lev 10:1-3 | [ebible.org (WEB)](https://ebible.org/web/LEV10.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Leviticus+10&version=WEB) | **Match, two independent sources** |
| Lev 16:29-34 | [ebible.org (WEB)](https://ebible.org/web/LEV16.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Leviticus+16&version=WEB) | **Match, two independent sources** |
| Lev 17:11 (checked in context of 17:10-12) | [ebible.org (WEB)](https://ebible.org/web/LEV17.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Leviticus+17&version=WEB) | **Match, two independent sources** |
| Lev 19:18 (checked in context of 19:17-18) | [ebible.org (WEB)](https://ebible.org/web/LEV19.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Leviticus+19&version=WEB) | **Match, two independent sources** |
| Lev 1:3-4 | [ebible.org (WEB)](https://ebible.org/web/LEV01.htm) | Match, single source only — **flag for QA §3** |
| Lev 19:2, 19:9-11, 19:15, 19:33-34 | [ebible.org (WEB)](https://ebible.org/web/LEV19.htm) | Match, single source only — **flag for QA §3** |
| Lev 25:8-10, 25:17 | [ebible.org (WEB)](https://ebible.org/web/LEV25.htm) | Match, single source only — **flag for QA §3** |

No mismatches found anywhere in this book (unlike Exodus, where a one-word discrepancy turned up
in a verse not used in graded content — see `docs/reviews/exodus-review.md` §1). As with prior
reviews, both fetches go through an automated extraction step, so confidence is high but not a
substitute for the dedicated character-for-character QA pass in `QA_REQUIREMENTS.md` §3 — that pass
should prioritize the single-source-only rows above.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line is attributed to a specific WEB
  reference, and all trims are marked "(trimmed)" with ellipses inside the quoted text. **Pass.**
- All challenge-ready content is narrative fact, direct verse text, or the text's own stated
  rationale (e.g. Lev 17:11's own wording on why blood is used) — no editorial doctrinal commentary
  added by the brief itself. **Pass.**
- Difficulty-ladder examples stay within narrative-fact/textual-detail territory even at the
  "application" level (Level 5 asks what month/day the Day of Atonement falls on per the text, not
  its theological significance). **Pass.**
- The brief's own framing (adapting "Pivotal Scenes" to "Pivotal Passages" and explicitly noting the
  shape difference from Genesis/Exodus in the Setting/Era section) satisfies this assignment's
  instruction to flag the structural adaptation explicitly rather than let it look like an
  oversight. **Pass.**
- The brief's explicit exclusion of Leviticus 18/20 (sexual-purity legislation) and Leviticus 11
  (dietary law) from pivotal-passage selection, with reasoning stated in Contested Territory, is a
  sound scope decision for a child-directed MVP and is consistent with `CLAUDE.md`'s "child-directed
  flows" guardrail. **Pass — no change needed, decision itself confirmed reasonable below.**

## 3. Contested-Territory Cross-Check

### The theological meaning of sacrifice and atonement (Leviticus 1, 17)
Confirmed genuine, deep cross-tradition divergence:
- **Jewish tradition:** sacrifice (korban, "that which is brought near") functions to repair the
  covenant relationship, not to appease divine wrath; its atoning scope is deliberately limited
  (mainly unintentional sin, and only effective alongside genuine repentance and restitution) —
  and in the post-Temple era, rabbinic tradition holds that prayer, charity (tzedakah), and
  repentance substitute for the sacrificial system entirely. [Source: My Jewish Learning overview](https://www.myjewishlearning.com/article/sacrifices-are-alive-and-well/), [Aish on korbanot](https://aish.com/chumash-themes-15-understanding-korbanot/).
- **Evangelical Christian tradition:** reads Levitical sacrifice, especially following the Epistle
  to the Hebrews, as typological foreshadowing of Christ — the repeated, ultimately insufficient
  nature of animal sacrifice is read as demonstrating the need for Christ's "once for all"
  sacrifice. [Source: GotQuestions on Jesus vs. Levitical sacrifices](https://www.gotquestions.org/Jesus-better-Levitical-sacrifices.html), [typology overview](https://www.addeigloriam.org/hebrew/leviticus-typology.htm).

**The brief's bounding holds.** The challenge-ready verses (Lev 1:3-4, 17:11) state only what the
text itself instructs and the text's own stated rationale ("the life of the flesh is in the blood
... it is the blood that makes atonement" — a direct quotation of the verse's own claim, not this
brief's interpretive gloss). No challenge item asserts that sacrifice points to Christ, nor that it
functions purely as covenant-repair independent of any typological reading — both would be taking a
side. This is the same "stay narrative, don't grade the interpretation" pattern that held for
Genesis 22. No change needed to challenge content.

### The Day of Atonement's significance (Leviticus 16)
Confirmed Yom Kippur remains a currently-practiced, central holy day in living Judaism (the
holiest day of the Jewish year, per multiple sources), not merely an ancient-text topic. [Source: JDC overview](https://www.jdc.org/learn/holiday/what-is-yom-kippur-the-jewish-day-of-atonement/), [Chabad.org](https://www.chabad.org/library/article_cdo/aid/177886/jewish/What-Is-Yom-Kippur.htm).
Confirmed Christian tradition (via Hebrews 9-10) reads the ritual typologically, as demonstrating
its own insufficiency and pointing to Christ's high-priestly, once-for-all sacrifice. [Source: overview of Hebrews 9's typological argument](https://rsc.byu.edu/thou-art-christ-son-living-god/his-own-blood-he-entered-once-holy-place-jesus-hebrews-9).
**The brief's bounding holds** — challenge items (Lev 16:29-30, 16:34) test only the text's own
stated instructions (timing, who performs it, that it cleanses from sin per the text's own wording),
never an assessment of whether the ritual is superseded, fulfilled, or still efficacious. No change
needed. Given that this is a currently-practiced holy day for a living tradition (not just a
historical dispute), recommend general care in tone if this scene gets any accompanying flavor text
outside the challenge items themselves (outside this brief's scope, but worth flagging forward).

### Nadab and Abihu's deaths (Leviticus 10)
No cross-tradition doctrinal dispute found over the narrative facts themselves; this is primarily a
sensitivity question (per this assignment's instructions), addressed under §4/§5 below rather than
a cross-tradition theological one.

### Historicity of the Jubilee (Leviticus 25)
Confirmed genuine scholarly uncertainty: no historical record in the Old Testament's narrative
books shows a Jubilee year ever being observed, though this is an argument from silence, not
positive evidence against it; the closest evidence is that Israel is depicted as struggling even
with the simpler sabbatical-year cycle (2 Chronicles 36:21 connects exile to unobserved sabbath
years). [Source: survey of the "was it ever observed" question](https://www.pastorjasonelder.com/bible-facts-all/did-israel-ever-practice-the-jubilee). This is structurally the same kind of
historicity debate already accepted as out-of-bounds-for-grading in the Genesis review (creation
days, flood scope) — **the brief's bounding holds**, since challenge items test only what the text
legislates, not whether or how often it was practiced. No change needed.

### Deliberately excluded material (Leviticus 11, 18, 20)
Confirmed the dietary-law exclusion (Lev 11) sits on a genuine, real cross-tradition line: ongoing
kosher observance remains normative in traditional Judaism, while mainstream Christian tradition
(citing Mark 7 and Acts 10) reads these laws as not binding on Gentile believers — though even
within Christian scholarship there's live dispute about whether Mark 7:19 actually abrogates
kashrut or addresses a narrower question of ritual hand-washing. [Source: overview of the Mark 7 / Acts 10 debate](https://evidenceforchristianity.org/isnt-it-true-that-christians-must-obey-the-kosher-food-laws-this-is-what-acts-10-and-15-teaches/).
This confirms the brief's own reasoning for leaving Lev 11 out (rather than trying to bound it)
was the right call — no change needed, decision affirmed.

## 4. Additional Item Found (not originally flagged with this specificity in the brief)

**Leviticus 10's format.** The brief already flagged Nadab and Abihu's deaths under Contested
Territory as a sensitivity item, consistent with this assignment's instructions, but did not
originally include a structural (format-level) safeguard the way Genesis's review added for Gen
3:15 and Gen 1:27. Recommend the same technique here: restrict Lev 10:1-3 to
recall/fill-in-blank or strict sequence format only (never multiple-choice or open-ended), and
require 10:1-2 (the event) and 10:3 (the text's own stated reason) always be presented together,
never 10:1-2 in isolation. This prevents a future challenge-authoring pass from accidentally
presenting the deaths as a standalone shock-value item without the text's own framing attached.

## 5. Verdict

**`approved-with-changes`** — one concrete, minor change recommended and applied directly to
`docs/content/leviticus.md` as part of this review: a structural format/pairing restriction on
Leviticus 10:1-3 (see the brief's updated Contested Territory section).

**Not escalated.** Every contested item — sacrifice/atonement theology, the Day of Atonement, the
Jubilee's historicity, and the deliberate exclusion of Lev 11/18/20 — has a narrative-only bounding
that holds up against real, cited cross-tradition sources (Jewish and Christian). No item was found
where unresolved disagreement bears on a graded item in a way the brief's bounding doesn't already
handle.

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, especially the single-source-only rows in §1 above. That is a distinct
check from this theological/neutrality review and still must run before ingestion, per
`BACKEND_REQUIREMENTS.md` §4.
