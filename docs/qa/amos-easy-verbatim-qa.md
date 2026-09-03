# Verbatim-Text QA — Amos, Easy Tier (World 30)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/amos-easy.md`, run 2026-09-03, after theological self-review
(`docs/reviews/amos-easy-review.md`, `approved`).

**Independent source used: [Bible Hub](https://biblehub.com/web/) (WEB)** — not cited in the
brief's draft-pull note or `docs/reviews/amos-easy-review.md` (ebible.org, biblegateway.com).
Cross-confirmed against ebible.org and biblegateway.com directly (both already-cited sources) for
the two items where a discrepancy was found, to rule out a Bible Hub page-rendering artifact before
editing the brief.

**Result: `pass, with 2 corrections made during this QA pass.`** All 9 text-bearing items checked
character-for-character; 2 discrepancies found and fixed (see below); 0 remaining after fix.

## Verses independently checked

| Item | Verse | Brief's text (as originally drafted) | Result |
|---|---|---|---|
| 1 | Amos 1:3 | "For three transgressions of Damascus, yes, for four, I will not turn away its punishment, because they have threshed Gilead with threshing instruments of iron." | **Discrepancy found — corrected.** See below. |
| 2 | Amos 2:6 | "For three transgressions of Israel, yes, for four, I will not turn away its punishment, because they have sold the righteous for silver, and the needy for a pair of sandals." | **Discrepancy found — corrected.** See below. |
| 3 | Amos 2:7 (first sentence only) | "They trample the heads of the poor into the dust of the earth and deny justice to the oppressed." | **Match** ([Bible Hub, Amos 2](https://biblehub.com/amos/2-7.htm)) — correctly stops before the excluded second sentence |
| 4 | Amos 5:12 | "For I know how many are your offenses, and how great are your sins—you who afflict the just, who take a bribe, and who turn away the needy in the courts." | **Match** ([Bible Hub, Amos 5](https://biblehub.com/web/amos/5.htm)) |
| 5 | Amos 5:21 | "I hate, I despise your feasts, and I can't stand your solemn assemblies." | **Match** (Bible Hub, Amos 5) |
| 6 | Amos 5:24 | "But let justice roll on like rivers, and righteousness like a mighty stream." | **Match** — confirmed "roll on... a mighty stream" (WEB), not the more famous NRSV/RSV "roll down... an ever-flowing stream" (Bible Hub, Amos 5) |
| 7 | Amos 7:14 | "I was no prophet, neither was I a prophet's son, but I was a herdsman, and a farmer of sycamore figs." | **Match** ([Bible Hub, Amos 7](https://biblehub.com/web/amos/7.htm)) |
| 8 | Amos 7:15 | "and Yahweh took me from following the flock, and Yahweh said to me, 'Go, prophesy to my people Israel.'" | **Match** (Bible Hub, Amos 7) |
| 9 (boss) | — | Sequence-only, no quoted text | N/A |

## Discrepancies found and corrected

Both items 1 and 2 quoted Amos's "For three transgressions..." judgment-oracle formula but silently
omitted the verse's own leading attribution clause, **"Yahweh says:"**, which is part of the verse
proper in the WEB text (confirmed against Bible Hub, and independently re-confirmed against both
ebible.org and biblegateway.com — all three sources agree the clause is present). Neither item
labeled this as a trim (contrast e.g. item 4's Amos 5:11 in the hard-tier brief, which explicitly
labels its own trim) — this is a silent truncation per `QA_REQUIREMENTS.md` §3's standard, not a
labeled one, so it required a fix rather than a note.

- **Item 1 (Amos 1:3).** Was: `"For three transgressions of Damascus, yes, for four, I will not
  turn away its punishment, because they have threshed Gilead with threshing instruments of iron."`
  Fixed to: `"Yahweh says: 'For three transgressions of Damascus, yes, for four, I will not turn away
  its punishment, because they have threshed Gilead with threshing instruments of iron.'"` — applied
  directly to `docs/content/amos-easy.md`. The MC question/options/answer are unaffected (they test
  only which nation is addressed).
- **Item 2 (Amos 2:6).** Was: `"For three transgressions of Israel, yes, for four, I will not turn
  away its punishment, because they have sold the righteous for silver, and the needy for a pair of
  sandals."` Fixed to: `"Yahweh says: 'For three transgressions of Israel, yes, for four, I will not
  turn away its punishment, because they have sold the righteous for silver, and the needy for a pair
  of sandals.'"` — applied directly to `docs/content/amos-easy.md`. The MC question/options/answer
  are unaffected.

**Not flagged as a discrepancy:** the boss item's use of short recognizable-phrase excerpts (this
brief's item 9 is sequence-only with no quoted text, but see the hard-tier report for a parallel
case) is a distinct, established convention in this content set for sequence/matching items and is
not the same class of issue as a regular item's standalone "brief's text" field, which is meant to
be a complete, verbatim verse.

## Contested Territory / exclusion check — grepped, not just trusted

- **Amos 9:11-12.** Grepped `docs/content/amos-easy.md` for `9:11`, `9:12`, and for any of that
  passage's distinctive language — no verse from 9:11-12 appears anywhere in the file (the only hits
  are in the Contested Territory section's own prose confirming the exclusion). **Confirmed absent.**
- **Amos 2:7's second sentence.** Grepped for `maiden` and `father use the same` — no hit anywhere
  in the challenge items; the only occurrence is in the Contested Territory section's own
  description of what is excluded. Item 3 quotes only the first sentence, verified above.
  **Confirmed absent.**
- **Amos 5:24 wording.** Re-independently confirmed via Bible Hub that "roll on like rivers... a
  mighty stream" is the correct current WEB text, matching the medium and easy reviews' own
  standing catch. **Confirmed.**

## Conclusion

**`pass`** (after correction). 9 items checked; 2 silent truncations found and fixed directly in
`docs/content/amos-easy.md` (both restoring the omitted "Yahweh says:" attribution clause, per this
assignment's fix-in-place instruction); 7 items matched with zero discrepancies. Both required
exclusion checks (Amos 9:11-12; Amos 2:7's second sentence) independently confirmed absent by grep.
`docs/content/amos-easy.md` is eligible for ingestion on this QA dimension now that the corrections
are applied.

### Sources used

- [Bible Hub, World English Bible](https://biblehub.com/web/) — Amos chapters 1, 2, 5, 7 (primary
  independent source)
- [ebible.org](https://ebible.org/web/AMO01.htm) and
  [biblegateway.com](https://www.biblegateway.com/passage/?search=Amos+1%3A3&version=WEB) — used only
  to cross-confirm the "Yahweh says:" clause before editing the brief, since both were already cited
  elsewhere in this book's review chain
