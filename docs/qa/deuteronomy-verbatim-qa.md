# Verbatim-Text QA — Deuteronomy (World 5)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of every
challenge-ready verse in `docs/content/deuteronomy.md`, distinct from and in addition to the
theological review already recorded in `docs/reviews/deuteronomy-review.md`.

Reviewer for this pass: independent QA (this session), 2026-08-08.

**Method:** for verses the review already cross-checked against two sources (ebible.org +
biblegateway.com), this pass re-fetched from a third, independent source (Bible Hub WEB pages,
`https://biblehub.com/web/<book>/<chapter>.htm`). For the one verse the review flagged as
single-source only (ebible.org), this pass fetched from a second, previously-unused source
(Bible Hub). All comparisons are against the exact text as written in `docs/content/deuteronomy.md`.

## Verse-by-verse results

| Verse(s) | Prior sources (per review) | This pass's source | Result | Notes |
|---|---|---|---|---|
| Deut 5:6-7 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Deut 5:16 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Deut 5:17-19 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Deut 6:4-5 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Deut 6:6-7 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Deut 11:26-28 | ebible.org (single) | Bible Hub | Match | Second source confirms; no discrepancy — this was the review's only single-source-flagged verse for this book |
| Deut 30:19-20 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Deut 31:2-3 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Deut 31:7-8 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms. Brief runs vv.7-8 together as one continuous quotation; Bible Hub closes the quotation mark at the end of v.7 and opens v.8 as a new sentence. Words are identical in both — cosmetic quotation-mark rendering only |
| Deut 34:4-5 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms. Brief renders the nested quotation ("I will give it to your offspring.") with curly double quotes; Bible Hub renders the same nested quotation with single quotes. Cosmetic quote-style difference only, words identical |
| Deut 34:7 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms |
| Deut 34:10 | ebible.org + biblegateway.com | Bible Hub | Match | Third source confirms. Verse 10 in source ends with a comma and grammatically continues into vv.11-12 ("...whom Yahweh knew face to face, in all the signs and wonders..."); the brief closes the quoted clause with a period since it presents v.10 alone as a self-contained challenge item. Cosmetic end-punctuation difference from isolating one verse out of a multi-verse sentence, not a wording change |

## Discrepancies found

None that affect wording, word order, verse numbering, or omit/add substantive content. Three
cosmetic-only notes recorded above (quotation-mark joins/styles at verse boundaries, and one
verse-final punctuation change from isolating a clause) — the underlying words are identical to
source in all three sources checked in every case.

## Corrections made to `docs/content/deuteronomy.md`

None. No real (non-cosmetic) discrepancy was found in any of the 12 challenge-ready verses.

## Overall verdict: **pass**

All 12 challenge-ready verses in Deuteronomy (including the single-source-only verse flagged by the
theological review — Deut 11:26-28 — which was prioritized per this assignment) are confirmed
character-for-character accurate against an independent second/third source. No corrections were
necessary. The book's content is verbatim-QA-clean and, pending the functional/accessibility passes
and `QA_SIGNOFF.md` recording per `QA_REQUIREMENTS.md` §3, no longer blocked from ingestion on
verbatim-text grounds.
