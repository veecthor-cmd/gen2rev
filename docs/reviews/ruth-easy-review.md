# Theological Review — Ruth, Easy Tier (World 8)

Reviewer: `theological-reviewer` agent, run 2026-08-19.
Brief reviewed: `docs/content/ruth-easy.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` (§2, History group,
world 8), `docs/content/ruth.md` (approved medium tier, `approved-with-changes`) and
`docs/reviews/ruth-review.md` (source of the Ruth 4:9-10 recall-only structural rule).
Pilot precedent applied: `docs/reviews/genesis-easy-review.md` (unanchored-MC-stem defect class) and
`docs/reviews/genesis-hard-review.md` (spliced-quotation defect class).
Medium tier's actual ingested items cross-checked against `docs/ingest/joshua-judges-ruth.sql`.

**Verdict: `approved-with-changes`.** Every verse text the brief asserts is verbatim-correct against
live WEB sources, and no graded item requires a denominational position. Four required fixes and
five recommendations in §6. Both of the drafter's claims were tested independently and **both hold**,
but one genuinely contested item the brief did *not* flag was found (Ruth 3:7, "uncovered his feet")
— it is not touched by any graded item, so it needs a forward-looking rule, not a content removal.
Not escalated.

---

## 1. Verse-Text Verification

Every quotation in the brief was checked character-by-character against live World English Bible
text, **not against `docs/content/ruth.md`**, so that a transcription error inherited from the medium
brief would still surface here.

**Source-availability note, stated plainly:** the intended second source (BibleGateway `version=WEB`)
returned an account spend-limit error on this run, not a content error. Where a second source was
needed I substituted Bible Hub's WEB text. Rows below marked "single source" are ebible.org only and
must be prioritised in the `QA_REQUIREMENTS.md` §3 pass.

