# Verbatim-Text QA — Micah, Easy Tier (World 33)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/micah-easy.md`, run 2026-09-03, after theological self-review
(`docs/reviews/micah-easy-review.md`, `approved`, no structural changes required).

**Result: `pass`.** All 10 challenge-ready verses re-verified against [Bible Hub](https://biblehub.com/web/)
(WEB) — a source not previously cited for this brief (the brief and its review used ebible.org and
biblegateway.com only) — with zero character-level discrepancies. 100% coverage: every quoted verse
checked, not sampled.

## Verses independently re-checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Micah 1:2 | "Hear, you peoples, all of you! Listen, O earth, and all that is therein. Let the Lord Yahweh be witness against you, the Lord from his holy temple." | [Bible Hub WEB, Micah 1](https://biblehub.com/web/micah/1.htm) | **Match.** |
| 2 | Micah 1:4 | "The mountains melt under him, and the valleys split apart like wax before the fire, like waters that are poured down a steep place." | [Bible Hub WEB, Micah 1](https://biblehub.com/web/micah/1.htm) | **Match.** |
| 3 | Micah 4:3 | "They will beat their swords into plowshares, and their spears into pruning hooks. Nation will not lift up sword against nation, neither will they learn war any more." | [Bible Hub WEB, Micah 4](https://biblehub.com/web/micah/4.htm) | **Match** for quoted portion (verse opens with "and he will judge..." in source; brief begins its quote at "They will beat..."). |
| 4 | Micah 4:4 | "But every man will sit under his vine and under his fig tree. No one will make them afraid, for the mouth of Yahweh of Armies has spoken." | [Bible Hub WEB, Micah 4](https://biblehub.com/web/micah/4.htm) | **Match.** |
| 5 | Micah 4:2 | "...For the law will go out of Zion, and Yahweh's word from Jerusalem..." | [Bible Hub WEB, Micah 4](https://biblehub.com/web/micah/4.htm) | **Match** for quoted portion — labeled trim (leading/trailing `...`) of the full verse. |
| 6 | Micah 6:8 | "He has shown you, O man, what is good. What does Yahweh require of you, but to act justly, to love mercy, and to walk humbly with your God?" | [Bible Hub WEB, Micah 6](https://biblehub.com/web/micah/6.htm) | **Match.** |
| 7 | Micah 6:8 (same verse, recall format) | same text as item 6 | [Bible Hub WEB, Micah 6](https://biblehub.com/web/micah/6.htm) | **Match.** |
| 8 | Micah 6:6 | "How shall I come before Yahweh, and bow myself before the exalted God? Shall I come before him with burnt offerings, with calves a year old?" | [Bible Hub WEB, Micah 6](https://biblehub.com/web/micah/6.htm) | **Match.** |
| 9 | Micah 7:18 | "Who is a God like you, who pardons iniquity, and passes over the disobedience of the remnant of his heritage? He doesn't retain his anger forever, because he delights in loving kindness." | [Bible Hub WEB, Micah 7](https://biblehub.com/web/micah/7.htm) | **Match.** |
| 10 | Micah 7:19 | "He will again have compassion on us. He will tread our iniquities under foot. You will cast all their sins into the depths of the sea." | [Bible Hub WEB, Micah 7](https://biblehub.com/web/micah/7.htm) | **Match.** |

Item 11 (boss sequence) quotes no verse text directly (paraphrased passage-summary labels with
chapter citations) and requires no verbatim check.

## Exclusion check — Micah 5:1-5

Grepped `docs/content/micah-easy.md` for any reference to chapter 5 verses (`5:1` through `5:5`), the
word "Bethlehem" appearing as a quoted-verse citation, and related Bethlehem-oracle vocabulary
("Ephrathah," "ruler in Israel"). Result: the only chapter-5 references in the file are the brief's
own exclusion statements (lines 11, 36-37, 103, 105, 126) and one unrelated MC distractor option
("Bethlehem" as a wrong answer to a Micah 1:2 question, item 1) — no verse from Micah 5 is quoted or
cited as a challenge item anywhere in the file. **Exclusion confirmed independently, not just taken
on the brief's claim.**

## Conclusion

**`pass`.** All 10 challenge-ready verses (100% coverage, not sampled) independently re-verified
against Bible Hub's WEB text with zero character-level discrepancies. No corrections were needed.
The Micah 5:1-5 exclusion was independently confirmed by grep, not merely trusted. Combined with the
brief's own ebible.org + biblegateway.com double-sourcing, every challenge-ready verse in this tier
has now been checked against at least three independent live sources. `docs/content/micah-easy.md`
is eligible for ingestion (pending the orchestrating session's consolidation of
`docs/QA_SIGNOFF.md` and `docs/CONTENT_REVIEW_LOG.md`).
