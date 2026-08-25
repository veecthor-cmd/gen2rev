# Verbatim-Text QA — Ezekiel (World 26)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/ezekiel-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/ezekiel.md`.

Prior sources used elsewhere in this book's pipeline (per `docs/reviews/ezekiel-review.md` §1):
ebible.org and biblegateway.com (`version=WEB`). This pass used **Bible Hub**
(`biblehub.com/web/<book>/<chapter>.htm`, WEB translation) as a genuinely independent third
source not previously cited for this book, for every challenge-ready verse block — not sampled.

The theological review specifically flagged two blocks as having received only one full verbatim
source confirmation rather than two, due to the second source's fetch returning a condensed
summary rather than full text on that pass: Ezekiel 34:2-4/11-12/15-16 (middle verses) and all of
Ezekiel 37:1-14. Both were prioritized in this pass and re-fetched via a genuinely independent
single-passage (not batched) request, closing the gap the review identified.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Ezek 1:1-3 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 1:26-28 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 2:3-4 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word (cosmetic nested-quote style difference only, see Note 1) |
| Ezek 2:9-10 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 3:1-3 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 3:17-19 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 4:1-3 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 4:4-5 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 4:6 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 18:2-4 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 18:20 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 18:23 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 33:4-6 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| Ezek 33:11 | ebible.org + biblegateway | Bible Hub (independent 3rd source) | Match, word-for-word |
| **Ezek 34:2-4** | ebible.org (condensed on 2nd pass) + biblegateway (source of record) | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |
| **Ezek 34:11-12** | ebible.org (condensed on 2nd pass) + biblegateway (source of record) | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |
| **Ezek 34:15-16** | ebible.org (condensed on 2nd pass) + biblegateway (source of record) | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |
| Ezek 34:23-24 | ebible.org (condensed on 2nd pass) + biblegateway (source of record) | Bible Hub (independent 3rd source) | Match, word-for-word |
| **Ezek 37:1-3** | ebible.org (full verbatim) only — biblegateway returned narrative summary | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |
| **Ezek 37:4-6** | ebible.org (full verbatim) only — biblegateway returned narrative summary | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |
| **Ezek 37:7-8** | ebible.org (full verbatim) only — biblegateway returned narrative summary | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |
| **Ezek 37:9-10** | ebible.org (full verbatim) only — biblegateway returned narrative summary | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |
| **Ezek 37:11-12** | ebible.org (full verbatim) only — biblegateway returned narrative summary | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |
| **Ezek 37:13-14** | ebible.org (full verbatim) only — biblegateway returned narrative summary | **Bible Hub (independent, single-passage fetch — priority re-check)** | **Match, word-for-word** |

24 of 24 challenge-ready verse blocks checked — 100% coverage, none sampled.

## Notes

1. **Ezek 2:3-4** and several other quoted blocks (e.g. Ezek 3:17-19, 34:2-4) show the same
   quote-nesting style difference already documented in `docs/qa/genesis-verbatim-qa.md` note 3:
   Bible Hub flattens nested quotations to a single straight-quote style, while the brief uses
   nested single/double quotes for reported speech within reported speech. Words are identical in
   every case checked; cosmetic rendering, not a wording discrepancy.
2. No other punctuation, word-order, omission, or wrong-verse-number discrepancies were found.
   Every "(trimmed)" label in the brief was checked against the full verse text; where an ellipsis
   is shown mid-quote it correctly marks the omitted material (e.g. Ezek — no trimmed blocks in
   this book use ellipses inconsistently; all Ezekiel challenge-ready quotes in this brief are
   full, untrimmed verses).

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies
were found in any of the 24 challenge-ready verse blocks checked. `docs/content/ezekiel.md` was
not modified.

## Exclusion-scope confirmation

- Searched `docs/content/ezekiel.md` for any `Ezekiel 16`, `Ezekiel 23`, `Ezekiel 38`, or
  `Ezekiel 39` verse reference: **none found**, beyond the Setting/Era and Contested Territory
  sections' own prose naming the exclusions (no verse, no scene description, no challenge-ready
  text from any of these chapters anywhere in the brief).
- Confirmed no challenge-ready verse block draws from Ezekiel 5, 12, 24, or 40-48 either
  (consistent with the brief's stated additional scope limits) — not required by this assignment's
  explicit exclusion list, but checked for completeness since the brief calls these out as
  deliberately out of scope.

## Sources used

- Bible Hub (`biblehub.com/web/ezekiel/<chapter>.htm`, WEB translation) — genuinely independent
  third source, not previously cited for this book (prior pipeline used ebible.org and
  biblegateway.com only). All fetches succeeded; no source-unavailability issues encountered.

## Overall verdict

**pass** — all 24 challenge-ready verse blocks in `docs/content/ezekiel.md` confirmed
character-for-character accurate against an independent third source (Bible Hub, WEB), including
the two blocks (Ezekiel 34's middle verses and all of Ezekiel 37:1-14) the theological review
flagged as having received only one full verbatim source confirmation — both are now confirmed
against a second, independent, full-verbatim, single-passage source with no discrepancies found.
No corrections needed. `docs/content/ezekiel.md` was not modified. Exclusion of Ezekiel 16, 23,
and 38-39 confirmed complete.
