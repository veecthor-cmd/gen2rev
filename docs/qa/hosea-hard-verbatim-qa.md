# Verbatim-Text QA — Hosea, Hard Tier (World 28)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/hosea-hard.md`, run 2026-09-03, after theological self-review
(`docs/reviews/hosea-hard-review.md`, `approved-with-changes`) and after that review's one required
(documentation-only) fix.

**Independent source used: [Bible Hub](https://biblehub.com/web/) (WEB)** — not cited in the
brief's draft-pull note or `docs/reviews/hosea-hard-review.md` (ebible.org, biblegateway.com). All
12 items checked character-for-character.

**Result: `pass`.** Zero discrepancies found.

## Verses independently checked

| Item | Verse | Brief's text | Result |
|---|---|---|---|
| 1 | Hos 1:5 | "It will happen in that day that I will break the bow of Israel in the valley of Jezreel." | **Match** ([Bible Hub, Hosea 1](https://biblehub.com/web/hosea/1.htm)) |
| 2 | Hos 1:2 | "When Yahweh spoke at first by Hosea, Yahweh said to Hosea, 'Go, take for yourself a wife of prostitution and children of unfaithfulness; for the land commits great adultery, forsaking Yahweh.'" | **Match** (Bible Hub, Hosea 1) |
| 3 | Hos 2:15 | "I will give her vineyards from there, and the valley of Achor for a door of hope; and she will respond there as in the days of her youth, and as in the day when she came up out of the land of Egypt." | **Match** ([Bible Hub, Hosea 2](https://biblehub.com/web/hosea/2.htm)) |
| 4 | Hos 3:1 | "Yahweh said to me, 'Go again, love a woman loved by another, and an adulteress, even as Yahweh loves the children of Israel, though they turn to other gods, and love cakes of raisins.'" | **Match** ([Bible Hub, Hosea 3](https://biblehub.com/web/hosea/3.htm)) |
| 5 | Hos 3:5 | "Afterward the children of Israel shall return and seek Yahweh their God, and David their king, and shall come with trembling to Yahweh and to his blessings in the last days." | **Match** (Bible Hub, Hosea 3) |
| 6 | Hos 4:6 | "My people are destroyed for lack of knowledge. Because you have rejected knowledge, I will also reject you, that you may be no priest to me. Because you have forgotten your God's law, I will also forget your children." | **Match** ([Bible Hub, Hosea 4](https://biblehub.com/web/hosea/4.htm)) |
| 7 | Hos 6:1-3 | "Come! Let's return to Yahweh; for he has torn us to pieces, and he will heal us; he has injured us, and he will bind up our wounds. After two days he will revive us. On the third day he will raise us up, and we will live before him. Let's acknowledge Yahweh. Let's press on to know Yahweh. As surely as the sun rises, Yahweh will appear. He will come to us like the rain, like the spring rain that waters the earth." | **Match, full block** ([Bible Hub, Hosea 6](https://biblehub.com/web/hosea/6.htm)) |
| 8 | Hos 11:1 | "When Israel was a child, then I loved him, and called my son out of Egypt." | **Match** ([Bible Hub, Hosea 11](https://biblehub.com/web/hosea/11.htm)) |
| 9 | Hos 11:9 | "I will not execute the fierceness of my anger. I will not return to destroy Ephraim, for I am God, and not man—the Holy One among you. I will not come in wrath." | **Match**, including the em-dash construction "man—the Holy One" (Bible Hub, Hosea 11) |
| 10 | Hos 14:2 | "Take words with you, and return to Yahweh. Tell him, 'Forgive all our sins, and accept that which is good; so we offer bulls as we vowed of our lips.'" | **Match** ([Bible Hub, Hosea 14](https://biblehub.com/web/hosea/14.htm)) |
| 11 | Hos 1:10 | "Yet the number of the children of Israel will be as the sand of the sea, which can't be measured or counted; and it will come to pass that, in the place where it was said to them, 'You are not my people,' they will be called 'sons of the living God.'" | **Match** (Bible Hub, Hosea 1) |
| 12 (boss) | Hos 2:16, 6:6, 11:8 | "'It will be in that day,' says Yahweh, 'that you will call me "my husband"'" / "'For I desire mercy, and not sacrifice'" / "'How can I give you up, Ephraim?'" | **Match** — all three short quotations are accurate substrings of their respective verses (Bible Hub, Hosea 2/6/11) |

Items 1, 3, 6, and 10 (Hos 1:5, 2:15, 4:6, 14:2) were the theological review's single-source-only
rows, flagged for this pass — now independently two-source confirmed.

## Format/exclusion check — grepped, not just trusted

- **Hosea 1:2, 3:1, 3:5, 1:10, and 6:1-3 stay recall-only, never multiple-choice.** This entire tier
  is recall-format by design; grepped `docs/content/hosea-hard.md` and confirmed every one of items
  1-11 uses `— recall:` and none uses `— MC:` anywhere in the file. **Confirmed by direct grep.**
- **Hosea 6:1-3's graded token (item 7) is "Yahweh"** (in "press on to know Yahweh") — not "third" or
  "day". Confirmed by direct inspection.
- **Hosea 11:1's graded token (item 8) is "son"** — tests only "who is called God's son," no NT
  reference anywhere in the item or its surrounding prose. Confirmed by direct inspection.

## Conclusion

**`pass`.** All 12 challenge-ready verses/blocks (including the boss item's three short quotations)
independently re-verified against Bible Hub's WEB text with zero character-level discrepancies. Both
required format checks confirmed by grep against the actual file content.
`docs/content/hosea-hard.md` is eligible for ingestion on this QA dimension.

### Sources used

- [Bible Hub, World English Bible](https://biblehub.com/web/) — Hosea chapters 1, 2, 3, 4, 6, 11, 14
