# Verbatim-Text QA — Ezekiel, Easy Tier (World 26)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/ezekiel-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/ezekiel-easy-review.md`, `approved-with-changes`).

**Result: `pass`.** All 9 challenge-ready verses (regular items 1-7, boss items 8-9; boss item 10 is
a passage-order sequence with no quoted verse text) checked character-for-character against
[Bible Hub](https://biblehub.com) (WEB) — a source not cited anywhere in the theological review,
which used ebible.org exclusively for every item in this brief (all single-sourced, per that
review's §1). Zero wording discrepancies found. One formatting note (quote-nesting, item 7) is
recorded below but does not change any word and is not treated as a fix, consistent with this
project's established handling of the same issue in `docs/qa/genesis-easy-verbatim-qa.md` item 2.

## Verses independently re-checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Ezek 1:1 | "Now in the thirtieth year, in the fourth month, in the fifth day of the month, as I was among the captives by the river Chebar, the heavens were opened, and I saw visions of God." | [Bible Hub WEB, Ezekiel 1](https://biblehub.com/web/ezekiel/1.htm) | **Match.** |
| 2 | Ezek 2:3 | "He said to me, 'Son of man, I send you to the children of Israel, to a nation of rebels who have rebelled against me. They and their fathers have transgressed against me even to this very day.'" | [Bible Hub WEB, Ezekiel 2](https://biblehub.com/web/ezekiel/2.htm) | **Match.** |
| 3 | Ezek 3:3 | "He said to me, 'Son of man, eat this scroll that I give you and fill your belly and your bowels with it.' Then I ate it. It was as sweet as honey in my mouth." | [Bible Hub WEB, Ezekiel 3](https://biblehub.com/web/ezekiel/3.htm) | **Match.** |
| 4 | Ezek 4:1 | "You also, son of man, take a tile, and lay it before yourself, and portray on it a city, even Jerusalem." | [Bible Hub WEB, Ezekiel 4](https://biblehub.com/web/ezekiel/4.htm) | **Match.** |
| 5 | Ezek 3:17 | "'Son of man, I have made you a watchman to the house of Israel. Therefore hear the word from my mouth, and warn them from me...'" | [Bible Hub WEB, Ezekiel 3](https://biblehub.com/web/ezekiel/3.htm) | **Match.** Brief's trailing "..." replaces the source's closing period — a labeled trim (the item note says the verse is "trimmed for challenge use" via its own quote punctuation), no word change. |
| 6 | Ezek 18:20 (trimmed, first two sentences) | "The soul who sins, he shall die. The son shall not bear the iniquity of the father, neither shall the father bear the iniquity of the son." | [Bible Hub WEB, Ezekiel 18](https://biblehub.com/web/ezekiel/18.htm) | **Match, including the brief's own stated continuation** ("The righteousness of the righteous shall be on him, and the wickedness of the wicked shall be on him.") — confirmed as the verse's actual next sentence. |
| 7 | Ezek 34:2-3 | "Son of man, prophesy against the shepherds of Israel. Prophesy, and tell them, even the shepherds, 'The Lord Yahweh says: Woe to the shepherds of Israel who feed themselves! Shouldn't the shepherds feed the sheep? You eat the fat. You clothe yourself with the wool. You kill the fatlings, but you don't feed the sheep.'" | [Bible Hub WEB, Ezekiel 34](https://biblehub.com/web/ezekiel/34.htm); cross-checked against [ebible.org WEB, Ezekiel 34](https://ebible.org/web/EZK34.htm) | **Match on wording.** Formatting note: both independent sources render this as a nested quotation — `'The Lord Yahweh says: "Woe to the shepherds...don't feed the sheep."'` (single quote wrapping the whole instruction to prophesy, double quotes wrapping Yahweh's own words within it). The brief renders the whole thing with a single quote layer only, dropping the inner double-quote marks. No word is added, removed, or changed — this is the same quote-nesting/quote-style issue the Genesis QA pass flagged as an ingestion-time formatting note rather than a textual error (`docs/qa/genesis-easy-verbatim-qa.md` item 2). Flagged here for the same treatment; not fixed in the brief. |
| 8 | Ezek 34:23 (trimmed to the blank) | "I will set up one shepherd over them, and he will feed them, even my servant ___." → **David** | [Bible Hub WEB, Ezekiel 34](https://biblehub.com/web/ezekiel/34.htm) | **Match.** Full verse continues "He will feed them, and he will be their shepherd." — brief's blank point and answer are an exact substring/word match. |
| 9 | Ezek 37:3 | "He said to me, 'Son of man, can these bones live?' I answered, 'Lord Yahweh, you know.'" | [Bible Hub WEB, Ezekiel 37](https://biblehub.com/web/ezekiel/37.htm) | **Match.** This item was the one specifically flagged by the theological review (§4) as falling inside the medium review's outstanding second-source QA flag for Ezek 37:1-14 — **that flag is now resolved** for this item. |

## Answer-key check

- Item 8's blank ("David") and item 6's blank ("sins") were checked against the surrounding verse
  text fetched above, not just the brief's own claim — both are exact, unambiguous matches to the
  source word at that position.

## Exclusion checks (grepped, not just asserted)

- **Ezekiel 16, 23, 38-39:** grepped `docs/content/ezekiel-easy.md` for these chapter references.
  All 4 hits are in the brief's own exclusion-statement prose (design intent, passage list note,
  Contested Territory section, acceptance criteria) — **no verse, scene description, or content
  reference from these chapters appears anywhere in the challenge items.** Confirmed absent.

## Conclusion

**`pass`.** All 9 challenge-ready verses independently re-verified against Bible Hub (WEB), a source
genuinely distinct from the theological review's exclusive use of ebible.org for this brief, with
zero wording discrepancies. One quote-nesting formatting note (item 7) recorded, consistent with
established project handling, not requiring a content fix. Both required exclusions (Ezekiel 16/23,
38-39) confirmed absent by direct grep of the brief file. `docs/content/ezekiel-easy.md` is eligible
for ingestion.
