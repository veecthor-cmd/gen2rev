# Theological Review — Ezekiel (World 26)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored the
brief, per `.claude/agents/theological-reviewer.md`'s exact procedure (steps 1-9). Given this
assignment's explicit framing of Ezekiel as needing "real care in what it excludes," this review
spends deliberate extra effort on the two full-chapter exclusions (16, 23, 38-39) and on the two
verses bounded by format restriction (34:23-24), following the Job/Song of Solomon precedent for
books carrying above-average content risk.

Brief reviewed: `docs/content/ezekiel.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`
Canon context checked against: `docs/CANON_STRUCTURE.md` §6 (Major Prophets row, which names
Ezekiel's Daniel-parallel end-times risk and the passage-based-adaptation need directly)

---

## 1. Verse-Text Verification

Every challenge-ready verse in the brief was checked against **two independent live WEB sources**:
[ebible.org](https://ebible.org/web/) and [BibleGateway](https://www.biblegateway.com/)
(`version=WEB`).

| Passage | Verse(s) | Sources checked | Result |
|---|---|---|---|
| 1 | Ezek 1:1-3 | [ebible.org EZK01](https://ebible.org/web/EZK01.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Ezekiel+1%3A1-3%2C+Ezekiel+1%3A26-28%2C+Ezekiel+2%3A3-10%2C+Ezekiel+3%3A1-4&version=WEB) | **Match, two independent sources** |
| 1 | Ezek 1:26-28 | ebible.org EZK01, BibleGateway (as above) | **Match, two independent sources** |
| 1 | Ezek 2:3-4, 2:9-10 | [ebible.org EZK02](https://ebible.org/web/EZK02.htm), BibleGateway (as above) | **Match, two independent sources** |
| 1 | Ezek 3:1-3 | [ebible.org EZK03](https://ebible.org/web/EZK03.htm), BibleGateway (as above) | **Match, two independent sources** |
| 2 | Ezek 4:1-3, 4:4-5, 4:6 | [ebible.org EZK04](https://ebible.org/web/EZK04.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Ezekiel+3%3A16-21%2C+Ezekiel+33%3A1-11%2C+Ezekiel+4%3A1-8&version=WEB) | **Match, two independent sources** |
| 3 | Ezek 3:17-19 | ebible.org EZK03, BibleGateway (as above) | **Match, two independent sources** |
| 3 | Ezek 33:4-6, 33:11 | [ebible.org EZK33](https://ebible.org/web/EZK33.htm), BibleGateway (as above) | **Match, two independent sources** |
| 4 | Ezek 18:2-4, 18:20, 18:23 | [ebible.org EZK18](https://ebible.org/web/EZK18.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Ezekiel+37%3A1-14%2C+Ezekiel+18%3A1-4%2C+Ezekiel+18%3A20%2C+Ezekiel+18%3A23&version=WEB) | **Match, two independent sources** |
| 5 | Ezek 34:2-4, 34:11-12, 34:15-16, 34:23-24 | [ebible.org EZK34](https://ebible.org/web/EZK34.htm) (initial pass returned a paraphrased summary rather than full verbatim text for the middle verses), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Ezekiel+34%3A1-6%2C+Ezekiel+34%3A11-16%2C+Ezekiel+34%3A23-24&version=WEB) (full verbatim, used as the source of record) | **Match on BibleGateway, full verbatim.** ebible.org's raw HTML was fetched via an automated summarization pass that condensed 34:7-10 and part of 34:1-6/11-16 in its first response — re-confirmed against BibleGateway's complete verbatim rendering, which matches the brief's text exactly verse-for-verse. **Flag for the dedicated QA pass:** re-verify 34:2-4, 34:11-12, and 34:15-16 directly against ebible.org's raw page text (not a fetch-tool summary) as a third check, since this is the one passage in this brief where the first-pass source returned condensed rather than verbatim text. |
| 6 | Ezek 37:1-3, 37:4-6, 37:7-8, 37:9-10, 37:11-12, 37:13-14 | [ebible.org EZK37](https://ebible.org/web/EZK37.htm) (full verbatim, exact match to the brief) | **Match on ebible.org, full verbatim.** The BibleGateway fetch for this passage returned a narrative summary rather than full verbatim text (likely due to the multi-passage batch request diluting the fetch tool's extraction); verse 1 was independently confirmed exact-match in that response, and the summary's content is consistent with the ebible.org text, but this is **not** the same as a second full character-for-character source check. **Flag for the dedicated QA pass:** re-verify all of Ezek 37:1-14 against BibleGateway or a third live source directly (single-passage fetch, not batched), since only one source gave a complete verbatim confirmation here. |

**Overall: no character-level mismatches found** on every verse that received two full verbatim
checks. Two specific blocks (34:2-4/11-12/15-16, and all of 37:1-14) received only one full
verbatim source confirmation rather than two, due to the fetch tool summarizing rather than
quoting on the second attempt for those specific passages — flagged explicitly above, and flagged
again as a specific instruction for the dedicated QA pass in `QA_REQUIREMENTS.md` §3, rather than
treated as equivalent to the fully double-verified passages. This is not itself grounds for
escalation (the single source obtained for each was a complete, verbatim, verse-numbered
rendering, not a partial or ambiguous one) but is flagged for transparency per this agent's own
standard of "never treat your own synthesis as the source."

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line is attributed to a specific WEB
  reference; where the brief's narrative prose (Setting/Era, passage introductions) describes
  content in its own words, it is clearly separated from the quoted challenge-ready blocks and
  never placed in quotation marks. **Pass.**
- All challenge-ready content is direct verse text; no editorial doctrinal commentary appears
  inside any challenge item itself. **Pass.**
- Difficulty-ladder examples stay within textual-detail/recall territory even at the "application"
  level (Level 5 asks what the text's own stated day-counts are, not their chronological or
  symbolic significance). **Pass.**
- No challenge item asks a player to affirm a denominational or end-times position. **Pass on the
  graded-item level** — see §3 below for the two items (16/23, 38-39) handled by exclusion rather
  than narrative-only bounding, and §3's confirmation that the exclusion is actually complete.

## 3. Contested-Territory Cross-Check

### 3.1 Ezekiel 16 and 23 — confirmed complete exclusion, cross-tradition sourcing for the decision

Checked the brief file text directly (not just the Contested Territory section) for any verse,
paraphrase, or scene-description reference to chapters 16 or 23: **none found.** The Setting/Era
section names the exclusion and states the reason category (extended, sexually explicit allegory)
without describing the content itself, matching the assignment's stricter-than-Song-of-Solomon
instruction.

Sourcing for why this exclusion is well-founded, spanning traditions:

- **Cross-tradition commentary agreement on the content itself:** [Enduring Word, "Ezekiel 16
  Commentary: The Harlot Wife of Yahweh"](https://enduringword.com/bible-commentary/ezekiel-16/)
  and [Enduring Word, "Ezekiel 23 Commentary: Oholah and
  Oholibah"](https://enduringword.com/bible-commentary/ezekiel-23/) (mainstream Evangelical) both
  describe the chapters' language as sexually explicit and shocking by design, "full of terms and
  phrases that are sexually expressive and vulgar, so much so that most modern translations soften
  the text."
- **A genuine, independent Jewish-tradition data point that goes further than the assignment's own
  framing:** per sourcing on [Mishnah Megillah
  4:10](https://www.sefaria.org/Mishnah_Megillah.4.6) and the associated Talmudic discussion
  (Megillah 25a, as discussed in [Ezra Brand, "Public Bible Reading, Translation, and Decorum:
  Regulating Sensitive Scripture in the
  Synagogue"](https://www.ezrabrand.com/p/public-bible-reading-translation)), Ezekiel 16 (opening
  at "Make known to Jerusalem her abominations," 16:2) is historically listed among passages
  Rabbi Eliezer held should not be read publicly as a haftarah portion in the synagogue at all,
  specifically because of how it speaks about the Jewish people. This is not this project inventing
  a novel sensitivity standard — it is an ancient, internal, cross-millennia Jewish-tradition
  precedent for treating this specific chapter as unsuitable for undifferentiated public reading,
  independently arriving at a similar conclusion to this brief's exclusion (for a related but not
  identical reason — the Mishnah's concern is reading it aloud to a general assembly, not
  specifically a child-directed digital product, but the underlying judgment that this text
  requires audience-appropriate gatekeeping is a genuine cross-tradition data point, not just a
  modern content-moderation instinct).

**Finding: the exclusion is complete and well-founded across traditions.** No further action
needed; this is the strongest-grounded exclusion in the brief.

### 3.2 Ezekiel 38-39 (Gog and Magog) — confirmed complete exclusion, live cross-tradition disagreement documented

Checked the brief file text directly for any verse or scene-description reference to chapters
38-39: **none found**, beyond naming the exclusion in Setting/Era and Contested Territory.

Sourcing confirming this is genuine, current, unresolved disagreement (not a settled question):

- **Premillennial/dispensationalist reading:** [The Riddleblog, "The Gog and Magog Prophecy of
  Ezekiel 38-39"](https://www.kimriddlebarger.com/the-riddleblog/the-gog-and-magog-prophecy-of-ezekiel-3839)
  and [Come Let Us Reason, "Israel's Last
  Battle"](https://www.clr4u.org/israels-last-battle-ezekiel-38-39/) confirm this tradition reads
  the battle as a still-future, geopolitically identifiable event, historically often mapped onto
  contemporary nations (the Riddleblog source itself is written from an amillennial position
  critiquing this mapping practice, which independently confirms the dispensationalist reading it
  describes is a real, live position, not a strawman).
- **Amillennial reading:** the same Riddleblog source states the amillennial reading treats
  Ezekiel 38-39 and Revelation 20's Gog/Magog reference as depictions of "the same ultimate
  reality — the climactic battle at the end of this age," explicitly a different scheme than the
  dispensationalist one, occurring at a different point relative to a millennium.
- **Preterist/already-fulfilled reading:** search sourcing also surfaced a reading (see summary
  in the search results, general "Housetops"/context-focused sources) that ties the prophecy's
  fulfillment to first-century events, a third distinct position.
- **`docs/CANON_STRUCTURE.md` §6 itself** independently flags this exact material as
  contested end-times territory, naming Daniel's parallel chapters 7-12 as needing the same
  treatment "for the same reason" — i.e. this project's own prior planning already anticipated
  this specific exclusion before this brief was drafted, which is corroborating internal evidence
  the exclusion is correctly scoped, not an over-cautious addition by this reviewer.

**Finding: the exclusion is complete and well-founded.** No further action needed.

### 3.3 Ezekiel 34:23-24, "my servant David" — format restriction confirmed necessary and correctly scoped

- **Christian tradition:** per sourcing summarized from [BibleHub's commentary aggregation on
  Ezekiel 34:23](https://biblehub.com/commentaries/ezekiel/34-23.htm) and the [ESV Global Study
  Bible notes on Ezekiel
  34:23-24](https://www.bibliaplus.org/en/commentaries/314/the-esv-global-study-bibles-study-notes/ezekiel/34/23-24),
  "my servant David" is widely read as a messianic reference to Christ, paralleling other
  Davidic-Messiah language (Son, Branch, Offspring of David).
- **Jewish tradition — genuinely internally divided, not monolithic:** the same aggregated
  sourcing indicates medieval commentators RaDaK and Abarbanel (as repeated by Malbim) read the
  parallel "prince" language in Ezekiel 44-46 (which draws on this same 34:23-24 figure)
  messianically as the King Messiah, while Rashi is reported to read the same figure
  non-messianically (as the High Priest). This means the Christian/Jewish line is not a clean
  binary — there is real disagreement within Jewish tradition itself, which strengthens rather
  than weakens the case for the brief's recall-only bounding, since even a same-tradition
  consensus can't be assumed.
- **Textual note independently confirming why this matters:** the singular "one shepherd" /
  singular "servant" phrasing (as opposed to a repeated dynasty) is specifically what multiple
  sources flag as the textual hook both traditions build their respective messianic and
  non-messianic readings on — meaning the ambiguity is genuinely rooted in the text's own wording,
  not an interpretive overlay unconnected to what's actually written.

**Finding: the brief's structural rule (recall/fill-in-blank format only, no "who is my servant
David" multiple-choice item) is necessary and correctly scoped**, directly parallel to how
Job 19:25-27's "Redeemer" was bounded in that book's approved brief. No change needed beyond what
the brief already states.

### 3.4 Ezekiel 37 (valley of dry bones) — independently re-checked per the assignment's "safe" framing; confirmed, with one nuance documented

The assignment characterized this passage as safe with "no significant interpretive divide on its
plain meaning." This reviewer independently checked that claim rather than accepting it at face
value, per this role's standing instruction not to treat any framing — including the calling
session's own — as a substitute for a real source check.

- **National-restoration reading (the plain, text-stated meaning):** [Wikipedia's summary of
  Ezekiel 37](https://en.wikipedia.org/wiki/Ezekiel_37) and general search sourcing confirm this
  is the vision's own stated meaning per 37:11 ("these bones are the whole house of Israel") and
  is the majority reading across traditions — return from Babylonian exile and national/spiritual
  renewal.
- **A real internal Jewish-tradition dispute exists, but it is about literalism, not meaning:**
  per [Ezra Brand, "Actual Resurrection or Allegory? The Valley of Dry Bones in Ezekiel 37 in the
  Talmud (Sanhedrin
  92b)"](https://www.ezrabrand.com/p/the-valley-of-dry-bones-in-ezekiel), the Talmud records
  competing rabbinic views on whether the vision depicts a historical, literal resurrection event
  (R' Eliezer ben Yosei's view, holding the revived individuals "moved to Eretz Yisrael, married,
  and had children") or is purely a parable (another view recorded in the same source). This is a
  genuine dispute, but — confirmed by checking the actual content of the disagreement rather than
  just its existence — it is a dispute over **how literally to read the vision's mechanics**, not
  over **what the vision means or represents**; both sides of that specific Talmudic debate agree
  the vision is fundamentally about Israel's restoration.
- **The Christian reading does layer on an additional association** (the vision as also
  foreshadowing or resonating with general bodily resurrection doctrine, given the "breath"/
  "spirit" vocabulary later echoed in New Testament resurrection language) but this is presented in
  mainstream sourcing as a secondary resonance/typological reading layered on top of the
  agreed-on primary national-restoration meaning, not a competing claim about what the passage is
  fundamentally about, unlike the live disputes found for 34:23-24 or (in the Job precedent)
  19:25-27.

**Finding: the assignment's "safe" characterization holds up under independent check, with one
precision added.** The brief's existing Contested Territory entry for Ezekiel 37 already correctly
notes the literal-vs-allegory rabbinic dispute and correctly scopes challenge items to narrative
fact only — this reviewer confirms that bounding is sufficient and does not recommend excluding or
further restricting this passage. No change needed.

### 3.5 Ezekiel 18 vs. Exodus 20:5 — confirmed genuine but resolvable-in-brief tension, no doctrinal-side-taking found in the brief's items

Per sourcing (Bible Hub's cross-tradition harmonization discussion and Enduring Word's Ezekiel 18
commentary, both cited in the brief), commentators offer multiple non-contradictory
harmonizations (national/covenantal vs. individual scope; corrective-to-fatalism reading vs.
literal contradiction) but do not treat this as a live, unresolved denominational fault line the
way, e.g., sacrifice's theological meaning was treated in the Leviticus review — it reads more as
a standard exegetical puzzle addressed similarly across mainstream Christian and Jewish sources
than as a tradition-dividing dispute. The brief's items test only Ezekiel 18's own stated content
and take no position on the harmonization question, which is sufficient bounding. **Finding: no
escalation needed; brief's handling is appropriate.**

### 3.6 Independently checked, not separately flagged by the brief: the 390/40-day counts (Ezekiel 4:4-6) and the sign-act pattern generally

Confirmed via general source review that the chronological-referent question for the 390/40-day
counts is a scholarly historicity debate (similar in kind to Genesis's creation-days or the
Leviticus Jubilee historicity questions already accepted as in-bounds-if-scoped-to-text-only in
prior briefs), not a doctrinal or child-safety concern. The brief's Level 5 example item (asking
for the stated day-counts themselves) is appropriately scoped. Also independently confirmed, per
the assignment's own sensitivity note, that Ezekiel 5 (hair-cutting/burning) and Ezekiel 24 (the
death of Ezekiel's wife as an unmourned sign) are considerably more intense than chapter 4 and are
correctly left out of this brief — no verse from either chapter appears. **Finding: appropriately
scoped, no change needed.**

## 4. Verdict

**`approved-with-changes`.** The brief passes on every check performed above — verse-text accuracy,
style-guide compliance, and cross-tradition bounding of every contested item, including the two
full-chapter exclusions (16, 23, 38-39), which this review confirms are both complete (no leaked
reference anywhere in the brief) and well-founded across multiple traditions' own sourcing, not
just this project's internal risk assessment.

**The "changes" component is narrow and does not require re-drafting the brief:** per §1 above,
two verse blocks (Ezekiel 34:2-4/11-12/15-16, and all of Ezekiel 37:1-14) received a complete
verbatim double-source check where the *second* source (in each case, the fetch tool's automated
extraction) returned a condensed summary on its first pass rather than full verbatim text, even
though a full verbatim confirmation was independently obtained from a *different* single source in
each case, and no discrepancy was found in what was recovered. This is procedurally different from
Job's or Leviticus's caveat pattern (single-source-then-flag-for-dedicated-QA was the norm there);
here, one full source exists for each, but the intended two-source cross-check wasn't fully
completed for these two specific blocks. **Required action before this moves past
`approved-with-changes`:** the independent verbatim-text QA pass in `QA_REQUIREMENTS.md` §3 (which
is separately required for every book regardless of this review's outcome) should specifically
re-verify Ezekiel 34:2-4, 34:11-12, 34:15-16, and all of Ezekiel 37:1-14 against a second live
source using a single-passage (not batched) fetch, since that is the gap this review identified.
No text in the brief is suspected of being wrong — this is a sourcing-completeness flag, not a
content concern.

**No escalation.** Unlike Song of Solomon's whole-book identity/audience question, every contested
item in this brief resolves to a bounded, narrative-only or recall-only structural fix that this
reviewer is confident actually neutralizes the risk (following the Leviticus/Job pattern, not the
Song of Solomon pattern) — including the two hardest items, the full-chapter exclusions, which this
review independently confirmed are both complete and additionally supported by cross-tradition
sourcing the assignment itself didn't require but which strengthens the finding.

**Known limitation, stated per the agent definition's own instruction:** this review was performed
by an AI agent standing in for the named human theological reviewer role (Kachi Okere, per Open
Decision #7's resolution). Nothing here is asserted as certain — Kachi may reasonably weigh the
16/23/38-39 exclusions, the 34:23-24 restriction, or the verbatim-sourcing gap flagged in §1
differently than this review does.

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3 (with the specific re-check noted above), which remains required before
ingestion regardless of this approval. `docs/CONTENT_REVIEW_LOG.md` is to be updated by the
calling/orchestrating session, not by this reviewer.

---

### Sources cited in this review

- https://ebible.org/web/EZK01.htm
- https://ebible.org/web/EZK02.htm
- https://ebible.org/web/EZK03.htm
- https://ebible.org/web/EZK04.htm
- https://ebible.org/web/EZK18.htm
- https://ebible.org/web/EZK33.htm
- https://ebible.org/web/EZK34.htm
- https://ebible.org/web/EZK37.htm
- https://www.biblegateway.com/passage/?search=Ezekiel+1%3A1-3%2C+Ezekiel+1%3A26-28%2C+Ezekiel+2%3A3-10%2C+Ezekiel+3%3A1-4&version=WEB
- https://www.biblegateway.com/passage/?search=Ezekiel+3%3A16-21%2C+Ezekiel+33%3A1-11%2C+Ezekiel+4%3A1-8&version=WEB
- https://www.biblegateway.com/passage/?search=Ezekiel+37%3A1-14%2C+Ezekiel+18%3A1-4%2C+Ezekiel+18%3A20%2C+Ezekiel+18%3A23&version=WEB
- https://www.biblegateway.com/passage/?search=Ezekiel+34%3A1-6%2C+Ezekiel+34%3A11-16%2C+Ezekiel+34%3A23-24&version=WEB
- https://enduringword.com/bible-commentary/ezekiel-16/
- https://enduringword.com/bible-commentary/ezekiel-23/
- https://enduringword.com/bible-commentary/ezekiel-18/
- https://enduringword.com/bible-commentary/ezekiel-34/
- https://www.sefaria.org/Mishnah_Megillah.4.6
- https://www.ezrabrand.com/p/public-bible-reading-translation
- https://www.ezrabrand.com/p/the-valley-of-dry-bones-in-ezekiel
- https://en.wikipedia.org/wiki/Ezekiel_37
- https://www.kimriddlebarger.com/the-riddleblog/the-gog-and-magog-prophecy-of-ezekiel-3839
- https://www.clr4u.org/israels-last-battle-ezekiel-38-39/
- https://biblehub.com/commentaries/ezekiel/34-23.htm
- https://www.bibliaplus.org/en/commentaries/314/the-esv-global-study-bibles-study-notes/ezekiel/34/23-24
- https://biblehub.com/q/do_children_suffer_for_fathers'_sins.htm
