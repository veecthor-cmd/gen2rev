# Verbatim-Text QA — Haggai (World 37)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/haggai-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/haggai.md`.

The theological review (`docs/reviews/haggai-review.md` §1) checked every challenge-ready verse
in this book (1:2, 1:4, 1:8, 1:12, 1:13, 2:4, 2:9) against two sources (ebible.org +
biblegateway.com) — no single-source rows were flagged for this book. Per assignment
instructions, this pass re-fetched every challenge-ready verse from a source neither prior check
used: Bible Hub (`biblehub.com/web/haggai/<chapter>.htm`), WEB translation, cross-checked against
ebible.org for the one discrepancy found below.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Hag 1:2 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Hag 1:4 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Hag 1:8 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word (see note 2) |
| Hag 1:12 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Hag 1:13 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Hag 2:4 | ebible.org + biblegateway.com | Bible Hub (3rd source), confirmed against ebible.org | **Mismatch — mislabeled as trimmed; see note 1. Corrected.** |
| Hag 2:9 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |

## Exclusion checks (per assignment scope notes)

- **Haggai 2:20-23 (Zerubbabel "signet ring" oracle).** Fetched from Bible Hub — confirmed this
  text exists at that reference. Confirmed **no verse from 2:20-23 appears anywhere in
  `docs/content/haggai.md`**'s challenge-ready quotes. Exclusion holds.
- **Haggai 2:10-19 (ritual-purity dialogue).** Confirmed by inspection of the brief: no verse from
  this range is quoted anywhere. Exclusion holds.
- **Haggai 2:6-7 ("shaking of the nations," quoted in Hebrews 12:26-27).** Fetched from Bible
  Hub — confirmed text exists as described. Confirmed not quoted anywhere in the brief. Exclusion
  holds.

## Notes

1. **Haggai 2:4 — mislabeled as "(WEB, trimmed)."** The brief quoted the verse's full text
   accurately but tagged it `(WEB, trimmed)`, implying part of the verse was cut. This pass fetched
   the full verse independently from both Bible Hub and, to resolve the labeling question
   definitively, ebible.org (`https://ebible.org/web/HAG02.htm`) — both sources' verse 4 text is
   **identical, word-for-word, to the brief's full quoted text**, with nothing before or after it
   in the verse. There is no trim: the brief already quotes 100% of verse 4. This is a
   labeling error, not a wording error — no player-facing verse text was ever inaccurate — but per
   the assignment's "log every discrepancy found, however small" instruction it is logged and
   corrected. **Correction applied:** `docs/content/haggai.md` line 79 changed from
   `- Haggai 2:4 (WEB, trimmed): "..."` to `- Haggai 2:4 (WEB): "..."`, matching the unlabeled/
   non-trimmed format already used for the sibling verse 2:9 in the same passage block. No verse
   wording was changed.
2. Bible Hub's rendering of Hag 1:8 shows a doubled trailing quotation mark
   (`..."I will be glorified," says Yahweh."`), an extraction/rendering artifact of that source,
   not a real second source variant — the words match the brief exactly. Treated as cosmetic, same
   as the quote-nesting notes in `docs/qa/genesis-verbatim-qa.md` note 3.

## Corrections made

One. `docs/content/haggai.md`, Haggai 2:4's citation label corrected from `(WEB, trimmed)` to
`(WEB)` — the quoted text is the complete verse, not a trim; verse wording itself was already
correct and is unchanged.

## Overall verdict

**pass-with-corrections** — 6 of 7 challenge-ready verse lines in `docs/content/haggai.md`
(Haggai 1:2, 1:4, 1:8, 1:12, 1:13, 2:9) confirmed character-for-character accurate against Bible
Hub as an independent source with no changes needed. One citation-labeling error found on Haggai
2:4 (tagged "trimmed" when it is the complete verse) — corrected in the brief; no verse wording was
ever wrong. All three scope-note exclusions (2:20-23 signet ring, 2:10-19 purity dialogue, 2:6-7
shaking of the nations) confirmed absent from the brief.
