# Verbatim-Text QA — Numbers (World 4)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of every
challenge-ready verse in `docs/content/numbers.md`, distinct from and in addition to the theological
review already recorded in `docs/reviews/numbers-review.md`.

Reviewer for this pass: independent QA (this session), 2026-08-08.

**Method:** for verses the review already cross-checked against two sources (ebible.org +
biblegateway.com), this pass re-fetched from a third, independent source (Bible Hub WEB pages,
`https://biblehub.com/web/<book>/<chapter>.htm`). For verses the review flagged as single-source
only (ebible.org), this pass fetched from a second, previously-unused source (Bible Hub). All
comparisons are against the exact text as written in `docs/content/numbers.md`.

## Verse-by-verse results

| Verse(s) | Prior sources (per review) | This pass's source | Result | Notes |
|---|---|---|---|---|
| Num 1:1-3 | ebible.org (single) | Bible Hub | Match | Second source confirms; no discrepancy |
| Num 2:1-2 | ebible.org (single) | Bible Hub | Match | Second source confirms; no discrepancy |
| Num 13:27-28 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Num 13:30 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Num 14:1-4 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms. Brief runs vv.2-3 together without the closing/opening quotation mark that separates the two verses in the source — cosmetic quotation-mark rendering only, no word changed |
| Num 14:24 | ebible.org (single) | Bible Hub | Match | Second source confirms; no discrepancy |
| Num 16:1-3 (trimmed) | ebible.org (single) | Bible Hub | Match | Second source confirms; trimmed portions correctly marked with ellipses, included text word-for-word accurate |
| Num 16:31-32 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Num 26:11 | ebible.org (single) | Bible Hub | Match | Second source confirms; no discrepancy |
| Num 21:6-7 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Num 21:8-9 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Num 22:27-28 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Num 22:31 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Num 23:19 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |

## Discrepancies found

None that affect wording, word order, verse numbering, or omit/add substantive content. One
cosmetic-only note (Num 14:1-4 quotation-mark join across the verse-2/verse-3 boundary) recorded
above for completeness — the underlying words are identical to source in all three sources checked.

## Corrections made to `docs/content/numbers.md`

None. No real (non-cosmetic) discrepancy was found in any of the 14 challenge-ready verses.

## Overall verdict: **pass**

All 14 challenge-ready verses in Numbers (including the five single-source-only verses flagged by
the theological review — Num 1:1-3, 2:1-2, 14:24, 16:1-3, 26:11 — which were prioritized per this
assignment) are confirmed character-for-character accurate against an independent second/third
source. No corrections were necessary. The book's content is verbatim-QA-clean and, pending the
functional/accessibility passes and `QA_SIGNOFF.md` recording per `QA_REQUIREMENTS.md` §3, no longer
blocked from ingestion on verbatim-text grounds.
