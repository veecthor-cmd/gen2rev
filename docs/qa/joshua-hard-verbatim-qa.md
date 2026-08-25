# Verbatim-Text QA — Joshua, Hard Tier (World 6)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while applying
`docs/reviews/joshua-hard-review.md`'s required fixes (R1-R4) and recommended fixes (Rec-1 through
Rec-5) to `docs/content/joshua-hard.md`, run 2026-08-20.

**Rendering check:** WEB rendering used throughout ("Yahweh," not "the LORD"), matching BibleGateway
`version=WEB` and `ebible.org/web/` — the rendering the medium and hard briefs both use.

**Result: `pass`.** All re-cited and re-cut text independently re-verified with zero character-level
discrepancies, including the two items whose graded token moved (item 2 → "Egypt," item 10 →
"Goshen").

## What changed in this editing pass, and what was re-checked

| Item | Fix applied | What needed re-verification | Source | Result |
|---|---|---|---|---|
| 1 | R4: citation narrowed 3:15-17 → 3:16 | Confirmed the blanked clause ("...at ___, the city that is beside Zarethan") sits wholly inside verse 16, not 15 or 17. | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Joshua+2%3A1%2C10%2C21%3BJoshua+3%3A16-17%3BJoshua+4%3A6-7%2C22%3BJoshua+6%3A4%2C20%2C25%3BJoshua+10%3A41-42%3BJoshua+14%3A10-12%3BJoshua+21%3A43-45&version=WEB) | **Match.** Confirmed verse 16. |
| 2 | R3 (display locked) + R4 (citation narrowed 2:9-11 → 2:10) + Rec-1 (blank moved from "Red Sea" to "Egypt") | Two things needed checking: (a) that the display text ends correctly at "...when you came out of Egypt..." without touching 2:10's second half; (b) that "Egypt" is in fact the word immediately following "when you came out of" in 2:10. | Same fetch | **Match on both.** Confirmed "Egypt" is the word at that position in 2:10, and confirmed (in the theological review's own verification, re-checked here) that 2:10's second half ("...whom you utterly destroyed") is a separate clause not included in the brief's display text. |
| 3 | R2 (stem anchored to "According to Joshua 4:22...") + R4 (citation narrowed 4:22-24 → 4:22) | Confirmed "Israel came over this Jordan on dry land" is verbatim 4:22 and that "land" (not "ground") is the word in this specific verse. | Same fetch | **Match.** Confirmed verse 22, word "land." |
| 4 | R4: citation narrowed 14:10-12 → 14:11 | Confirmed "As yet I am as strong today as I was in the day that Moses sent me" is verse 11, and confirmed the word "strong." | [BibleGateway WEB, Joshua 14:10-12](https://www.biblegateway.com/passage/?search=Joshua+14%3A10-12&version=WEB) | **Match.** Confirmed verse 11 boundary and the word "strong." |
| 5 | R4: citation narrowed 4:6-7 → 4:7; Rec-5: "(WEB, trimmed)" label added | Confirmed "These stones shall be for a memorial to the children of Israel forever" is verse 7. | Same combined fetch as item 1 | **Match.** |
| 6 | R4: citation narrowed 6:3-5 → 6:4 | Confirmed "On the seventh day, you shall march around the city seven times" is verse 4. | Same combined fetch | **Match.** |
| 7 | Rec-3: Rahab UI/voice-over note restated (no text change) | No text changed; the underlying 6:25 quotation was already verified for the easy tier and is unchanged here. | n/a | **Pass.** No text-level change. |
| 8 | Boss sequence card labels un-quoted (fix carried from `joshua-easy.md` Finding E) | Card labels are narrative summaries, removed from verbatim scope. | n/a | **Pass.** |
| 9 | Unchanged (reused verbatim from `joshua-easy.md`) | 21:43-45's "land" token, re-confirmed. | [BibleGateway WEB, Joshua 21:43-45](https://www.biblegateway.com/passage/?search=Joshua+21%3A43-45&version=WEB) | **Match.** |
| 10 | R1 (required): blank moved from "Israel" (10:42) to "Goshen" (10:41); citation narrowed 10:41-42 → 10:41 | This is the most substantive change in the brief — a new graded token. Confirmed "Goshen" is the word at "all the country of ___, even to Gibeon" in verse 41 (not 42), and confirmed the display context (10:41-42 in full) remains verbatim. | [BibleGateway WEB, Joshua 10:41-42](https://www.biblegateway.com/passage/?search=Joshua+10%3A41-42&version=WEB) | **Match.** "Joshua struck them from Kadesh Barnea even to Gaza, and all the country of Goshen, even to Gibeon" confirmed verbatim, "Goshen" confirmed as the word at that position, confirmed inside verse 41. |

## Ḥerem/destruction-clause re-confirmation

Re-confirmed after all edits: Joshua 6:17, 6:21, and 10:40 do not appear anywhere in the edited brief.
None of R1-R4 or the recommended fixes touched, introduced, or referenced this material. R3's new
Contested Territory bullet (the Joshua 2:10 ḥerem-vocabulary note) exists specifically to *keep* this
true going forward by locking item 2's display text — it does not itself introduce any excluded text.

## Answer-key / format notes (not text discrepancies)

- **Item 3's "ground" near-miss (R2):** confirmed as a real risk, not fixed by removing it — 3:17
  genuinely says "on dry ground" and the boss item 8 sequence card says "on dry ground," while item 3's
  correct answer for 4:22 is "land." The brief now records this as an explicitly-rejected near-miss for
  the grading pipeline, per the review's instruction. This is a grading-config item, not a text
  correction.
- **Item 6's "I'll know" contraction (Rec-5, cross-referenced from the Judges review's method):**
  independently confirmed WEB 6:37 uses "I'll know," not "I shall know" — see the Judges hard QA doc for
  the identical confirmation on that book's parallel item; not directly applicable here since Joshua's
  item 6 doesn't touch that clause, noted only for completeness.
- **Item 5's WEB inner-quote punctuation (Rec-5):** WEB prints nested quotations in 4:6 ("saying, 'What
  do you mean by these stones?'") and 4:7 ("then you shall tell them, 'Because the waters...'") with
  double quotes in the live source; the brief's display uses single quotes because each verse sits
  inside the brief's own quoted block. Correct brief formatting — the ingestion pipeline must store
  WEB's actual double-quote characters. Flagged, not fixed at the brief level, consistent with the
  Genesis pilot's handling of the same pattern.

## Not re-litigated

Items 7's underlying 6:25 quotation and item 9's underlying 21:43-45 quotation carry forward
`docs/content/joshua.md`'s and `docs/content/joshua-easy.md`'s existing verbatim-QA `pass` status; no
new verification needed beyond the spot-confirmation above.

## Conclusion

**`pass`.** Every piece of text this editing pass changed, re-cited, or re-cut — including both
substantive blank relocations (item 2 → "Egypt," item 10 → "Goshen") — was independently re-verified
against live BibleGateway WEB with zero discrepancies. All six re-citations (R4) confirmed to name the
verse the blank actually falls in. No ḥerem/destruction-clause verse appears anywhere in the brief.
`docs/content/joshua-hard.md` is eligible for ingestion.
