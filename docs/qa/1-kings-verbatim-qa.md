# Verbatim-Text QA — 1 Kings (World 11)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verse-text
verification, distinct from and in addition to theological review (`docs/reviews/1-kings-review.md`).
Brief checked: `docs/content/1-kings.md` (status: `approved-with-changes`).

Note per assignment: the review's flagged "incomplete cross-tradition source check" (1 Kings 18:40,
excluded content, Jewish-tradition sourcing not obtained) is a theological-sourcing question, not a
verse-text question, and is out of scope for this pass — 18:40 is not challenge-ready text and
carries no verse quotation in the brief to check.

Verses the review checked against two sources (ebible.org + biblegateway.com) were re-checked here
against a third source, Bible Hub's WEB pages. Verses the review checked against only one source
(ebible.org) were re-checked here against a second, different source, also Bible Hub.

## Verification Table

| Verse(s) | Prior review source(s) | This QA pass source | Result |
|---|---|---|---|
| 1 Kings 3:5 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |
| 1 Kings 3:9 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |
| 1 Kings 3:12 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | **Mismatch (labeling): brief quoted only the back half of the verse ("I have given you a wise and understanding heart...") but was labeled "(WEB)" as if a complete, untrimmed quotation, when the full verse begins "behold, I have done according to your word. Behold, I have given you a wise and understanding heart..."** The quoted words themselves were accurate; the verse was just presented as complete when it was not. Corrected — see below. |
| 1 Kings 3:25 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |
| 1 Kings 3:26 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)" — omits the second woman's reply, appropriately marked. |
| 1 Kings 3:27-28 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |
| 1 Kings 8:10-11 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character (verses 10 and 11 concatenated exactly as sourced, no gap). |
| 1 Kings 8:27 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. |
| 1 Kings 8:29 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)." |
| 1 Kings 12:4 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. |
| 1 Kings 12:14 | ebible.org (single) | Bible Hub WEB (2nd source) | **Mismatch (labeling): brief quoted only the first sentence ("My father made your yoke heavy, but I will add to your yoke.") labeled "(WEB)" as complete, but the full verse continues "My father chastised you with whips, but I will chastise you with scorpions."** Quoted words accurate; completeness label was wrong. Corrected — see below. |
| 1 Kings 12:16 | ebible.org + biblegateway.com (two, for 12:15-16) | Bible Hub WEB (3rd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)." |
| 1 Kings 18:21 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |
| 1 Kings 18:24 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)." |
| 1 Kings 18:38-39 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |

## Discrepancies Found

Two real (non-cosmetic) discrepancies, both of the same kind: a partial verse quotation presented
with a plain "(WEB)" label — implying a complete, unaltered verse — when the quoted text was
actually missing words from the start (3:12) or end (12:14) of the verse, without the "(WEB,
trimmed)" marker this document uses consistently everywhere else it truncates a verse (e.g. 3:26,
8:29, 12:16, 18:24 are all correctly marked). The quoted characters themselves were accurate in both
cases — no wrong words, no invented text — but a labeling gap that could mislead a reader (or a
future challenge-authoring pass) into treating a partial quotation as the complete verse. This
matters for a "verbatim" content pipeline specifically because "(WEB)" vs. "(WEB, trimmed)" is the
only signal in this brief distinguishing a complete verse from a partial one.

All other verses checked were exact character-for-character matches, including punctuation and
existing trim markers.

## Corrections Made

`docs/content/1-kings.md`:

1. **1 Kings 3:12** — label corrected from "(WEB)" to "(WEB, trimmed)"; quoted text itself
   unchanged (it was already accurate as a partial quotation, just mislabeled as complete).
   - Before: `1 Kings 3:12 (WEB): "I have given you a wise and understanding heart, so that there has been no one like you before you, and after you none will arise like you."`
   - After: `1 Kings 3:12 (WEB, trimmed): "I have given you a wise and understanding heart, so that there has been no one like you before you, and after you none will arise like you."`

2. **1 Kings 12:14** — label corrected from "(WEB)" to "(WEB, trimmed)"; quoted text itself
   unchanged.
   - Before: `1 Kings 12:14 (WEB): "My father made your yoke heavy, but I will add to your yoke."`
   - After: `1 Kings 12:14 (WEB, trimmed): "My father made your yoke heavy, but I will add to your yoke."`

## Overall Verdict

**pass-with-corrections** — two labeling corrections applied (both "(WEB)" → "(WEB, trimmed)",
3:12 and 12:14); no wording, word-order, omission-within-quoted-text, or wrong-verse-number issues
found anywhere. All 15 challenge-ready verses in `docs/content/1-kings.md` now accurately reflect
whether they are complete or partial WEB verse quotations.
