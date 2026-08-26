# Gen2Rev — QA Sign-Off Log

Per `QA_REQUIREMENTS.md` §3 (content-accuracy) and §6 (release exit criteria). This log tracks the
**independent, character-for-character verbatim-text QA pass** — a distinct, separately-required
check from theological review (`docs/CONTENT_REVIEW_LOG.md`). A book being `approved` in the
review log does not mean its verse text has cleared this gate; both are required before any content
reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4).

This pass was run 2026-08-08, ahead of the Phase 5 schedule implied by `GEN2REV_MASTER_PROMPT.md`,
at Kachi's explicit request to close it out before Phase 3 design work begins. The **functional
end-to-end pass** and **accessibility audit** portions of Phase 5 (§4-5 of `QA_REQUIREMENTS.md`)
are not part of this run — there's no built game yet to run them against — this log covers content-
accuracy only for now; the rest of Phase 5's hardening pass still happens later, against the
built product.

## Process

For every verse in every book's content brief, cross-check against at least two independent live
WEB sources, prioritizing every verse each book's theological review had already flagged as
"single source only." Any confirmed discrepancy is corrected directly in the content brief and
noted here. Full per-book detail (every verse, every source, every result) lives in
`docs/qa/<book-slug>-verbatim-qa.md`.

## Sign-off table

