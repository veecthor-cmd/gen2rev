# Verbatim-Text QA — Jeremiah, Easy Tier (World 24)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/jeremiah-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/jeremiah-easy-review.md`, `approved-with-changes`).

**Result: `pass`.** All 10 challenge-ready verse blocks in this brief (100% of items carrying
quoted or fill-in-blank verse text) independently re-checked against [Bible Hub, World English
Bible](https://biblehub.com/web/) — a source not previously cited for this brief (the brief's own
draft-pull sources were ebible.org and biblegateway.com; the theological review reused those same
two sources without adding a third) — with zero character-level discrepancies. Items 10 and 11
(boss sequence-ordering and quotation-matching) carry no verse text of their own within this brief
(they reference verse ranges by citation only, reusing the medium brief's ladder examples) and so
have nothing to verbatim-check here.

## Verses independently re-checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Jer 1:5 | "Before I formed you in the womb, I knew you. Before you were born, I sanctified you. I have appointed you a prophet to the ___." → **nations** | [Bible Hub WEB, Jeremiah 1](https://biblehub.com/web/jeremiah/1.htm) | **Match.** |
| 2 | Jer 1:6 | "Then I said, 'Ah, Lord Yahweh! Behold, I don't know how to speak; for I am a child.'" | [Bible Hub WEB, Jeremiah 1](https://biblehub.com/web/jeremiah/1.htm) | **Match.** |
| 3 | Jer 7:3-4 | "'Amend your ways and your doings, and I will cause you to dwell in this place. Don't trust in lying words, saying, "Yahweh's temple, Yahweh's temple, Yahweh's temple, are these."'" | [Bible Hub WEB, Jeremiah 7](https://biblehub.com/web/jeremiah/7.htm) | **Match** (content and word order). Note: WEB's own inner punctuation for the "Yahweh's temple..." clause is single quotes nested inside the verse's own single-quoted speech — the brief's double-quote nesting is *brief* formatting convention (same as noted for Genesis item 2), not a wording discrepancy; ingestion should use WEB's actual quote characters. |
| 4 | Jer 18:6 | "'House of Israel, can't I do with you as this potter?' says Yahweh. 'Behold, as the clay in the potter's hand, so are you in my hand, house of Israel.'" | [Bible Hub WEB, Jeremiah 18](https://biblehub.com/web/jeremiah/18.htm) | **Match.** |
| 5 | Jer 28:10-11 | "Then Hananiah the prophet took the bar from off the prophet Jeremiah's neck, and broke it." | [Bible Hub WEB, Jeremiah 28](https://biblehub.com/web/jeremiah/28.htm) | **Match** (quoted clause is v10; v11 is cited but not quoted). |
| 6 | Jer 38:10 | "Then the king commanded Ebedmelech the Ethiopian, saying, 'Take from here thirty men with you, and take up Jeremiah the prophet out of the dungeon, before he dies.'" | [Bible Hub WEB, Jeremiah 38](https://biblehub.com/web/jeremiah/38.htm) | **Match.** |
| 7 | Jer 39:1-2 | "In the ninth year of Zedekiah king of Judah, in the tenth month, Nebuchadnezzar king of Babylon and all his army came against Jerusalem, and besieged it. In the eleventh year of Zedekiah, in the fourth month, the ninth day of the month, a breach was made in the city." | [Bible Hub WEB, Jeremiah 39](https://biblehub.com/web/jeremiah/39.htm) | **Match.** |
| 8 | Jer 39:11-12 | "Now Nebuchadnezzar king of Babylon commanded Nebuzaradan the captain of the guard concerning Jeremiah, saying, 'Take him and take care of him. Do him no harm; but do to him even as he tells you.'" | [Bible Hub WEB, Jeremiah 39](https://biblehub.com/web/jeremiah/39.htm) | **Match.** |
| 9 | Jer 31:33 | "'But this is the covenant that I will make with the house of Israel after those days,' says Yahweh: 'I will put my law in their inward parts, and I will write it in their ___. I will be their God, and they shall be my people.'" → **heart** | [Bible Hub WEB, Jeremiah 31](https://biblehub.com/web/jeremiah/31.htm) | **Match.** |
| 12 | Jer 7:12 | "'But go now to my place which was in Shiloh, where I caused my name to dwell at the first, and see what I did to it for the wickedness of my people Israel.'" | [Bible Hub WEB, Jeremiah 7](https://biblehub.com/web/jeremiah/7.htm) | **Match.** |

## Exclusion checks (grepped, not just claimed)

- **Jeremiah 39:6-7** (Zedekiah's sons killed before him, his own eyes put out): grepped
  `docs/content/jeremiah-easy.md` for `39:6` and `39:7` — the only hits are in the brief's own
  Contested Territory / acceptance-criteria prose *stating* the exclusion; no challenge item quotes
  or cites this range. Items 7-8 draw only on 39:1-2 and 39:11-12, both outside 39:6-7.
  **Confirmed absent.**

## Answer-key / format check (not just text)

- Every fill-in-blank item's answer key (nations, heart) and every MC item's "Correct:" line were
  cross-checked against the re-fetched Bible Hub text — all correct options are verbatim substrings
  or verbatim paraphrase-free facts of the cited verse; all distractors in items 2-8 and 12 are
  plausible-but-wrong narrative alternatives, not textual near-misses that could be defensibly
  correct.
- Item 6's "Correct: Ebedmelech the Ethiopian" and its bounding note (grades who was commanded and
  that he did so, never the mud or the threat of death) reconfirmed against the full re-fetched
  38:9-10 text — no ungraded detail leaks into the distractor set.

## Conclusion

**`pass`.** All 10 verse-bearing items independently re-verified against Bible Hub's WEB text with
zero discrepancies. Combined with the two sources already used during drafting and theological
review (ebible.org, biblegateway.com), every challenge-ready verse in this tier has now been checked
against at least three independent live sources, two of which converge with a third genuinely
independent source added by this pass. Both exclusion checks (Jeremiah 39:6-7, absence of NT
cross-reference at the temple sermon) confirmed by direct grep, not by trusting the brief's own
claim. `docs/content/jeremiah-easy.md` is eligible for ingestion.
