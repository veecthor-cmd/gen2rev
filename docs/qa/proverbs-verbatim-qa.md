# Verbatim-Text QA — Proverbs (World 20)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/proverbs-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/proverbs.md`.

The theological review (`docs/reviews/proverbs-review.md` §1) checked every verse against
ebible.org and, for the three most pivotal verses (3:5-6, 22:6, 31:30), also biblegateway.com. All
other rows were single-source (ebible.org) only. This pass re-fetched **every** challenge-ready
verse from a source neither prior check used — Bible Hub (`biblehub.com/web/<book>/<chapter>.htm`)
— confirmed via both an AI-extracted read and, where needed, raw-HTML inspection.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Prov 1:7 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 3:5-6 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Prov 3:13-15 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 4:18-19 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 4:23 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 15:1 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 16:18 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 17:17 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 22:1 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 22:6 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Prov 27:17 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 31:10 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 31:25-26 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Prov 31:30 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |

For multi-verse blocks (3:5-6, 3:13-15, 4:18-19, 31:25-26), each underlying verse was fetched
individually from Bible Hub and concatenated to check against the brief's combined block; wording
and internal punctuation (colons, semicolons, periods) matched exactly in every case, including the
mid-clause punctuation the brief preserves (e.g. the semicolon in 3:5-6, the periods separating the
two sentences of 31:25-26).

## Notes

No cosmetic or formatting discrepancies were found in this book beyond what's already inherent to
combining adjacent single-verse quotes into one block (which introduced no punctuation change in
any Proverbs verse checked here, unlike some Ecclesiastes/Song of Solomon blocks in the sibling QA
passes for this batch).

## Corrections made

None. No wording, word-order, omission, punctuation, or wrong-verse-number discrepancies were found
in any of the 14 challenge-ready verse blocks checked. `docs/content/proverbs.md` was not modified.

## Sources used

Bible Hub (`biblehub.com/web/proverbs/<chapter>.htm`) — independent third source for the three
verses the theological review already cross-checked against two sources, and independent second
source for every other verse in this brief. No source was unreachable; no fallback source was
needed.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/proverbs.md` confirmed character-for-character
accurate against source (Bible Hub as an independent source not previously cited in this book's
brief or review, per `QA_REQUIREMENTS.md` §3). No corrections needed.
