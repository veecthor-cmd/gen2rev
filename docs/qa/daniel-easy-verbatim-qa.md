# Verbatim-Text QA — Daniel, Easy Tier (World 27)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/daniel-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/daniel-easy-review.md`, `approved-with-changes`).

**Result: `pass`.** All 9 challenge-ready verses (regular items 1-7, boss items 8-9; boss item 10 is
a passage-order sequence with no quoted verse text) checked character-for-character against
[Bible Hub](https://biblehub.com) (WEB) — a source not cited anywhere in the theological review,
which used ebible.org exclusively (for the two verses it freshly sourced, Dan 1:12 and 1:15) or
carried forward the medium-tier review's own sourcing for the rest. Zero discrepancies found.

## Verses independently re-checked

| Item | Verse | Brief's text | Prior source | Independent source (this pass) | Result |
|---|---|---|---|---|---|
| 1 | Dan 1:8 | "But Daniel purposed in his heart that he would not defile himself with the king's delicacies, nor with the wine which he drank. Therefore he requested of the prince of the eunuchs that he might not defile himself." | Carried forward from medium tier (single-source, flagged) | [Bible Hub WEB, Daniel 1](https://biblehub.com/web/daniel/1.htm) | **Match, full verse confirmed.** Flag on this item is now resolved with a genuine second source. |
| 2 | Dan 1:12 | "'Test your servants, I beg you, ten days; and let them give us vegetables to eat and water to drink.'" | ebible.org only, flagged | [Bible Hub WEB, Daniel 1](https://biblehub.com/web/daniel/1.htm) | **Match.** Flag resolved. |
| 3 | Dan 2:47 | "The king answered to Daniel, and said, 'Of a truth your God is the God of gods, and the Lord of kings, and a revealer of secrets, since you have been able to reveal this secret.'" | Carried forward from medium tier (single-source, flagged) | [Bible Hub WEB, Daniel 2](https://biblehub.com/web/daniel/2.htm) | **Match.** Flag resolved. |
| 4 | Dan 3:16-18 (trimmed, 3:17 elided) | "Shadrach, Meshach, and Abednego answered the king, 'Nebuchadnezzar, we have no need to answer you in this matter... But if not, let it be known to you, O king, that we will not serve your gods or worship the golden image which you have set up.'" | Carried forward from medium tier (two sources) | [Bible Hub WEB, Daniel 3](https://biblehub.com/web/daniel/3.htm) | **Match.** 3:16 and 3:18 both confirmed verbatim; the brief's "..." correctly marks the elision of 3:17 between them. |
| 5 | Dan 3:25 | "'Look, I see four men loose, walking in the middle of the fire, and they are unharmed. The appearance of the fourth is like a son of the gods.'" | Carried forward from medium tier (two sources) | [Bible Hub WEB, Daniel 3](https://biblehub.com/web/daniel/3.htm) | **Match.** |
| 6 | Dan 5:25 | "This is the writing that was inscribed: 'MENE, MENE, TEKEL, UPHARSIN.'" | Carried forward from medium tier (two sources) | [Bible Hub WEB, Daniel 5](https://biblehub.com/web/daniel/5.htm) | **Match.** |
| 7 | Dan 6:16 | "Then the king commanded, and they brought Daniel and cast him into the den of lions. The king spoke and said to Daniel, 'Your God whom you serve continually, he will deliver you.'" | Carried forward from medium tier (two sources) | [Bible Hub WEB, Daniel 6](https://biblehub.com/web/daniel/6.htm) | **Match.** |
| 8 | Dan 6:22 | "'My God has sent his angel, and has shut the lions' mouths, and they have not hurt me, because innocence was found in me before him; and also before you, O king, I have done no harm.'" | Carried forward from medium tier (two sources) | [Bible Hub WEB, Daniel 6](https://biblehub.com/web/daniel/6.htm) | **Match.** |
| 9 | Dan 1:15 | "At the end of ten days, their faces appeared fairer and they were fatter in flesh than all the youths who ate of the king's delicacies." | ebible.org only, flagged | [Bible Hub WEB, Daniel 1](https://biblehub.com/web/daniel/1.htm) | **Match.** Flag resolved. |

## Answer-key check

- Item 6's blank ("UPHARSIN") and item 9's blank ("fairer") were checked against the surrounding
  verse text fetched above, not just the brief's own claim — both exact, unambiguous matches.
- Item 3's stem was cross-checked against the full 2:47 text to confirm the quoted king's-statement
  option is verbatim and the other three options are clearly distinguishable distractors, not
  near-misses of the real text.

## Exclusion checks (grepped, not just asserted)

- **Daniel 7-12:** grepped `docs/content/daniel-easy.md` for chapter references 7 through 12. All 3
  hits are in the brief's own exclusion-statement prose (design intent, passage list note, Contested
  Territory section). **No verse, scene description, or content reference from these chapters
  appears anywhere in the challenge items**, including the boss sequence (item 10), which lists only
  the six chapter 1-6 scene labels. Confirmed absent.
- **Daniel 4:33** is not applicable to this brief — Daniel 4 is not used at all in this tier's item
  list (confirmed by direct read of the brief; no Daniel 4 verse of any kind appears).

## Conclusion

**`pass`.** All 9 challenge-ready verses independently re-verified against Bible Hub (WEB), a source
genuinely distinct from every source cited in the theological review (ebible.org, or medium tier's
own sourcing carried forward), with zero discrepancies. The Daniel 1 chapter flag the review raised
(1:8, 1:12, 1:15) is now resolved with a real second source for all three items, as is Dan 2:47.
Required exclusion (Daniel 7-12) confirmed absent by direct grep of the brief file; Daniel 4:33 is
not present in this brief at all. `docs/content/daniel-easy.md` is eligible for ingestion.
