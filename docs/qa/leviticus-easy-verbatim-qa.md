# Verbatim-Text QA — Leviticus, Easy Tier (World 3)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/leviticus-easy.md`, run after theological review (`docs/reviews/leviticus-easy-review.md`,
`approved-with-changes`) and after all required and recommended fixes were applied to the brief.

**Result: `pass`.** Every verse re-verified against `https://ebible.org/web/` and BibleGateway
(`version=WEB`) — **not** `ebible.org/engwebp/`, which renders the divine name "the LORD" instead of
"Yahweh" (review §1.2 edition trap). Zero character-level discrepancies found anywhere. Per review
§6.7(b), the brief's original acceptance-criterion claim that verbatim QA was "not required for this
tier" is dropped — the review ran it anyway and it caught a labelling discrepancy and the edition
trap, which is why this pass covers every item rather than only the format-changed ones.

## Verses independently re-checked

| Item | Verse | Brief's text (post-fix) | Source | Result |
|---|---|---|---|---|
| 1 | Lev 1:3-4 | "'If his offering is a burnt offering from the herd, he shall offer a male without defect. He shall offer it at the door of the Tent of Meeting, that he may be accepted before Yahweh. He shall lay his hand on the head of the burnt offering, and it shall be accepted for him to make atonement for him.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2-4%3B+Leviticus+10%3A1-3%3B+Leviticus+16%3A2%3B+Leviticus+16%3A17%3B+Leviticus+16%3A29-30%3B+Leviticus+16%3A34%3B+Leviticus+17%3A11&version=WEB) | **Match, full and verbatim.** No text change made to this item. |
| 2 | Lev 10:1-3, full block per corrected template (review §6.2, required fix) | "Nadab and Abihu, the sons of Aaron, each took his censer, and put fire in it, and laid incense on it, and offered ___ fire before Yahweh, which he had not commanded them. Fire came out from before Yahweh, and devoured them, and they died before Yahweh. Then Moses said to Aaron, 'This is what Yahweh spoke of, saying, "I will show myself holy to those who come near me, and before all the people I will be glorified."'" → **strange** | Same source | **Match, full block verbatim.** Graded token "strange" confirmed correct — WEB's own word. Confirmed the corrected template now displays the full 10:1-3 pairing with the blank embedded inside it, matching `medium`'s convention (`docs/ingest/exodus-leviticus.sql` sort_order pattern), not a standalone fragment. |
| 3 | Lev 16:34 | "'This shall be an everlasting statute for you, to make atonement for the children of Israel once in the year because of all their sins.' It was done as Yahweh commanded Moses." | Same source | **Match, full verse including the trailing "It was done as Yahweh commanded Moses."** |
| 4 | Lev 16:29-30 (stem reworded to prescriptive mood, review §6.4) | "'It shall be a statute to you forever: in the seventh month, on the tenth day of the month, you shall afflict your souls, and shall do no kind of work, whether native-born or a stranger who lives as a foreigner among you; for on this day shall atonement be made for you, to cleanse you. You shall be clean from all your sins before Yahweh.'" | Same source | **Match, full and verbatim.** No text change; only the MC stem and option mood changed, confirmed against the same verse text. |
| 5 | Lev 19:2 (stem re-anchored, review §6.3; distractor swapped, §5.1) | "'Speak to all the congregation of the children of Israel, and tell them, "You shall be holy; for I, Yahweh your God, am holy."'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+19%3A2%3B+Leviticus+19%3A11%3B+Leviticus+19%3A14%3B+Leviticus+19%3A18%3B+Leviticus+19%3A32%3B+Leviticus+25%3A9%3B+Leviticus+25%3A10%3B+Leviticus+25%3A17%3B+Leviticus+25%3A23&version=WEB) | **Match.** No verse-text change; stem and one distractor changed only. |
| 6 | Lev 19:18 (distractor swapped, review §6.5(a)) | "'You shall not take vengeance, nor bear any grudge against the children of your people; but you shall love your neighbor as yourself. I am Yahweh.'" | Same source | **Match, full and verbatim.** No verse-text change; only the "pray for your enemy" distractor was swapped for "bring your case before the priest." |
| 7 | Lev 19:15 | "'You shall do no injustice in judgment. You shall not be partial to the poor, nor show favoritism to the great; but you shall judge your neighbor in righteousness.'" | [ebible.org WEB LEV19](https://ebible.org/web/LEV19.htm) | **Match, full and verbatim.** Graded token "righteousness" confirmed correct. No change made to this item. |
| 8 | Lev 25:10 (stem/options recast in prescriptive mood, review §6.1, required fix) | "'You shall make the fiftieth year holy, and proclaim liberty throughout the land to all its inhabitants. It shall be a jubilee to you; and each of you shall return to his own property, and each of you shall return to his family.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+19%3A2%3B+Leviticus+19%3A11%3B+Leviticus+19%3A14%3B+Leviticus+19%3A18%3B+Leviticus+19%3A32%3B+Leviticus+25%3A9%3B+Leviticus+25%3A10%3B+Leviticus+25%3A17%3B+Leviticus+25%3A23&version=WEB) | **Match, full and verbatim.** The underlying quoted verse text is unchanged and legislation-mood (second-person imperative) in the source itself — confirming the fix (recasting the MC stem and every option into prescriptive mood, "was to be...") correctly matches the verse's own grammatical mood rather than introducing new claims. |
| 9 | Lev 17:11 (boss) | "'For the life of the flesh is in the blood. I have given it to you on the altar to make atonement for your souls; for it is the blood that makes atonement by reason of the life.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2-4%3B+Leviticus+10%3A1-3%3B+Leviticus+16%3A2%3B+Leviticus+16%3A17%3B+Leviticus+16%3A29-30%3B+Leviticus+16%3A34%3B+Leviticus+17%3A11&version=WEB) | **Match.** Byte-identical to approved `medium` boss row; no change made. |
| 10 | Sequence labels (boss; "unauthorized fire" changed to "strange fire", review §6.5(b)) | n/a — label text, not verse text | n/a | Not verse text. Label word "strange" now matches item 2's graded WEB token, confirmed above. |
| 11 | Lev 25:17 (boss) | "'You shall not wrong one another, but you shall fear your God; for I am Yahweh your God.'" | [ebible.org WEB LEV25](https://ebible.org/web/LEV25.htm) | **Match, full and verbatim.** No change made to this item. |

## Answer-key / format check (not just text)

- **Item 2's template** was corrected to display the full 10:1-3 block with the blank embedded
  inside it (review §6.2, required fix) — verified this is the exact wording that would actually
  enforce the 10:1-2/10:3 pairing rule at the ingestion layer, matching `medium`'s convention.
- **Item 8's stem and options** were recast into prescriptive mood ("was to be proclaimed," "was to
  return") rather than narrated-past-event mood (review §6.1, required fix) — verified the underlying
  verse text is unchanged and that the fix correctly removes the historicity-claim crossing the
  reviewer identified, without altering the graded answer's content.
- **Item 5's stem** ("what reason does Leviticus 19:2 give...") and **item 6's distractor**
  ("bring your case before the priest") were checked for textual grounding in Leviticus — both are
  in-bounds, in-chapter content, not invented.

## Not re-litigated

None — every item in this tier was independently re-checked in this pass, per review §6.7(b)'s
finding that "not required" was an incorrect claim to make even before any fixes were applied.

## Conclusion

**`pass`.** All 11 items independently re-verified against live WEB sources with zero discrepancies.
Both required fixes (item 2's template, item 8's mood) were confirmed to change only the graded
framing, never the underlying verse text. Combined with the theological review's own multi-source
verification (ebible.org + BibleGateway + Bible Hub's WEB parallel column) and this pass's independent
cross-check, every challenge-ready verse in this tier has now been checked against at least two
independent live sources. `docs/content/leviticus-easy.md` is eligible for ingestion.
