# Verbatim-Text QA — Zephaniah, Easy Tier (World 36)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/zephaniah-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/zephaniah-easy-review.md`, `approved`, no changes required).

**Result: `pass`.** All 6 challenge-ready verse lines re-verified against Bible Hub (WEB) — a
source not cited by either the brief's own draft-pull (ebible.org + biblegateway.com) or its
theological review — with zero character-level discrepancies. Exclusion of Zephaniah 1:16-18 and
2:4-15 independently confirmed by direct grep of the brief, not just taken on the brief's word.

## Verses independently re-checked

100% of challenge-ready verse text checked (6 of 6 regular items; boss item 7 reuses item 6's
verse verbatim and boss item 8 is a reference-order sequence with no independently quoted text).

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Zeph 1:14 | "The great day of Yahweh is near. It is near and hurries greatly, the voice of the day of Yahweh. The mighty man cries there bitterly." | [Bible Hub WEB](https://biblehub.com/web/zephaniah/1.htm) | **Match, full verse.** |
| 2 | Zeph 1:15 | "That day is a day of wrath, a day of distress and anguish, a day of trouble and ruin, a day of darkness and gloom, a day of clouds and blackness," | [Bible Hub WEB](https://biblehub.com/web/zephaniah/1.htm) | **Match, full verse** (trailing comma is the source's own punctuation, continuing into v.16 — not a truncation). |
| 3 | Zeph 2:3 | "Seek Yahweh, all you humble of the land, who have kept his ordinances. Seek righteousness. Seek humility. It may be that you will be hidden in the day of Yahweh's anger." | [Bible Hub WEB](https://biblehub.com/web/zephaniah/2.htm) | **Match, full verse.** |
| 4 | Zeph 3:14 | "Sing, daughter of Zion! Shout, Israel! Be glad and rejoice with all your heart, daughter of Jerusalem." | [Bible Hub WEB](https://biblehub.com/web/zephaniah/3.htm) | **Match, full verse.** |
| 5 | Zeph 3:15 | "Yahweh has taken away your judgments. He has thrown out your enemy. The King of Israel, Yahweh, is among you. You will not be afraid of evil any more." | [Bible Hub WEB](https://biblehub.com/web/zephaniah/3.htm) | **Match, full verse.** |
| 6 / 7 (boss) | Zeph 3:17 | "Yahweh, your God, is among you, a mighty one who will save. He will rejoice over you with joy. He will calm you in his love. He will rejoice over you with singing." | [Bible Hub WEB](https://biblehub.com/web/zephaniah/3.htm) | **Match, full verse.** |

## Method

Fetched raw HTML for Zephaniah 1-3 directly from `biblehub.com/web/zephaniah/<chapter>.htm` (not
the LLM-summarized fetch path) and decoded the verse spans programmatically, so the comparison is
against the source's actual characters rather than a paraphrase.

## Exclusion check — independently verified, not just trusted

Per this assignment's explicit instruction, grepped `docs/content/zephaniah-easy.md` directly for
verse-reference patterns in the excluded ranges (`1:16`, `1:17`, `1:18`, `2:4`-`2:15`) and for
distinctive phrases unique to that content (e.g. "trumpet and alarm," "fortified cities," "Gaza,"
"Ashkelon," "Ashdod," "Ekron," "Cherethites," "Moab," "Ammon," "Nineveh," "pelican," "porcupine").
**Confirmed: the only occurrences of "1:16-18" / "2:4-15" in the file are in the brief's own
exclusion-statement prose (the header note and the Contested Territory section stating these
ranges are excluded) — no verse text, MC option, or challenge stem drawn from either range appears
anywhere.** The claim in the brief holds.

## Formatting note (not a discrepancy)

Bible Hub renders quoted speech with curly Unicode quotation marks where relevant (e.g. Zeph
3:15's "The King of Israel" as its own quoted title is rendered identically either way in this
book, since Zephaniah's selected verses carry no nested reported-speech quoting). No cosmetic
quote-style differences were actually encountered in this brief's items, unlike the Habakkuk and
Haggai briefs.

## Not re-litigated

Every verse in this brief was already double-sourced (ebible.org + biblegateway.com) in the brief
itself and in `docs/reviews/zephaniah-easy-review.md` §1 (which also closed a prior single-source
gap on 2:3 from the medium tier). This pass adds a fresh, independent Bible Hub fetch specific to
this tier's brief and finds the same clean result.

## Conclusion

**`pass`.** All 6 challenge-ready verses independently re-verified against Bible Hub with zero
discrepancies. Both permanent exclusions (Zephaniah 1:16-18, 2:4-15) independently reconfirmed
absent by direct grep, not merely taken on the brief's own claim. `docs/content/zephaniah-easy.md`
is eligible for ingestion (pending only the ingestion step itself, out of scope for this QA pass).
