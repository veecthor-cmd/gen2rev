# Theological Review — John (World 43)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored the
brief, per `.claude/agents/theological-reviewer.md`'s exact procedure (steps 1-9). John is one of
the first four New Testament books authored for this project (Matthew, Mark, Luke authored in
parallel by separate agents) and carries the raised doctrinal-review bar described in
`docs/CANON_STRUCTURE.md` §7: unlike the OT, where nearly every exclusion worked by keeping the
text's own plain narrative sense and excluding a *later* Christian reading, John's Prologue and
several of its "I am" statements make claims of Jesus's divinity that **are the primary text
itself** — there is no later-reading escape hatch to reach for. This review spends deliberate extra
effort on that category specifically, per the task's own explicit flag that an escalation on the
Prologue would be an expected, not a failing, outcome.

Brief reviewed: `docs/content/john.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md` (§1-5 general, §6 New Testament
Addendum)
Canon context checked against: `docs/CANON_STRUCTURE.md` §7 (New Testament wave rationale and
known-contested-category list)

---

## 1. Verse-Text Verification

Every challenge-ready verse in the brief was checked against **ebible.org's live WEB text**
(chapter pages fetched directly). The Prologue in full (1:1-18) and the four most theologically
load-bearing single verses (8:58, 10:30, 14:6, 20:28) were additionally cross-checked against a
**second independent live source**, BibleGateway (`version=WEB`), per the style guide's
verification bar.

