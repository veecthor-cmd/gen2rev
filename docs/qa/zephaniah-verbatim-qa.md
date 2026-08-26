# Verbatim-Text QA — Zephaniah (World 36)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/zephaniah-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/zephaniah.md`.

The theological review (`docs/reviews/zephaniah-review.md` §1) checked Zephaniah 1:14, 1:15,
3:14, 3:15, and 3:17 against two sources (ebible.org + biblegateway.com); it checked 2:3 against
ebible.org only and flagged that row for this pass. Per assignment instructions, this pass
fetched every challenge-ready verse — including the already-two-source rows — from a source
neither prior check used: Bible Hub (`biblehub.com/web/<book>/<chapter>.htm`), WEB translation.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Zeph 1:14 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Zeph 1:15 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Zeph 2:3 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Zeph 3:14 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Zeph 3:15 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Zeph 3:17 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |

## Exclusion checks (per assignment scope notes)

The brief's Contested Territory section states three ranges are deliberately excluded from
challenge-ready content. This pass fetched the excluded text itself (not just the brief) to
confirm none of it leaked into the brief's quoted material:

- **Zephaniah 1:16-18 (graphic judgment imagery, e.g. "blood... poured out like dust").**
  Fetched from Bible Hub — confirmed this text exists at that reference and reads as described,
  and confirmed **no verse from 1:16-18 appears anywhere in `docs/content/zephaniah.md`**'s
  challenge-ready quotes. Exclusion holds.
- **Zephaniah 2:4-15 (oracles against the nations — Philistia, Moab, Ammon, Cush, Assyria).**
  Confirmed by inspection of the brief: only 2:3 is quoted from chapter 2; no verse from 2:4-15
  appears. Exclusion holds.
- **Zephaniah 3:9 (universalist restoration language).** Fetched from Bible Hub — text exists as
  described ("purify the lips of the peoples, that they may all call on Yahweh's name"). Confirmed
  **not quoted anywhere in the brief**. Exclusion holds.

## Notes

1. No wording, word-order, omission, or wrong-verse-number discrepancies found in any of the 6
   challenge-ready verse lines checked.
2. Zephaniah 1:1 (Josiah's reign, used only as a narrative-fact detail in the difficulty ladder,
   not a quoted verse block) was not re-checked here since it is not a "challenge-ready verse
   quoted" in the pivotal-passages sense QA_REQUIREMENTS §3 scopes to; the theological review
   already single-sourced it as informational.

## Corrections made

None. No real discrepancies found; `docs/content/zephaniah.md` was not modified.

## Overall verdict

**pass** — all 6 challenge-ready verse lines in `docs/content/zephaniah.md` (Zephaniah 1:14-15,
2:3, 3:14-15, 3:17) confirmed character-for-character accurate against Bible Hub as an independent
source not used in the theological review. Both scope-note exclusions (1:16-18 graphic imagery,
ch. 2's oracles against the nations) confirmed absent from the brief. No corrections needed.
