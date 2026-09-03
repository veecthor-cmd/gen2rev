# Verbatim-Text QA — Obadiah, Easy Tier (World 31)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/obadiah-easy.md`, run 2026-09-03, after theological self-review
(`docs/reviews/obadiah-easy-review.md`, `approved`).

**Independent source used: [Bible Hub](https://biblehub.com/web/) (WEB)** — not cited in the
brief's draft-pull note or `docs/reviews/obadiah-easy-review.md` (ebible.org only). Cross-confirmed
against biblegateway.com for the one item where a discrepancy was found.

**Result: `pass, with 1 correction made during this QA pass.`** All 6 items checked
character-for-character; 1 discrepancy found and fixed (see below); 0 remaining after fix.

## Verses independently checked

| Item | Verse | Brief's text (as originally drafted) | Result |
|---|---|---|---|
| 1 | Obadiah 1:3 | "The pride of your heart has deceived you, you who dwell in the clefts of the rock, whose habitation is high, who says in his heart, 'Who will bring me down to the ground?'" | **Match** ([Bible Hub, Obadiah 1](https://biblehub.com/web/obadiah/1.htm)) |
| 2 | Obadiah 1:4 | "Though you mount on high as the eagle, and though your nest is set among the stars, I will bring you down from there," says Yahweh." | **Match**, including WEB's own idiosyncratic quote-mark placement (Bible Hub, Obadiah 1) |
| 3 | Obadiah 1:10 | "For the violence done to your brother Jacob, shame will cover you, and you will be cut off forever." | **Match** (Bible Hub, Obadiah 1) |
| 4 | Obadiah 1:12 | "But don't look down on your brother in the day of his disaster, and don't rejoice over the children of Judah in the day of their destruction." | **Discrepancy found — corrected.** See below. |
| 5 | Obadiah 1:15 | "For the day of Yahweh is near all the nations! As you have done, it will be done to you. Your deeds will return upon your own head." | **Match** (Bible Hub, Obadiah 1) |
| 6 | Obadiah 1:17 | "But in Mount Zion, there will be those who escape, and it will be holy. The house of Jacob will possess their possessions." | **Match**, full verse (Bible Hub, Obadiah 1) — confirmed the verse ends there, nothing further omitted |

## Discrepancy found and corrected

**Item 4 (Obadiah 1:12)** quoted only the first two clauses of the verse and silently stopped before
its third sentence. The full WEB verse (confirmed via Bible Hub and independently
cross-confirmed via biblegateway.com) is: *"But don't look down on your brother in the day of his
disaster, and don't rejoice over the children of Judah in the day of their destruction. Don't speak
proudly in the day of distress."* The brief's quote ended at "...destruction." with no trim label
(contrast the labeled trims used elsewhere in this project's briefs, e.g. Amos 5:11 in
`docs/content/amos-hard.md`) — a silent truncation per `QA_REQUIREMENTS.md` §3.

Fixed to: `"But don't look down on your brother in the day of his disaster, and don't rejoice over
the children of Judah in the day of their destruction. Don't speak proudly in the day of distress."`
— applied directly to `docs/content/obadiah-easy.md`. The MC question/options/answer (about what
Edom should not have done) are unaffected — they test only the first clause's content, which is
unchanged.

## Contested Territory check — re-read, not just trusted

- **Edom-as-Rome/Christendom typology.** Re-read all 6 items' stems and options directly: none asks
  what "Edom" symbolizes in later tradition or identifies Edom with any later or contemporary group.
  **Confirmed compliant.**
- **Obadiah 1:18.** Grepped `docs/content/obadiah-easy.md` for `1:18` — no hit. **Confirmed absent.**
- **No verse beyond the reviewed 6.** All 6 items map to Obadiah 3, 4, 10, 12, 15, 17 exactly, no
  others. **Confirmed.**

## Conclusion

**`pass`** (after correction). 6 items checked; 1 silent truncation found and fixed directly in
`docs/content/obadiah-easy.md` (restoring Obadiah 1:12's omitted third sentence); 5 items matched
with zero discrepancies. `docs/content/obadiah-easy.md` is eligible for ingestion on this QA
dimension now that the correction is applied.

### Sources used

- [Bible Hub, World English Bible](https://biblehub.com/web/) — Obadiah 1 (primary independent
  source)
- [biblegateway.com](https://www.biblegateway.com/passage/?search=Obadiah+1%3A12&version=WEB) — used
  only to cross-confirm the missing third sentence before editing the brief
