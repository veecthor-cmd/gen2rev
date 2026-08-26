# Verbatim-Text QA — Jonah (World 32)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/jonah-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/jonah.md`.

Prior sources (per brief + `docs/reviews/jonah-review.md` §1): every challenge-ready verse in this
brief was already double-sourced against ebible.org and biblegateway.com (both WEB) during
authoring/review — Jonah is short enough that full double-sourcing was practical for the whole
book. This pass re-fetched every challenge-ready verse from a third, independent source — Bible Hub
(`biblehub.com/web/jonah/<chapter>.htm`), still WEB translation — per `QA_REQUIREMENTS.md` §3's
100%-coverage requirement (not sampled).

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Jonah 1:1-2 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 1:3 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 1:9 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 1:12 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 1:15-16 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 1:17 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 2:2 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 2:9 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word (full verse, no trim — confirms the review's earlier trim-label fix was applied correctly) |
| Jonah 2:10 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 3:1-2 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 3:4 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 3:5 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 3:10 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 4:2 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 4:6 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 4:9 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Jonah 4:10-11 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word (verses 10 and 11 are separate verses in the source, both Yahweh's continuous speech; the brief's combined "4:10-11" citation and quote boundary are accurate) |

## Notes

1. Jonah 1:1-2 is presented in the brief as a single combined quotation across two source verses
   (v.1: "Now Yahweh's word came to Jonah the son of Amittai, saying," + v.2: "Arise, go to
   Nineveh..."). Confirmed against Bible Hub that concatenating the two verses produces exactly the
   brief's quoted text, with no wording change — this is a citation-scope choice (already disclosed
   via the brief's own "Jonah 1:1-2" reference), not a discrepancy.
2. No silent truncations found in this book. Every challenge-ready quote either reproduces a full
   verse or a full, natural multi-verse span, matching the source exactly.
3. The one correction already made during theological review (Jonah 2:9's trim-label fix, restoring
   the full verse and removing an inaccurate "(trimmed)" label) was independently re-verified here
   against a third source and confirmed correct as it now stands in `docs/content/jonah.md`.

## Corrections made

None. No wording, word-order, omission, silent-truncation, or wrong-verse-number discrepancies were
found in any of the 17 challenge-ready verse blocks checked.

## Exclusion / scope checks

Not applicable to this book — Jonah's brief and review identify no verse-range exclusion comparable
to Micah's or Nahum's (its Contested Territory items are narrative-framing bounds, not verse
exclusions).

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/jonah.md` confirmed character-for-character
accurate against source (Bible Hub as an independent third source, distinct from the ebible.org and
biblegateway.com sources already used during authoring/review, per `QA_REQUIREMENTS.md` §3). No
corrections needed. `docs/content/jonah.md` was not modified by this pass.
