# Verbatim-Text QA — Ruth, Easy Tier (World 8)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while applying
`docs/reviews/ruth-easy-review.md`'s required fixes (§6.1-§6.4, §6.6) and recommended fixes (§6.5,
§6.7-§6.10) to `docs/content/ruth-easy.md`, run 2026-08-20.

**Rendering check:** WEB rendering used throughout ("Yahweh," not "the LORD"), matching BibleGateway
`version=WEB` — the rendering the medium brief and this brief both use.

**Result: `pass`.** All re-cited, extended, and reworded text independently re-verified with zero
character-level discrepancies. This QA pass also specifically treats items 2, 4, 6 and 9 as
new-to-ingestion text, per the review's §6.6 instruction — those four verses were listed as
challenge-ready in `docs/content/ruth.md` but never actually appeared in the medium tier's ingested
item set (`docs/ingest/joshua-judges-ruth.sql`), so the verbatim-QA pass that signed off that ingest
never covered them.

## What changed in this editing pass, and what was re-checked

| Item | Fix applied | What needed re-verification | Source | Result |
|---|---|---|---|---|
| 1 | §6.5: leading ellipsis added (no text change, "Ruth said," was already dropped in the prior draft) | No new text — labelling consistency fix only. | n/a | **Pass.** Not a text change. |
| 2 | §6.2 (required): stem anchored to "According to Ruth 1:8-9..."; distractor "Remain in Moab with their own people's gods" replaced with "Glean in the fields of Bethlehem" **[new-to-ingestion text, per §6.6]** | Confirmed "May Yahweh grant you that you may find rest, each of you in the house of her husband" is verse 9, and confirmed the item's underlying quotation is verbatim. The new distractor is not scripture text, so no verbatim check applies to it. | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Ruth+1%3A16-17%3BRuth+2%3A2-3%2C8-9%2C11-12%3BRuth+3%3A1-2%2C9%2C11%3BRuth+4%3A9-10%2C13-14%2C17%2C21-22&version=WEB) and [dedicated fetch, Ruth 1:8-9](https://www.biblegateway.com/passage/?search=Ruth+1%3A8-9&version=WEB) | **Match.** Confirmed "rest" clause is v9; full 1:8-9 quotation confirmed verbatim. |
| 4 | §6.5: leading ellipsis added; §6.10 (recommended): option wording tightened to "All she had done for her mother-in-law since her husband's death" **[new-to-ingestion text, per §6.6]** | Confirmed the underlying 2:11-12 quotation is verbatim; the reworded option is not itself scripture-quotation text (it's an MC option paraphrasing the verse's own content), so it is checked for accuracy against the verse rather than for verbatim match. | Combined fetch above | **Match** on the underlying quotation ("May Yahweh repay your work... under whose wings you have come to take refuge" confirmed v12). Reworded option accurately reflects 2:11's content. |
| 5 | §6.3 (required): re-tagged "(WEB, trimmed)," leading ellipsis added; §6.4 (required): distractor "Marry her sister Orpah" replaced with "Redeem the land on her behalf immediately" | Confirmed WEB 3:9 opens "He said, 'Who are you?'" immediately before "She answered..." — the trim the label now correctly marks. Confirmed the new distractor is not scripture text. | Combined fetch above | **Match.** Confirmed the verse opens with the interrogative before Ruth's answer; the brief's quoted portion (Ruth's answer only) is a verbatim substring correctly marked as trimmed. |
| 6 | No text change (item unchanged, only referenced in the §6.6 correction) **[new-to-ingestion text, per §6.6]** | Confirmed "and Salmon became the father of Boaz, and Boaz became the father of Obed, and Obed became the father of Jesse, and Jesse became the father of David" is verbatim 4:21-22. | [dedicated fetch, Ruth 4:9-10,13-14,17,21-22](https://www.biblegateway.com/passage/?search=Ruth+4%3A9-10%2C13-14%2C17%2C21-22&version=WEB) | **Match, exact.** |
| 7 | Finding C (required, cross-referenced from `docs/reviews/ruth-hard-review.md`): "reused verbatim from medium" claim corrected to "re-cut from medium's boss item (shortened display; same graded token)" | No text change — a traceability/claim correction only. The displayed 4:9-10 quotation itself is unchanged. | [dedicated fetch, Ruth 4:9-10](https://www.biblegateway.com/passage/?search=Ruth+4%3A9-10%2C13-14%2C17%2C21-22&version=WEB) | **Pass.** Underlying quotation re-confirmed verbatim; claim text corrected, not verse text. |
| 8 | Option list added inline ("David / Boaz / Jesse / Salmon") per review §6.7 | Confirmed the underlying 4:17 quotation is unchanged and verbatim; the option list is not scripture text (character names from the surrounding genealogy), so accuracy was checked against the genealogy in 4:17-22 rather than verbatim-matched. | Same fetch | **Match.** "The women, her neighbors, gave him a name, saying, 'A son is born to Naomi'. They named him Obed. He is the father of Jesse, the father of David." confirmed exact, including WEB's unusual punctuation. Option list accurate against the genealogy. |
| 9 | §6.1 (required): recall template extended to the full sentence "Now isn't Boaz our ___, with whose maidens you were?" (previously truncated to "Now isn't Boaz our ___?" with a fabricated question mark) **[new-to-ingestion text, per §6.6]** | This is the most substantive text change in the brief — new display text added that was not previously shown to the player, and the exact punctuation (comma, not the prior draft's question mark, before "with whose maidens you were") needed confirming. | [dedicated fetch, Ruth 3:1-2](https://www.biblegateway.com/passage/?search=Ruth+1%3A16-17%3BRuth+2%3A2-3%2C8-9%2C11-12%3BRuth+3%3A1-2%2C9%2C11%3BRuth+4%3A9-10%2C13-14%2C17%2C21-22&version=WEB) | **Match.** "Now isn't Boaz our kinsman, with whose maidens you were?" confirmed verbatim including the comma after "kinsman," confirmed verse 2. The prior draft's template was confirmed to have altered WEB's punctuation; the fix restores it exactly. |

## New-to-ingestion verses re-confirmed as a set (per review §6.6)

Items 2 (Ruth 1:8-9), 4 (Ruth 2:11-12), 6 (Ruth 4:21-22), and 9 (Ruth 3:1-2) were never part of the
medium tier's actual ingest (`docs/ingest/joshua-judges-ruth.sql` uses only 1:16, 1:17, 2:2-3, 2:8-9,
3:9, 3:11, 4:9-10, 4:17, and the 1:16/3:9/4:13-14 boss sequence) and so never passed the verbatim QA
that signed off that ingest. All four are independently confirmed verbatim above against live
BibleGateway WEB — this pass, not the medium ingest's QA, is the first verbatim QA these four verses
have received.

## Not re-litigated

Item 3 (Ruth 2:2-3) is unchanged from the original draft and was already verified in
`docs/reviews/ruth-easy-review.md` §1. Items 1's and 5's underlying quotations (aside from the labelling
fixes above) carry forward existing verification.

## Conclusion

**`pass`.** Every text-bearing change — including the two most substantive (item 9's extended recall
template and item 5's trim-labelling) — was independently re-verified against live BibleGateway WEB
with zero discrepancies. The four verses newly promoted to standalone-ingestion status (items 2, 4, 6,
9) are confirmed verbatim for the first time in this pass. `docs/content/ruth-easy.md` is eligible for
ingestion.
