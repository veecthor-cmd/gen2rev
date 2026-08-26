# Verbatim-Text QA — Hosea (World 28)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/hosea-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/hosea.md` (medium tier only, per the brief's own scope note).

Per `docs/reviews/hosea-review.md` §1, every challenge-ready verse in this brief was already
checked against two independent live WEB sources (ebible.org + biblegateway.com) with a full
match on the first fetch — no single-source-only rows. This pass re-fetched every challenge-ready
block from a third, genuinely different source not previously cited: Bible Hub
(`biblehub.com/web/hosea/<chapter>.htm`), still the World English Bible translation.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Hos 1:2 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 1:4 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 1:6 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 1:9 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 1:10 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 2:14-15 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 2:16 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 2:19-20 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 3:1 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 3:2-3 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 3:5 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 4:1 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 4:2 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 4:6 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 6:1-3 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 6:4 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 6:6 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 11:1 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 11:3-4 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 11:8 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 11:9 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 14:1-2 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Hos 14:3 | ebible.org + biblegateway | Bible Hub (3rd source) | Match for wording (see note 1) |
| Hos 14:4 | ebible.org + biblegateway | Bible Hub (3rd source) | Match for wording (see note 1) |
| Hos 14:9 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |

## Notes

1. **Hos 14:3-4** — Bible Hub renders these two verses with an extra layer of quotation marks
   (treating vv.2-4 as one continuous quoted speech), e.g. closing v.3 with `...finds mercy.'"` and
   wrapping all of v.4 in `'...'`. The brief and ebible.org/biblegateway.com render v.3 and v.4 as
   separate, unquoted statements once past the "Tell him, '...'" quotation opened in v.2. Every word
   is identical across all three sources in every case checked; this is the same kind of
   quote-nesting rendering difference noted in the Genesis QA pass (note 3) and is treated as
   cosmetic, not a wording discrepancy.
2. The brief's own inline note on Hosea 14:4 (that the assignment prompt's "I will heal their
   backsliding" phrasing does not match the verified WEB text, which reads "waywardness") is
   reconfirmed by this pass — Bible Hub also reads "I will heal their waywardness," consistent with
   the two sources the theological review already used. No further correction needed there.

## Marriage-narrative scope check (chs. 1-3)

Read `docs/content/hosea.md` end-to-end specifically for this. Confirmed: the brief states only
the bare narrative fact that Hosea was commanded to marry "a wife of prostitution" as a symbol of
Israel's unfaithfulness, and the bare fact of the price paid to buy her back (3:2) — no graphic
detail, no romanticizing or salacious framing, and no challenge item (per the Difficulty Ladder and
the Contested Territory bounding for 1:2/3:1) that requires grading anything beyond the bare
narrative fact. This matches the brief's own stated intent and the theological review's §2
sign-off on the same point.

## Corrections made

None. All 25 challenge-ready verse blocks in `docs/content/hosea.md` matched their independent
third-source (Bible Hub, WEB) text word-for-word; the only differences found were cosmetic
quote-nesting punctuation (note 1 above), not wording, omission, or wrong-verse-number errors.
`docs/content/hosea.md` was not modified.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/hosea.md` (medium tier) confirmed
character-for-character accurate against an independent third source (Bible Hub, WEB) per
`QA_REQUIREMENTS.md` §3. Marriage-narrative (chs. 1-3) handling confirmed narrative-fact-only, no
graphic detail. No corrections needed.