| Book | Verses checked | Result | Corrections made | Detail | Date |
|---|---|---|---|---|---|
| 1. Genesis | 16 | `pass` | None | `docs/qa/genesis-verbatim-qa.md` | 2026-08-08 |
| 2. Exodus | 16 | `pass` | None (resolved a loose-end discrepancy at Ex 20:4, unused in graded content — 3rd source confirms "in," not "on") | `docs/qa/exodus-verbatim-qa.md` | 2026-08-08 |
| 3. Leviticus | 12 | `pass` | None | `docs/qa/leviticus-verbatim-qa.md` | 2026-08-08 |
| 4. Numbers | 14 | `pass` | None | `docs/qa/numbers-verbatim-qa.md` | 2026-08-08 |
| 5. Deuteronomy | 12 | `pass` | None | `docs/qa/deuteronomy-verbatim-qa.md` | 2026-08-08 |
| 6. Joshua | 12 | `pass` | None — includes the two escalation-relevant Scene 4 verses (10:41-42), explicitly re-checked | `docs/qa/joshua-verbatim-qa.md` | 2026-08-08 |
| 7. Judges | 12 | `pass` | None — the documented authoring-time paraphrase at 6:36-40 re-verified as fully resolved | `docs/qa/judges-verbatim-qa.md` | 2026-08-08 |
| 8. Ruth | 12 | `pass` | None — cleanest of all 14, including re-verification of the documented authoring-time truncation at 1:16 | `docs/qa/ruth-verbatim-qa.md` | 2026-08-08 |
| 9. 1 Samuel | 16 | **`pass-with-corrections`** | **Real correction:** 1 Sam 16:13 was missing its final sentence ("So Samuel rose up and went to Ramah.") despite being labeled a complete quote — restored | `docs/qa/1-samuel-verbatim-qa.md` | 2026-08-08 |
| 10. 2 Samuel | 15 | `pass` | None — includes the three sensitive Scene 4 verses (12:1, 12:7, 12:13), checked with extra care; confirmed no chapter-11 text present | `docs/qa/2-samuel-verbatim-qa.md` | 2026-08-08 |
| 11. 1 Kings | 15 | `pass-with-corrections` | **Labeling only, no wording changed:** 3:12 and 12:14 were partial quotes mislabeled as complete "(WEB)" — relabeled "(WEB, trimmed)" | `docs/qa/1-kings-verbatim-qa.md` | 2026-08-08 |
| 12. 2 Kings | 15 | **`pass-with-corrections`** | **Real correction:** 2 Kings 19:15 silently dropped "who are" mid-sentence — restored | `docs/qa/2-kings-verbatim-qa.md` | 2026-08-08 |
| 13. 1 Chronicles | 10 | `pass` | None | `docs/qa/1-chronicles-verbatim-qa.md` | 2026-08-08 |
| 14. 2 Chronicles | 12 | `pass` | None | `docs/qa/2-chronicles-verbatim-qa.md` | 2026-08-08 |
| 1e. Genesis — Easy tier | 4 new/corrected (6 reused, already `pass`) | `pass` | None — item 4's stem-ambiguity was a review-caught answer-key defect, not a text discrepancy; fixed pre-QA | `docs/qa/genesis-easy-verbatim-qa.md` | 2026-08-18 |
| 1h. Genesis — Hard tier | 4 new (4 reused, already `pass`) | `pass` | None — item 8's citation error (Gen 9:12 text spliced onto a Gen 9:13 citation) was caught and fixed during theological review, then specifically re-verified here | `docs/qa/genesis-hard-verbatim-qa.md` | 2026-08-18 |
| 6e. Joshua — Easy tier | 10 items (9 re-verified 2026-08-20; item 10 re-verified 2026-08-22 after its blank moved) | `pass` | Item 10's escalation resolution: blank moved from "Gaza" to "Gibeon" (same verse, Josh 10:41) — "Gibeon" re-confirmed verbatim | `docs/qa/joshua-easy-verbatim-qa.md` | 2026-08-20 / 2026-08-22 |
| 6h. Joshua — Hard tier | 10 items | `pass` | None | `docs/qa/joshua-hard-verbatim-qa.md` | 2026-08-19 |
| 7e. Judges — Easy tier | 11 items | `pass` | None | `docs/qa/judges-easy-verbatim-qa.md` | 2026-08-19 |
| 7h. Judges — Hard tier | 11 items | `pass` | None | `docs/qa/judges-hard-verbatim-qa.md` | 2026-08-19 |
| 8e. Ruth — Easy tier | 9 items | `pass` | None | `docs/qa/ruth-easy-verbatim-qa.md` | 2026-08-19 |
| 8h. Ruth — Hard tier | 9 items | `pass` | None | `docs/qa/ruth-hard-verbatim-qa.md` | 2026-08-19 |
| 4e. Numbers — Easy tier | 12 items | `pass` | None (text) — see rollout-ingest note below for a separate SQL-escaping bug caught pre-deploy | `docs/qa/numbers-easy-verbatim-qa.md` | 2026-08-19 |
| 4h. Numbers — Hard tier | 12 items | `pass` | None (text) — see rollout-ingest note below for a separate SQL-escaping bug caught pre-deploy | `docs/qa/numbers-hard-verbatim-qa.md` | 2026-08-19 |
| 5e. Deuteronomy — Easy tier | 12 items | `pass` | Two required text fixes applied pre-QA | `docs/qa/deuteronomy-easy-verbatim-qa.md` | 2026-08-19 |
| 5h. Deuteronomy — Hard tier | 12 items | `pass` | One blocking fix (item 8, Deut 34:9 trim) applied pre-QA | `docs/qa/deuteronomy-hard-verbatim-qa.md` | 2026-08-19 |
| 9e. 1 Samuel — Easy tier | 11 items | `pass` | One blocking answer-key defect (item 2) applied pre-QA | `docs/qa/1-samuel-easy-verbatim-qa.md` | 2026-08-19 |
| 9h. 1 Samuel — Hard tier | 11 items | `pass` | One blocking text-integrity fix (item 4, 1 Sam 16:1); one item's graded token moved off "Yahweh" per review §6.2 | `docs/qa/1-samuel-hard-verbatim-qa.md` | 2026-08-19 |
| 10e. 2 Samuel — Easy tier | 12 items | `pass` | Three required fixes applied pre-QA; chapter-11 exclusion re-confirmed absolute | `docs/qa/2-samuel-easy-verbatim-qa.md` | 2026-08-19 |
| 10h. 2 Samuel — Hard tier | 12 items | `pass` | Four required fixes (contested-territory reasoning, not item text); chapter-11 exclusion re-confirmed absolute | `docs/qa/2-samuel-hard-verbatim-qa.md` | 2026-08-19 |
| 11e. 1 Kings — Easy tier | 16 items | `pass` | Six required fixes — three partial-verses-as-whole-verses, two invented-text-in-quotes, both `CONTENT_STYLE_GUIDE.md` §3 violations, all corrected pre-QA | `docs/qa/1-kings-easy-verbatim-qa.md` | 2026-08-19 |
| 11h. 1 Kings — Hard tier | 16 items | `pass` | Four required fixes applied pre-QA | `docs/qa/1-kings-hard-verbatim-qa.md` | 2026-08-19 |
| 12e. 2 Kings — Easy tier | 16 items | `pass` | Three required fixes applied pre-QA | `docs/qa/2-kings-easy-verbatim-qa.md` | 2026-08-19 |
| 12h. 2 Kings — Hard tier | 16 items | `pass` | **Real WEB-edition conflict at 19:15** (four live sources, three different readings) resolved by aligning to the shipped `medium` reading — see rollout-ingest note below | `docs/qa/2-kings-hard-verbatim-qa.md` | 2026-08-19 |
| 13e. 1 Chronicles — Easy tier | 6 items | `pass` | Two blocking + two smaller required fixes applied pre-QA; stays deliberately thin, not padded | `docs/qa/1-chronicles-easy-verbatim-qa.md` | 2026-08-19 |
| 13h. 1 Chronicles — Hard tier | 6 items | `pass` | Four required fixes applied pre-QA; stays deliberately thin, not padded | `docs/qa/1-chronicles-hard-verbatim-qa.md` | 2026-08-19 |
| 14e. 2 Chronicles — Easy tier | 12 items | `pass` | Three required fixes applied pre-QA; 7:14/36:17 exclusions confirmed held | `docs/qa/2-chronicles-easy-verbatim-qa.md` | 2026-08-19 |
| 14h. 2 Chronicles — Hard tier | 12 items | `pass` | None to shipped text; 29:10 "fierce anger" reading confirmed against four sources | `docs/qa/2-chronicles-hard-verbatim-qa.md` | 2026-08-19 |
| 15. Ezra | 15 | **`pass-with-corrections`** | **Real correction:** 9:6 silently dropped "and our guiltiness has grown up to the heavens" with no ellipsis — restored with the trim honestly marked | `docs/qa/ezra-verbatim-qa.md` | 2026-08-25 |
| 16. Nehemiah | 15 | **`pass-with-corrections`** | **Real corrections:** 13:15, 13:19, 13:22 each silently dropped a trailing clause/sentence — all restored with trims honestly marked | `docs/qa/nehemiah-verbatim-qa.md` | 2026-08-25 |
| 17. Esther | 13 | **`pass-with-corrections`** | **Real corrections:** 3:9 and 7:3-4 silently dropped trailing content (fixed with ellipsis); 3:13 silently dropped ", and to plunder their possessions" — restored in full since the theological review's own self-defense reading of ch. 9 relies on this verse establishing the decree permitted plunder | `docs/qa/esther-verbatim-qa.md` | 2026-08-25 |
| 18. Job | 20 | **`pass-with-corrections`** | **Real correction:** 1:8 read "no one like him **on** the earth" — actual WEB reads "**in** the earth," confirmed against two independent sources and consistent with the parallel wording at 2:3 | `docs/qa/job-verbatim-qa.md` | 2026-08-25 |
| 19. Psalms | 37 (6 psalms) | `pass` | None — full two-source coverage already done at review time, re-confirmed independently here | `docs/qa/psalms-verbatim-qa.md` | 2026-08-25 |
| 20. Proverbs | 14 | `pass` | None | `docs/qa/proverbs-verbatim-qa.md` | 2026-08-25 |
| 21. Ecclesiastes | 9 | `pass` | None | `docs/qa/ecclesiastes-verbatim-qa.md` | 2026-08-25 |
| 22. Song of Solomon | 6 | `pass` | None — one apparent discrepancy at 8:6 ("Yah" vs "Yahweh") investigated and resolved in the brief's favor: a genuine cross-edition WEB printing variant (same class as the known 2 Kings 19:15 case), confirmed by triangulating two more sources against the brief's original two | `docs/qa/song-of-solomon-verbatim-qa.md` | 2026-08-25 |
| 23. Isaiah | 26 | `pass` | None — 7:14/9:6-7/53 exclusion confirmed absent via grep, not just trusted | `docs/qa/isaiah-verbatim-qa.md` | 2026-08-25 |
| 24. Jeremiah | 22 | `pass` | None to the brief — one apparent discrepancy at 28:9 investigated and resolved against the independent source (a Bible Hub transcription variance, confirmed via a fresh ebible.org fetch matching the brief); 39:6-7 exclusion confirmed absent | `docs/qa/jeremiah-verbatim-qa.md` | 2026-08-25 |
| 25. Lamentations | 10 | `pass` | None — 5:22, 2:20/4:10, and 3:1-17 exclusions all confirmed absent (each independently confirmed present in source, so genuinely excluded, not missing) | `docs/qa/lamentations-verbatim-qa.md` | 2026-08-25 |
| 26. Ezekiel | 24 | `pass` | None — closes the two single-source-only blocks the review had flagged (34:2-4/11-12/15-16, all of 37:1-14), now independently confirmed; chs. 16/23/38-39 exclusion confirmed absent | `docs/qa/ezekiel-verbatim-qa.md` | 2026-08-25 |
| 27. Daniel | 22 | `pass` | None — chs. 7-12 exclusion confirmed absent (only hit was a citation URL inside the exclusion-rationale prose) | `docs/qa/daniel-verbatim-qa.md` | 2026-08-25 |
| 28. Hosea | 25 | `pass` | None — chs. 1-3 (Gomer marriage) confirmed narrative-fact-only, no graphic detail | `docs/qa/hosea-verbatim-qa.md` | 2026-08-26 |
| 29. Joel | 8 | `pass` | None | `docs/qa/joel-verbatim-qa.md` | 2026-08-26 |
| 30. Amos | 10 | `pass-with-corrections` | **Real corrections:** 1:3, 2:6, 5:11 each silently dropped a clause (opening "Yahweh says:" attribution or closing sentence) — all restored with trims honestly marked; 9:11-12 and 2:7b exclusions confirmed absent | `docs/qa/amos-verbatim-qa.md` | 2026-08-26 |
| 31. Obadiah | 3 | `pass-with-corrections` | **Real correction:** 1:12 silently dropped its final clause ("Don't speak proudly in the day of distress.") — restored with the trim honestly marked | `docs/qa/obadiah-verbatim-qa.md` | 2026-08-26 |
| 32. Jonah | 17 | `pass` | None | `docs/qa/jonah-verbatim-qa.md` | 2026-08-26 |
| 33. Micah | 13 | `pass` | None — Micah 5:1-5 exclusion confirmed absent via grep, not just trusted; two flagged single-source rows (6:6-7, 7:18-20) both confirmed | `docs/qa/micah-verbatim-qa.md` | 2026-08-26 |
| 34. Nahum | 5 | `pass-with-corrections` | **Real corrections:** 1:2 and 1:3 each silently dropped mid-verse without a trim label (quoted wording itself was accurate) — labeled `(trimmed)`; chs. 2-3 graphic-imagery exclusion (3:3-6, 3:10) confirmed absent | `docs/qa/nahum-verbatim-qa.md` | 2026-08-26 |
| 35. Habakkuk | 11 | `pass` | None — existing `(trimmed)` labels on 1:3 and 3:19 independently re-confirmed accurate | `docs/qa/habakkuk-verbatim-qa.md` | 2026-08-26 |
| 36. Zephaniah | 6 | `pass` | None — ch. 1 graphic-imagery and ch. 2 oracles-against-the-nations exclusions confirmed absent | `docs/qa/zephaniah-verbatim-qa.md` | 2026-08-26 |
| 37. Haggai | 7 | `pass-with-corrections` | **Citation fix only, no wording changed:** 2:4 was mislabeled `(WEB, trimmed)` when the quote is actually the complete verse — corrected to `(WEB)`; 2:10-19/2:20-23 exclusions confirmed absent | `docs/qa/haggai-verbatim-qa.md` | 2026-08-26 |
| 38. Zechariah | 33 | `pass-with-corrections` | **Real correction:** 8:17 silently dropped its trailing "says Yahweh" — restored to match source; chs. 9-14 exclusions (9:9, 11:12-13, 12:10, 13:7) confirmed absent, scope confirmed limited to chs. 1-8 | `docs/qa/zechariah-verbatim-qa.md` | 2026-08-26 |
| 39. Malachi | 20 | `pass` | None — 1:2-3 and 2:10-16 exclusions confirmed absent; checked against a 4th independent source (bible.com WEBUS) since the other three were already exhausted during review. **Final book of the 39-book Old Testament expansion — closes the last outstanding verbatim-QA row.** | `docs/qa/malachi-verbatim-qa.md` | 2026-08-26 |

