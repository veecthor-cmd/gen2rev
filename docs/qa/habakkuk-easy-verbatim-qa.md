# Verbatim-Text QA — Habakkuk, Easy Tier (World 35)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/habakkuk-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/habakkuk-easy-review.md`, `approved`, no changes required).

**Result: `pass`.** All 6 challenge-ready verse lines re-verified against Bible Hub (WEB) — a
source not cited by either the brief's own draft-pull (ebible.org + biblegateway.com) or its
theological review — with zero character-level discrepancies.

## Verses independently re-checked

100% of challenge-ready verse text checked (6 of 6 regular items; boss item 7 reuses item 3's
verse verbatim and boss item 8 is a reference-order sequence with no independently quoted text).

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Hab 1:2 | "Yahweh, how long will I cry, and you will not hear? I cry out to you 'Violence!' and will you not save?" | [Bible Hub WEB](https://biblehub.com/web/habakkuk/1.htm) | **Match.** |
| 2 | Hab 2:1 | "I will stand at my watch and set myself on the ramparts, and will look out to see what he will say to me, and what I will answer concerning my complaint." | [Bible Hub WEB](https://biblehub.com/web/habakkuk/2.htm) | **Match, full verse.** |
| 3 / 7 (boss) | Hab 2:4 | "Behold, his soul is puffed up. It is not upright in him, but the righteous will live by his faith." | [Bible Hub WEB](https://biblehub.com/web/habakkuk/2.htm) | **Match, full verse.** |
| 4 | Hab 2:14 | "For the earth will be filled with the knowledge of Yahweh's glory, as the waters cover the sea." | [Bible Hub WEB](https://biblehub.com/web/habakkuk/2.htm) | **Match, full verse.** |
| 5 | Hab 3:17 | "For even though the fig tree doesn't flourish, nor fruit be in the vines, the labor of the olive fails, the fields yield no food, the flocks are cut off from the fold, and there is no herd in the stalls," | [Bible Hub WEB](https://biblehub.com/web/habakkuk/3.htm) | **Match, full verse** (trailing comma is the source's own punctuation, continuing into v.18 — not a truncation). |
| 6 | Hab 3:18 | "yet I will rejoice in Yahweh. I will be joyful in the God of my salvation!" | [Bible Hub WEB](https://biblehub.com/web/habakkuk/3.htm) | **Match, full verse.** |

## Method

Fetched raw HTML for Habakkuk 1-3 directly from `biblehub.com/web/habakkuk/<chapter>.htm` (not the
LLM-summarized fetch path) and decoded the verse spans programmatically, so the comparison is
against the source's actual characters rather than a paraphrase.

## Formatting note (not a discrepancy)

Bible Hub renders quoted speech with curly Unicode quotation marks (e.g. `“Violence!”`) where the
brief uses straight quotes (`'Violence!'`) for its own nested-quote markdown convention. This is
the same cosmetic rendering difference already noted and dismissed as non-substantive in
`docs/qa/genesis-easy-verbatim-qa.md` (item 2) and `docs/qa/habakkuk-verbatim-qa.md` (note 2) — the
underlying words are identical in every item above; only the glyph style differs, and this is an
ingestion detail (store WEB's actual quote characters), not a wording error.

## Not re-litigated

Every verse in this brief was already double-sourced (ebible.org + biblegateway.com) in the brief
itself and in `docs/reviews/habakkuk-easy-review.md` §1, and all 6 also carry forward text already
triple-verified (including a prior Bible Hub check) at the medium tier in
`docs/qa/habakkuk-verbatim-qa.md`. This pass adds a fresh, independent Bible Hub fetch specific to
this tier's brief rather than relying on those prior records, and finds the same clean result.

## Conclusion

**`pass`.** All 6 challenge-ready verses independently re-verified against Bible Hub (a source not
previously cited for this specific brief) with zero discrepancies of any kind. `docs/content/habakkuk-easy.md` is eligible for ingestion (pending only the ingestion step itself, which is
out of scope for this QA pass).
