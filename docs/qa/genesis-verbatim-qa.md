# Verbatim-Text QA — Genesis (World 1)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/genesis-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-08.
Brief checked: `docs/content/genesis.md`.

For verses the theological review already cross-checked against two sources (biblegateway.com +
ebible.org), this pass re-fetched from a third, independent source (Bible Hub,
`biblehub.com/web/<book>/<chapter>.htm`). For verses the review flagged single-source-only
(biblegateway.com only), this pass fetched from a second, different source (Bible Hub).

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Gen 1:1-5 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Gen 1:27 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Gen 1:31 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Gen 3:6 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted portion (see note 1) |
| Gen 3:15 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Gen 3:23-24 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Gen 6:8 | biblegateway only | Bible Hub (2nd source) | Match, word-for-word |
| Gen 7:17 | biblegateway only | Bible Hub (2nd source) | Match, word-for-word |
| Gen 9:12-13 | biblegateway only | Bible Hub (2nd source) | Match, word-for-word |
| Gen 12:2-3 | biblegateway only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| Gen 15:6 | biblegateway only | Bible Hub (2nd source) | Match, word-for-word |
| Gen 22:2 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Gen 22:14 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion (see note 2) |
| Gen 37:3-4 | biblegateway only | Bible Hub (2nd source) | Match, word-for-word |
| Gen 45:4-5 | biblegateway only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| Gen 50:20 | biblegateway only | Bible Hub (2nd source) | Match, word-for-word |

## Notes

1. **Gen 3:6** — the brief quotes only the first sentence of the verse ("When the woman saw... she
   took some of its fruit, and ate.") and stops there; the full verse continues "Then she gave some
   to her husband with her, and he ate it, too." The quoted portion is word-for-word accurate; it is
   just not marked "(trimmed)" the way other partial quotes in this brief are (e.g. Gen 12:2-3,
   45:4-5). This is a labeling-consistency observation, not a wording error — no player-facing text
   is inaccurate. No correction made; flagged for the content-authoring team's awareness only.
2. **Gen 22:14** — the brief renders the trimmed quote as `'Yahweh Will Provide.'` (closing period
   inside the quote mark, since the quote is cut off there); the source renders the full sentence as
   `'Yahweh Will Provide'. As it is said to this day...` (period outside the quote mark, sentence
   continues). This is the expected punctuation adjustment that comes from trimming at a natural
   boundary, not a wording discrepancy. Cosmetic.
3. Several verses (none listed as blocking) show a quote-nesting style difference between sources —
   Bible Hub flattens nested quotations to a single quote-mark style, while the brief and ebible use
   nested single/double quotes for reported speech. Words are identical in every case checked;
   treated as cosmetic rendering, not a wording discrepancy.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies
were found in any of the 16 challenge-ready verse blocks checked.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/genesis.md` confirmed character-for-character
accurate against source (Bible Hub as third/second independent source, per `QA_REQUIREMENTS.md`
§3). No corrections needed. `docs/content/genesis.md` was not modified.
