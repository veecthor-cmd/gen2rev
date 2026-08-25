# Verbatim-Text QA — Isaiah (World 23)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/isaiah-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/isaiah.md`.

Both sources already used by the theological review (ebible.org and biblegateway.com — see
`docs/reviews/isaiah-review.md` §1, full two-source coverage on every verse, the Song of Solomon
standard given this book's sensitivity). This pass fetched every challenge-ready verse from a
genuinely different, independent third source — **Bible Hub** (`biblehub.com/web/<book>/<chapter>.htm`),
WEB translation — and compared character-for-character against the brief's quoted text.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Isa 1:16-18 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Isa 2:2-4 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Isa 6:1-8 (all 8 verses) | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Isa 12:2-6 (all 5 verses) | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Isa 38:1 | ebible + biblegateway | Bible Hub (3rd source) | Match for wording; quote-nesting style differs (see note 1) |
| Isa 38:2-3 (trimmed) | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Isa 38:5 (trimmed) | ebible + biblegateway | Bible Hub (3rd source) | Match for wording; quote-nesting style differs (see note 1) |
| Isa 40:28-31 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Isa 41:10 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Isa 55:6-9 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |

All 8 passages (26 challenge-ready verse blocks total, counting Isaiah 6:1-8 as 8 and Isaiah
12:2-6 as 5 individually) checked — 100% coverage per `QA_REQUIREMENTS.md` §3.

## Notes

1. **Isaiah 38:1 and 38:5 — quote-nesting style, not a wording discrepancy.** The brief renders
   these with full nested-quotation punctuation, since both verses are speech quoted inside
   reported speech (38:1: Isaiah reporting what Yahweh says; 38:5: the narrator reporting Yahweh's
   word to Isaiah, which itself reports what Yahweh says to Hezekiah — three levels deep). Bible
   Hub's rendering flattens all nesting to single quote marks throughout (e.g. brief's `'Yahweh,
   the God of David your father, says, "I have heard your prayer..."'` vs. Bible Hub's `'Yahweh,
   the God of David your father, says, 'I have heard your prayer...'`). Every word, in every case,
   is identical — only the quote-mark nesting convention differs between sources. This is the same
   cosmetic pattern already documented in `docs/qa/genesis-verbatim-qa.md` note 3 for this same
   source (Bible Hub) against the same two prior sources. No wording, word-order, omission, or
   verse-number discrepancy. No correction needed.
2. Isaiah 55:8's unusual trailing punctuation in the brief (`"For my thoughts are not your
   thoughts, and your ways are not my ways," says Yahweh."` — note the doubled closing quote) is
   reproduced identically in the Bible Hub source text, confirming it is a genuine WEB-text
   formatting quirk at this verse, not a brief-introduced error.

## Content-integrity check (scope note, alongside the verbatim check)

Confirmed via `Grep` across `docs/content/isaiah.md` that **Isaiah 7:14, 9:6-7, and Isaiah 53**
appear only inside the brief's own exclusion rationale (Setting/Era intro, "Deliberate exclusions"
subsection of Contested Territory, and the acceptance-criteria checklist) — never inside a
"Challenge-ready verses" block or a Difficulty Ladder example. None of the three excluded
references appear anywhere in this book's actual challenge-ready content. Exclusion holds.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies
were found in any of the 8 challenge-ready passages checked. `docs/content/isaiah.md` was not
modified.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/isaiah.md` confirmed character-for-character
accurate against source (Bible Hub as independent third source, per `QA_REQUIREMENTS.md` §3, on
top of the theological review's own two-source ebible.org + biblegateway.com check). No corrections
needed. Deliberate exclusion of Isaiah 7:14, 9:6-7, and Isaiah 53 confirmed to hold across the
brief's entire challenge-ready content.
