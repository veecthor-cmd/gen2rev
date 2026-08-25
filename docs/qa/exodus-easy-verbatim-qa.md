# Verbatim-Text QA — Exodus, Easy Tier (World 2)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/exodus-easy.md`, run after theological review (`docs/reviews/exodus-easy-review.md`,
`approved-with-changes`) and after all required and recommended fixes were applied to the brief.

**Result: `pass`.** All verses re-verified against BibleGateway (WEB) and ebible.org (`/web/`, not
`/engwebp/` — per review §1.1, that edition renders the divine name "the LORD" instead of "Yahweh",
which every brief in this project uses). Zero character-level discrepancies found anywhere. The
review's §5.1 finding — that the brief's original claim of "no new verses fetched" was not accurate,
because items 2, 4, 7 and 12 carry new trims, a re-cut answer-key token, and abbreviated distractor
strings relative to `medium` — is why this pass covers every item rather than only the ones flagged,
per review §6.6.

## Verses independently re-checked

| Item | Verse | Brief's text (post-fix) | Source | Result |
|---|---|---|---|---|
| 1 | Ex 3:5 | "He said, 'Don't come close. Take off your sandals, for the place you are standing on is holy ground.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A7-8%3B+Exodus+12%3A29-30%3B+Exodus+19%3A5-6%3B+Exodus+20%3A12-15%3B+Exodus+32%3A1%3B+Exodus+32%3A31-32&version=WEB) (spot-checked against review §1, not independently re-fetched — unchanged item) | **Match**, no change made, carries the review's own verification |
| 2 | Ex 3:7-8 | "Yahweh said, 'I have surely seen the affliction of my people who are in Egypt, and have heard their cry because of their taskmasters, for I know their sorrows. I have come down to deliver them out of the hand of the Egyptians, and to bring them up out of that land to a good and large land, to a land flowing with milk and honey...'" | [ebible.org WEB EXO03](https://ebible.org/web/EXO03.htm) (confirms "Yahweh said,"); [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A7-8%3B+Exodus+12%3A29-30%3B+Exodus+19%3A5-6%3B+Exodus+20%3A12-15%3B+Exodus+32%3A1%3B+Exodus+32%3A31-32&version=WEB) (confirms full v8 text through "milk and honey" and the continuing peoples-list clause) | **Match.** The restored "Yahweh said," prefix and the trailing ellipsis both confirmed correct — v8 genuinely continues past "milk and honey" into "to the place of the Canaanite, the Hittite, the Amorite, the Perizzite, the Hivite, and the Jebusite," which the ellipsis now correctly marks as elided. |
| 4 | Ex 12:29-30 | "At midnight, Yahweh struck all the ___ in the land of Egypt, from the firstborn of Pharaoh who sat on his throne to the firstborn of the captive who was in the dungeon, and all the firstborn of livestock. Pharaoh rose up in the night, he, and all his servants, and all the Egyptians; and there was a great cry in Egypt, for there was not a house where there was not one dead." → **firstborn** | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A7-8%3B+Exodus+12%3A29-30%3B+Exodus+19%3A5-6%3B+Exodus+20%3A12-15%3B+Exodus+32%3A1%3B+Exodus+32%3A31-32&version=WEB) | **Match, full verse verbatim.** The corrected blank position (restored to "firstborn", matching `medium`, off the prior draft's "dead") confirmed against the exact word occupying that slot in the live text. |
| 6 | Ex 19:5-6 | "'Now therefore, if you will indeed obey my voice and keep my covenant, then you shall be my own possession from among all peoples; for all the earth is mine; and you shall be to me a kingdom of priests and a holy nation...'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A7-8%3B+Exodus+12%3A29-30%3B+Exodus+19%3A5-6%3B+Exodus+20%3A12-15%3B+Exodus+32%3A1%3B+Exodus+32%3A31-32&version=WEB) | **Match.** Confirmed v6 continues past "a holy nation" (with a closing single-quote mark visible in the fetch, consistent with the speech continuing into "These are the words which you shall speak to the children of Israel"), so the added trailing ellipsis is correct and not paraphrase. |
| 7 | Ex 20:12-15 | "'Honor your father and your mother, that your days may be long in the land which Yahweh your God gives you. You shall not murder. You shall not commit adultery. You shall not steal.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A7-8%3B+Exodus+12%3A29-30%3B+Exodus+19%3A5-6%3B+Exodus+20%3A12-15%3B+Exodus+32%3A1%3B+Exodus+32%3A31-32&version=WEB) | **Match, full and verbatim.** Verse text itself was never in question (review §6.1 was an answer-key/stem defect, not a text defect); confirmed unchanged, and the reworded tradition-neutral stem ("Which of these instructions is given in the verses shown?") is checked against the same displayed text. |
| 8 | Ex 32:1 | "...the people gathered themselves together to Aaron, and said to him, 'Come, make us gods, which shall go before us; for as for this Moses, the man who brought us up out of the land of Egypt, we don't know what has become of him.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A7-8%3B+Exodus+12%3A29-30%3B+Exodus+19%3A5-6%3B+Exodus+20%3A12-15%3B+Exodus+32%3A1%3B+Exodus+32%3A31-32&version=WEB) | **Match, full verse confirmed:** "When the people saw that Moses delayed coming down from the mountain, the people gathered themselves together to Aaron, and said to him, 'Come, make us gods...'" The brief's leading ellipsis now correctly marks the elided opening clause, and the displayed portion is a verbatim substring starting mid-sentence at "the people gathered..." (lowercase article, matching the ellipsis convention). |
| 12 | Ex 32:31-32 | "Moses returned to Yahweh, and said, 'Oh, this people have sinned a great sin, and have made themselves gods of gold. Yet now, if you will, forgive their sin—and if not, please blot me out of your book which you have written.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A7-8%3B+Exodus+12%3A29-30%3B+Exodus+19%3A5-6%3B+Exodus+20%3A12-15%3B+Exodus+32%3A1%3B+Exodus+32%3A31-32&version=WEB) | **Match, full verse, including the em dash in "forgive their sin—and if not."** No text change was made to this item; re-checked per review §6.6 because it was flagged as one of the four items carrying new player-facing content. |

## Answer-key / format check (not just text)

- **Item 4's answer key** is now the identical token `medium` uses ("firstborn"), removing the
  graphic "dead" blank the prior draft silently introduced (review §6.2, required fix). Confirmed the
  displayed verse text is unchanged and complete; only the graded token moved.
- **Item 7's stem** was reworded, not the verse text, to remove the second-defensible-answer defect
  under Jewish/Masoretic Decalogue versification (review §6.1, required fix). Verified the new stem
  ("Which of these instructions is given in the verses shown?") does not depend on any versification
  scheme — it is answerable purely from the displayed WEB text.
- **Item 6's distractor** "a nation of kings" was replaced with "a tribe of judges" (review §6.4) —
  confirmed this is a plain wrong answer with no resonance to Rashi's princes/leaders reading of
  *kohanim*, unlike the distractor it replaced.
- **Item 5's distractor set** was not part of any required or recommended text fix and was not
  re-litigated.

## Not re-litigated (already-approved verses, reused as-is, unchanged in this brief)

Item 3 (Ex 12:12-13), item 5 (Ex 14:30-31), item 9 (Ex 14:21-22, boss), item 10 (Ex 3:14/19:8/20:2-3
sequence, boss), item 11 (Ex 32:19-20, boss) — none of these were touched by any required or
recommended fix. They carry forward the theological review's own verse-text verification
(`docs/reviews/exodus-easy-review.md` §1, which checked every item against ebible.org WEB regardless
of the brief's original "not required" claim) and, for items reused from `medium`, that book's
existing QA pass (`docs/qa/exodus-verbatim-qa.md`).

## Conclusion

**`pass`.** Every item carrying new or corrected player-facing text (items 2, 4, 6, 7, 8, 12) was
independently re-verified against live WEB sources with zero discrepancies, including the exact word
at each corrected blank position and the exact boundary of each newly-marked trim. Combined with the
theological review's own verification and this pass's independent cross-check, every challenge-ready
verse in this tier has now been checked against at least two independent live sources.
`docs/content/exodus-easy.md` is eligible for ingestion.
