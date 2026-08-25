# Verbatim-Text QA — Judges, Hard Tier (World 7)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while applying
`docs/reviews/judges-hard-review.md`'s required fixes (Findings A, B, C) and recommended fixes
(Finding D, and the new Judges 4:5 / 4:7 structural guards) to `docs/content/judges-hard.md`, run
2026-08-20.

**Rendering check:** WEB rendering used throughout ("Yahweh," not "the LORD"), matching BibleGateway
`version=WEB`.

**Result: `pass`.** All re-cited, re-cut, and re-worded text independently re-verified with zero
character-level discrepancies, including the one item whose graded token moved (item 1 → "enemies")
and the one item whose display text was extended (item 11, to fix a truncated-utterance defect).

## What changed in this editing pass, and what was re-checked

| Item | Fix applied | What needed re-verification | Source | Result |
|---|---|---|---|---|
| 1 | Finding D (recommended): blank moved from "raiders" to "enemies," display extended to include "He sold them into the hands of their enemies all around" | Confirmed this clause is part of verse 14 (same verse as the original quotation, not new text from a different verse) and confirmed "enemies" is the exact word. | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Judges+2%3A14%2C16%2C18-19%3BJudges+4%3A5%2C7%2C14%3BJudges+6%3A15%2C37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) | **Match.** "Yahweh's anger burned against Israel, and he delivered them into the hands of raiders who plundered them. He sold them into the hands of their enemies all around" confirmed verse 14 in full; "enemies" confirmed. |
| 2 | Finding A: citation narrowed 2:18-19 → 2:18 | Confirmed "all the days of the judge" (the blank's location) is verse 18, not 19. | Same fetch | **Match.** Confirmed verse 18 boundary. |
| 3 | Finding A: citation narrowed 4:4-5 → 4:5 | Confirmed "She lived under Deborah's palm tree between Ramah and Bethel" is verse 5. | Same fetch | **Match.** Confirmed verse 5. |
| 4 | Finding A: citation narrowed 4:6-7 → 4:7 | Confirmed "the river Kishon" is verse 7, not 6. | Same fetch | **Match.** Confirmed verse 7. |
| 5 | Finding A: citation narrowed 6:14-16 → 6:15 | Confirmed "the poorest in Manasseh" is verse 15. | Same fetch | **Match.** Confirmed verse 15. |
| 6 | No citation change (6:37 was already a single-verse citation); "I'll know" contraction note added | Confirmed the contraction "I'll know" (not "I shall know") appears in the live source. | [BibleGateway WEB, Judges 6:37](https://www.biblegateway.com/passage/?search=Judges+6%3A37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) | **Match.** "then I'll know that you will save Israel by my hand" confirmed exact, contraction confirmed. |
| 7 | Finding A: citation narrowed 7:20-21 → 7:21 | Confirmed "They each stood in his place around the camp" is verse 21, not 20. | Same fetch | **Match.** Confirmed verse 21. |
| 8 | No change | Verse 21:25, unchanged from original draft. | [BibleGateway WEB, Judges 21:25](https://www.biblegateway.com/passage/?search=Judges+6%3A37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) | **Match.** |
| 9 | Finding C (required): quotation marks and per-card citations removed; inlined per §5.5 rather than referencing `judges-easy.md` | Card labels are narrative summaries, removed from verbatim-text scope. | n/a | **Pass.** No longer presented as scripture. |
| 10 | Inlined per §5.5 (previously defined only by reference to `judges-easy.md`) | Confirmed the inlined text "The people who are with you are too many for me to give the Midianites into their hand, lest Israel brag against me, saying, 'My own hand has saved me.'" is verbatim Judges 7:2. | [BibleGateway WEB, Judges 7:2](https://www.biblegateway.com/passage/?search=Judges+6%3A37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) | **Match, full verse.** |
| 11 | Finding B (required): stem extended to end of verse 14 ("...Hasn't Yahweh gone out before you?'") rather than closing the quote at "hand," fixing a truncated-utterance-as-complete defect; Finding A: citation narrowed 4:14-16 → 4:14 | This is the most substantive text change in the brief — new display text added that was not previously shown to the player. Confirmed the full continuation is genuine, verbatim 4:14 text, not invented. | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Judges+2%3A14%2C16%2C18-19%3BJudges+4%3A5%2C7%2C14%3BJudges+6%3A15%2C37%3BJudges+7%3A2%2C20-21%3BJudges+21%3A25&version=WEB) | **Match.** "Deborah said to Barak, 'Go; for this is the day in which Yahweh has delivered Sisera into your hand. Hasn't Yahweh gone out before you?'" confirmed verbatim, confirmed wholly within verse 14, confirmed the added clause does not touch or approach the excluded Jael material (4:17+). |

## Exclusion re-confirmation

Re-confirmed after all edits: Judges 11, Judges 19, and the Jael verses (4:17-22, 5:24-27) do not
appear anywhere in the edited brief. Item 11's extended stem (Finding B) was specifically checked for
this — "Hasn't Yahweh gone out before you?" is confirmed to be three verses clear of 4:17, where Sisera
enters Jael's tent. The extension does not erode the exclusion boundary.

## Shared boss item — cross-file confirmation

**Item 9's fix is applied identically in `docs/content/judges-easy.md` item 9** — see that file's QA
doc for the reciprocal confirmation. Both files now read the identical unquoted, once-cited sequence:
"Order the judges' cycle (Judges 2:11-19): Israel does evil and is handed over to raiders → Yahweh
raises up a judge who delivers them → when the judge dies, the people fall back into the same
pattern." Confirmed by direct comparison of both files after editing.

## Grading-tolerance notes (not text discrepancies, per Finding E)

- **Item 11, "hand"/"hands":** NABRE renders this clause "into your power," and several mainstream
  versions read "hands" (plural). The brief's WEB text correctly reads "hand" (singular) — confirmed
  above — but the grading/ingestion config should accept "hands" as a tolerant near-miss per the
  review's recommendation. Not a text correction to the brief.
- **Item 1, "raiders"/"enemies" — resolved, not just noted:** Finding D's recommended fix was applied
  (blank moved to "enemies"), which resolves the WEB-specific-rendering risk at the content level
  rather than requiring a grading-tolerance workaround.

## Not re-litigated

No item in this brief was left with unverified inherited text — every regular item's citation was
either re-checked directly (Findings A items) or already verbatim-identical to the already-approved
medium brief and unchanged by this pass (item 8).

## Conclusion

**`pass`.** Every text-bearing change — the six re-citations (Finding A), the blank relocation (item 1,
Finding D), and the extended stem (item 11, Finding B) — was independently re-verified against live
BibleGateway WEB with zero discrepancies. No excluded material appears anywhere in the brief. The
shared boss item 9 fix is confirmed identical across `judges-hard.md` and `judges-easy.md`.
`docs/content/judges-hard.md` is eligible for ingestion.
