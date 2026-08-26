# Verbatim-Text QA — Joel (World 29)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/joel-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/joel.md` (medium tier only, per the brief's own scope note).

Per `docs/reviews/joel-review.md` §1, every challenge-ready verse in this brief was already
checked against two independent live WEB sources (ebible.org + biblegateway.com) with a full
match — no single-source-only rows. This pass re-fetched every challenge-ready block from a
third, genuinely different source not previously cited: Bible Hub
(`biblehub.com/web/joel/<chapter>.htm`), still the World English Bible translation.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Joel 1:2 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Joel 1:4 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Joel 1:14 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Joel 1:15 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Joel 2:12 | ebible.org + biblegateway | Bible Hub (3rd source) | Match for wording (see note 1) |
| Joel 2:13 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Joel 2:28 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Joel 2:29 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |

## Notes

1. **Joel 2:12** — Bible Hub renders the verse with the speech ("turn to me...") in double quotes
   and "Yet even now," / "says Yahweh" outside them (`"Yet even now," says Yahweh, "turn to
   me..."`); the brief nests the whole verse inside single quotes for the outer attribution
   (`"'Yet even now,' says Yahweh, 'turn to me...'"`) since it sits inside a markdown double-quoted
   block. Every word is identical; this is the same kind of quote-style rendering difference noted
   in the Genesis QA pass, not a wording discrepancy.

## Contested-territory / exclusion checks

Read `docs/content/joel.md` end-to-end specifically for this:
- No New Testament cross-reference (Acts 2, Pentecost) appears anywhere in the brief outside the
  Contested Territory section's explanation of why it is excluded from graded content — confirmed.
- Joel 2:30-32 and all of Joel 3 do not appear anywhere in the brief's challenge-ready content —
  confirmed.

## Corrections made

None. All 8 challenge-ready verse blocks in `docs/content/joel.md` matched their independent
third-source (Bible Hub, WEB) text word-for-word; the only difference found was cosmetic
quote-style punctuation (note 1 above), not wording, omission, or wrong-verse-number errors.
`docs/content/joel.md` was not modified.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/joel.md` (medium tier) confirmed
character-for-character accurate against an independent third source (Bible Hub, WEB) per
`QA_REQUIREMENTS.md` §3. No corrections needed.
