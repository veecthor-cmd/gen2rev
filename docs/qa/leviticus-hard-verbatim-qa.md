# Verbatim-Text QA — Leviticus, Hard Tier (World 3)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/leviticus-hard.md`, run after theological review
(`docs/reviews/leviticus-hard-review.md`, `approved-with-changes`) and after the blocking fix (boss
item 11) was applied to the brief, **with particular attention to boss item 11's corrected text and
the quote-nesting items flagged in review Finding B**, per the review's explicit instruction.

**Result: `pass`.** All 8 newly-fetched verses re-verified against `https://ebible.org/web/` and
BibleGateway (`version=WEB`), with zero character-level discrepancies — including boss item 11's
restored full-verse text, which now matches the live source exactly.

## Verses independently re-checked

| Item | Verse | Brief's text (post-fix) | Source | Result |
|---|---|---|---|---|
| 1 | Lev 1:2 | "'Speak to the children of Israel, and tell them, "When anyone of you offers an offering to Yahweh, you shall offer your offering of the livestock, from the herd and from the flock."'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2-4%3B+Leviticus+10%3A1-3%3B+Leviticus+16%3A2%3B+Leviticus+16%3A17%3B+Leviticus+16%3A29-30%3B+Leviticus+16%3A34%3B+Leviticus+17%3A11&version=WEB) | **Words match verbatim.** Confirmed the review's Finding B: live source prints outer double/inner single quotes with no closing mark (speech continues into v3); this brief's outer-single/inner-double closed-pair nesting is the project's own bracketing convention, not WEB's punctuation. Recorded for ingestion per the brief's own note. |
| 2 | Lev 16:34 | "'This shall be an ___ statute for you, to make atonement for the children of Israel once in the year because of all their sins.' It was done as Yahweh commanded Moses." → **everlasting** | Same source | **Match, full verse.** Graded token "everlasting" confirmed correct — this is the exact word in that slot. Text identical to the already-QA'd `medium` text; only the blank position is new to this tier. |
| 3 | Lev 16:17 | "No one shall be in the Tent of Meeting when he enters to make atonement in the Holy Place, until he comes out, and has made atonement for himself and for his household, and for all the ___ of Israel." → **assembly** | Same source | **Match, full verse, verbatim.** Graded token "assembly" confirmed correct. |
| 4 | Lev 19:11 | "'You shall not steal. You shall not lie. You shall not deceive one ___.'" → **another** | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+19%3A2%3B+Leviticus+19%3A11%3B+Leviticus+19%3A14%3B+Leviticus+19%3A18%3B+Leviticus+19%3A32%3B+Leviticus+25%3A9%3B+Leviticus+25%3A10%3B+Leviticus+25%3A17%3B+Leviticus+25%3A23&version=WEB) | **Words match verbatim.** The brief's combined-clause presentation of the three short WEB clauses is confirmed as a defensible display choice (both live sources agree on the words; they differ from each other only in line-break treatment, not content). Graded token "another" confirmed correct. |
| 5 | Lev 19:14 | "'You shall not curse the deaf, nor put a stumbling block before the ___; but you shall fear your God. I am Yahweh.'" → **blind** | Same source | **Match, full verse, verbatim.** Graded token "blind" confirmed correct. |
| 6 | Lev 19:32 | "'You shall rise up before the gray head and honor the face of the ___; and you shall fear your God. I am Yahweh.'" → **elderly** | Same source | **Match — "the elderly" confirmed on live source**, not "the old man" (older/KJV-family wording). Graded token "elderly" confirmed correct, consistent with the brief's own note that this needed a fresh check rather than assumption. |
| 7 | Lev 25:9 | "'Then you shall sound the ___ trumpet on the tenth day of the seventh month. On the Day of Atonement you shall sound the trumpet throughout all your land.'" → **loud** | Same source | **Words match verbatim.** Graded token "loud" confirmed correct. Confirmed the review's Finding B: neither live source prints an opening quote mark at the start of 25:9 in isolation; the brief's leading single quote is the project's bracketing convention. |
| 8 | Lev 25:23 | "'The land shall not be sold in perpetuity, for the land is ___; for you are strangers and live as foreigners with me.'" → **mine** | [ebible.org WEB LEV25](https://ebible.org/web/LEV25.htm) | **Match, full verse, including the leading single quote mark.** Graded token "mine" confirmed correct. |
| 9 | Lev 17:11 (boss) | "'For the life of the flesh is in the blood. I have given it to you on the altar to make atonement for your souls; for it is the blood that makes atonement by reason of the life.'" → **life** | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2-4%3B+Leviticus+10%3A1-3%3B+Leviticus+16%3A2%3B+Leviticus+16%3A17%3B+Leviticus+16%3A29-30%3B+Leviticus+16%3A34%3B+Leviticus+17%3A11&version=WEB) | **Match.** Reused verbatim from approved `medium`; not re-litigated per review scope, spot-checked here anyway — confirmed. |
| 10 | Lev 10:1-3 (boss) | "Nadab and Abihu, the sons of Aaron, each took his censer, and put fire in it, and laid incense on it, and offered strange fire before Yahweh, which he had not commanded them. Fire came out from before Yahweh, and devoured them, and they died before Yahweh. Then Moses said to Aaron, 'This is what Yahweh spoke of, saying, "I will show myself holy to those who come near me, and before all the people I will be glorified."'" → **glorified** | Same source | **Match, full block.** Reused verbatim from approved `medium`; confirmed the block still ends "...I will be glorified." with "Aaron held his peace." following (unlabelled continuation, already recorded in `docs/qa/leviticus-verbatim-qa.md` note 1 — not re-opened here per review Finding D). |
| 11 | Lev 16:2 (boss; **restored to full verse per review Finding A, blocking fix**) | "Yahweh said to Moses, 'Tell Aaron your brother not to come at just any time into the Most Holy Place within the veil, before the mercy seat which is on the ark; lest he ___; for I will appear in the cloud on the mercy seat.'" → **die** | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2-4%3B+Leviticus+10%3A1-3%3B+Leviticus+16%3A2%3B+Leviticus+16%3A17%3B+Leviticus+16%3A29-30%3B+Leviticus+16%3A34%3B+Leviticus+17%3A11&version=WEB), [ebible.org WEB LEV16](https://ebible.org/web/LEV16.htm) | **Match — exact, including the restored "Yahweh said to Moses," opening.** This is the critical re-check: the prior draft opened directly at "Tell Aaron your brother..." with no trim label, though the verse actually begins "and Yahweh said to Moses,". The live source confirms: "and Yahweh said to Moses, 'Tell Aaron your brother not to come at just any time into the Most Holy Place within the veil, before the mercy seat which is on the ark; lest he die; for I will appear in the cloud on the mercy seat.'" The brief's capitalized "Yahweh said to Moses," (dropping the initial lowercase conjunction "and," consistent with this project's established convention at Ex 3:7) is a verbatim match to the rest. Graded token "die" confirmed to sit wholly inside the restored text, unchanged. |

## Boss item 11 — specific re-check (per the review's explicit instruction)

The theological review's Finding A caught that the original draft presented Lev 16:2's command
portion as if it were the entire verse, with no trim label and no ellipsis — an unlabelled-trim
defect (not paraphrase; every word shown was verbatim WEB text). Re-verified independently: the
corrected brief now displays the full verse, including the "Yahweh said to Moses," speech frame that
the live source confirms opens the verse. No partial-verse-as-whole-verse issue remains. The restored
text also resolves the review's §3.2 secondary observation — making the speaker explicit — at no
cost to the graded answer.

## Quote-nesting / punctuation conventions (review Finding B) — recorded for ingestion

Per the review's Finding B, confirmed independently in this pass:

- **Item 1 (Lev 1:2):** WEB's own nesting is outer double / inner single with no closing quote (the
  divine speech runs into v3). This brief's bracketing (outer single / inner double, closed pair) is
  the project's established brief-formatting convention, not WEB's own punctuation. Words are
  identical either way; **ingestion must store WEB's own nesting**, not the brief's.
