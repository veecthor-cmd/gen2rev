# Verbatim-Text QA — 1 Samuel, Hard Tier (World 9)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while
applying the required/recommended fixes from `docs/reviews/1-samuel-hard-review.md`
(`approved-with-changes`) to `docs/content/1-samuel-hard.md`, run 2026-08-20, with particular
attention to item 4's corrected text and item 6's re-punctuated trim, per the review's explicit
instruction that this pass "must specifically re-check the corrected item 4... and confirm no other
item mis-cuts a multi-verse block."

**Result: `pass`.** All text-bearing fixes independently re-verified against `ebible.org/web/` — the
"Yahweh" edition this brief and project use throughout (per review Finding D) — with zero
discrepancies.

## Verses independently re-checked

| Item | Verse | What changed | Source | Result |
|---|---|---|---|---|
| 4 | 1 Sam 16:1 (full verse) | Blocking fix: restored the omitted second half of the verse, removed the fabricated closing quotation mark, added the `(WEB, trimmed)` label and ellipsis | [ebible.org WEB 1SA16](https://ebible.org/web/1SA16.htm) | **Match, full verse confirmed.** "Yahweh said to Samuel, 'How long will you mourn for Saul, since I have rejected him from being king over Israel? Fill your horn with oil, and go. I will send you to Jesse the Bethlehemite, for I have provided a king for myself among his sons.'" The brief's restated full verse is an exact match; the displayed/graded trim ("...king over Israel? …") is a verbatim-correct leading substring, correctly marked. Blank on "Israel" reconfirmed correct. |
| 6 | 1 Sam 17:4 | Required fix: dropped verb "went out" and closing period replaced with the ellipsis convention | [ebible.org WEB 1SA17](https://ebible.org/web/1SA17.htm) | **Match, boundary confirmed.** "A champion out of the camp of the Philistines named Goliath of Gath, whose height was six cubits and a span went out." The brief's trimmed string ("...six cubits and a span…") is a verbatim leading substring, now correctly signaled as a trim rather than presented as a complete sentence WEB does not contain. Blank on "six" reconfirmed correct. |
| 11 | 1 Sam 17:47 | Blank moved from "Yahweh" to "hand"; verse text itself unchanged | [ebible.org WEB 1SA17](https://ebible.org/web/1SA17.htm) | **Match.** "...for the battle is Yahweh's, and he will give you into our hand." Full clause confirmed verbatim; new blank target "hand" is the verse's own final word and is confirmed correct. "Yahweh" remains displayed, unchanged, in the non-blanked portion of the quoted text. |

## Boundary re-check on adjacent verses (per the review's explicit instruction)

- **1 Sam 15:35 / 16:1 boundary**: confirmed 16:1 begins a new verse ("Yahweh said to Samuel...") and
  is not itself a continuation of 15:35; no chapter-15 text is present anywhere in or adjacent to the
  corrected item.
- **1 Sam 16:1 / 16:2 boundary**: confirmed the corrected full-verse quote ends at "...among his
  sons." and does not run into 16:2 ("Samuel said, 'How can I go?...'"). No new splice introduced by
  the fix.
- **1 Sam 17:4 / 17:5 boundary**: confirmed 17:4 ends at "...span went out." and 17:5 ("He had a
  helmet of bronze on his head...") is a separate verse not touched by the trim.
- No other item in this tier's brief cuts a blank from a multi-verse block; item 3 (17:40→continues
  correctly per the brief's own stated boundary, re-confirmed against
  `docs/reviews/1-samuel-hard-review.md` §1) and item 8 (24:11) are each single, complete verses.

## Not re-litigated (verse text unchanged by this pass)

Items 1, 2, 3, 5, 7, 8, and boss items 9-10 — no scripture text was altered for these items during
this pass; they were already independently re-checked against live WEB sources in
`docs/reviews/1-samuel-hard-review.md` §1, with matches confirmed there.

## Conclusion

**`pass`.** Item 4's corrected text (the blocking fix) and item 6's re-punctuated trim (the required
fix) are both independently re-verified as verbatim-correct against `ebible.org/web/`, with adjacent
verse boundaries re-checked on both sides per the review's specific instruction. Item 11's relocated
blank is confirmed to land on the verse's own word "hand." Zero verses from 1 Samuel 15 appear
anywhere in the brief (re-confirmed by direct re-read of every item during this pass).
`docs/content/1-samuel-hard.md` is eligible for ingestion.
