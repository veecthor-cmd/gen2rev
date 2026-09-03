# Verbatim-Text QA — Lamentations, Easy Tier (World 25)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/lamentations-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/lamentations-easy-review.md`, `approved-with-changes`).

**Result: `pass`.** All 7 challenge-ready verse blocks in this brief (100% of items carrying quoted
or fill-in-blank verse text) independently re-checked against
[Bible Hub, World English Bible](https://biblehub.com/web/) — a source not previously cited for
this brief (the brief's own draft-pull sources, reused unchanged from the medium tier, were
ebible.org and biblegateway.com) — with zero character-level discrepancies. Items 7 and 8 (boss
sequence-ordering and quotation-order) carry no verse text of their own within this brief (item 8
references Lam 1:12, 3:22-23, and 5:21 by citation only, as a reused ladder example from the medium
brief) and so have nothing to verbatim-check here.

## Verses independently re-checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Lam 1:1 | "How the city sits solitary, that was full of people! She has become as a widow, who was great among the nations! She who was a princess among the provinces has become a slave!" | [Bible Hub WEB, Lamentations 1](https://biblehub.com/web/lamentations/1.htm) | **Match.** |
| 2 | Lam 1:2 (trimmed) | "She weeps bitterly in the night. Her tears are on her cheeks." | [Bible Hub WEB, Lamentations 1](https://biblehub.com/web/lamentations/1.htm) | **Match** — a verbatim leading substring of the full verse; the brief labels it "trimmed," and the trim doesn't alter the meaning of what's displayed (no silent truncation mid-clause). |
| 3 | Lam 1:12 | "'Is it nothing to you, all you who pass by? Look, and see if there is any sorrow like my sorrow, which is brought on me, with which Yahweh has afflicted me in the day of his fierce anger.'" | [Bible Hub WEB, Lamentations 1](https://biblehub.com/web/lamentations/1.htm) | **Match.** |
| 4 | Lam 3:18 | "I said, 'My strength has perished, along with my expectation from Yahweh.'" | [Bible Hub WEB, Lamentations 3](https://biblehub.com/web/lamentations/3.htm) | **Match.** |
| 5 | Lam 3:21-23 | "This I recall to my mind; therefore I have hope. It is because of Yahweh's loving kindnesses that we are not consumed, because his mercies don't fail. They are new every ___. Great is your faithfulness." → **morning** | [Bible Hub WEB, Lamentations 3](https://biblehub.com/web/lamentations/3.htm) | **Match**, combining verses 21, 22, and 23 verbatim with no gaps. |
| 6 | Lam 5:19 | "You, Yahweh, remain forever. Your throne is from generation to generation." | [Bible Hub WEB, Lamentations 5](https://biblehub.com/web/lamentations/5.htm) | **Match.** |
| 9 | Lam 5:21 | "'Turn us to yourself, Yahweh, and we will be turned. Renew our days as of old.'" | [Bible Hub WEB, Lamentations 5](https://biblehub.com/web/lamentations/5.htm) | **Match.** |

## Exclusion checks (grepped, not just claimed)

- **Lamentations 3:1-17** (excluded affliction imagery): grepped `docs/content/lamentations-easy.md`
  for chapter-3 verse references — the only chapter-3 items cited are 3:18 and 3:21-23; nothing in
  the range 3:1-17 is quoted or cited as challenge-ready text anywhere in the brief. **Confirmed
  absent.**
- **Lamentations 5:22** (the book's actual final verse): grepped for `5:22` — no hits at all in the
  brief. The closing-plea material stops at item 9 (5:21). **Confirmed absent.**
- **Lamentations 2:20 / 4:10** (cannibalism-during-siege material): grepped for `2:20` and `4:10` —
  no hits at all in the brief; chapters 2 and 4 are not among this book's 3 pivotal passages in any
  tier. **Confirmed absent.**

## Answer-key / format check (not just text)

- Every MC item's "Correct:" line and item 5's fill-in-blank answer ("morning") were cross-checked
  against the re-fetched Bible Hub text — all correct options are verbatim substrings or accurate
  paraphrase-free summaries of the cited verse; distractors in items 1, 2, 3, 6, and 9 are
  plausible-but-wrong alternatives, none of them defensible near-misses.

## Conclusion

**`pass`.** All 7 verse-bearing items independently re-verified against Bible Hub's WEB text with
zero discrepancies. Combined with the sources already used at medium tier and carried forward here
(ebible.org, biblegateway.com), every challenge-ready verse in this tier has now been checked
against at least three independent live sources. All three exclusion ranges (Lamentations 3:1-17,
5:22, 2:20/4:10) confirmed absent by direct grep, not by trusting the brief's own claim.
`docs/content/lamentations-easy.md` is eligible for ingestion.
