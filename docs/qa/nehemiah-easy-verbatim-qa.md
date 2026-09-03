# Verbatim-Text QA — Nehemiah, Easy Tier (World 16)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/nehemiah-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/nehemiah-easy-review.md`, `approved-with-changes`).

**Independent source used:** [Bible Hub, WEB](https://biblehub.com/web/) (biblehub.com/web/nehemiah/&lt;ch&gt;.htm)
— World English Bible specifically, a source genuinely distinct from ebible.org and biblegateway.com,
both of which were already cited in `docs/reviews/nehemiah-easy-review.md` §1 for these items.

**Result: `pass-with-corrections`.** 7 of 8 challenge-ready verses matched exactly. One item
(Nehemiah 8:17) silently dropped the verse's final sentence ("There was very great gladness.") with
no trim label — fixed directly in the brief (see below). Items 9-10 (boss sequence and
quotation-match) quote no new verse text in this brief — they reuse `medium`'s already-verified
difficulty-ladder content (including 6:16, brought in by item 10's quotation-match reuse, already
verified in `docs/reviews/nehemiah-review.md` §1).

## Verses independently re-checked

| Item | Verse | Brief's text | Bible Hub (WEB) | Result |
|---|---|---|---|---|
| 1 | Neh 1:3 | "The remnant who are left of the captivity there in the province are in great affliction and reproach. The wall of Jerusalem is also broken down, and its gates are burned with fire." | [biblehub.com/web/nehemiah/1.htm](https://biblehub.com/web/nehemiah/1.htm) | **Match**, confirmed complete (no additional text follows within the verse). |
| 2 | Neh 2:5 | "I said to the king, 'If it pleases the king, and if your servant has found favor in your sight, I ask that you would send me to Judah, to the city of my fathers' tombs, that I may build it.'" | [biblehub.com/web/nehemiah/2.htm](https://biblehub.com/web/nehemiah/2.htm) | **Match**, confirmed complete. |
| 3 | Neh 2:18 | "I told them about the hand of my God which was good on me, and also about the king's words that he had spoken to me. They said, 'Let's rise up and build.' So they strengthened their hands for the good work." | [biblehub.com/web/nehemiah/2.htm](https://biblehub.com/web/nehemiah/2.htm) | **Match, content complete.** Note: Bible Hub renders the embedded quotation with double quotes ("Let's rise up and build.") where the brief uses single quotes nested inside its own outer double-quoted block — this is the brief's own quote-nesting convention (same pattern noted for `docs/content/genesis-easy.md` item 2), not a wording error. Flagged here for the ingestion step to store WEB's actual double-quote characters. |
| 4 | Neh 4:17 | "Those who built the wall, and those who bore burdens loaded themselves; everyone with one of his hands did the work, and with the other held his weapon." | [biblehub.com/web/nehemiah/4.htm](https://biblehub.com/web/nehemiah/4.htm) | **Match**, confirmed complete. This was the review's single-source-only flag; now independently double-sourced. |
| 5 | Neh 8:10 | "Then he said to them, 'Go your way. Eat the fat, drink the sweet, and send portions to him for whom nothing is prepared, for today is holy to our Lord. Don't be grieved, for the joy of Yahweh is your strength.'" | [biblehub.com/web/nehemiah/8.htm](https://biblehub.com/web/nehemiah/8.htm) | **Match, content complete.** Same quote-nesting note as item 3 above: WEB prints double quotes around the spoken words; the brief's single quotes are its own nested-block convention, not a wording change. Flagged for ingestion. |
| 6 | Neh 8:17 | "All the assembly of those who had come back out of the captivity made temporary shelters and lived in the temporary shelters, for since the days of Joshua the son of Nun to that day the children of Israel had not done so." | [biblehub.com/web/nehemiah/8.htm](https://biblehub.com/web/nehemiah/8.htm) | **Mismatch found (silent truncation) — corrected.** Verse-boundary-checked against 8:16-18 listed individually: verse 17 continues **"...had not done so. There was very great gladness."** — the brief silently dropped the final sentence, with no trim label. |
| 7 | Neh 13:19 | "It came to pass that when the gates of Jerusalem began to be dark before the Sabbath, I commanded that the doors should be shut, and commanded that they should not be opened until after the Sabbath..." | [biblehub.com/web/nehemiah/13.htm](https://biblehub.com/web/nehemiah/13.htm) | **Match.** Trailing "..." correctly labels the trim (verse continues "I set some of my servants over the gates, so that no burden should be brought in on the Sabbath day."); the quoted portion is a verbatim substring. |
| 8 | Neh 9:38 (recall) | "Yet for all this, we make a sure covenant, and ___ it; and our princes, our Levites, and our priests, seal it." → **write** | [biblehub.com/web/nehemiah/9.htm](https://biblehub.com/web/nehemiah/9.htm) | **Match**, confirmed complete; blanked word correct. |

## Discrepancy found and fixed

**Item 6, Neh 8:17** — the brief's quote ended at "...had not done so." and presented that as the
complete verse, but the WEB text of 8:17 continues with a second sentence, "There was very great
gladness." (confirmed against verses 8:16-18 individually — this sentence belongs to verse 17, not
18). No ellipsis or trim label was present, so this was a silent truncation, not a labeled trim.

**Fix applied** in `docs/content/nehemiah-easy.md`, item 6: restored "There was very great
gladness." to the quoted verse text, and noted the correction in the item's citation. The MC
question and answer options are unaffected (they ask about the instruction to eat/drink/send
portions, unrelated to the restored sentence).

## Conclusion

**`pass-with-corrections`.** 7 of 8 challenge-ready verses matched Bible Hub's WEB text exactly
(2 with a quote-nesting formatting note for ingestion, not a wording error). One item (8:17) had a
real silent-truncation discrepancy — fixed directly in `docs/content/nehemiah-easy.md` per this
report. Eligible for ingestion per `QA_REQUIREMENTS.md` §3 now that the correction is applied.
