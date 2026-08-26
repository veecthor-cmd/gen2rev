# Verbatim-Text QA — Obadiah (World 31)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/obadiah-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/obadiah.md` (medium tier only, per the brief's own scope note).

Per `docs/reviews/obadiah-review.md` §1, every challenge-ready verse in this brief was already
checked against two independent live WEB sources (ebible.org + biblegateway.com) with a full
match — no single-source-only rows. This pass re-fetched every challenge-ready block from a
third, genuinely different source not previously cited: Bible Hub
(`biblehub.com/web/obadiah/1.htm`), still the World English Bible translation.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Obadiah 1:3 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Obadiah 1:4 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Obadiah 1:10 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Obadiah 1:12 | ebible.org + biblegateway | Bible Hub (3rd source) | **Mismatch found — silent truncation (see Corrections below)** |
| Obadiah 1:15 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Obadiah 1:17 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |

## Discrepancy found and corrected

**Obadiah 1:12** — the brief quoted only the first two clauses of the verse:
> "But don't look down on your brother in the day of his disaster, and don't rejoice over the
> children of Judah in the day of their destruction."

Bible Hub's full verse 12 text (confirmed identical in wording to the two prior sources for the
portion the brief did quote) continues with a third clause the brief silently dropped:
> "...Don't speak proudly in the day of distress."

The quoted portion itself was word-for-word accurate — this was an unlabeled trim, not a wrong
word — but per `QA_REQUIREMENTS.md` §3 and this pass's instructions, a silent truncation is not
acceptable the way a labeled one is. **Fix applied:** `docs/content/obadiah.md`'s Obadiah 1:12
entry now reads `(WEB, trimmed)` and adds a parenthetical note stating the omitted final clause and
why it was left out (this passage's focus is the "don't look down" / "don't rejoice" pair), citing
this QA report. No wording was altered — the fix only makes the existing trim explicit, matching
the labeling convention already used elsewhere in this project (e.g. `docs/content/nahum.md`
v.2-3, `docs/content/isaiah.md` v.2-3/v.5).

## Contested-territory / exclusion checks

Read `docs/content/obadiah.md` end-to-end specifically for this: Obadiah 1:18's most totalizing
destruction language ("there will not be any remaining to the house of Esau") does not appear
anywhere in the brief's challenge-ready content — confirmed, consistent with the brief's own stated
exclusion.

## Corrections made

One: Obadiah 1:12 relabeled `(WEB, trimmed)` with an explanatory note of the omitted clause, in
`docs/content/obadiah.md`. See "Discrepancy found and corrected" above.

## Overall verdict

**pass-with-corrections** — one silent-truncation discrepancy found (Obadiah 1:12) and corrected
by labeling the existing trim explicitly; no wording, word-order, omission-of-a-different-kind, or
wrong-verse-number error found in the quoted text itself. All other challenge-ready verses in
`docs/content/obadiah.md` (medium tier) confirmed character-for-character accurate against an
independent third source (Bible Hub, WEB) per `QA_REQUIREMENTS.md` §3.
