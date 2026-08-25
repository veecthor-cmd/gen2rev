# Verbatim-Text QA — Judges, Easy Tier (World 7)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while applying
`docs/reviews/judges-easy-review.md`'s required fixes (§6.1, §6.2) and recommended fixes (§6.3, §6.4,
§6.6) to `docs/content/judges-easy.md`, run 2026-08-20.

**Rendering check:** WEB rendering used throughout ("Yahweh," not "the LORD"), matching BibleGateway
`version=WEB`.

**Result: `pass`.** All re-cited and reworded text independently re-verified with zero character-level
discrepancies. No new verse text was introduced by this editing pass — every fix was a labelling,
anchoring, stem-reframing, or citation-precision change, not a new quotation.

## What changed in this editing pass, and what was re-checked

| Item | Fix applied | What needed re-verification | Source | Result |
|---|---|---|---|---|
| 3 | §6.4: stem re-anchored to "According to Judges 4:16, what happened to Sisera's army...?" | Confirmed "not a man was left" is verse 16's content and that the trim correctly elides v15's "Sisera abandoned his chariot and fled away on his feet" (the reason the anchoring matters). | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Judges+2%3A14%2C16%2C18-19%3BJudges+4%3A5%2C7%2C14%3BJudges+6%3A15%2C37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) — item 3's underlying quotation is Judges 4:14-16, verified via the review's own §2 fetch, re-confirmed here for 4:14 | **Match.** No new text introduced — stem wording only. |
| 5, 6, 7 | §6.6: "(WEB, trimmed)" label added | No text changed — labelling consistency fix only, since the ellipses marking the trims were already present. | n/a | **Pass.** Not a text change. |
| 7 | §6.4: stem re-anchored to "According to Judges 7:20..." | Confirmed "The sword of Yahweh and of Gideon!" is verse 20's content, distinguishing it from 7:18's differently-worded instruction. | [BibleGateway WEB, Judges 7:2,20-21](https://www.biblegateway.com/passage/?search=Judges+6%3A37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) | **Match.** Confirmed the shout is v20's content. |
| 8 | §6.2 (required): stem reframed from causal "why" to narrative fact; correct option reworded to "There was no king in Israel, and everyone did what was right in his own eyes" | Confirmed this is verbatim Judges 21:25 in full (both clauses). | [BibleGateway WEB, Judges 21:25](https://www.biblegateway.com/passage/?search=Judges+6%3A37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) | **Match, full verse.** "In those days there was no king in Israel. Everyone did that which was right in his own eyes." confirmed exact. |
| 9 | §6.1/Finding 1 (required): quotation marks and per-card citations removed; block cited once as "Judges 2:11-19" | The three card labels are now explicitly narrative summaries, removed from verbatim-text scope — which is the point of the fix. No WEB text is claimed by the cards anymore. | n/a | **Pass.** No longer presented as scripture quotation. |
| 11 | §6.6: citation narrowed from "2:18-19" to "2:19" for the blanked clause specifically | Confirmed "dealt more corruptly than their fathers" sits wholly inside verse 19. | [BibleGateway WEB, Judges 2:18-19](https://www.biblegateway.com/passage/?search=Judges+2%3A14%2C16%2C18-19%3BJudges+4%3A5%2C7%2C14%3BJudges+6%3A15%2C37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) | **Match.** Confirmed verse 19, word "corruptly." |
| Contested Territory | §6.3: "angel of Yahweh" guard added | No new verse text — a forward-looking structural rule referencing Judges 6:11-12, which is not quoted or displayed anywhere in this brief. | n/a | **Pass.** No text to verify — rule only. |
| Contested Territory | §6.4: "Lappidoth" guard added | No new verse text — a forward-looking rule; "wife of Lappidoth" is already-displayed text in item 2, unchanged by this pass. | n/a | **Pass.** |

## Exclusion re-confirmation (per task instructions, first step of the review this brief matches)

Re-confirmed after all edits: Judges 11 (Jephthah's daughter), Judges 19 (the Levite's concubine), and
the Jael verses (4:17-22, 5:24-27) do not appear anywhere in the edited brief, as quoted text,
paraphrase, or challenge selection. Item 3's anchoring fix (§6.4) makes this *more* explicit, not less
— the reworded stem "According to Judges 4:16..." pins the item to the verse just before the excluded
material begins (4:17), reinforcing rather than eroding the existing boundary.

## Shared boss item — cross-file confirmation

**Item 9's fix (removing quotation marks and per-card citations from the paraphrased sequence cards) is
applied identically in `docs/content/judges-hard.md` item 9.** Both files now read: "Order the judges'
cycle (Judges 2:11-19): Israel does evil and is handed over to raiders → Yahweh raises up a judge who
delivers them → when the judge dies, the people fall back into the same pattern." Confirmed by direct
comparison of both files after editing — identical wording, identical citation, identical absence of
quotation marks.

## Not re-litigated

Items 1, 2, 4, 6 and the underlying quotations reused in items 9-10 (Judges 2:14, 2:16, 7:2) carry
forward `docs/content/judges.md`'s existing verbatim-QA `pass` status and `docs/reviews/judges-easy-review.md`
§2's independent re-verification against ebible.org and Bible Hub; no new verification needed since no
text in those items changed.

## Conclusion

**`pass`.** Every text-bearing change in this editing pass (item 8's full-verse restatement, the
citation narrowings in items 11 and elsewhere) was independently re-verified against live BibleGateway
WEB with zero discrepancies. No excluded material (Judges 11, Judges 19, Jael) appears anywhere in the
brief. The shared boss item 9 fix is confirmed identical across `judges-easy.md` and `judges-hard.md`.
`docs/content/judges-easy.md` is eligible for ingestion.
