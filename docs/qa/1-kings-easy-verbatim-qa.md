# Verbatim-Text QA — 1 Kings, Easy Tier (World 11)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed or newly
inlined in `docs/content/1-kings-easy.md` while applying the required/recommended fixes from
`docs/reviews/1-kings-easy-review.md` (`approved-with-changes`), run 2026-08-20.

**Result: `pass`.** All changed/newly-inlined verses re-verified against BibleGateway (`version=WEB`)
— an independent source from ebible.org, the brief's primary drafting source — with zero
character-level discrepancies. Items whose displayed text did not change (only labels, stems, or
option formatting) are not re-litigated for verse text, but their unchanged text was carried forward
from the theological review's own verification table, which already checked them against
ebible.org/BibleGateway/Bible Hub.

## Verses independently re-checked (text newly added or restored)

| Item | Verse | Brief's text after fix | Source | Result |
|---|---|---|---|---|
| 11 | 1 Kings 18:21 (full verse, restored) | "Elijah came near to all the people, and said, 'How long will you waver between the two sides? If Yahweh is God, follow him; but if Baal, then follow him.' The people didn't say a word." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Kings+3%3A9%2C+1+Kings+18%3A21&version=WEB) | **Match, full verse.** Confirms Finding A(iii) — the previously-displayed text was a mid-verse trim of this full verse. |
| 13(b) | 1 Kings 3:24 | "The king said, 'Get me a sword.' So they brought a sword before the king." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Kings+3%3A24-28&version=WEB) | **Match, full verse.** |
| 13(c) | 1 Kings 3:26 (clause) | "Then the woman whose the living child was spoke to the king, for her heart yearned over her son, and she said, 'Oh, my lord, give her the living child, and in no way kill him!'" | same | **Match** — verbatim substring of the full verse (full verse continues "But the other said, 'He shall be neither mine nor yours. Divide him.'", correctly not included here as this beat is attributed to the true mother only). |
| 13(d) | 1 Kings 3:27-28 | "Then the king answered, 'Give the first woman the living child, and definitely do not kill him. She is his mother.' All Israel heard of the judgment which the king had judged; and they feared the king, for they saw that the wisdom of God was in him to do justice." | same | **Match, both verses, correct range citation.** |
| 14 | 1 Kings 3:9 | "Give your servant therefore an understanding heart to judge your people, that I may discern between good and evil; for who is able to judge this great people of yours?" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Kings+3%3A9%2C+1+Kings+18%3A21&version=WEB) | **Match, full verse.** |
| 14 | 1 Kings 12:16 | "What portion have we in David? We don't have an inheritance in the son of Jesse. To your tents, Israel! Now see to your own house, David." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Kings+12%3A16&version=WEB) | **Match** — verbatim substring of the full verse (the people's spoken words, correctly excerpted from the narrative frame "the people answered the king, saying,"). |
| 14 | 1 Kings 18:21 | (same string as item 11 above) | same as item 11 | **Match.** |
| 15 | 1 Kings 12:16 (full verse) | "When all Israel saw that the king didn't listen to them, the people answered the king, saying, 'What portion have we in David? We don't have an inheritance in the son of Jesse. To your tents, Israel! Now see to your own house, David.' So Israel departed to their tents." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Kings+12%3A16&version=WEB) | **Match, full verse, exactly as now inlined.** |

## Trim-label corrections verified (text unchanged, label corrected)

| Item | Verse | Full verse confirmed | Result |
|---|---|---|---|
| 8 | 1 Kings 8:23 | "and he said, 'Yahweh, the God of Israel, there is no God like you, in heaven above, or on earth beneath; who keeps covenant and loving kindness with your servants who walk before you with all their heart;'" ([BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Kings+8%3A23%2C+1+Kings+8%3A29%2C+1+Kings+18%3A22%2C+1+Kings+18%3A26&version=WEB)) | **Confirmed the brief's displayed text is a verbatim substring** (drops only the opening narrative frame "and he said,"); "(WEB, trimmed)" tag is now accurate. |
| 12 | 1 Kings 18:22 | "Then Elijah said to the people, 'I, even I only, am left as a prophet of Yahweh; but Baal's prophets are four hundred fifty men.'" (same source) | **Confirmed** — brief's displayed text is a verbatim substring (drops the opening narrative frame); "(WEB, trimmed)" tag is now accurate. |

## Format/answer-key checks (not text)

- **Item 7's stem correction** ("in the house" replacing "at the building site") was checked against
  the full displayed verse text of 1 Kings 6:7, which reads "...no hammer or ax or any tool of iron
  was heard **in the house** while it was under construction" — the corrected stem now quotes the
  verse's own wording exactly, closing the ambiguity the review identified.
- **Item 1 and item 11's un-quoting of MC options** is a formatting fix, not a text change — no new
  verse string was introduced; the three previously-quoted invented distractors in each item are now
  unquoted paraphrase, and the correct-answer content is unchanged in substance.
- **Item 4's stem tightening** ("What did the king order?") removed words, introduced no new text
  requiring verification.

## Not re-litigated (verse text unchanged from the reviewed brief, or already-approved elsewhere)

Items 1-6, 9, 10 (1 Kings 3:5, 3:9, 3:12, 3:25, 3:26 (item 5's clause), 8:10-11, 12:4, 12:14) — text
unchanged from the theological review's own verification table, which checked each against
ebible.org and BibleGateway/Bible Hub with zero mismatches. Item 16 carries no verse text, only
citations and a reworded narrative beat — no verbatim-text claim to check.

## Conclusion

**`pass`.** Every piece of text newly introduced, restored, or re-inlined while applying the
required fixes has been independently re-verified against BibleGateway (WEB) with zero
character-level discrepancies, including the two trim-label corrections (items 8, 12) and the one
full-verse restoration (item 11). Combined with the theological review's own multi-source
verification, every challenge-ready verse in this tier has now been checked against at least two
independent live sources. `docs/content/1-kings-easy.md` is eligible for ingestion.
