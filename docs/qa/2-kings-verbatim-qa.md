# Verbatim-Text QA — 2 Kings (World 12)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verse-text
verification, distinct from and in addition to theological review (`docs/reviews/2-kings-review.md`).
Brief checked: `docs/content/2-kings.md` (status: `approved`).

Verses the review checked against two sources (ebible.org + biblegateway.com) were re-checked here
against a third source, Bible Hub's WEB pages. Verses the review checked against only one source
(ebible.org) were re-checked here against a second, different source, also Bible Hub.

## Verification Table

| Verse(s) | Prior review source(s) | This QA pass source | Result |
|---|---|---|---|
| 2 Kings 2:9 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)." |
| 2 Kings 2:11 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |
| 2 Kings 2:15 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)." |
| 2 Kings 17:5-6 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)." |
| 2 Kings 17:7 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character (internal omission correctly marked with "..."). |
| 2 Kings 17:23 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)." |
| 2 Kings 19:15 | ebible.org (single) | Bible Hub WEB (2nd source) | **Mismatch: brief silently dropped "who are" ("...God of Israel, [who are] enthroned above the cherubim...") mid-sentence, without the ellipsis this document uses elsewhere (e.g. 17:7, 23:3) to mark an internal omission.** Corrected — see below. |
| 2 Kings 19:19 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character (full verse, correctly unmarked as untrimmed). |
| 2 Kings 19:35-36 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Internal graphic-detail omission ("...these were all dead bodies") correctly marked with "..." per the brief's sensitivity-trimming approach. |
| 2 Kings 22:8 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |
| 2 Kings 22:11 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. |
| 2 Kings 23:3 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Internal omission correctly marked with "..." |
| 2 Kings 25:8-9 | ebible.org + biblegateway.com (two) | Bible Hub WEB (3rd source) | Match, character-for-character. Correctly labeled "(WEB, trimmed)." |
| 2 Kings 25:10 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character (full verse, correctly unmarked as untrimmed). |
| 2 Kings 25:27, 25:29 | ebible.org (single) | Bible Hub WEB (2nd source) | Match, character-for-character. Internal omissions (mid-27, all of 28, mid-29) correctly marked with "..." and correctly cited as "25:27, 25:29" rather than implying a continuous 27-29 quotation. |

## Discrepancies Found

One real (non-cosmetic) discrepancy: **2 Kings 19:15** dropped the words "who are" from the middle
of the verse ("Yahweh, the God of Israel, **who are** enthroned above the cherubim...") without any
ellipsis or trim indication at that point in the sentence — it read as continuous, complete
phrasing. This is a genuine wording omission, not a cosmetic difference: it changes "the God of
Israel, who are enthroned above the cherubim" (a relative clause modifying "God") into "the God of
Israel, enthroned above the cherubim" (a participial phrase) — different grammatical construction,
and inconsistent with how this same brief marks every other internal omission elsewhere (17:7,
19:35-36, 23:3, 25:27/29 all use "..." for internal cuts). If shown to a player as verbatim scripture
text, this would not match the actual WEB source character-for-character.

All other verses checked were exact matches, with existing trim/ellipsis markers used correctly and
consistently.

## Corrections Made

`docs/content/2-kings.md`:

1. **2 Kings 19:15** — restored the omitted words "who are."
   - Before: `2 Kings 19:15 (WEB, trimmed): "Yahweh, the God of Israel, enthroned above the cherubim, you are the God, even you alone, of all the kingdoms of the earth."`
   - After: `2 Kings 19:15 (WEB, trimmed): "Yahweh, the God of Israel, who are enthroned above the cherubim, you are the God, even you alone, of all the kingdoms of the earth."`

## Overall Verdict

**pass-with-corrections** — one wording-omission correction applied to 2 Kings 19:15 (restored
"who are"). All other 14 challenge-ready verses in `docs/content/2-kings.md` confirmed exact
character-for-character matches, including all sensitivity-driven trims (2:9, 2:15, 17:5-6, 17:7,
19:35-36, 23:3, 25:8-9, 25:27/25:29), which were checked with particular attention to make sure no
graphic content had been reintroduced and no trim silently altered meaning beyond what the ellipsis
indicated.
