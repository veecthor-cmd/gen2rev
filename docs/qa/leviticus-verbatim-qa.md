# Verbatim-Text QA — Leviticus (World 3)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/leviticus-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-08.
Brief checked: `docs/content/leviticus.md`.

For verses the theological review already cross-checked against two sources (ebible.org +
biblegateway.com), this pass re-fetched from a third, independent source (Bible Hub). For verses
the review flagged single-source-only (ebible.org only), this pass fetched from a second, different
source (Bible Hub).

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Lev 10:1-2 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Lev 10:3 | ebible + biblegateway | Bible Hub (3rd source) | Match for quoted portion (see note 1) |
| Lev 16:29-30 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Lev 16:34 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Lev 17:11 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Lev 19:18 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Lev 1:3-4 | ebible only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| Lev 19:2 | ebible only | Bible Hub (2nd source) | Match in wording; quote-nesting punctuation differs (cosmetic, see note 2) |
| Lev 19:15 | ebible only | Bible Hub (2nd source) | Match, word-for-word |
| Lev 19:33-34 | ebible only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| Lev 25:10 | ebible only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| Lev 25:17 | ebible only | Bible Hub (2nd source) | Match, word-for-word |

## Notes

1. **Lev 10:3** — the brief quotes "Then Moses said to Aaron, 'This is what Yahweh spoke of, saying,
   "I will show myself holy to those who come near me, and before all the people I will be
   glorified."'" and stops there. The source verse continues with one more short clause: "Aaron held
   his peace." The quoted portion is word-for-word accurate; the trailing clause is simply not
   included and not marked "(trimmed)." This does not misrepresent anything shown to a player — no
   correction made — but is flagged for the content team, especially since this verse is the one
   under a structural pairing rule (must always appear with 10:1-2) precisely because of its
   sensitivity, so completeness of its own text is worth a second look by content authors even though
   it isn't a QA accuracy failure.
2. **Lev 19:2** — same cosmetic quote-nesting rendering difference as noted in the Exodus QA pass
   (Ex 3:14): the brief nests a double quote inside a single quote for reported speech; Bible Hub
   renders the same words without that nesting. Words identical; punctuation-convention difference
   only, not a wording discrepancy.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies
were found in any of the 12 challenge-ready verse blocks checked.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/leviticus.md` confirmed character-for-character
accurate against source. No corrections needed. `docs/content/leviticus.md` was not modified.
