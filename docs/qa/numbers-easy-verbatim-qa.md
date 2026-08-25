# Verbatim-Text QA — Numbers, Easy Tier (World 4)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while
applying `docs/reviews/numbers-easy-review.md`'s required and recommended fixes to
`docs/content/numbers-easy.md`, run 2026-08-20, after theological review (`approved-with-changes`)
and after all required fixes were applied to the brief.

**Edition note (per review §7.5):** ebible.org serves more than one WEB edition, and they differ on
the divine name — `ebible.org/engwebp/` renders "the LORD" while `ebible.org/web/` and BibleGateway
`version=WEB` render "Yahweh," which is the rendering this project's approved briefs use throughout.
This pass used **BibleGateway (`version=WEB`)**, cross-checked against **ebible.org/web/** where
noted, and never `ebible.org/engwebp/`. Confirmed medium brief `docs/content/numbers.md` and both
easy/hard tiers consistently display "Yahweh" — this is the correct edition to check against.

**Result: `pass`.** All text changed during the fix pass was independently re-verified with zero
character-level discrepancies.

## Verses independently re-checked

| Item | Verse | Brief's corrected text | Source | Result |
|---|---|---|---|---|
| 12 | Num 10:35 (full verse restored per review §6.3) | "When the ark went forward, Moses said, 'Rise up, Yahweh, and let your enemies be scattered! Let those who hate you flee before you!'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+10%3A35&version=WEB) | **Match, full verse, verbatim.** The previously-missing narrative frame ("When the ark went forward, Moses said,") is now displayed alongside the quoted speech, matching the review's preferred fix. |

## Answer-key / distractor checks (not verse text, but load-bearing for the fixes applied)

- **Item 4 (Num 14:24) — "Aaron" replaces "Joshua" as a distractor (review §6.1).** Verified
  [Num 20:12, BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+20%3A12&version=WEB):
  "Yahweh said to Moses and Aaron, 'Because you didn't believe in me, to sanctify me in the eyes of
  the children of Israel, therefore you shall not bring this assembly into the land which I have
  given them.'" Confirms Aaron is explicitly barred from entering the land — "Aaron" is a clean,
  unambiguous wrong answer, unlike "Joshua" (verified false as a distractor: [Num 14:30](https://www.biblegateway.com/passage/?search=Numbers+14%3A30%2C38&version=WEB)
  and 14:38 both name Joshua as one of the two spies who *did* enter the land, which is what made the
  original "Joshua" distractor a real answer-key defect).
- **Item 12 (Num 10:35) — replacement distractors.** "Stop and make camp.," "Turn back to the
  wilderness.," and "Sound the trumpets and rest here." are original, non-scriptural phrases
  invented for this item — not quotations of any verse in any translation. No verbatim check applies
  to invented distractor text; confirmed none of the three strings matches or approximates any WEB
  verse text (checked by inspection against the surrounding Numbers narrative).

## Formatting-only changes (trim tags / ellipses added, no wording changed) — spot-confirmed

These items had a "(WEB, trimmed)" tag or a leading/trailing ellipsis added per review §§6.2, 6.3,
7.3, 7.4, but the displayed word-for-word text was not altered. Confirmed each still matches its
already-verified source (per `docs/reviews/numbers-easy-review.md` §1, which checked all of these
live before the fix pass):

- **Item 3 (Num 13:27-28)** — leading ellipsis added; wording unchanged. Review's own live check
  (ebible.org, single-source) already confirmed the quoted words match; the trim was real (v27 opens
  "They told him, and said,") and is now labelled.
- **Item 5 (Num 16:1-3)** — "(WEB, trimmed)" tag added to match `docs/content/numbers.md`'s existing
  convention for the same quotation; wording unchanged.
- **Item 6 (Num 21:8-9)** — "(WEB, trimmed)" tag and trailing ellipsis added; wording unchanged. The
  omitted continuation ("If a serpent had bitten any man, when he looked at the serpent of bronze, he
  lived.") was independently confirmed in the review against two sources.

## Not re-litigated (text unchanged by the fix pass)

Items 1, 2, 7, 8 and boss items 9, 10, 11 carry no text changes from the review's required or
recommended fixes (item 11's blank and item 9/10's sequences are unchanged reuses). These were
already verified live, against two independent sources, in `docs/reviews/numbers-easy-review.md` §1.
No new verification needed.

## Conclusion

**`pass`.** The one substantive text change (item 12's restored full verse) was independently
re-verified against BibleGateway (`version=WEB`) with zero discrepancies. The answer-key fix (item
4's "Aaron" distractor) was independently verified against Numbers 20:12. All formatting-only changes
(trim tags, ellipses) were confirmed to leave the underlying, already-verified wording unchanged.
`docs/content/numbers-easy.md` is eligible for ingestion.
