# Verbatim-Text QA — Haggai, Hard Tier (World 37)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/haggai-hard.md`, run 2026-09-03, after theological review
(`docs/reviews/haggai-hard-review.md`, `approved`, no changes required).

**Result: `pass`.** All 7 challenge-ready verse lines re-verified against Bible Hub (WEB) — a
source not cited by either the brief's own draft-pull (ebible.org + biblegateway.com) or its
theological review — with zero character-level discrepancies. Exclusion of Haggai 2:10-19 and
2:20-23 independently confirmed by direct grep of the brief, not just taken on the brief's word.

## Verses independently re-checked

100% of challenge-ready verse text checked (7 of 7 regular items; boss item 9 is a reference-order/
matching sequence over already-checked verses with no new quoted text).

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Hag 1:2 | "This is what Yahweh of Armies says: These people say, 'The time hasn't yet come, the time for Yahweh's house to be built.'" | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse** (blanked word "house" confirmed present verbatim). |
| 2 | Hag 1:4 | "Is it a time for you yourselves to dwell in your paneled houses, while this house lies waste?" | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse** (blanked word "paneled" confirmed present verbatim). |
| 3 | Hag 1:8 | "'Go up to the mountain, bring wood, and build the house. I will take pleasure in it, and I will be glorified,' says Yahweh." | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse** (blanked word "wood" confirmed present verbatim). |
| 4 | Hag 1:12 | "Then Zerubbabel the son of Shealtiel and Joshua the son of Jehozadak, the high priest, with all the remnant of the people, obeyed Yahweh their God's voice, and the words of Haggai the prophet, as Yahweh their God had sent him; and the people feared Yahweh." | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse** (blanked word "prophet" confirmed present verbatim). |
| 5 | Hag 1:13 | "Then Haggai, Yahweh's messenger, spoke Yahweh's message to the people, saying, 'I am with you,' says Yahweh." | [Bible Hub WEB](https://biblehub.com/web/haggai/1.htm) | **Match, full verse** (blanked word "messenger" confirmed present verbatim). |
| 6 | Hag 2:4 | "'Yet now be strong, Zerubbabel,' says Yahweh. 'Be strong, Joshua son of Jehozadak, the high priest. Be strong, all you people of the land,' says Yahweh, 'and work, for I am with you,' says Yahweh of Armies." | [Bible Hub WEB](https://biblehub.com/web/haggai/2.htm) | **Match, full verse** (blanked word "Armies" confirmed present verbatim). |
| 7 | Hag 2:9 | "'The latter glory of this house will be greater than the former,' says Yahweh of Armies; 'and in this place I will give peace,' says Yahweh of Armies." | [Bible Hub WEB](https://biblehub.com/web/haggai/2.htm) | **Match, full verse** (blanked word "place" confirmed present verbatim). |
| 8 (boss) | Hag 2:9 | "...'and in this place I will give peace,' says Yahweh of Armies." → **greater** | [Bible Hub WEB](https://biblehub.com/web/haggai/2.htm) | **Match** — blanked word "greater" confirmed present verbatim. |

## Method

Fetched raw HTML for Haggai 1-2 directly from `biblehub.com/web/haggai/<chapter>.htm` (not the
LLM-summarized fetch path) and decoded the verse spans programmatically, so the comparison is
against the source's actual characters rather than a paraphrase.

## Exclusion check — independently verified, not just trusted

Per this assignment's explicit instruction, grepped `docs/content/haggai-hard.md` directly for
verse-reference patterns in the excluded ranges (`2:10`-`2:19`, `2:20`-`2:23`) and for distinctive
phrases unique to that content (e.g. "holy meat," "priests concerning the law," "dead body,"
"blight, mildew," "signet ring," "shake the heavens," "overthrow the throne"). **Confirmed: the
only occurrences of "2:10-19" / "2:20-23" in the file are in the brief's own exclusion-statement
prose (the header note and the Contested Territory section) — no verse text, recall blank, or
challenge stem drawn from either range appears anywhere.** The claim in the brief holds.

## Formatting note (not a discrepancy)

Bible Hub renders reported speech (items 3, 5, 6, 7, boss 8) with curly Unicode quotation marks in
a flattened/differently-nested style compared to the brief's own markdown quoting. Words are
identical in every case checked. Same cosmetic-rendering finding already noted in
`docs/qa/habakkuk-verbatim-qa.md` note 2 and `docs/qa/genesis-easy-verbatim-qa.md` item 2 — an
ingestion detail, not a wording error.

## Not re-litigated

Every verse in this brief was already double-sourced (ebible.org + biblegateway.com) in the brief
itself and in `docs/reviews/haggai-hard-review.md` §1. This pass adds a fresh, independent Bible
Hub fetch specific to this tier's brief, including on the more granular clauses this tier blanks
(e.g. "messenger" in 1:13, "place" in 2:9), and finds the same clean result.

## Conclusion

**`pass`.** All 7 challenge-ready verses, and every specific blanked word this tier's recall items
target, independently re-verified against Bible Hub with zero discrepancies. Both permanent
exclusions (Haggai 2:10-19, 2:20-23) independently reconfirmed absent by direct grep, not merely
taken on the brief's own claim. `docs/content/haggai-hard.md` is eligible for ingestion (pending
only the ingestion step itself, out of scope for this QA pass).
