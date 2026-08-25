# Verbatim-Text QA — Ruth, Hard Tier (World 8)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while applying
`docs/reviews/ruth-hard-review.md`'s required fixes (Findings A, B, C) to `docs/content/ruth-hard.md`,
run 2026-08-20.

**Rendering check:** WEB rendering used throughout ("Yahweh," not "the LORD"), matching BibleGateway
`version=WEB` — the rendering the medium brief and this brief both use.

**Result: `pass`.** Unlike the other five briefs in this batch, none of this brief's required fixes
touched a graded blank or moved a citation — all three findings are Contested Territory documentation
additions and one traceability-claim correction. No challenge item's displayed text or answer key
changed. Every token referenced by the new Contested Territory bullets was independently re-confirmed
against live WEB text regardless, since the review's bounding arguments rest on those exact words.

## What changed in this editing pass, and what was re-checked

| Item / section | Fix applied | What needed re-verification | Source | Result |
|---|---|---|---|---|
| 7 | Finding C (required): "reused verbatim from `medium`" claim corrected to "re-cut from medium's boss item (shortened display; same graded token 'witnesses')" | No text change — a traceability/claim correction only. The displayed 4:9-10 quotation itself is unchanged from the original draft. | [BibleGateway WEB, Ruth 4:9-10,13-14,17,21-22](https://www.biblegateway.com/passage/?search=Ruth+4%3A9-10%2C13-14%2C17%2C21-22&version=WEB) | **Pass.** Underlying quotation re-confirmed verbatim; only the claim text changed, not verse text. |
| 8 | Option list added inline ("David / Boaz / Jesse / Salmon") | Confirmed the underlying 4:17 quotation is unchanged, and confirmed the option list is accurate against the genealogy stated across 4:17-22 (not itself scripture-quotation text). | Same fetch | **Match.** "The women, her neighbors, gave him a name, saying, 'A son is born to Naomi'. They named him Obed. He is the father of Jesse, the father of David." confirmed exact, including WEB's unusual punctuation. |
| Contested Territory — Finding A | New bullet: Ruth 4:14 `go'el` referent split; structural rule that the blank on 4:14 stays on "famous" | Item 6's displayed text is unchanged, but the bullet's bounding argument depends on "famous" being the exact word in 4:14 — re-confirmed directly. | Same fetch | **Match.** "The women said to Naomi, 'Blessed be Yahweh, who has not left you today without a near kinsman. Let his name be famous in Israel.'" confirmed verbatim 4:14, "famous" confirmed as the graded word. |
| Contested Territory — Finding B | New bullet: Ruth 1:16-17 conversion (`giyur`) vs. loyalty-oath framing; structural rule that the blank on 1:17 stays on "death" | Item 1's displayed text is unchanged, but the bullet's bounding argument depends on "death" being the exact word in the clause graded — re-confirmed directly. | [BibleGateway WEB, Ruth 1:16-17](https://www.biblegateway.com/passage/?search=Ruth+1%3A16-17%3BRuth+2%3A2-3%2C8-9%2C11-12%3BRuth+3%3A1-2%2C9%2C11%3BRuth+4%3A9-10%2C13-14%2C17%2C21-22&version=WEB) | **Match.** "May Yahweh do so to me, and more also, if anything but death parts you and me." confirmed verbatim 1:17, "death" confirmed as the graded word. |
| Contested Territory (opening line) | Softened from "Nothing new is introduced by this brief: no new verse, no new scene" to "No new *verse text* is introduced by this brief — that claim is true and verified" | No text change — a framing-precision fix responding to the review's consequential-edit instruction. | n/a | **Pass.** Not a verse-text change. |

## Items with no change in this editing pass — re-confirmed as unchanged, spot-checked

Unlike `joshua-hard.md`, `judges-hard.md`, and `ruth-easy.md`, no item in `ruth-hard.md` had its blank
position, citation, or displayed text altered by the required fixes — the review's three findings were
entirely documentation and traceability fixes. For completeness, every regular item's graded token was
re-confirmed against the same combined live fetch used above:

| Item | Verse | Graded token | Result |
|---|---|---|---|
| 1 | Ruth 1:17 | death | **Match** (see Finding B row above) |
| 2 | Ruth 1:9 | rest | **Match** — "May Yahweh grant you that you may find rest, each of you in the house of her husband" confirmed verse 9 |
| 3 | Ruth 2:3 | Elimelech | **Match** — "she happened to come to the portion of the field belonging to Boaz, who was of the family of Elimelech" confirmed verse 3 |
| 4 | Ruth 2:9 | touch | **Match** — "Haven't I commanded the young men not to touch you?" confirmed verse 9 |
| 5 | Ruth 3:11 | afraid | **Match** — "Now, my daughter, don't be afraid. I will do to you all that you say; for all the city of my people knows that you are a worthy woman." confirmed verse 11, full verse |
| 6 | Ruth 4:14 | famous | **Match** (see Finding A row above) |
| 9 | Ruth 2:12 | refuge | **Match** — "May Yahweh repay your work, and a full reward be given to you from Yahweh, the God of Israel, under whose wings you have come to take refuge." confirmed verse 12 |

No character-level mismatch found anywhere. No cross-verse splice found — every blank sits wholly
inside the single verse cited, consistent with the theological review's own §1 finding.

## Not re-litigated

Item 7's underlying Ruth 4:9-10 quotation and item 8's underlying Ruth 4:17 quotation carry forward
`docs/content/ruth.md`'s existing verbatim-QA `pass` status and `docs/reviews/ruth-hard-review.md` §1's
own independent re-verification against two live sources (ebible.org and BibleGateway); re-confirmed
above via a third independent fetch in this pass for completeness.

## Conclusion

**`pass`.** Every claim and citation this editing pass touched — Finding C's traceability correction,
and the two new Contested Territory bullets' load-bearing tokens ("famous," "death") — was
independently re-verified against live BibleGateway WEB with zero discrepancies. Every other item's
graded token was spot-confirmed unchanged and accurate. `docs/content/ruth-hard.md` is eligible for
ingestion.
