# Verbatim-Text QA — Ecclesiastes (World 21)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/ecclesiastes-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/ecclesiastes.md`.

The theological review (`docs/reviews/ecclesiastes-review.md` §1) checked every verse against
ebible.org and, for the three most pivotal verses (1:2, 3:1-8, 12:13-14), also biblegateway.com.
All other rows were single-source (ebible.org) only. This pass re-fetched **every** challenge-ready
verse from a source neither prior check used — Bible Hub (`biblehub.com/web/<book>/<chapter>.htm`).

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Eccl 1:2 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Eccl 1:9 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Eccl 3:1-8 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word (all 8 sub-verses individually checked) |
| Eccl 3:11 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Eccl 4:9-10 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Eccl 4:12 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Eccl 12:1 | ebible.org only | Bible Hub (2nd source) | Match for wording; terminal punctuation differs (see note 1) |
| Eccl 12:13 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Eccl 12:14 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |

The 3:1-8 block (the longest and, per the theological review, highest-value target for careful
re-verification) was checked verse-by-verse against Bible Hub's chapter 3 page: all 8 "a time
to..." pairs, including internal punctuation (semicolons separating each pair, periods at the end
of verses 4 and 8), matched the brief's combined block exactly, word for word.

## Notes

1. **Eccl 12:1** — the brief quotes the verse ending "...when you will say, 'I have no pleasure in
   them.'" (period inside the closing quote mark). Bible Hub's WEB printing of the same verse ends
   "...when you will say, 'I have no pleasure in them;'" (semicolon inside the closing quote mark,
   since the sentence grammatically continues into verse 2, "While the sun, the light... are not
   darkened..."). The words are identical; this is the same category of trim-boundary punctuation
   adjustment noted in the Genesis QA pass (Gen 22:14, note 2) — the brief presents v1 alone as a
   complete challenge-ready quote and closes it with a period rather than reproducing the
   mid-sentence semicolon that continues into the next (unused) verse. Cosmetic, not a wording
   discrepancy. No correction made.

## Corrections made

None. No wording, word-order, omission, or wrong-verse-number discrepancies were found in any of
the 9 challenge-ready verse blocks checked. `docs/content/ecclesiastes.md` was not modified.

## Sources used

Bible Hub (`biblehub.com/web/ecclesiastes/<chapter>.htm`) — independent third source for the three
verses the theological review already cross-checked against two sources, and independent second
source for every other verse in this brief. No source was unreachable; no fallback source was
needed.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/ecclesiastes.md` confirmed
character-for-character accurate against source (Bible Hub as an independent source not previously
cited in this book's brief or review, per `QA_REQUIREMENTS.md` §3), with one cosmetic
punctuation-only observation (Eccl 12:1, note 1) that does not affect wording. No corrections
needed.
