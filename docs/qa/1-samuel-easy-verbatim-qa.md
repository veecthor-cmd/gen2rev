# Verbatim-Text QA — 1 Samuel, Easy Tier (World 9)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while
applying the required/recommended fixes from `docs/reviews/1-samuel-easy-review.md`
(`approved-with-changes`) to `docs/content/1-samuel-easy.md`, run 2026-08-20.

**Result: `pass`.** No challenge item's underlying scripture verse text was altered by this pass —
every fix was a stem re-anchor, a distractor swap, or a boss-item label/content correction. Where a
verse remained on display (items 2 and 9), its text was independently re-checked against
`ebible.org/web/` — the edition this project has standardised on, per the review's §1 edition note —
to confirm the fix didn't disturb it. New distractor text was checked to confirm it is not a
misrepresentation of scripture.

## Verses independently re-checked

| Item | Verse | What changed | Source | Result |
|---|---|---|---|---|
| 2 | 1 Sam 3:9 (context) | Not itself an item, but the source of the replaced "Go, lie down." distractor — re-checked to confirm the removed distractor really was Eli's verbatim line | [ebible.org WEB 1SA03](https://ebible.org/web/1SA03.htm) | **Confirmed.** 3:9: "Therefore Eli said to Samuel, 'Go, lie down. It shall be, if he calls you, that you shall say, "Speak, Yahweh; for your servant hears."' So Samuel went and lay down in his place." Verifies Finding C's basis for removing this distractor. |
| 2 | 1 Sam 3:10 | Stem re-anchored to the reference; two distractors replaced. Verse text itself unchanged | [ebible.org WEB 1SA03](https://ebible.org/web/1SA03.htm) | **Match.** "Yahweh came, and stood, and called as at other times, 'Samuel! Samuel!' Then Samuel said, 'Speak; for your servant hears.'" — identical to the brief's quoted text; blank/correct-answer "Speak; for your servant hears." confirmed correct. |
| 9 | 1 Sam 17:49-50 | Stem anchored to the reference (unchanged from review-confirmed prior text); three distractors added | [ebible.org WEB 1SA17](https://ebible.org/web/1SA17.htm) | **Match.** "David put his hand in his bag, took a stone and slung it, and struck the Philistine in his forehead. The stone sank into his forehead, and he fell on his face to the earth. So David prevailed over the Philistine with a sling and with a stone, and struck the Philistine and killed him; but there was no sword in David's hand." Verse boundary (49/50 concatenation) reconfirmed clean, matching the theological review's own finding that this is not a Gen-9:13-style splice. |

## Distractor / non-scripture text check

- Item 1's replacement distractor ("I heard something and came to see what you needed.") and item
  2's replacements ("I am ready now, Lord." / "Who is calling me?") were checked against 1 Samuel 3
  in full: none is a rendering of any verse in the chapter, in WEB or in any other mainstream
  translation checked casually for recognizability. Satisfies the new distractor convention added to
  the brief's Design Intent section.
- Item 9's added distractors ("a spear and a shield" / "his bare hands" / "a bow and arrow") were
  checked against 1 Samuel 17 in full: none reproduces WEB text from this chapter, and "a sword" was
  deliberately avoided per the review's own instruction (17:50's closing clause makes it textually
  loaded).

## Not re-litigated (verse text unchanged by this pass)

Items 1, 3, 4, 5, 6, 7, 8, 10, 11 — no scripture text was altered for these items; only boss-item
labels (items 9-10, "reused verbatim" → "adapted") and Contested Territory prose changed. These
verses' text was already independently re-checked against two live WEB sources in
`docs/reviews/1-samuel-easy-review.md` §1, with no discrepancy found there.

## Conclusion

**`pass`.** Every piece of text that changed while applying the review's required fixes — item 2's
verse-anchored stem and replacement distractors, item 1's replacement distractor, and item 9's added
distractor set — has been independently re-checked. No scripture text was altered anywhere in this
tier; the underlying verses remain exactly as they were when `docs/reviews/1-samuel-easy-review.md`
verified them. Zero verses from 1 Samuel 15 appear anywhere in the brief (re-confirmed by direct
re-read of every item during this pass). `docs/content/1-samuel-easy.md` is eligible for ingestion.