- **Item 7 (Lev 25:9):** neither live source prints an opening quote mark at the start of the verse
  in isolation; the brief's leading single quote is the same bracketing convention. Same note applies.

Neither is a text-accuracy defect — both are recorded here, as the review specified, for the
ingestion step to apply.

## Not re-litigated (already-approved verses, reused as-is)

Boss item 9 (Lev 17:11) and boss item 10 (Lev 10:1-3) are exact reuses from `medium`, untouched by
any fix in this tier, and carry `medium`'s existing verbatim-QA `pass`
(`docs/qa/leviticus-verbatim-qa.md`) per the review's own scope note. Spot-checked in this pass anyway
(above) and confirmed consistent.

## Conclusion

**`pass`.** All 8 newly-fetched verses (items 1, 3-8, boss item 11) independently re-verified with
zero discrepancies, and boss item 11's corrected text specifically re-checked and confirmed to match
the live WEB source exactly, including the restored speech-frame clause. The quote-nesting
punctuation notes from review Finding B are recorded above for the ingestion step. Combined with the
theological review's own multi-source verification (ebible.org + BibleGateway + Bible Hub's WEB
parallel column) and this pass's independent cross-check, every challenge-ready verse in this tier has
now been checked against at least two independent live sources. `docs/content/leviticus-hard.md` is
eligible for ingestion.
