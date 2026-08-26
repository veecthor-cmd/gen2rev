# Verbatim-Text QA — Micah (World 33)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/micah-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/micah.md`.

Prior sources (per brief + `docs/reviews/micah-review.md` §1): most challenge-ready verses were
already double-sourced against ebible.org and biblegateway.com (both WEB) during authoring/review.
Two spans were flagged in the review as single-source-only (ebible.org only) and prioritized for
this pass: **Micah 6:6-7** and **Micah 7:18-20**. This pass fetched every challenge-ready verse from
a third/second independent source — Bible Hub (`biblehub.com/web/micah/<chapter>.htm`), still WEB
translation — per `QA_REQUIREMENTS.md` §3's 100%-coverage requirement (not sampled).

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Micah 1:2 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Micah 1:3 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Micah 1:4 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Micah 4:1 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Micah 4:2 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Micah 4:3 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Micah 4:4 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Micah 6:6 | ebible.org only (flagged single-source) | Bible Hub (2nd source) | Match, word-for-word |
| Micah 6:7 | ebible.org only (flagged single-source) | Bible Hub (2nd source) | Match, word-for-word |
| Micah 6:8 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Micah 7:18 | ebible.org only (flagged single-source) | Bible Hub (2nd source) | Match, word-for-word |
| Micah 7:19 | ebible.org only (flagged single-source) | Bible Hub (2nd source) | Match, word-for-word |
| Micah 7:20 | ebible.org only (flagged single-source) | Bible Hub (2nd source) | Match, word-for-word |

## Notes

1. All four pivotal-passage blocks (1:2-4, 4:1-4, 6:6-8, 7:18-20) are quoted in the brief as full,
   complete verses with no trims — confirmed against Bible Hub; no partial or silently-truncated
   quotes found anywhere in this book.
2. The review's two flagged single-source rows (Micah 6:6-7, Micah 7:18-20) were specifically
   prioritized for this pass and both confirmed as exact matches against Bible Hub, closing the gap
   the review left open.

## Exclusion / scope checks

Confirmed: **no `verse_ref` from Micah 5:1-5 appears anywhere in `docs/content/micah.md`.** Grepped
the file for every "Micah 5" / "Mic 5" occurrence — all ten matches are confined to the Setting/Era
paragraph and the "Contested Territory" section's discussion of *why* the passage is excluded (plus
the acceptance-criteria checkbox confirming the exclusion); none appear inside a "Challenge-ready
verses" block or any difficulty-ladder example. The Bethlehem-ruler oracle unit (5:1-5) is fully
absent from graded/quotable content, matching both the brief's own claim and the theological
review's independent confirmation.

## Corrections made

None. No wording, word-order, omission, silent-truncation, or wrong-verse-number discrepancies were
found in any of the 13 challenge-ready verses checked, and the Micah 5:1-5 exclusion holds.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/micah.md` confirmed character-for-character
accurate against source (Bible Hub as an independent second or third source, distinct from the
ebible.org and biblegateway.com sources already used during authoring/review, per
`QA_REQUIREMENTS.md` §3), including both single-source-only spans the review flagged for priority.
Micah 5:1-5 exclusion independently confirmed complete. No corrections needed.
`docs/content/micah.md` was not modified by this pass.
