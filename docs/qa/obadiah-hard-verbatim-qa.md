# Verbatim-Text QA — Obadiah, Hard Tier (World 31)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/obadiah-hard.md`, run 2026-09-03, after theological self-review
(`docs/reviews/obadiah-hard-review.md`, `approved`).

**Independent source used: [Bible Hub](https://biblehub.com/web/) (WEB)** — not cited in the
brief's draft-pull note or `docs/reviews/obadiah-hard-review.md` (ebible.org only). Cross-confirmed
against biblegateway.com for the one item where a discrepancy was found.

**Result: `pass, with 1 correction made during this QA pass.`** All 6 items checked
character-for-character; 1 discrepancy found and fixed (see below); 0 remaining after fix.

## Verses independently checked

| Item | Verse | Brief's text (as originally drafted) | Result |
|---|---|---|---|
| 1 | Obadiah 1:3 | "The pride of your heart has deceived you, you who dwell in the clefts of the rock, whose habitation is high, who says in his heart, 'Who will bring me down to the ground?'" | **Match** ([Bible Hub, Obadiah 1](https://biblehub.com/web/obadiah/1.htm)) |
| 2 | Obadiah 1:4 | "Though you mount on high as the eagle, and though your nest is set among the stars, I will bring you down from there," says Yahweh." | **Match** (Bible Hub, Obadiah 1) |
| 3 | Obadiah 1:10 | "For the violence done to your brother Jacob, shame will cover you, and you will be cut off forever." | **Match** (Bible Hub, Obadiah 1) |
| 4 | Obadiah 1:12 | "But don't look down on your brother in the day of his disaster, and don't rejoice over the children of Judah in the day of their destruction." | **Discrepancy found — corrected.** Same issue as the easy-tier sibling brief. See below. |
| 5 | Obadiah 1:15 | "For the day of Yahweh is near all the nations! As you have done, it will be done to you. Your deeds will return upon your own head." | **Match** (Bible Hub, Obadiah 1) |
| 6 | Obadiah 1:17 | "But in Mount Zion, there will be those who escape, and it will be holy. The house of Jacob will possess their possessions." | **Match**, full verse (Bible Hub, Obadiah 1) |

## Discrepancy found and corrected

**Item 4 (Obadiah 1:12)** had the identical issue found in `docs/content/obadiah-easy.md`: the
verse's third sentence, *"Don't speak proudly in the day of distress,"* was silently omitted from
the standalone quoted text (confirmed present in the full verse via Bible Hub and independently
cross-confirmed via biblegateway.com), with no trim label.

Fixed to: `"But don't look down on your brother in the day of his disaster, and don't rejoice over
the children of Judah in the day of their destruction. Don't speak proudly in the day of distress."`
— applied directly to `docs/content/obadiah-hard.md`. The recall stem/blank ("...in the day of
their ___" → destruction) is unaffected — it already only quotes up through the second sentence,
which is unchanged; the fix only extends the standalone verse-text field above it to the full verse.

## Contested Territory check — re-read, not just trusted

- **Edom-as-Rome/Christendom typology.** Re-read all 6 items directly: each blanks a plain
  narrative-fact word ("ground," "Yahweh," "forever," "destruction," "head," "possessions") with no
  bearing on the typological question. **Confirmed compliant.**
- **Obadiah 1:18.** Grepped `docs/content/obadiah-hard.md` for `1:18` — no hit. **Confirmed absent.**
- **No verse beyond the reviewed 6.** All 6 items map to Obadiah 3, 4, 10, 12, 15, 17 exactly.
  **Confirmed.**

## Conclusion

**`pass`** (after correction). 6 items checked; 1 silent truncation found and fixed directly in
`docs/content/obadiah-hard.md` (restoring Obadiah 1:12's omitted third sentence, same fix as its
easy-tier sibling); 5 items matched with zero discrepancies. `docs/content/obadiah-hard.md` is
eligible for ingestion on this QA dimension now that the correction is applied.

### Sources used

- [Bible Hub, World English Bible](https://biblehub.com/web/) — Obadiah 1 (primary independent
  source)
- [biblegateway.com](https://www.biblegateway.com/passage/?search=Obadiah+1%3A12&version=WEB) — used
  only to cross-confirm the missing third sentence before editing the brief
