# Verbatim-Text QA — Daniel (World 27)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/daniel-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/daniel.md`.

Prior sources used elsewhere in this book's pipeline (per `docs/reviews/daniel-review.md` §1):
ebible.org (all chapters) and biblegateway.com (chapters 3, 5, 6 only — chapters 1, 2, 4 were
single-source-only per the review, flagged explicitly for this QA pass to prioritize). This pass
used **Bible Hub** (`biblehub.com/web/<book>/<chapter>.htm`, WEB translation) as a genuinely
independent source not previously cited for this book, for every challenge-ready verse block —
not sampled, and with particular attention to the single-source rows (Daniel 1, 2, 4) the review
flagged.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| **Dan 1:8** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match, word-for-word** |
| **Dan 1:12** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match, word-for-word** |
| **Dan 1:15** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match, word-for-word** |
| **Dan 1:19-20** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match for quoted (trimmed) portion — see Note 1** |
| **Dan 2:19** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match, word-for-word — see Note 2 (labeling only)** |
| **Dan 2:23** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match for quoted (trimmed) portion** |
| **Dan 2:27-28** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match for quoted (trimmed) portion** |
| **Dan 2:47** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match for quoted (trimmed) portion** |
| Dan 3:16-18 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match for quoted (trimmed) portion |
| Dan 3:25 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Dan 3:28 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match for quoted (trimmed) portion |
| **Dan 4:30** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match, word-for-word** |
| **Dan 4:31** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match for quoted (trimmed) portion** |
| **Dan 4:34** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match for quoted (trimmed) portion** |
| **Dan 4:37** | ebible.org only (single-source, flagged) | **Bible Hub (independent 2nd source — priority re-check)** | **Match, word-for-word** |
| Dan 5:5-6 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match for quoted (trimmed) portion |
| Dan 5:25-28 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Dan 5:30 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Dan 6:10 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match for quoted (trimmed) portion |
| Dan 6:16 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Dan 6:21-22 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Dan 6:23 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match for quoted (trimmed) portion |

22 of 22 challenge-ready verse blocks checked — 100% coverage, none sampled.

## Notes

1. **Dan 1:19-20** — the brief's ellipsis correctly marks the omitted sentence "Therefore stood
   they before the king." between the two quoted halves. Quoted portions are word-for-word
   accurate. No discrepancy.
2. **Dan 2:19** — the brief labels this quote "(WEB, trimmed)," but the quoted text is in fact the
   complete, untrimmed verse ("Then the secret was revealed to Daniel in a vision of the night.
   Then Daniel blessed the God of heaven.") — there is no additional verse text omitted. This is a
   labeling-consistency observation only, structurally identical to `docs/qa/genesis-verbatim-qa.md`
   note 1 (Gen 3:6): the quoted text itself is accurate, it is simply mislabeled as trimmed when it
   is not. No player-facing text is inaccurate. No correction needed to the verse text; flagged for
   the content-authoring team's awareness only.
3. Several trimmed quotations in this brief (Dan 2:23, 2:27-28, 2:47, 3:16-18, 3:28, 4:31, 4:34,
   5:5-6, 6:10, 6:23) cut a verse at a natural clause boundary. Some mark the cut with an ellipsis
   inside the quotation (e.g. 1:19-20, 3:16-18, 3:28, 4:31, 6:10, 6:23); others cut cleanly at the
   end of the quoted material without a trailing ellipsis (e.g. 2:23, 2:27-28, 2:47, 4:34) or drop
   a leading speech-attribution tag ("Daniel answered before the king, and said,") without a
   leading ellipsis (2:27-28, 2:47). In every case checked, the quoted words themselves are
   word-for-word accurate against source — this is a labeling-style inconsistency (whether a cut is
   marked with "…" or not), not a wording, omission, or accuracy defect. Consistent with the same
   category of cosmetic finding in `docs/qa/genesis-verbatim-qa.md` note 2. No correction made.
4. Quote-nesting style differences (Bible Hub flattening nested quotation marks vs. the brief's
   nested single/double quotes) appear throughout, identical in kind to the pattern already
   documented in `docs/qa/genesis-verbatim-qa.md` note 3 and `docs/qa/ezekiel-verbatim-qa.md`
   note 1. Cosmetic only.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies
were found in any of the 22 challenge-ready verse blocks checked. `docs/content/daniel.md` was
not modified.

## Exclusion-scope confirmation

Searched `docs/content/daniel.md` for any `Daniel 7`, `Daniel 8`, `Daniel 9`, `Daniel 10`,
`Daniel 11`, or `Daniel 12` verse reference: the only match found is a citation URL
(`.../views_of_the_70_weeks_of_daniel.pdf`) inside the Setting/Era section's sourced discussion of
*why* chapters 7-12 are excluded — not a verse_ref, not challenge-ready text, and not part of any
challenge item. No verse, scene description, or graded content from Daniel 7-12 appears anywhere
in the brief.

## Sources used

- Bible Hub (`biblehub.com/web/daniel/<chapter>.htm`, WEB translation) — genuinely independent
  source, not previously cited for this book (prior pipeline used ebible.org and biblegateway.com
  only). All fetches succeeded; no source-unavailability issues encountered.

## Overall verdict

**pass** — all 22 challenge-ready verse blocks in `docs/content/daniel.md` confirmed
character-for-character accurate against an independent source (Bible Hub, WEB), including full
priority coverage of the single-source-only rows (Daniel 1, 2, 4) the theological review flagged.
No wording, omission, or wrong-verse-number discrepancies found — only cosmetic labeling
observations (Note 2, Note 3) consistent with prior QA passes in this project. No corrections
needed. `docs/content/daniel.md` was not modified. Exclusion of Daniel 7-12 confirmed complete.