| Item | Verse | Source(s) checked | Result |
|---|---|---|---|
| 1 | Ruth 1:16 | [ebible.org WEB, Ruth 1](https://ebible.org/web/RUT01.htm) | **Match.** Full WEB verse is `Ruth said, "Don't urge me to leave you…"`; the brief drops the `Ruth said,` attribution without a leading ellipsis — see §6.5 |
| 2 | Ruth 1:8-9 | [ebible.org WEB, Ruth 1](https://ebible.org/web/RUT01.htm) | **Match.** Ellipsis correctly elides 1:8's `May Yahweh deal kindly with you…` and the 1:8/1:9 boundary. Single source |
| 3 | Ruth 2:2-3 | [ebible.org WEB, Ruth 2](https://ebible.org/web/RUT02.htm) | **Match.** Ellipsis correctly elides 2:3's opening `She went, and came and gleaned in the field after the reapers; and`. Single source |
| 4 | Ruth 2:11-12 | [ebible.org WEB, Ruth 2](https://ebible.org/web/RUT02.htm) | **Match.** Verse 11 opens `Boaz answered her, "I have been told…"` — attribution dropped without leading ellipsis (§6.5). Ellipsis correctly elides `and how you have left your father, your mother, and the land of your birth…`. Single source |
| 5 | Ruth 3:9 | [ebible.org WEB, Ruth 3](https://ebible.org/web/RUT03.htm), [biblehub.com WEB, Ruth 3](https://biblehub.com/web/ruth/3.htm) | **Quoted portion matches, but the quote is TRIMMED and not labelled as such.** WEB 3:9 begins `He said, "Who are you?"` before `She answered,` — see §6.3. Corroborated as the verse's true opening by [Sefaria, Ruth 3:9 (Revised JPS)](https://www.sefaria.org/api/texts/Ruth.3.9?context=0) (`"Who are you?" he asked.`) |
| 6 | Ruth 4:21-22 | [ebible.org WEB, Ruth 4](https://ebible.org/web/RUT04.htm) | **Match, exact.** 4:21 = `and Salmon became the father of Boaz, and Boaz became the father of Obed,`; 4:22 = `and Obed became the father of Jesse, and Jesse became the father of David.` The brief's string is a correct, in-order concatenation of two adjacent verses under a correct `4:21-22` range citation — **not** a Gen 9:13-style splice. Leading ellipsis correctly signals the cut from 4:20. Single source |
| 7 | Ruth 4:9-10 | [ebible.org WEB, Ruth 4](https://ebible.org/web/RUT04.htm) | **Match.** 4:9 and 4:10 verbatim, ellipsis correctly elides `to raise up the name of the dead on his inheritance…`. Single source |
| 8 | Ruth 4:17 | [ebible.org WEB, Ruth 4](https://ebible.org/web/RUT04.htm) | **Match, exact, full verse** — including WEB's unusual `'A son is born to Naomi'.` punctuation |
| 9 | Ruth 3:1-2 | [ebible.org WEB, Ruth 3](https://ebible.org/web/RUT03.htm), [biblehub.com WEB, Ruth 3](https://biblehub.com/web/ruth/3.htm) | **Displayed quotation matches, two independent sources.** 3:1 runs into 3:2 as a single continuous speech in WEB, so the `3:1-2` range citation is legitimate. **The recall template, however, alters the verse — see §6.1** |

**No character-level mismatch was found in any verse text the brief displays.** The drafter's claim
that every quotation is copied verbatim from `docs/content/ruth.md` is accurate, and that text in
turn matches live WEB.

**One correction to the brief's framing of its own risk.** The brief states this tier carries "zero
incremental review risk beyond format compliance." That is slightly too strong. Items 2, 4, 6 and 9
draw on verses that `docs/content/ruth.md` listed as challenge-ready but that were **never ingested**
— `docs/ingest/joshua-judges-ruth.sql` confirms medium's nine rows use 1:16, 1:17, 2:2-3, 2:8-9, 3:9,
3:11, 4:9-10, 4:17 and the 1:16/3:9/4:13-14 boss sequence. So the verbatim-QA pass that signed off
the medium ingest (`docs/QA_SIGNOFF.md`, 2026-08-08) **never covered the text now used in items 2, 4,
6 and 9**, and `docs/reviews/ruth-review.md` §1 verified those verses against a single source only.
I have now verified all four against live WEB independently, but they are new-to-ingestion text and
must be treated as such by QA. See §6.6.

## 2. Item/Boss Count Claim — verified, not assumed

The brief asserts 9 items (6 regular + 3 boss), confirmed against the ingested medium content.
Checked directly: `docs/ingest/joshua-judges-ruth.sql`, the `book_slug = 'ruth'` insert block,
contains exactly nine `challenge` rows — `sort_order` 1–6 with `is_boss_item` false, 7–9 with
`is_boss_item` true. **The brief's count claim is accurate.** So are its subsidiary claims that
medium blanks `stay` at 1:16 (row 1) and `kinsman` at 3:9 (row 5), and that 4:13-14 appears in medium
only inside the boss sequence row (row 9), never standalone.

## 3. Style Guide Compliance — §2 in-bounds / §3 out-of-bounds

| Item | Format | In-bounds category (§2) | Requires anything beyond narrative fact / verse text? |
|---|---|---|---|
| 1 Ruth 1:16 | MC | Direct quotation attributed in-text | No. The key restates the verse's own words. See §4.3 |
| 2 Ruth 1:8-9 | MC | Narrative fact | No doctrinal issue, but the **answer key has a second defensible answer** — §6.2 |
| 3 Ruth 2:2-3 | MC | Setting/character identification | No. Reference-free stem but the key is unambiguous (2:3 states it outright). Identical to medium's approved row 3 |
| 4 Ruth 2:11-12 | MC | Direct quotation attributed in-text | No. Minor wording note at §6.7 |
| 5 Ruth 3:9 | MC | Direct quotation attributed in-text | No — confirmed at length in §4.2. One distractor states a false relationship: §6.4 |
| 6 Ruth 4:21-22 | MC | Character identification (genealogy) | No. Reference-anchored. See §4.4 for the levirate-reckoning adjacency |
| 7 Ruth 4:9-10 | Recall | Direct verse recall | No. Grades `witnesses` only. **Complies with the inherited recall-only rule** — §4.1 |
| 8 Ruth 4:17 | MC | Character identification (genealogy) | No. Reference-anchored. Unchanged from approved medium row 8 |
| 9 Ruth 3:1-2 | Recall | Direct verse recall | No doctrinal issue; **the template is not verbatim** — §6.1 |

**No item asks a player to affirm a doctrinal interpretation, a denominational position, a
historicity/scientific claim, or a moral judgment.** All five §3 prohibitions are clear on substance.
The two §3-final-bullet (paraphrase/quotation-integrity) findings are §6.1 and §6.3.

## 4. Contested-Territory Cross-Check

### 4.1 The specific question the caller asked: does recall→MC conversion reintroduce a contested reading?

Two medium recall items are converted to multiple choice in this tier: **Ruth 1:16** (medium row 1,
blanked `stay`) and **Ruth 3:9** (medium row 5, blanked `kinsman`). The verse the recall-only rule
actually protects — **Ruth 4:9-10** — is *not* converted: item 7 remains fill-in-blank.

**Finding: the recall-only rule is not violated, and neither conversion reintroduces a contested
reading — but the second conversion lands next to a live disagreement the brief never flagged.**
Details in §4.2. The rule's own scope is narrow and was met exactly: `docs/reviews/ruth-review.md` §4
restricts 4:9-10 to "recall/fill-in-blank or narrative-sequence format only, never a multiple-choice
format framed around whether the transaction/custom itself was fair or appropriate by modern
standards." Item 7 is fill-in-blank, grades a single word (`witnesses`), and poses no evaluative
question. **Compliant.**

### 4.2 Ruth 3:7-9, the threshing floor — a live disagreement the brief did NOT flag

The brief's Contested Territory section treats items 5 and 9 solely under "the kinsman-redeemer /
levirate custom more broadly." That undersells it. The threshing-floor scene carries a *separate* and
genuinely unresolved dispute: whether Ruth 3:7's `uncovered his feet` is a sexual euphemism, and
whether the night involved sexual contact. This is a real three-way scholarly split, not a settled
question — the argument turns on whether Hebrew *margelot* ("foot-area", the rare noun actually used
at 3:4/3:7) carries the euphemistic weight that the common *regel* demonstrably does at Isaiah 7:20,
Ezekiel 16:25 and Deuteronomy 28:57, and interpreters divide over whether the narrator chose
sexually-evocative vocabulary to build suspense around a chaste encounter or to report a
consummation. Sources spanning the range:
[BibleRef, Ruth 3:7](https://www.bibleref.com/Ruth/3/Ruth-3-7.html);
[Crossway, "Why Did Ruth Enter Boaz's Tent in the Middle of the Night?"](https://www.crossway.org/articles/why-did-ruth-enter-boazs-tent-in-the-middle-of-the-night-ruth-3/)
(evangelical); [Garrett Ham, "Ruth 3:4 Explained (Catholic Exegesis)"](https://garrettham.com/ruth-3-4-threshing-floor/)
(Catholic); [Israel Drazin, "What Did Ruth and Boaz Do on the Threshing Floor?", Times of Israel](https://blogs.timesofisrael.com/what-did-ruth-and-boaz-do-on-the-threshing-floor/)
(Jewish).

**Does it touch a graded item? No — checked directly rather than assumed.** Ruth 3:7 is not quoted,
displayed, or graded anywhere in this brief or in the medium ingest. What items 5 and 9 grade is
**verse 9's stated speech** and **verse 2's word `kinsman`**, and on those two points the traditions
that disagree about verse 7 agree completely:

- **Classic Protestant commentary** — [Bible Hub, Ruth 3:9](https://biblehub.com/commentaries/ruth/3-9.htm).
  Barnes: the phrase "indicates receiving and acknowledging her as a wife." JFB: "to say of anyone
  that he put his skirt over a woman, is synonymous with saying that he married her." Cambridge: "the
  kinsman claimed the widow as his wife." Matthew Henry goes out of his way to affirm the propriety
  of Boaz's conduct ("He attempted not to take advantage of Ruth"). No commentator on that page
  questions the encounter's propriety.
- **Jewish tradition** — [Rashi on Ruth 3:9 (Sefaria)](https://www.sefaria.org/api/texts/Rashi_on_Ruth.3.9?context=0):
  "the corner of your garment to cover me with your cloak; and this is an expression of marriage,"
  with the legal observation that Torah requires redeeming the relative's property but *not* marrying
  the widow, so Ruth is asking for both.
- **Translation-level check** — [Sefaria, Ruth 3:9, Revised JPS 2023](https://www.sefaria.org/api/texts/Ruth.3.9?context=0):
  "Spread your robe over your handmaid, for you are a redeeming kinsman," footnoted as "a formal act
  of espousal."

Rashi and the classic Christian commentators reach the *same* reading of the graded content — a
formal marriage/redemption request — while occupying entirely different interpretive worlds. **The
bounding holds.** But it holds by luck of item selection, not by design, because the brief never
identified this fault line. Hence the forward-looking rule at §6.8: the recall→MC conversion of 3:9
is safe *as drafted*, and the rule exists so a later authoring pass can't write "What happened at the
threshing floor?" as a multiple-choice item and think it inherited approval.

### 4.3 Ruth's Moabite identity and Deuteronomy 23:3 — convergence claim re-verified, not taken on trust

The brief asserts this "resolves via cross-tradition convergence (not a live split)" and cites the
prior review. The prior review's Jewish-side evidence was a summary of search results rather than a
primary source, so I re-checked it against a primary text from each of two traditions:

- **Jewish (primary source)** — [Mishnah Yevamot 8:3 (Sefaria)](https://www.sefaria.org/api/texts/Mishnah_Yevamot.8.3?context=0):
  Ammonite and Moabite male converts are permanently prohibited from entering the congregation,
  "however, their female counterparts, even the convert herself, are permitted immediately." The
  gendered reading is not a Christian apologetic borrowing — it is halakhah stated in the Mishnah.
- **Classic Christian commentary** — [Bible Hub, Deuteronomy 23:3](https://biblehub.com/commentaries/deuteronomy/23-3.htm).
  Ellicott cites Rashi directly; Gill notes "the Jews restrain this to men" and that the Hebrew is
  masculine ("Ammonite, not an Ammonitess"); Barnes appeals to Ruth's proselyte status; Benson to
  marriage after professing the Jewish religion; Poole to divine exemption in an extraordinary case.

Note the nuance: the *Christian* commentators are not unanimous on the mechanism (male-only reading /
proselyte exception / divine exemption / lapsed national applicability). But they converge
completely on the **conclusion** — Ruth's inclusion is legitimate — and none holds that it was
unlawful. That is convergence at the level that matters, since no graded item asks about the
mechanism or the lawfulness. **The brief's characterisation is accurate and its bounding holds.**
Items 3 and 7 display "Ruth the Moabitess" as direct verse text (WEB, verified §1) and grade,
respectively, whose field she gleaned in and the word `witnesses`. Neither touches Deuteronomy 23:3.

**Item 1 checked independently on the same ground.** The correct option — "Go where Naomi goes, and
take Naomi's people and God as her own" — is a close restatement of 1:16's own words ("Your people
will be my people, and your God my God"). In Jewish tradition Ruth 1:16 is read as the paradigmatic
conversion declaration; in Christian commentary as a confession of faith. Those are different frames,
but both affirm exactly what the option says, and the option asserts nothing about *what kind* of act
it was. **In-bounds.**

### 4.4 The go'el / levirate institution and the genealogy — two adjacencies, both currently clear

- **`go'el` rendering.** WEB reads "near kinsman" (3:9, 4:14); Revised JPS reads "redeeming kinsman";
  the common evangelical rendering is "kinsman-redeemer" (sources as cited in §4.2). Item 9's graded
  token is `kinsman`, which is present in every one of those renderings. **Safe**, but the divergence
  should be recorded — see §6.9.
- **Whose son Obed was.** Ruth 4:10 has Boaz redeem Ruth "to raise up the name of the dead on his
  inheritance"; 4:17 has the neighbours say "A son is born to Naomi"; 4:21 says "Boaz became the
  father of Obed" (all verified against ebible.org, §1). Under levirate reckoning the child is
  credited to the deceased Mahlon's line, and the text itself carries both framings. **Items 6 and 8
  are safe** precisely because both are anchored to an explicit reference ("According to Ruth
  4:21-22…", "According to Ruth 4:17…") and ask only what that cited verse states. This is a live
  trap for a future unanchored item, so §6.9 records it.

### 4.5 Inherited, no action — the divine name

Items 2, 4 and 7 display WEB's "Yahweh". Settled ground under Open Decision #1 and already approved
in `docs/content/ruth.md`; noted for the trail only, consistent with `docs/reviews/genesis-easy-review.md`
§4.5. No item grades the divine name.

## 5. Paraphrase-Presented-As-Quotation Check (§3, final bullet)

No invented or reworded scripture is displayed anywhere. Every string presented as verse text matched
live WEB in §1. Two integrity findings, both fixable and neither doctrinal:

1. **Item 9's recall template is not verbatim** — it truncates the verse mid-clause and substitutes a
   question mark for the WEB comma (§6.1). This is the item most like the Gen 9:13 defect: text that
   appears nowhere in the WEB, presented as the verse.
2. **Item 5 presents a partial verse as the whole verse without a trim marker** (§6.3) — the same
   labelling defect found at Gen 8:11 in `docs/reviews/genesis-easy-review.md` §6.2.

## 6. Required and Recommended Changes

**6.1 — Item 9 (Ruth 3:1-2): make the recall template verbatim. [required]**
The template reads `"Now isn't Boaz our ___?"`. WEB reads `Now isn't Boaz our kinsman, with whose
maidens you were?` — the brief truncates the sentence and replaces the comma with a question mark, so
the string shown to the player is not WEB text. Fix: `"Now isn't Boaz our ___, with whose maidens you
were?"`. The answer token `kinsman` is unchanged and correct.

**6.2 — Item 2 (Ruth 1:8-9): the answer key has a second defensible answer. [required]**
The stem "What did Naomi urge her two daughters-in-law to do?" is not anchored to a reference, and
the distractor **"Remain in Moab with their own people's gods"** is textually defensible: at Ruth
1:15 Naomi says to Ruth, `"Behold, your sister-in-law has gone back to her people and to her god.
Follow your sister-in-law."` ([ebible.org WEB, Ruth 1](https://ebible.org/web/RUT01.htm)). Naomi
demonstrably does urge a daughter-in-law to follow her sister-in-law back to her people and her god.
This is the same defect class as Gen 8:11 in `docs/reviews/genesis-easy-review.md` §6.1 — a
distractor that is a correct reading of a nearby verse. It is also the least desirable distractor in
the set to get wrong, since it is the only one touching religious allegiance. **Fix both halves:**
anchor the stem ("According to Ruth 1:8-9, what did Naomi urge…") **and** replace that distractor
(e.g. "Glean in the fields of Bethlehem").

**6.3 — Item 5 (Ruth 3:9): label the quote as trimmed. [required]**
WEB 3:9 opens `He said, "Who are you?"` before `She answered, "I am Ruth your servant…"`. The brief
tags the item "(WEB, already-approved verse, new format)" with no indication that the verse has been
cut. Fix: re-tag "(WEB, trimmed)" per the medium brief's own convention, or add a leading ellipsis.
The words shown are verbatim, so this is a labelling fix, not a text fix — but a partial verse
displayed to a player as *the* verse is exactly what §3's final bullet exists to prevent.

**6.4 — Item 5 (Ruth 3:9): the distractor states a false relationship. [required]**
The option reads "Marry her sister Orpah". WEB calls Orpah Ruth's **sister-in-law** (Ruth 1:15,
verified above), not her sister. `CONTENT_STYLE_GUIDE.md` §2 makes stated relationships graded
content, so a distractor asserting a relationship the text contradicts teaches an error even when the
player marks it wrong. Fix: "Marry her sister-in-law Orpah", or replace the distractor outright
(preferable — Orpah has left the narrative by chapter 3).

**6.5 — Items 1, 4, 5: apply the leading-ellipsis convention to dropped speech attributions. [recommended]**
Item 1 drops `Ruth said,` (1:16), item 4 drops `Boaz answered her,` (2:11), item 5 drops `He said,
"Who are you?"` (3:9), each without a leading ellipsis. Items 3, 6, 7 and 9 do use ellipses
correctly, so the brief is internally inconsistent. Item 6 already shows the right pattern (leading
`...`). Apply it uniformly so the ingestion citation check in `BACKEND_REQUIREMENTS.md` §4 sees a
consistent shape.

**6.6 — Correct the brief's "zero incremental review risk" claim, and flag items 2/4/6/9 for QA. [required]**
Per §1 above, the text in items 2, 4, 6 and 9 was never part of the medium ingest and therefore never
passed the verbatim QA that signed off `docs/ingest/joshua-judges-ruth.sql`; in
`docs/reviews/ruth-review.md` §1 it was verified against a single source only. Amend the brief's
"Design intent" paragraph accordingly, and have `docs/qa/ruth-easy-verbatim-qa.md` treat those four
items as new text rather than re-verified text.

**6.7 — Item 7 (Ruth 4:9-10): reproduce medium's full recall template. [recommended]**
The brief renders the recall as `"Boaz said to the elders and to all the people, 'You are ___
today...'"` while the ingested medium row (`docs/ingest/joshua-judges-ruth.sql`, the `sort_order` 7
row) uses the full two-blank template through to the closing `You are ___ today.` If ingested as
written this becomes a materially easier, differently-shaped item than the one the brief claims to be
reusing "verbatim". State the full template. Same point, smaller: item 8 claims verbatim reuse but
omits the option list — medium's is `["David", "Boaz", "Jesse", "Salmon"]`, correct index 0. §5
requires the full item spec inline.

**6.8 — Contested Territory: add a Ruth 3:3-8 structural rule. [recommended, but do not skip]**
Add a bullet recording the §4.2 disagreement with its sources, and the rule: **Ruth 3:3-8 (the
threshing-floor night, especially 3:7's "uncovered his feet") is not challenge-ready content in any
tier, and no distractor or option in any threshing-floor item may characterise what physically
happened between Ruth and Boaz that night.** Items 5 and 9 already comply; this makes compliance
structural rather than incidental, in the same style as the existing 4:9-10 rule and the Gen
3:15 / 1:27 rules.

**6.9 — Contested Territory: add two forward-looking guards. [recommended]**
- **`go'el` rendering** — no item may grade the specific translation of the redeemer term (WEB "near
  kinsman" / Revised JPS "redeeming kinsman" / commonly "kinsman-redeemer"). Grading the bare token
  `kinsman`, as item 9 does, is fine.
- **Obed's paternity/levirate reckoning** — no item may ask whose son Obed "really" was or whose line
  he continued. The text supports both a Boaz framing (4:21) and a Mahlon/Naomi framing (4:10, 4:17).
  Items 6 and 8 stay clear only because both are reference-anchored; keep every future genealogy item
  reference-anchored for the same reason.

**6.10 — Item 4 (Ruth 2:11-12): minor wording. [recommended]**
The correct option says "Everything she had done for her mother-in-law…" while WEB reads "all about
what you have done", and verse 11 continues with more that Boaz had heard (leaving father, mother and
homeland). No distractor competes, so the key is not ambiguous — but "All she had done for her
mother-in-law since her husband's death" tracks the verse more closely for no cost.

## 7. Verdict

**`approved-with-changes`.**

Every one of the nine items is in-bounds under `CONTENT_STYLE_GUIDE.md` §2 and clear of all five §3
prohibitions on substance. Every quotation displayed is verbatim WEB, verified against live sources
rather than against the medium brief. Both of the drafter's claims were tested rather than accepted:

- **"No new Contested Territory, because Deuteronomy 23:3 is convergent"** — re-verified against a
  primary Jewish source (Mishnah Yevamot 8:3) and classic Christian commentary (Bible Hub, Deut
  23:3). **Holds.** The conclusion converges even where the mechanism doesn't, and no item grades
  either.
- **"Ruth 4:9-10 stays recall-only, so the recall→MC conversions are safe"** — **holds for 4:9-10
  exactly**, and the two conversions that do happen (1:16, 3:9) were checked directly against
  disagreeing traditions. Rashi and the classic Protestant commentators read the graded content of
  3:9 identically (a formal marriage/redemption request) despite disagreeing about much else.

The one thing the drafter missed is §4.2: the threshing-floor euphemism question is a genuinely live,
unresolved dispute spanning evangelical, Catholic and Jewish writers, and the brief's Contested
Territory section doesn't mention it. It does not reach any graded item, so it is a rule to add
(§6.8), not content to remove — but "we inherited this scene's approval" was not a sufficient reason
to skip identifying it, especially in the tier that moved that scene from recall to multiple choice.

The four required changes are precision, labelling and answer-key fixes (§§6.1–6.4, 6.6). None
requires removing an item, and none reflects a doctrinal problem. The most substantive are §6.1 (a
non-verbatim template presented as verse text) and §6.2 (an answer key with a second defensible
answer) — the same two defect classes the Genesis pilot reviews found, recurring here.

**Not escalated.** The one live cross-tradition/scholarly disagreement found (Ruth 3:7) was checked
directly against every graded answer key and bears on none of them; §6.8 exists to keep it that way.
Nothing in this brief touches the child-safety guardrails in `GEN2REV_MASTER_PROMPT.md` Section 5 —
notably, the threshing-floor material that *could* raise a content-appropriateness question for a
child-directed flow is display-free and ungraded in every tier.

**Residual risk stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in `MEMORY.md`,
2026-08-08; Open Decision #7 still has no named human reviewer). A human specialist might weigh the
Ruth 3 threshing-floor question differently — in particular whether an easy/child-facing tier should
present the threshing-floor scene at all, which is a pedagogical and audience judgment rather than a
style-guide one, and therefore outside what I can settle. Flagging it as a live residual, not an
escalation.

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/ruth-easy-verbatim-qa.md`), which must (a) treat items 2, 4, 6 and 9 as new-to-ingestion
text per §6.6, (b) re-check the corrected templates from §6.1 and §6.7, and (c) confirm WEB's inner
double-quote punctuation is preserved on ingestion, including 4:17's `'A son is born to Naomi'.`
Logging this review in `docs/CONTENT_REVIEW_LOG.md` is the calling session's task, not this
reviewer's.

---

### Sources cited in this review

Verse text (live WEB):
- https://ebible.org/web/RUT01.htm
- https://ebible.org/web/RUT02.htm
- https://ebible.org/web/RUT03.htm
- https://ebible.org/web/RUT04.htm
- https://biblehub.com/web/ruth/3.htm

Cross-tradition (Jewish):
- https://www.sefaria.org/api/texts/Ruth.3.9?context=0 (Revised JPS 2023)
- https://www.sefaria.org/api/texts/Rashi_on_Ruth.3.9?context=0
- https://www.sefaria.org/api/texts/Mishnah_Yevamot.8.3?context=0
- https://blogs.timesofisrael.com/what-did-ruth-and-boaz-do-on-the-threshing-floor/

Cross-tradition (Christian — classic Protestant aggregation, evangelical, Catholic):
- https://biblehub.com/commentaries/ruth/3-9.htm
- https://biblehub.com/commentaries/deuteronomy/23-3.htm
- https://www.crossway.org/articles/why-did-ruth-enter-boazs-tent-in-the-middle-of-the-night-ruth-3/
- https://www.bibleref.com/Ruth/3/Ruth-3-7.html
- https://garrettham.com/ruth-3-4-threshing-floor/

Project sources:
- `docs/content/ruth-easy.md`, `docs/content/ruth.md`, `docs/reviews/ruth-review.md`
- `docs/reviews/genesis-easy-review.md`, `docs/reviews/genesis-hard-review.md`
- `docs/CONTENT_STYLE_GUIDE.md`, `docs/CANON_STRUCTURE.md`, `docs/ingest/joshua-judges-ruth.sql`

**Source-availability caveat:** BibleGateway (`version=WEB`), the intended second verse-text source,
returned an account spend-limit error during this run and could not be reached. Bible Hub's WEB text
was substituted for Ruth 3. The remaining rows in §1 are ebible.org single-source and are flagged as
such for the QA §3 pass.
