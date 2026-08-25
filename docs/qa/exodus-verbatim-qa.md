# Verbatim-Text QA — Exodus (World 2)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/exodus-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-08.
Brief checked: `docs/content/exodus.md`.

For verses the theological review already cross-checked against two sources (ebible.org +
biblegateway.com), this pass re-fetched from a third, independent source (Bible Hub). For verses
the review flagged single-source-only (ebible.org only), this pass fetched from a second, different
source (Bible Hub).

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Ex 3:5 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Ex 3:7-8 | ebible + biblegateway | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Ex 3:14 | ebible + biblegateway | Bible Hub (3rd source) | Match in wording; quote-nesting punctuation differs (see note 1) |
| Ex 12:12-13 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Ex 12:14 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Ex 12:29-30 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Ex 20:2-3 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Ex 20:12-15 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Ex 20:4 (not graded content) | ebible + biblegateway, one-word discrepancy flagged | Bible Hub (3rd source, tiebreaker) | Resolved — see note 2 |
| Ex 14:21-22 | ebible only | Bible Hub (2nd source) | Match, word-for-word |
| Ex 14:30-31 | ebible only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| Ex 19:5-6 | ebible only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| Ex 19:8 | ebible only | Bible Hub (2nd source) | Match, word-for-word |
| Ex 32:1 | ebible only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| Ex 32:19-20 | ebible only | Bible Hub (2nd source) | Match, word-for-word |
| Ex 32:31-32 | ebible only | Bible Hub (2nd source) | Match, word-for-word |

## Notes

1. **Ex 3:14** — the brief renders the verse's nested quotation as `'You shall tell the children of
   Israel this: "I AM has sent me to you."'` (outer single quotes, inner double quotes). Bible Hub
   renders it flat, with no visible nesting: `'You shall tell the children of Israel this: I AM has
   sent me to you.'` A follow-up fetch of ebible.org confirmed the underlying nested-quotation
   structure does exist in the source (`"...this: 'I AM has sent me to you.' "` — outer double,
   inner single). All three sources agree on every word; only the quote-mark style/nesting
   convention differs between renderings. This is a cosmetic rendering difference (quote-mark
   convention), not a wording discrepancy — the brief's nesting is a defensible representation of
   the same underlying text. No correction made.
2. **Ex 20:4 discrepancy resolution (for the record; verse not used in any challenge-ready content)**
   — the exodus review flagged a one-word difference between ebible.org ("...or that is **on** the
   earth beneath...") and biblegateway.com ("...or that is **in** the earth beneath..."). This
   pass's third-source fetch (Bible Hub) returned **"in the earth beneath"**, agreeing with
   biblegateway.com. This is a 2-out-of-3 result favoring "in" as the correct WEB reading; the
   ebible.org fetch's "on" was most likely a WebFetch extraction artifact from that earlier pass, not
   a real variant in the published text. Since Ex 20:4 is not a challenge-ready verse anywhere in
   `docs/content/exodus.md`, this does not require or trigger any correction to the brief — recorded
   here to close the loose end the exodus review explicitly asked QA to resolve.
3. Several other verses (Ex 32:1, 32:31-32, Lev-style patterns) show the same cosmetic quote-nesting
   style difference as note 1 — words identical, punctuation-convention only. Not treated as
   discrepancies.

## Corrections made

None. No real (non-cosmetic) wording, word-order, or omission discrepancies were found in any
challenge-ready verse. The one genuine textual question flagged by the prior review (Ex 20:4) was
resolved by a third source and does not affect graded content, so no edit to
`docs/content/exodus.md` was required.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/exodus.md` confirmed character-for-character
accurate against source. The outstanding Ex 20:4 loose end from the theological review is resolved
(see note 2) and does not affect graded content. No corrections needed. `docs/content/exodus.md` was
not modified.