### Old Testament expansion, Wave 2 (worlds 23-27) — verbatim QA complete, 2026-08-25

All 5 Wave 2 books (the Major Prophets, per `docs/CANON_STRUCTURE.md` §6) cleared this gate the
same day their content was authored and theologically reviewed — **all 5 passed clean, zero
corrections needed**, a cleaner wave than Wave 1's (4 of 8 needed real text fixes). Zero
theological escalations this wave either. Every book's deliberate content exclusion (Isaiah's
7:14/9:6-7/53; Jeremiah's 39:6-7; Lamentations' 5:22/2:20/4:10/3:1-17; Ezekiel's chs. 16/23/38-39;
Daniel's chs. 7-12) was independently re-confirmed absent from challenge-ready content, not just
trusted from the brief's own claim. **Both required content gates are now clear for all 5 books.**
Ingestion into the live `challenge` table has not run yet. Medium tier only.

### Old Testament expansion, Wave 1 (worlds 15-22) — verbatim QA complete, 2026-08-25

All 8 Wave 1 books (Ezra through Song of Solomon, per `docs/CANON_STRUCTURE.md` §6) cleared this
gate the same day their content was authored and theologically reviewed — 4 of 8 needed real text
corrections (Ezra, Nehemiah, Esther, Job), all now fixed in their content briefs; the other 4
(Psalms, Proverbs, Ecclesiastes, Song of Solomon) passed clean. Both books that were escalated for
theological review (Ezra Scene 5, Song of Solomon whole-book) were resolved by Kachi before this QA
pass ran — see `docs/CONTENT_REVIEW_LOG.md`. **Both required content gates (theological review +
verbatim QA) are now clear for all 8 books.** Ingestion into the live `challenge` table has not run
yet — that's the next step, not part of this pass. Medium tier only.

