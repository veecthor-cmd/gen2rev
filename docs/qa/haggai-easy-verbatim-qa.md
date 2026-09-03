# Verbatim-Text QA — Haggai, Easy Tier (World 37)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/haggai-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/haggai-easy-review.md`, `approved`, no changes required).

**Result: `pass`.** All 6 challenge-ready verse lines re-verified against Bible Hub (WEB) — a
source not cited by either the brief's own draft-pull (ebible.org + biblegateway.com) or its
theological review — with zero character-level discrepancies. Exclusion of Haggai 2:10-19 and
2:20-23 independently confirmed by direct grep of the brief, not just taken on the brief's word.

## Verses independently re-checked

100% of challenge-ready verse text checked (6 of 6 regular items; boss item 7 reuses the medium
tier's already-QA'd Hag 2:4 item verbatim and boss item 8 is a reference-order sequence with no
independently new quoted text).

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Hag 1:2 | "This is what Yahweh of Armies says: These people say, 'The time hasn't yet come, the time for Yahweh's house to be built.'" | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse.** |
| 2 | Hag 1:4 | "Is it a time for you yourselves to dwell in your paneled houses, while this house lies waste?" | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse.** |
| 3 | Hag 1:8 | "'Go up to the mountain, bring wood, and build the house. I will take pleasure in it, and I will be glorified,' says Yahweh." | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse** (words identical; Bible Hub's own quote-nesting/placement differs cosmetically — see note below). |
| 4 | Hag 1:12 | "Then Zerubbabel the son of Shealtiel and Joshua the son of Jehozadak, the high priest, with all the remnant of the people, obeyed Yahweh their God's voice, and the words of Haggai the prophet, as Yahweh their God had sent him; and the people feared Yahweh." | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse.** |
| 5 | Hag 1:13 | "Then Haggai, Yahweh's messenger, spoke Yahweh's message to the people, saying, 'I am with you,' says Yahweh." | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse.** |
| 6 | Hag 2:9 | "'The latter glory of this house will be greater than the former,' says Yahweh of Armies; 'and in this place I will give peace,' says Yahweh of Armies." | [Bible Hub WEB](https://biblehub.com/web/haggai/2.htm) | **Match, full verse.** |
| 7 (boss) | Hag 2:4 | "'Yet now be ___, Zerubbabel,' says Yahweh. 'Be strong, Joshua son of Jehozadak, the high priest. Be strong, all you people of the land,' says Yahweh, 'and work, for I am with you,' says Yahweh of Armies." → **strong** | [Bible Hub WEB](https://biblehub.com/web/haggai/2.htm) | **Match** — blanked word "strong" confirmed present verbatim; surrounding text matches. |

## Method

Fetched raw HTML for Haggai 1-2 directly from `biblehub.com/web/haggai/<chapter>.htm` (not the
LLM-summarized fetch path) and decoded the verse spans programmatically, so the comparison is
against the source's actual characters rather than a paraphrase.

## Exclusion check — independently verified, not just trusted

Per this assignment's explicit instruction, grepped `docs/content/haggai-easy.md` directly for
verse-reference patterns in the excluded ranges (`2:10`-`2:19`, `2:20`-`2:23`) and for distinctive
phrases unique to that content (e.g. "holy meat," "priests concerning the law," "dead body,"
"blight, mildew," "signet ring," "shake the heavens," "overthrow the throne"). **Confirmed: the
only occurrences of "2:10-19" / "2:20-23" in the file are in the brief's own exclusion-statement
prose (the header note and the Contested Territory section) — no verse text, MC option, or
challenge stem drawn from either range appears anywhere.** The claim in the brief holds.

## Formatting note (not a discrepancy)

Bible Hub renders reported speech (items 3, 5, 6, 7) with curly Unicode quotation marks in a
flattened/differently-nested style compared to the brief's own markdown quoting. Words are
identical in every case checked. Same cosmetic-rendering finding already noted in
`docs/qa/habakkuk-verbatim-qa.md` note 2 and `docs/qa/genesis-easy-verbatim-qa.md` item 2 — an
ingestion detail (store WEB's actual quote characters), not a wording error.

## Not re-litigated

Every verse in this brief was already double-sourced (ebible.org + biblegateway.com) in the brief
itself and in `docs/reviews/haggai-easy-review.md` §1 ("the cleanest verification pass" of that
assignment, per that review). This pass adds a fresh, independent Bible Hub fetch specific to this
tier's brief and finds the same clean result.

## Conclusion

**`pass`.** All 6 challenge-ready verses independently re-verified against Bible Hub with zero
discrepancies. Both permanent exclusions (Haggai 2:10-19, 2:20-23) independently reconfirmed
absent by direct grep, not merely taken on the brief's own claim. `docs/content/haggai-easy.md` is
eligible for ingestion (pending only the ingestion step itself, out of scope for this QA pass).