| Scene(s) | Verses | Sources checked | Result |
|---|---|---|---|
| 1 (Prologue) | John 1:1-18, 1:29, 1:41-42 | [ebible.org JHN01](https://ebible.org/web/JHN01.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=John+1%3A1-18&version=WEB) | **Match, two independent sources, full verbatim (1:1-18)** |
| 2 | John 2:1-11 | [ebible.org JHN02](https://ebible.org/web/JHN02.htm) | **Match, verbatim** |
| 3 | John 3:1-8, 16-17 | [ebible.org JHN03](https://ebible.org/web/JHN03.htm) | **Match, verbatim** |
| 4 | John 4:7-10, 13-15, 25-26, 39-42 | [ebible.org JHN04](https://ebible.org/web/JHN04.htm) | **Match, verbatim** |
| 5 | John 6:9-13, 19-20, 35 | [ebible.org JHN06](https://ebible.org/web/JHN06.htm) | **Match, verbatim** |
| 6, 7 | John 8:12, 31-32, 58 | [ebible.org JHN08](https://ebible.org/web/JHN08.htm), [BibleGateway WEB (8:58)](https://www.biblegateway.com/passage/?search=John+8%3A58%2C+John+20%3A28%2C+John+10%3A30%2C+John+14%3A6&version=WEB) | **Match, two independent sources for 8:58, verbatim throughout** |
| — | John 7:53 (context for textual note) | [ebible.org JHN07](https://ebible.org/web/JHN07.htm) | **Match, verbatim** |
| 8 | John 9:1-3, 6-7, 25 | [ebible.org JHN09](https://ebible.org/web/JHN09.htm) | **Match, verbatim** |
| 9 | John 10:10-11, 27-30 | [ebible.org JHN10](https://ebible.org/web/JHN10.htm), [BibleGateway WEB (10:30)](https://www.biblegateway.com/passage/?search=John+8%3A58%2C+John+20%3A28%2C+John+10%3A30%2C+John+14%3A6&version=WEB) | **Match, two independent sources for 10:30, verbatim throughout** |
| 10 | John 11:21-27, 35, 43-44 | [ebible.org JHN11](https://ebible.org/web/JHN11.htm) | **Match, verbatim** |
| 11 | John 13:4-5, 14-15, 34-35 | [ebible.org JHN13](https://ebible.org/web/JHN13.htm) | **Match, verbatim** |
| 12 | John 14:1-3, 6, 16-17; John 15:1-5, 12-13 | [ebible.org JHN14](https://ebible.org/web/JHN14.htm), [ebible.org JHN15](https://ebible.org/web/JHN15.htm), [BibleGateway WEB (14:6)](https://www.biblegateway.com/passage/?search=John+8%3A58%2C+John+20%3A28%2C+John+10%3A30%2C+John+14%3A6&version=WEB) | **Match, two independent sources for 14:6, verbatim throughout** |
| 13 | John 19:16-18, 30, 34 | [ebible.org JHN19](https://ebible.org/web/JHN19.htm) | **Match, verbatim** |
| 14 | John 20:1-2, 11-16, 24-29 | [ebible.org JHN20](https://ebible.org/web/JHN20.htm), [BibleGateway WEB (20:28)](https://www.biblegateway.com/passage/?search=John+8%3A58%2C+John+20%3A28%2C+John+10%3A30%2C+John+14%3A6&version=WEB) | **Match, two independent sources for 20:28, verbatim throughout** |
| — | John 21:15-17, 25 | [ebible.org JHN21](https://ebible.org/web/JHN21.htm) | **Match, verbatim (re-fetched once to get full dialogue rather than a paraphrased summary — see note below)** |
| — (excluded) | John 7:53-8:11 (context for textual note only, not used as challenge content) | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=John+7%3A53-8%3A11&version=WEB) | **Full text confirmed printed; textual footnote confirmed present (see §3.4 below)** |

**Overall: no character-level mismatches found anywhere in the brief.** One process note: the first
automated fetch of John 21:15-17 returned a paraphrased summary of Peter's dialogue rather than
full verbatim text; this was caught before the brief was drafted and a second, more explicit fetch
retrieved the full verbatim wording, which is what appears in the brief. This is exactly the kind
of check this review process exists to catch, consistent with the Hosea review's finding that
automated fetches occasionally summarize rather than quote and need a follow-up pass — still not a
substitute for the dedicated `QA_REQUIREMENTS.md` §3 pass.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line in the brief is attributed to a
  specific WEB reference; narrative prose (Setting/Era, scene introductions) is clearly separated
  from quoted challenge-ready blocks and describes content in its own words. **Pass.**
- All challenge-ready content is direct verse text or narrative fact; no editorial doctrinal
  commentary appears inside any challenge item itself (doctrinal *context* appears only in the
  Contested Territory section, which is explicitly not challenge content). **Pass.**
- Difficulty-ladder examples stay within recall/textual-detail territory even at the "application"
  level (Level 5 asks where the text says Jesus told the blind man to wash, not what the healing
  signifies). **Pass.**
- No challenge item asks a player to affirm a denominational position or resolve a doctrinal
  question beyond what a verse states. **Pass at the graded-item level** — see §3 below for the
  individual verses (1:1, 1:3, 1:14, 8:58, 10:30, 20:28) bounded by format restriction, and §4 for
  this review's escalation on whether that bounding is sufficient given the category of claim
  involved.
- Every applicable NT addendum category (`CONTENT_STYLE_GUIDE.md` §6) was actively checked against
  the brief, not just the categories the draft brief happened to flag — see §3.7-3.9 below for
  categories checked and found not to require bounding, and the correction made to the sacramental-
  theology item mid-review (§3.6).

## 3. Contested-Territory Cross-Check

### 3.1 The Prologue's Christology (John 1:1, 1:14) — genuine category, but not a mainstream cross-tradition split; see §4 for this review's escalation

Checked across three independent traditions:

- **Protestant:** [BibleHub's commentary aggregation on John 1:1](https://biblehub.com/commentaries/john/1-1.htm)
  shows classic commentators (Barnes, Gill, Henry, and others) unanimously reading "the Word was
  God" as a full, unequivocal declaration of Christ's deity, and explicitly rejecting the minority
  "a god" translation associated with non-Trinitarian groups (the commentary aggregation names this
  explicitly as a historically raised objection, not a live mainstream-Protestant position).
  [GotQuestions.org](https://www.gotquestions.org/is-Jesus-God.html) (Evangelical) affirms the same
  reading without engaging alternative translations at all.
- **Catholic:** the [Catholic Encyclopedia (New Advent) article on the
  Logos](https://www.newadvent.org/cathen/09328a.htm) confirms the Council of Nicaea (325) settled
  this question authoritatively within Catholic doctrine — the Word is "born of the very Substance
  of the Father," not created — explicitly against Arian/subordinationist readings.
- **Orthodox:** [OrthodoxWiki's article on the
  Logos](https://orthodoxwiki.org/Logos) confirms the same identification: the Logos is the second
  person of the Trinity, "the intellect, wisdom and the Providence of God," through whom all things
  were created.

**Finding: this is not, in fact, a genuine Protestant/Catholic/Orthodox disagreement.** All three
mainstream traditions checked converge on the same reading — the only dissent found is from
explicitly non-Trinitarian groups (Jehovah's Witnesses, and historically the Socinians/Arians the
Catholic and Protestant sources both name and reject) that fall outside the mainstream-tradition
scope the style guide and reviewer-agent definition are built around. **This is structurally
different from every OT contested-territory item this project has bounded so far** (Malachi 1:2-3's
predestination question, Ezekiel 34:23-24's Davidic reading, Hosea 6:2's "third day," etc.), all of
which involved genuine disagreement *among* mainstream traditions. Here, the tension isn't between
traditions — it's that grading a fill-in-the-blank item whose "correct answer" is a core metaphysical
claim about Jesus's nature ("the Word was ___" → God) puts a Bible-literacy game in the position of
grading a player's recall of, and implicitly their exposure to as "the right answer," a specific
religious truth-claim, even though that claim is verbatim, sourced, and uncontested across
mainstream Christian tradition. The brief's bounding (recall/fill-in-blank only, no
multiple-choice "what does this mean" item, no challenge item requiring the player to explain or
defend the claim) is the same structural tool this project has used successfully throughout the OT
expansion, and it does remove the affirm-a-contested-position risk — but it does not remove the more
basic fact that the "correct answer" to a graded item is a first-order claim about God's nature.
**This review does not consider itself the right authority to settle whether that is an acceptable
product posture for this game — see §4 verdict.**

### 3.2 "I am" self-identification statements (John 8:58, 10:30) — same finding as 3.1, extends to these verses

- **John 8:58:** [BibleHub's aggregation](https://biblehub.com/commentaries/john/8-58.htm) confirms
  near-unanimous classic-commentary agreement that this echoes Exodus 3:14 and claims eternal
  pre-existence/deity; the one named dissenting reading (Socinus, restricting the phrase to a claim
  of Messianic office rather than eternal existence) is explicitly rejected by the surrounding
  commentary as contextually weak, and is not a live mainstream Protestant/Catholic/Orthodox
  position today.
- **John 10:30:** [BibleHub's aggregation](https://biblehub.com/commentaries/john/10-30.htm)
  confirms the same convergence, citing the crowd's own hostile reaction (attempting to stone Jesus
  for blasphemy) as commentators' primary textual evidence that unity-of-essence, not merely
  unity-of-will, was Jesus's own intended meaning; a minor alternative reading (Erasmus, Calvin,
  Bucer, "union of design and plan") is noted but described by the aggregated commentary as failing
  to account for the crowd's reaction.
- **Finding: same structural situation as 3.1** — convergent across mainstream traditions, bounded
  to recall-only format in the brief, same underlying question about whether that bounding fully
  addresses the concern. Folded into the same §4 escalation rather than treated as a separate one.

### 3.3 John 20:28, Thomas's "My Lord and my God!" — same category, narrative framing gives slightly more room

Same convergent-reading pattern as 3.1-3.2 (this verse is the climactic confession the Catholic
Encyclopedia and Protestant/Orthodox sources above all treat as the Gospel's intended capstone).
**One partial mitigation not available for 1:1/8:58/10:30:** 20:28 is reported speech inside a
specific narrated scene (Thomas's post-resurrection encounter), so a sequence-format item ("what did
Thomas say when he touched Jesus's wounds, and where does this fall in the resurrection-appearance
sequence") tests narrative recall in a way that's one step more clearly "reporting what the text
says a character said" than 1:1's authorial theological assertion. The brief's bounding (recall +
sequence, no multiple-choice "what did Thomas mean") reflects this. Still folded into the §4
escalation, since the underlying claim-content is the same category.

### 3.4 John 7:53-8:11, the pericope adulterae — confirmed genuine textual-criticism issue, exclusion confirmed sufficient

- Confirmed directly against [ebible.org's JHN08 page](https://ebible.org/web/JHN08.htm): the WEB
  text **does print** the passage at its traditional location, with an editorial footnote stating
  the Nestle-Aland/UBS critical text ("NU") brackets it to indicate reduced confidence in its
  originality.
- Independently confirmed via [Wikipedia's Pericope Adulterae
  article](https://en.wikipedia.org/wiki/Pericope_Adulterae) (itself citing manuscript evidence):
  absent from 𝔓66, 𝔓75 (2nd/3rd century), Codex Sinaiticus and Vaticanus (4th century); first
  appears in Codex Bezae (5th/6th century); appears in variable locations across the manuscript
  tradition (after John 21:25, after Luke 21:38, after Luke 24:53, or omitted entirely in numerous
  witnesses) — the variable placement itself is standard evidence cited for the interpolation
  hypothesis. Confirmed this represents "broad academic consensus... for well over a century,
  including most evangelical NT scholars," per the same source.
- **Finding: the brief's exclusion of this passage from all challenge content is necessary and
  sufficient.** This is a genuine, independently-confirmed textual-tradition question, separate
  from any doctrinal one, and the style guide's NT addendum's conservative default (exclude known
  textual-criticism cases) is the correct call here. No change needed.

### 3.5 John 3:5, "born of water and Spirit" — genuine Catholic/Orthodox vs. Protestant divide, correctly excluded; John 3:3 confirmed safe

- Confirmed via [BibleHub's commentary aggregation on John
  3:5](https://biblehub.com/commentaries/john/3-5.htm): Catholic and Orthodox tradition reads
  "water" as referring to baptism (the Pulpit Commentary notes the Council of Trent formalized this
  into dogma); Protestant tradition (Calvin cited as representative) reads "water" as figurative for
  spiritual cleansing rather than the sacrament. Confirmed this dispute is **specific to verse 5's
  "water" language** — verse 3's "born anew" carries no comparable disagreement across the same
  aggregation.
- **Finding: the brief's selection of 3:3 only (not 3:5) is necessary and correctly scoped** — this
  is a genuine, mainstream Protestant/Catholic/Orthodox sacramental fault line of exactly the kind
  the style guide's NT addendum names, correctly identified and excluded. No change needed.

### 3.6 Sacramental theology — John 6's Bread of Life discourse — draft brief initially misidentified the fault line; corrected during this review

The draft brief's first pass framed the sacraments category as out-of-scope for John because the
Last Supper's institution words ("this is my body") don't appear in John's account of the meal
(ch. 13 narrates foot-washing instead). This review checked that framing directly rather than
accepting it, per this role's standing instruction, and found it incomplete: John's actual
sacramental fault line is the Bread of Life discourse (John 6:22-59), specifically verses 51-58
("unless you eat the flesh of the Son of Man and drink his blood..."), which Catholic/Orthodox
tradition reads as bearing directly on the Eucharist and much Protestant tradition reads as
figurative language about faith. Checked specifically whether the brief's one selected verse from
this discourse, 6:35 ("I am the bread of life"), carries the same dispute: per [BibleHub's
aggregation on John 6:35](https://biblehub.com/commentaries/john/6-35.htm), it does not — commentary
across traditions reads 6:35 itself as spiritual/relational language ("coming to Jesus" and
"believing" treated as equivalent terms), with the sacramental divide specific to the chapter's
later, more concrete "eat my flesh" language, which the brief does not select.

**Finding: brief text corrected during this review** (see `docs/content/john.md`'s sacramental-
theology entry, now framed correctly around John 6:51-58 rather than the Last Supper's absent
institution words) — **this is the one substantive content-adjacent change this review made to the
brief**, applied directly rather than left as a follow-up recommendation, consistent with how the
Genesis and Hosea reviews applied their own findings directly. The underlying scope decision (only
6:35 selected, 6:51-58 excluded) was already correct in the draft; only the stated *reason* needed
correction.

### 3.7 Independently checked: soteriology, atonement theory, ecclesiology/gender roles, spiritual gifts, eschatology

Checked each category from the style guide's NT addendum against the full set of scenes and verses
selected in the brief:

- **Soteriology (faith vs. works):** John's Gospel is saturated with belief-language (3:16, 20:31)
  and contains no work-based-justification material comparable to James 2 within any scene selected
  here. No bounding needed; this category is more directly live in later NT waves (Romans,
  Galatians, James).
- **Atonement theory:** the crucifixion verses selected (19:17-18, 30, 34) and 1:29's "Lamb of God"
  report events and a title without asserting a specific mechanism (penal substitution, Christus
  Victor, ransom, etc.) for how the crucifixion accomplishes salvation. Confirmed no selected verse
  requires grading a specific atonement theory. No bounding needed beyond narrative-only framing,
  which the brief already uses.
- **Ecclesiology/gender roles, spiritual gifts:** no verse selected touches church office, gender
  role, or spiritual-gifts material — this content develops later in Acts and the epistles, not in
  John. Confirmed not applicable to any scene in this brief.
- **Eschatology:** John's Gospel contains no discourse comparable to the synoptics' Olivet Discourse;
  the closest material (14:16-17's promise of "another Counselor") is handled as narrative report
  only (what Jesus says he will do) in the brief and does not require the player to affirm any
  position on the Spirit's ongoing work or end-times timeline. Confirmed not applicable.

**Finding: all four categories actively checked, none require additional bounding beyond what the
brief already does.** Consistent with the style guide's instruction not to wait to be surprised by
these categories — checked and cleared, not skipped.

### 3.8 John 9:8-41 (extended interrogation scene) and John's "the Jews" language — correctly excluded/avoided

- Confirmed the brief selects only John 9:1-7 (the healing itself) and 9:25 (the healed man's
  simple testimony), not the chapter's extended interrogation by religious authorities (9:8-41),
  which touches historically fraught Jewish-Christian polemic territory. This is a defensible,
  conservative scope choice given the sensitivity of that material.
- Confirmed no challenge-ready verse selected anywhere in the brief uses John's "the Jews" (Greek
  *hoi Ioudaioi*) language, which the Gospel sometimes uses to mean a specific hostile faction of
  religious authorities in ways that have been historically misused in antisemitic argument outside
  the text's own context. **Finding: correctly avoided by construction; no change needed.**

### 3.9 Distinctiveness check — confirms this brief meets the assignment's differentiation instruction

Cross-checked the brief's scene list against the standard "greatest hits" beats likely to appear in
all four Gospel briefs (birth narrative, baptism, generic miracle, Sermon-on-the-Mount-style
parables, generic Last Supper/Gethsemane/trial/crucifixion recap): the brief correctly has **no
birth narrative** (John's Gospel doesn't narrate one), **no baptism scene selected** (John narrates
John the Baptist's testimony about Jesus, not a baptism scene, per 1:29-34, which this brief doesn't
even need to exclude since the text itself doesn't narrate Jesus's baptism the way the synoptics
do), **no parable content** (John's Gospel contains almost none), and its crucifixion scene (13)
draws specifically on details unique to John's account (spear-thrust, blood-and-water) rather than a
generic recap. **Finding: brief meets the assignment's explicit differentiation instruction.**

## 4. Verdict

**`escalate-to-human`**, scoped specifically and narrowly to one question — **not** a general
rejection of the brief. Everything else in this review passed cleanly:

- Verse-text accuracy: zero mismatches across all fourteen scenes, cross-checked against two
  independent live sources for the Prologue and the four most theologically load-bearing single
  verses.
- Style-guide compliance: full pass.
- Every contested-territory item this review checked — the pericope adulterae exclusion (3.4), the
  John 3:5 baptismal-regeneration exclusion (3.5), the corrected sacramental-theology framing around
  John 6:51-58 (3.6, applied directly to the brief), soteriology/atonement/ecclesiology/eschatology
  (3.7, all checked and cleared), the John 9 interrogation-scene exclusion and "the Jews" avoidance
  (3.8) — resolves to a bounding this review is confident actually neutralizes the risk, following
  the same pattern this project has used successfully throughout the OT expansion.

**The escalation is specific:** whether **recall/fill-in-blank-only format is sufficient bounding**
for John 1:1, 1:3, 1:14 (the Prologue), 8:58, 10:30, and 20:28 — the verses whose plain, verbatim,
mainstream-uncontested content is nonetheless a first-order claim about Jesus's divine identity.
Per §3.1-3.3 above, this is not a Protestant/Catholic/Orthodox disagreement (all three converge),
which is exactly what makes it a different kind of question than every contested-territory item
this project has resolved so far by finding the right narrative-only or format-restricted bounding:
there is no cross-tradition dispute to bound *around* here. The open question is a product-policy
one, not a doctrinal-accuracy one: **is it the right posture for this game to have graded
recall items whose "correct answer" is a direct claim of Jesus's divinity, even in strict
verbatim-recall form with no interpretive grading attached** — or should this project adopt a
different treatment for this specific category (e.g., narrative-report-only phrasing that never
asks the player to complete or select the divinity-asserting clause itself, additional framing
language, or some other approach not yet used in this project's OT-only precedent)? This is
precisely the scenario `docs/CANON_STRUCTURE.md` §7 flagged in advance — "claims like... Jesus's
divinity are the primary text," and the OT's usual escape hatch (excluding a later reading layered
onto the text) doesn't apply because there's no later reading to exclude here; the claim is what
John's own text plainly says. This reviewer is not confident it is the right authority to settle
that policy question alone, and per the agent definition's own standing instruction ("when
genuinely unsure, escalate rather than approve"), escalates it rather than picking a side.

**Recommended interim disposition, pending Kachi's resolution:** the brief's current bounding
(recall/fill-in-blank only, no multiple-choice interpretive item, on 1:1, 1:3, 1:14, 8:58, 10:30,
20:28) is left in place in `docs/content/john.md` as the most conservative option already available
in this project's existing toolkit — it is very unlikely to be *wrong* to keep, only possibly
*insufficient* pending Kachi's view. This brief should not be treated as blocked from further
drafting work (challenge authoring, design pass) on the strength of this open question alone,
consistent with `SKILL.md`'s note that the reviewer gate blocks *approval*, not *drafting* — but it
should not move to `approved`/`approved-with-changes` in `docs/CONTENT_REVIEW_LOG.md` until this
specific question is resolved.

**Known limitation, stated per the agent definition's own instruction:** this review was performed
by an AI agent standing in for the named human theological reviewer role (Kachi Okere, per Open
Decision #7's resolution). This is the first New Testament book this reviewer process has evaluated
against `docs/CANON_STRUCTURE.md` §7's newly-raised bar, and this escalation is in part a direct
result of that bar being genuinely different in kind from anything the OT expansion required
resolving.

---

### Sources cited in this review

- https://ebible.org/web/JHN01.htm
- https://ebible.org/web/JHN02.htm
- https://ebible.org/web/JHN03.htm
- https://ebible.org/web/JHN04.htm
- https://ebible.org/web/JHN06.htm
- https://ebible.org/web/JHN07.htm
- https://ebible.org/web/JHN08.htm
- https://ebible.org/web/JHN09.htm
- https://ebible.org/web/JHN10.htm
- https://ebible.org/web/JHN11.htm
- https://ebible.org/web/JHN13.htm
- https://ebible.org/web/JHN14.htm
- https://ebible.org/web/JHN15.htm
- https://ebible.org/web/JHN19.htm
- https://ebible.org/web/JHN20.htm
- https://ebible.org/web/JHN21.htm
- https://www.biblegateway.com/passage/?search=John+1%3A1-18&version=WEB
- https://www.biblegateway.com/passage/?search=John+8%3A58%2C+John+20%3A28%2C+John+10%3A30%2C+John+14%3A6&version=WEB
- https://www.biblegateway.com/passage/?search=John+7%3A53-8%3A11&version=WEB
- https://biblehub.com/commentaries/john/1-1.htm
- https://biblehub.com/commentaries/john/8-58.htm
- https://biblehub.com/commentaries/john/10-30.htm
- https://biblehub.com/commentaries/john/6-35.htm
- https://biblehub.com/commentaries/john/3-5.htm
- https://www.newadvent.org/cathen/09328a.htm
- https://orthodoxwiki.org/Logos
- https://www.gotquestions.org/is-Jesus-God.html
- https://en.wikipedia.org/wiki/Pericope_Adulterae