### Addendum, 2026-08-19 — two real corrections found in already-`pass`-QA'd `medium` content

While reviewing new easy/hard tier briefs against the already-approved `medium` books (which this
table records as `pass` above), the theological-reviewer agent independently re-checked the
`medium` text it was inheriting as "settled ground" and found two real defects that had slipped
through the original 2026-08-08 pass. Both are now corrected directly in the live `challenge`
table (not just the new tier briefs) and in the source content brief where applicable — this is an
addendum, not an edit to the original pass rows above, per this log's append-only convention.

- **2 Chronicles 5:13-14** (row 14 above, originally `pass`, 12 verses checked): the stored
  `verse_text`/`answer_key` template read "The trumpeters and singers were as one... the house was
  filled" — live WEB sources (BibleGateway, confirmed 2026-08-19) read "**when** the trumpeters and
  singers were as one... **then** the house was filled," since the verse continues directly from
  5:12's "when." Corrected in the `challenge` table and in `docs/content/2-chronicles.md`.
- **Exodus 20:12-15** (row 2, originally `pass`, 16 verses checked): this was a real answer-key
  defect, not a text discrepancy — the multiple-choice stem asked "which of these appears in
  Exodus 20:12-15," and "You shall not covet your neighbor's house" is a *correct* answer to that
  literal question under Jewish/Masoretic versification (coveting falls at v.14 in that numbering
  scheme, inside the cited range). The verse text displayed to the player was always correct; the
  question was implicitly assuming Christian versification. Corrected by re-anchoring the stem to
  "which of these instructions appears in this passage?" — the displayed WEB text is fixed and ends
  at "steal," so the distractor is now unambiguously absent regardless of any translation's verse
  numbering.

