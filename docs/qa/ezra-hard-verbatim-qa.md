# Verbatim-Text QA — Ezra, Hard Tier (World 15)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/ezra-hard.md`, run 2026-09-03, after theological review
(`docs/reviews/ezra-hard-review.md`, `approved-with-changes`).

**Independent source used:** [Bible Hub, WEB](https://biblehub.com/web/) (biblehub.com/web/ezra/&lt;ch&gt;.htm) —
World English Bible specifically, a source genuinely distinct from ebible.org and biblegateway.com,
both of which were already cited in `docs/reviews/ezra-hard-review.md` §1 for these items.

**Result: `pass-with-corrections`.** 7 of 8 challenge-ready verses matched exactly. One item (Ezra
9:6) silently dropped its verse's leading dialogue tag ("and I said,") with no trim label — fixed
directly in the brief (see below). Items 9-10 (boss sequence and MC) quote no new verse text in this
brief — they reuse `medium`'s already-verified difficulty-ladder content.

## Verses independently re-checked

| Item | Verse | Brief's text | Bible Hub (WEB) | Result |
|---|---|---|---|---|
| 1 | Ezra 1:2 | "Cyrus king of Persia says, 'Yahweh, the God of heaven, has given me all the kingdoms of the earth; and he has commanded me to build him a house in Jerusalem, which is in Judah." | [biblehub.com/web/ezra/1.htm](https://biblehub.com/web/ezra/1.htm) | **Match.** Verse-boundary-checked against 1:1-10 listed individually: the true end of verse 2 is "...which is in Judah." (verse 3 begins the next sentence, "Whoever there is among you..."). Complete verse, not truncated. |
| 2 | Ezra 1:9 | "This is the number of them: thirty platters of gold, one thousand platters of silver, twenty-nine knives," | [biblehub.com/web/ezra/1.htm](https://biblehub.com/web/ezra/1.htm) | **Match.** The trailing comma is the true verse boundary — the inventory list continues into verse 10 ("thirty bowls of gold..."), a separate verse, not a truncation of verse 9. |
| 3 | Ezra 3:8 | "Now in the second year of their coming to God's house at Jerusalem, in the second month, Zerubbabel the son of Shealtiel, Jeshua the son of Jozadak, and the rest of their brothers the priests and the Levites... began the work..." | [biblehub.com/web/ezra/3.htm](https://biblehub.com/web/ezra/3.htm) | **Match.** Full verse: "...priests and the Levites, and all those who had come out of the captivity to Jerusalem, began the work and appointed the Levites, from twenty years old and upward, to have the oversight of the work of Yahweh's house." Brief's two embedded "..." correctly label both trims; retained text is verbatim. |
| 4 | Ezra 6:3 | "...Concerning God's house at Jerusalem, let the house be built, the place where they offer sacrifices, and let its foundations be strongly laid, with its height sixty cubits and its width sixty cubits;" | [biblehub.com/web/ezra/6.htm](https://biblehub.com/web/ezra/6.htm) | **Match, character-by-character.** Leading "..." correctly labels the trim (omitted opening "In the first year of Cyrus the king, Cyrus the king made a decree:"); the semicolon is the true end of verse 3 (verse 4 begins "with three courses of great stones..."). |
| 5 | Ezra 6:22 | "...and kept the feast of unleavened bread seven days with joy; because Yahweh had made them joyful, and had turned the heart of the king of Assyria to them, to strengthen their hands in the work of God, the God of Israel's house." | [biblehub.com/web/ezra/6.htm](https://biblehub.com/web/ezra/6.htm) | **Match, character-by-character**, including "Assyria" (not altered). Leading "..." correctly labels the trim; the verse (and chapter) ends there. |
| 6 | Ezra 7:21 | "I, even I, Artaxerxes the king, make a decree to all the treasurers who are beyond the River, that whatever Ezra the priest, the scribe of the law of the God of heaven, requires of you, it shall be done with all diligence," | [biblehub.com/web/ezra/7.htm](https://biblehub.com/web/ezra/7.htm) | **Match.** Verse-boundary-checked against 7:20-28 listed individually: the trailing comma is the true end of verse 21 (verse 22 begins "up to one hundred talents of silver..."). Complete verse. |
| 7 | Ezra 7:27 | "Blessed be Yahweh, the God of our fathers, who has put such a thing as this in the king's heart, to beautify Yahweh's house which is in Jerusalem;" | [biblehub.com/web/ezra/7.htm](https://biblehub.com/web/ezra/7.htm) | **Match.** Verse-boundary-checked: the semicolon is the true end of verse 27 (verse 28 begins "and has extended loving kindness..."). Complete verse. |
| 8 | Ezra 9:6 | "My God, I am ashamed and blush to lift up my face to you, my God, for our iniquities have increased over our head, and our guiltiness has grown up to the heavens." | [biblehub.com/web/ezra/9.htm](https://biblehub.com/web/ezra/9.htm) | **Mismatch found (silent truncation) — corrected.** Verse-boundary-checked against 9:5-7 listed individually: verse 6 actually reads **"and I said, 'My God, I am ashamed..."** — the brief quoted only the dialogue itself, silently dropping the "and I said," dialogue tag, with no trim label. The graded clause and blank ("head") were otherwise untouched and correct. |

## Discrepancy found and fixed

**Item 8, Ezra 9:6** — the brief presented "My God, I am ashamed..." as if it were the verbatim
start of the verse, but the WEB text of 9:6 begins "and I said, 'My God, I am ashamed...'". This is
a silent truncation (the leading clause was dropped without an ellipsis or trim note), not a labeled
trim.

**Fix applied** in `docs/content/ezra-hard.md`, item 8: added an explicit note to the citation
recording that the quote is taken from mid-verse, following the dropped "and I said," dialogue tag,
so the quoted text is now correctly documented as a verbatim substring rather than presented as the
verse's true beginning. The quoted challenge text itself, the recall blank ("head"), and the answer
were already correct and are unchanged.

## Conclusion

**`pass-with-corrections`.** 7 of 8 challenge-ready verses matched Bible Hub's WEB text exactly with
no issues. One item (9:6) had a real, if minor, silent-truncation discrepancy — fixed directly in
`docs/content/ezra-hard.md` per this report. Eligible for ingestion per `QA_REQUIREMENTS.md` §3 now
that the correction is applied.
