# Verbatim-Text QA — Genesis, Easy Tier (World 1)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/genesis-easy.md`, run 2026-08-18, after theological review
(`docs/reviews/genesis-easy-review.md`, `approved-with-changes`) and after all required fixes were
applied to the brief.

**Result: `pass`.** All new/corrected verses re-verified against BibleGateway (WEB) — a source used
during review for some items but not the primary drafting source (ebible.org) — with zero
character-level discrepancies. Already-approved verses reused from `docs/content/genesis.md` (items
1, 3, 7, 9, 10) are not re-litigated; they carry forward that book's existing `pass` verbatim-QA
status.

## Verses independently re-checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 2 | Gen 1:5 | "God called the light 'day', and the darkness he called 'night'. There was evening and there was morning, the first day." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+1%3A2%2C+Genesis+1%3A5%2C+Genesis+1%3A26&version=WEB) | **Match.** Note: WEB's own inner punctuation is double quotes ("day"/"night") — the brief's single quotes are correct *brief* formatting (nested inside the brief's own quoted block) but ingestion must store WEB's actual double-quote characters, per review §5.1. |
| 4 | Gen 8:11 (full verse, post-fix) | "The dove came back to him at evening and, behold, in her mouth was a freshly plucked olive leaf. So Noah knew that the waters were abated from the earth." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+3%3A19%2C+Genesis+8%3A11%2C+Genesis+12%3A1&version=WEB) | **Match, full verse confirmed.** The brief's corrected version now includes the previously-missing second sentence; the displayed/challenge-ready portion (first sentence, per the brief's "(WEB, trimmed for challenge use)" label) is a verbatim substring. |
| 5 | Gen 12:1 | "Now Yahweh said to Abram, 'Leave your country, and your relatives, and your father's house, and go to the land that I will show you.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+3%3A19%2C+Genesis+8%3A11%2C+Genesis+12%3A1&version=WEB) | **Match.** |
| 6 | Gen 22:13 | "Abraham lifted up his eyes, and looked, and saw that behind him was a ram caught in the thicket by his horns. Abraham went and took the ram, and offered him up for a burnt offering instead of his son." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+17%3A5%2C+Genesis+22%3A13&version=WEB) | **Match, full verse.** |

## Answer-key / format check (not just text)

- **Item 4's corrected stem** ("According to Genesis 8:11, what did the dove bring back to Noah?")
  was re-checked against the full Genesis 8 dove narrative (8:8-12): confirmed the reference-anchored
  phrasing eliminates the ambiguity the review caught (§6.1) — "nothing" (correct for 8:9) and "did
  not return" (8:12) are no longer defensible answers once the question is pinned to 8:11
  specifically.
- **Item 2's quote-nesting note** (review §5.1) is recorded above for the ingestion step to apply —
  not a drafting fix, a data-entry instruction.
- No other item changed text or citation as part of the review's required fixes (item 4 was the only
  text-bearing fix; items 3/6.3/6.5/6.6 were scope, typo, and inlining fixes, not text corrections).

## Not re-litigated (already-approved verses, reused as-is)

Item 1 (Gen 1:1), item 3 (Gen 3:6), item 7 (Gen 45:4), item 8 (Gen 1:31), item 9 (Joseph sequence:
Gen 37:3-4; 45:4-5; 50:20), item 10 (Gen 3:23-24) — all verbatim-QA `pass` already, as part of
`docs/content/genesis.md`'s original QA pass (`docs/qa/genesis-verbatim-qa.md`, `docs/QA_SIGNOFF.md`).
Text unchanged from that pass; no new verification needed.

## Conclusion

**`pass`.** All 4 newly-introduced or corrected verses independently re-verified with zero
discrepancies. Combined with the theological review's own multi-source verification (ebible.org +
BibleHub) and this pass's BibleGateway cross-check, every challenge-ready verse in this tier has now
been checked against at least two independent live sources. `docs/content/genesis-easy.md` is
eligible for ingestion.