Neither defect was caught by the original 2026-08-08 pass because that pass checked verse text
against sources but did not test answer keys against alternate versification schemes, and did not
catch the missing "when...then" clause structure in a syntax-only skim. Worth remembering for any
future QA pass: check the *grammatical connectives* at verse boundaries, not just the words inside
them, and check multiple-choice stems against range-citation ambiguity, not just verse text.

### Rollout-ingest note, 2026-08-25 — a real SQL-escaping bug caught pre-deploy, not a content defect

While preparing `docs/ingest/numbers-deuteronomy-tiers.sql` for deployment, pre-deploy due diligence
found that every JSON `answer_key` literal in the file used quadrupled apostrophe escaping (`''''`)
instead of the correct doubled escaping (`''`) for apostrophes inside the embedded JSON text — e.g.
"father''''s" instead of "father''s". Postgres would have decoded this into a stored string containing
two literal apostrophe characters ("father''s" — doubled, not single) rather than the correct "father's".
This is not a verbatim-text/theological-review defect (the verse text itself, checked above, was
always correct) — it is a SQL-generation bug specific to this one ingest file, isolated to the JSON
answer_key fields. **Fixed and fully re-validated** before applying: all 48 answer_key JSON literals
in the file were parsed and structurally checked (multiple-choice option counts, sequence-order
permutations, recall blanks) after simulating Postgres's unescaping, confirmed against a live query of
the deployed rows. No other ingest file in this project (checked: `exodus-leviticus-tiers.sql`,
`joshua-judges-ruth-tiers.sql`, `1-2-samuel-tiers.sql`) had this defect. See `MEMORY.md` for the full
account.

