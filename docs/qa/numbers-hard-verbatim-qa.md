# Verbatim-Text QA — Numbers, Hard Tier (World 4)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while
applying `docs/reviews/numbers-hard-review.md`'s required and recommended fixes to
`docs/content/numbers-hard.md`, run 2026-08-20, after theological review (`approved-with-changes`)
and after all required fixes were applied to the brief.

**Context the review specifically flagged:** the brief's original header caveat claimed every new
verse was retrieved live from ebible.org, but that claim did not hold for item 2 (Num 1:47) — it was
drafted with the KJV/ASV reading ("numbered") rather than the WEB reading ("counted"). The review
concluded this caveat "should not be treated as evidence of retrieval for any verse" and instructed
the verbatim-QA pass to re-check **all twelve items**, not just the ones the review flagged. This
pass does that.

**Edition note:** this pass used **BibleGateway (`version=WEB`)**, which — per
`docs/reviews/numbers-easy-review.md` §7.5 — is confirmed to render "Yahweh," matching this project's
approved briefs. `ebible.org/engwebp/` (a different WEB edition rendering "the LORD") was not used.

**Result: `pass`.** All twelve items re-checked; the three text changes made during the fix pass were
independently re-verified with zero discrepancies, and the nine unchanged items were re-confirmed
against BibleGateway as an independent second check beyond the review's own ebible.org verification.

## All 12 items independently re-checked against BibleGateway (WEB)

| Item | Verse | Brief's text (post-fix where applicable) | Result |
|---|---|---|---|
| 1 | Num 2:1-2 | "...They shall encamp around the Tent of Meeting at a distance from it." | **Match.** |
| 2 | **Num 1:47 (corrected)** | "But the Levites after the tribe of their fathers were not counted among them." | **Match — "counted" confirmed, not "numbered."** [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+1%3A47&version=WEB): "But the Levites after the tribe of their fathers were not counted among them." Blocking defect from Finding A is resolved. |
| 3 | Num 14:1-4 | "...We wish that we had died in the land of Egypt..." | **Match** (unchanged; review already confirmed). |
| 4 | Num 14:9 | "...for they are bread for us..." | **Match** (unchanged; review already confirmed). |
| 5 | **Num 16:5 (trim-labelled)** | "In the morning, Yahweh will show who are his, and who is holy, and will cause him to come near to him..." | **Match, verbatim, on the quoted words.** [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+16%3A5&version=WEB): "...In the morning, Yahweh will show who are his, and who is holy, and will cause him to come near to him. Even him whom he shall choose, he will cause to come near to him." Confirms the trim is real and now correctly labelled; wording unchanged. |
| 6 | Num 21:6-7 | "...Pray to Yahweh, that he take away the serpents from us..." | **Match** (unchanged; review already confirmed). |
| 7 | **Num 22:38 (attribution restored)** | "Balaam said to Balak, 'Behold, I have come to you. Have I now any power at all to speak anything? I will speak the word that God puts in my mouth.'" | **Match, full text including attribution.** [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+22%3A38&version=WEB): "Balaam said to Balak, 'Behold, I have come to you. Have I now any power at all to speak anything? I will speak the word that God puts in my mouth.'" Confirmed verbatim, character for character. |
| 8 | Num 24:17 | "...A star will come out of Jacob..." | **Match** (unchanged; review already confirmed). |
| 9 | Num 16:1-3 / 16:31-32 / 26:11 | Inlined per review §6/§5.3 — text copied unchanged from `docs/content/numbers.md` | **Match.** Sourced from the already-approved, already-verbatim-QA-relevant `medium` brief, which itself cites two independent live sources (ebible.org + BibleGateway) for 16:31-32 and 26:11, and one for 16:1-3 flagged for priority QA in `docs/qa/numbers-verbatim-qa.md`. Spot-confirmed against [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+16%3A1-3%3BNumbers+16%3A31-32%3BNumbers+26%3A11&version=WEB) — all three strings match. |
| 10 | Num 22:27-28 / 22:31 | Inlined per review §6/§5.3 — text copied unchanged from `docs/content/numbers.md` | **Match.** Spot-confirmed against [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+22%3A27-28%3BNumbers+22%3A31&version=WEB) — both strings match the already-approved `medium` text. |
| 11 | Num 16:1-3 (full) | "...two hundred fifty princes of the congregation, called to the assembly, men of renown..." | **Match** (unchanged; review already confirmed, including the material restored beyond `medium`'s trim). |
| 12 | Num 16:46-48 | "...He stood between the dead and the living; and the plague was stayed." | **Match** (unchanged; review already confirmed). |

## Formatting/justification-only changes (no verse-text change) — noted, not re-verified as text

- **Item 8 (Num 24:17)** — Contested Territory description corrected (Rashi reads the star of David,
  not the Messiah) and a new display-only guard added for "corners of Moab"/"sons of Sheth." No
  change to the item's displayed verse text or graded token ("star").
- **Item 12 (Num 16:46-48)** — "atonement is display-only" guard added, and the "later in the same
  chapter" justification reworded to note the Hebrew/Jewish versification divergence (Num 17:11-13).
  No change to displayed verse text.
- **Item 4 (Num 14:9)** — guard added restricting "bread" to fill-in-blank format only. No change to
  displayed verse text.

## Conclusion

**`pass`.** All twelve items in the brief — not only the three the review flagged for a text change —
were independently re-checked against BibleGateway (`version=WEB`), per the review's explicit
instruction not to rely on the brief's own retrieval claim. The blocking defect (item 2, "numbered" →
"counted") is resolved and confirmed. The two required labelling/attribution fixes (items 5 and 7)
were confirmed to leave the underlying wording accurate and complete. Items 9 and 10's newly-inlined
text was confirmed to match the already-approved `medium` source it was copied from.
`docs/content/numbers-hard.md` is eligible for ingestion.
