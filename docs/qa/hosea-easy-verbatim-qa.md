# Verbatim-Text QA — Hosea, Easy Tier (World 28)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/hosea-easy.md`, run 2026-09-03, after theological self-review
(`docs/reviews/hosea-easy-review.md`, `approved-with-changes`) and after that review's one required
fix was applied to the brief.

**Independent source used: [Bible Hub](https://biblehub.com/web/) (WEB)** — a source not cited in
either the brief's own draft-pull note or `docs/reviews/hosea-easy-review.md` (which cited
ebible.org and biblegateway.com). All 12 items checked character-for-character against Bible Hub's
WEB text.

**Result: `pass`.** Zero discrepancies found. All 12 challenge-ready verses/blocks match the
independent source exactly.

## Verses independently checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Hos 1:3 | "So he went and took Gomer the daughter of Diblaim; and she conceived, and bore him a son." | [Bible Hub WEB, Hosea 1](https://biblehub.com/web/hosea/1.htm) | **Match.** |
| 2 | Hos 1:4 | "Yahweh said to him, 'Call his name Jezreel, for yet a little while, and I will avenge the blood of Jezreel on the house of Jehu, and will cause the kingdom of the house of Israel to cease.'" | Bible Hub WEB, Hosea 1 | **Match.** |
| 3 | Hos 2:16 | "'It will be in that day,' says Yahweh, 'that you will call me "my husband," and no longer call me "my master."'" | [Bible Hub WEB, Hosea 2](https://biblehub.com/web/hosea/2.htm) | **Match on wording.** Note: source's actual quote-mark nesting is outer double / inner single ("It will be in that day," says Yahweh, "...'my husband'..."); the brief's nesting is inverted (outer single / inner double) as a function of the brief's own markdown quoting convention. This is a formatting/nesting difference only, not a wording discrepancy — same class of note as `docs/qa/genesis-easy-verbatim-qa.md` item 2. Ingestion should use WEB's actual quote characters. |
| 4 | Hos 3:2 | "So I bought her for myself for fifteen pieces of silver and a homer and a half of barley." | [Bible Hub WEB, Hosea 3](https://biblehub.com/web/hosea/3.htm) | **Match.** |
| 5 | Hos 4:2 | "There is cursing, lying, murder, stealing, and committing adultery; they break boundaries, and bloodshed causes bloodshed." | [Bible Hub WEB, Hosea 4](https://biblehub.com/web/hosea/4.htm) | **Match.** (This item was single-source-only per the theological review — now independently two-source confirmed.) |
| 6 | Hos 6:6 | "For I desire mercy, and not sacrifice; and the knowledge of God more than burnt offerings." | [Bible Hub WEB, Hosea 6](https://biblehub.com/web/hosea/6.htm) | **Match.** |
| 7 | Hos 11:1 | "When Israel was a child, then I loved him, and called my son out of Egypt." | [Bible Hub WEB, Hosea 11](https://biblehub.com/web/hosea/11.htm) | **Match.** |
| 8 | Hos 11:8 | "How can I give you up, Ephraim? How can I hand you over, Israel? How can I make you like Admah? How can I make you like Zeboiim? My heart is turned within me, my compassion is aroused." | Bible Hub WEB, Hosea 11 | **Match.** |
| 9 | Hos 1:2 | "When Yahweh spoke at first by Hosea, Yahweh said to Hosea, 'Go, take for yourself a wife of prostitution and children of unfaithfulness; for the land commits great adultery, forsaking Yahweh.'" | Bible Hub WEB, Hosea 1 | **Match.** |
| 10 | Hos 1:10 | "Yet the number of the children of Israel will be as the sand of the sea, which can't be measured or counted; and it will come to pass that, in the place where it was said to them, 'You are not my people,' they will be called 'sons of the living God.'" | Bible Hub WEB, Hosea 1 | **Match.** |
| 11 | Hos 3:5 | "Afterward the children of Israel shall return and seek Yahweh their God, and David their king, and shall come with trembling to Yahweh and to his blessings in the last days." | Bible Hub WEB, Hosea 3 | **Match.** |
| 12 | Hos 6:1-3 | "Come! Let's return to Yahweh; for he has torn us to pieces, and he will heal us; he has injured us, and he will bind up our wounds. After two days he will revive us. On the third day he will raise us up, and we will live before him. Let's acknowledge Yahweh. Let's press on to know Yahweh. As surely as the sun rises, Yahweh will appear. He will come to us like the rain, like the spring rain that waters the earth." | Bible Hub WEB, Hosea 6 | **Match, full block.** |

## Format/exclusion check (not just text) — grepped, not just trusted

- **Hosea 1:2, 1:10, 3:5, and 6:1-3 stay recall-only, never multiple-choice.** Grepped
  `docs/content/hosea-easy.md` for each reference: all four appear only as items 9-12, all under the
  file's "### Boss (4)" heading, and each item's format keyword is literally `— recall:` (item 9's
  blank is "prostitution", item 10's is "God", item 11's is "David", item 12's is "heal"). No
  occurrence of any of these four references paired with `— MC:` anywhere in the file. **Confirmed
  by direct grep, not just by trusting the brief's own claim.**
- **Hosea 3:1 does not appear as a challenge item** in this brief (the brief's own prose explains why
  — see its Contested Territory section) — confirmed by grep, no item cites 3:1.
- **Hosea 6:1-3's graded token is never "third" or "day."** Item 12's blank is "heal" ("he will
  ___ us"), nowhere near the "third day" clause. Confirmed by direct inspection of the item text.

## Conclusion

**`pass`.** All 12 challenge-ready verses/blocks independently re-verified against Bible Hub's WEB
text (a source distinct from both ebible.org and biblegateway.com, already cited in this brief's
draft-pull note and its theological review) with zero character-level discrepancies. Both required
format checks (recall-only restriction on 1:2/1:10/3:5/6:1-3; graded-token restriction on 6:1-3)
independently confirmed by grep against the actual file content. `docs/content/hosea-easy.md` is
eligible for ingestion on this QA dimension.

### Sources used

- [Bible Hub, World English Bible](https://biblehub.com/web/) — Hosea chapters 1, 2, 3, 4, 6, 11
  (primary independent source for this pass)