### Rollout-ingest note, 2026-08-25 — a real WEB-edition text conflict, resolved by matching the
shipped `medium` reading

`docs/reviews/2-kings-hard-review.md` found that 2 Kings 19:15 has three different live WEB readings
across four sources checked (ebible.org's current `/web` edition: "enthroned above the cherubim";
ebible.org's `/engwebp` edition: "LORD... enthroned above"; BibleGateway/BibleHub: "who are enthroned
above the cherubim"), and that the new hard-tier brief's drafter-sourced text did not match the
already-shipped `medium` tier's reading for the same verse. Not a doctrinal issue (the graded token,
"cherubim," is identical across all three printings) — a text-integrity/consistency issue. **Resolved
by aligning the hard-tier item to the already-shipped `medium` reading** ("who are enthroned above the
cherubim"), independently re-verified before ingestion. This is the second time this project's
translation source has shown edition drift (the first was Gen 12:1's "Get out of your country" vs.
"Leave your country," `docs/reviews/genesis-easy-review.md` §1) — **Open Decision #1 in
`GEN2REV_MASTER_PROMPT.md` names the WEB translation but not a specific edition/printing**, which is
what actually needs pinning to prevent this recurring. Flagged for Kachi; not resolved as a formal
Open Decision by this ingest pass. See `MEMORY.md` for the full account.

## Difficulty-mode rollout status — COMPLETE (2026-08-25)

**All 14/14 MVP books now have live easy/medium/hard content**, verified via SQL against the live
`challenge` table. Genesis's `easy`/`hard` tiers (the pilot) cleared both required gates 2026-08-18;
the remaining 13 books cleared both gates and shipped across 2026-08-22 and 2026-08-25 (Joshua-easy's
one escalated item resolved 2026-08-22; the 2 Kings 19:15 edition conflict above resolved 2026-08-25
— see `docs/CONTENT_REVIEW_LOG.md`). The functional end-to-end and accessibility passes named in
`QA_REQUIREMENTS.md` §1/§4 remain the only outstanding QA work, still scheduled for Phase 5.

## MVP-wide status (as of 2026-08-08)

**All 14/14 MVP books pass independent verbatim-text QA.** 187 verse-blocks checked in total across
all books. Two books required a real wording correction (1 Samuel 16:13, 2 Kings 19:15 — both
silently dropped a trailing clause without an ellipsis marker, now restored); one book (1 Kings)
needed a labeling fix only (mislabeled partial quotes, no text was wrong). The remaining 11 books
needed no changes at all — every discrepancy noted across the full pass was cosmetic (quote style,
trim-boundary punctuation) and did not require correction.

**Combined with `docs/CONTENT_REVIEW_LOG.md` (all 14 books `approved`), every MVP book has now
cleared both required gates** — theological/neutrality review and independent verbatim-text QA —
ahead of the Phase 5 schedule originally implied by `GEN2REV_MASTER_PROMPT.md`, at Kachi's request.
**Still outstanding before Phase 4 ingestion:** the functional end-to-end pass and accessibility
audit portions of `QA_REQUIREMENTS.md` §1/§4 — those require a built game to run against and remain
scheduled for Phase 5.

## Decision values

- `pass` — every verse confirmed character-for-character across at least two sources, no
  corrections needed
- `pass-with-corrections` — one or more discrepancies found and fixed directly in the content
  brief; the brief now reflects the corrected text
- `unresolved` — a genuine discrepancy was found across sources that couldn't be confidently
  resolved; blocked pending a tie-breaking check
