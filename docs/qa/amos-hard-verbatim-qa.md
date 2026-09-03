# Verbatim-Text QA — Amos, Hard Tier (World 30)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/amos-hard.md`, run 2026-09-03, after theological self-review
(`docs/reviews/amos-hard-review.md`, `approved`).

**Independent source used: [Bible Hub](https://biblehub.com/web/) (WEB)** — not cited in the
brief's draft-pull note or `docs/reviews/amos-hard-review.md` (ebible.org, biblegateway.com).
Cross-confirmed against ebible.org and biblegateway.com directly for the items where a discrepancy
was found.

**Result: `pass, with 3 corrections made during this QA pass.`** All 9 items checked
character-for-character; 3 discrepancies found and fixed (see below); 0 remaining after fix.

## Verses independently checked

| Item | Verse | Brief's text (as originally drafted) | Result |
|---|---|---|---|
| 1 | Amos 1:3 | "For three transgressions of Damascus, yes, for four, I will not turn away its punishment, because they have threshed Gilead with threshing instruments of iron." | **Discrepancy found — corrected.** See below. |
| 2 | Amos 1:11 | "For three transgressions of Edom, yes, for four, I will not turn away its punishment, because he pursued his brother with the sword and cast off all pity, and his anger raged continually, and he kept his wrath forever." | **Discrepancy found — corrected.** See below. |
| 3 | Amos 2:6 | "For three transgressions of Israel, yes, for four, I will not turn away its punishment, because they have sold the righteous for silver, and the needy for a pair of sandals." | **Discrepancy found — corrected.** See below. |
| 4 | Amos 2:7 (first sentence only) | "They trample the heads of the poor into the dust of the earth and deny justice to the oppressed." | **Match** ([Bible Hub, Amos 2](https://biblehub.com/amos/2-7.htm)) |
| 5 | Amos 5:11 | "Therefore, because you trample on the poor and take taxes from him of wheat, you have built houses of cut stone, but you will not dwell in them." | **Match** — this item is explicitly self-labeled in the brief as "trimmed to avoid the vineyard clause," and the trim boundary is correct: the full verse continues "You have planted pleasant vineyards, but you shall not drink their wine," which is properly omitted and properly labeled ([Bible Hub, Amos 5](https://biblehub.com/web/amos/5.htm)) |
| 6 | Amos 5:12 | "For I know how many are your offenses, and how great are your sins—you who afflict the just, who take a bribe, and who turn away the needy in the courts." | **Match** (Bible Hub, Amos 5) |
| 7 | Amos 5:23 | "Take away from me the noise of your songs! I will not listen to the music of your harps." | **Match** (Bible Hub, Amos 5) |
| 8 | Amos 7:14 | "I was no prophet, neither was I a prophet's son, but I was a herdsman, and a farmer of sycamore figs." | **Match** ([Bible Hub, Amos 7](https://biblehub.com/web/amos/7.htm)) |
| 9 (boss) | Amos 2:6, 5:24, 7:14 | "For three transgressions of Israel... they have sold the righteous for silver" / "let justice roll on like rivers" / "I was no prophet, neither was I a prophet's son" | **Accurate short excerpts**, see note below |

## Discrepancies found and corrected

Same root cause as the easy-tier sibling brief: the "For three transgressions..." judgment-oracle
formula's leading attribution clause, **"Yahweh says:"**, was silently dropped from three regular
items' standalone verse-text field (confirmed present in the actual WEB text via Bible Hub, and
independently cross-confirmed against ebible.org and biblegateway.com).

- **Item 1 (Amos 1:3).** Fixed to: `"Yahweh says: 'For three transgressions of Damascus, yes, for
  four, I will not turn away its punishment, because they have threshed Gilead with threshing
  instruments of iron.'"` — applied to `docs/content/amos-hard.md`. Recall stem/blank ("...because
  they have threshed Gilead with threshing instruments of ___" → iron) unaffected — it already only
  quotes a trailing, ellipsis-marked portion.
- **Item 2 (Amos 1:11).** Fixed to: `"Yahweh says: 'For three transgressions of Edom, yes, for four,
  I will not turn away its punishment, because he pursued his brother with the sword and cast off all
  pity, and his anger raged continually, and he kept his wrath forever.'"` — applied to
  `docs/content/amos-hard.md`. Recall blank ("forever") unaffected.
- **Item 3 (Amos 2:6).** Fixed to: `"Yahweh says: 'For three transgressions of Israel, yes, for four,
  I will not turn away its punishment, because they have sold the righteous for silver, and the needy
  for a pair of sandals.'"` — applied to `docs/content/amos-hard.md`. Recall blank ("sandals")
  unaffected.

**Boss item 9, not treated as a discrepancy requiring a fix:** its first quotation ("For three
transgressions of Israel... they have sold the righteous for silver") also lacks the leading "Yahweh
says:" clause, and its second quotation ("let justice roll on like rivers") likewise drops the
verse's actual leading word "But" (full Amos 5:24 begins "But let justice roll on..."). Both are
short, ellipsis-marked or evidently-partial recognizable-phrase excerpts used for the
sequence-and-match boss format, not a standalone "this is the complete verse" field — this is a
distinct, pre-existing convention used consistently for boss/sequence items across this whole
content set (e.g. this same brief's own item 9 also trims 7:14's quotation at "a prophet's son"
without continuing into "but I was a herdsman..."). Logged here per the instruction to log every
discrepancy however small, but not corrected, since fixing it would mean rewriting an
established, intentional format convention rather than restoring an accidentally-dropped word from
a should-be-complete field.

## Contested Territory / exclusion check — grepped, not just trusted

- **Amos 9:11-12.** Grepped `docs/content/amos-hard.md` for `9:11`, `9:12` — no verse from 9:11-12
  appears anywhere except in the Contested Territory section's own prose confirming the exclusion.
  **Confirmed absent.**
- **Amos 2:7's second sentence.** Grepped for `maiden` — only hit is in the Contested Territory
  section's description of what is excluded. Item 4 quotes only the first sentence. **Confirmed
  absent.**
- **Amos 5:24 wording (boss item 9).** Re-confirmed via Bible Hub that "roll on like rivers... a
  mighty stream" is correct WEB wording.

## Conclusion

**`pass`** (after correction). 9 items checked; 3 silent truncations found and fixed directly in
`docs/content/amos-hard.md` (all three restoring the omitted "Yahweh says:" attribution clause); 6
items matched with zero discrepancies; 1 minor, pre-existing convention-level trim in the boss item
logged but not corrected (see above). Both required exclusion checks confirmed absent by grep.
`docs/content/amos-hard.md` is eligible for ingestion on this QA dimension now that the corrections
are applied.

### Sources used

- [Bible Hub, World English Bible](https://biblehub.com/web/) — Amos chapters 1, 2, 5, 7 (primary
  independent source)
- [ebible.org](https://ebible.org/web/AMO01.htm) and
  [biblegateway.com](https://www.biblegateway.com/passage/?search=Amos+1%3A3&version=WEB) — used only
  to cross-confirm the "Yahweh says:" clause before editing the brief
