# Verbatim-Text QA — Isaiah, Hard Tier (World 23)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/isaiah-hard.md`, run 2026-09-03, after theological review
(`docs/reviews/isaiah-hard-review.md`, `approved`, no changes required).

**Result: `pass`.** All 13 distinct verses underlying this tier's 12 items (9 regular + 3 boss,
several verses appearing more than once across items) were independently re-verified against
**Bible Hub** (biblehub.com, WEB), a source not previously cited for this brief —
`docs/reviews/isaiah-review.md` (medium tier) and `docs/reviews/isaiah-hard-review.md` both used
ebible.org and BibleGateway for verse text (Bible Hub was cited in the hard-tier theological review
only for two commentary pages, §3.2 and §3.6 — never as a verse-text source, so it is a genuinely
new source for this specific QA purpose). Bible Hub's raw page HTML (not just its rendered text)
was pulled directly to confirm exact source characters. Zero wording discrepancies found. One
quote-character formatting note (not a wording discrepancy) is recorded below, consistent with the
project's existing precedent for this class of issue (`docs/qa/genesis-easy-verbatim-qa.md` item 2).

## Verses independently re-checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Isa 1:16 | "Wash yourselves. Make yourself clean. Put away the evil of your doings from before my eyes. Cease to do evil." | [Bible Hub WEB, Isaiah 1](https://biblehub.com/web/isaiah/1.htm) | **Match, exact.** |
| 2 | Isa 2:3 | "Many peoples shall go and say, 'Come, let's go up to the mountain of Yahweh, to the house of the God of Jacob; and he will teach us of his ways, and we will walk in his paths.' For the law shall go out of Zion, and Yahweh's word from Jerusalem." | [Bible Hub WEB, Isaiah 2](https://biblehub.com/web/isaiah/2.htm) | **Match.** Source's single embedded double-quoted span demoted to single quotes in the brief — same formatting convention as `docs/qa/genesis-easy-verbatim-qa.md` item 2. Content, including the unquoted "For the law shall go out of Zion..." clause, identical. |
| 3 | Isa 6:4 | "The foundations of the thresholds shook at the voice of him who called, and the house was filled with smoke." | [Bible Hub WEB, Isaiah 6](https://biblehub.com/web/isaiah/6.htm) | **Match, exact.** |
| 4 | Isa 6:5 | "Then I said, 'Woe is me! For I am undone, because I am a man of unclean lips and I live among a people of unclean lips, for my eyes have seen the King, Yahweh of Armies!'" | [Bible Hub WEB, Isaiah 6](https://biblehub.com/web/isaiah/6.htm) | **Match.** Single-level quote-demotion formatting, same as item 2. |
| 5 | Isa 12:4 | "In that day you will say, 'Give thanks to Yahweh! Call on his name! Declare his doings among the peoples! Proclaim that his name is exalted!'" | [Bible Hub WEB, Isaiah 12](https://biblehub.com/web/isaiah/12.htm) | **Match, exact** (content and quote boundary; brief's outer double→single demotion as above). |
| 6 | Isa 38:1 | "In those days Hezekiah was sick and near death. Isaiah the prophet, the son of Amoz, came to him, and said to him, 'Yahweh says, "Set your house in order, for you will die, and not live."'" | [Bible Hub WEB, Isaiah 38](https://biblehub.com/web/isaiah/38.htm) (raw HTML confirmed) | **Match on wording; quote-nesting formatting note — see below.** |
| 7 | Isa 40:29 | "He gives power to the weak. He increases the strength of him who has no might." | [Bible Hub WEB, Isaiah 40](https://biblehub.com/web/isaiah/40.htm) | **Match, exact.** |
| 8 | Isa 41:10 | "Don't you be afraid, for I am with you. Don't be dismayed, for I am your God. I will strengthen you. Yes, I will help you. Yes, I will uphold you with the right hand of my righteousness." | [Bible Hub WEB, Isaiah 41](https://biblehub.com/web/isaiah/41.htm) | **Match, exact.** |
| 9 | Isa 55:7 | "Let the wicked forsake his way, and the unrighteous man his thoughts. Let him return to Yahweh, and he will have mercy on him, to our God, for he will freely pardon." | [Bible Hub WEB, Isaiah 55](https://biblehub.com/web/isaiah/55.htm) | **Match, exact.** |
| 10 | Isa 6:2 | "Above him stood the seraphim. Each one had six wings. With two he covered his face. With two he covered his feet. With two he flew." | [Bible Hub WEB, Isaiah 6](https://biblehub.com/web/isaiah/6.htm) | **Match, exact.** |
| 11 (boss seq.) | Isa 2:4 | "They shall beat their swords into plowshares, and their spears into pruning hooks." | [Bible Hub WEB, Isaiah 2](https://biblehub.com/web/isaiah/2.htm) | **Match** — verbatim substring of full v.4, clean clause boundary. |
| 11 (boss seq.) | Isa 6:8 | "Here I am. Send me!" | [Bible Hub WEB, Isaiah 6](https://biblehub.com/web/isaiah/6.htm) | **Match, exact.** |
| 11 (boss seq.) | Isa 40:31 | "They will mount up with wings like eagles." | [Bible Hub WEB, Isaiah 40](https://biblehub.com/web/isaiah/40.htm) | **Match** — verbatim substring of full v.31, clean clause boundary. |
| 11 (boss seq.) | Isa 55:8 | "For my thoughts are not your thoughts, and your ways are not my ways," | [Bible Hub WEB, Isaiah 55](https://biblehub.com/web/isaiah/55.htm) | **Match** — verbatim, cleanly trimmed before the "says Yahweh" attribution clause (labeled as the quotation itself, consistent with how item 1 (Isa 1:18) and other items already trim attribution tags). |
| 12 | Isa 55:9 | "For as the heavens are higher than the earth, so are my ways higher than your ways, and my thoughts than your thoughts." | [Bible Hub WEB, Isaiah 55](https://biblehub.com/web/isaiah/55.htm) | **Match, exact.** |

## Quote-nesting formatting note (item 6, Isa 38:1) — not a wording discrepancy

Identical finding to `docs/qa/isaiah-easy-verbatim-qa.md`'s item 7, since both tiers quote the same
already-approved Isa 38:1 text verbatim from `docs/content/isaiah.md`. Bible Hub's raw HTML
(`&#8220;Yahweh says, &#8216;Set your house in order, for you will die, and not live.&#8217;&#8221;`)
decodes to outer quote = double, inner quote = single; independently cross-checked against
ebible.org's rendering, which confirms the same nesting direction. The brief's text has this
reversed (outer single, inner double). Word-for-word content is identical — only the quote
*character type* at each nesting level differs, the same class of issue already resolved as an
ingestion-formatting note (not a text fix) in `docs/qa/genesis-easy-verbatim-qa.md` item 2. **No
wording change was made to the brief.** Recorded here as an instruction for whoever writes
`docs/ingest/isaiah-hard-tiers.sql`: the `verse_text` for item 6 (Isa 38:1) must use WEB's actual
quote nesting (outer `"`, inner `'`), not the brief's display-formatting quote characters.

This same reversed nesting originates in `docs/content/isaiah.md` (medium tier) and is out of
scope to edit here (a different brief than the two assigned to this QA pass); flagged for the
orchestrating session to track, same as noted in the easy-tier QA report.

## Answer-key / recall-blank check (not just text)

- All 9 regular items and boss items 10/12 are typed fill-in-blank; confirmed each item's stated
  blank and answer are drawn verbatim from the quoted verse text at the correct position (e.g.
  item 1's blank "from before my ___" → **eyes** matches 1:16's "...from before my eyes."; item
  9's blank "he will freely ___" → **pardon** matches 55:7's "...he will freely pardon."). No
  mismatch found between any stated answer and its source verse.
- Boss sequence (item 11)'s stated correct order — Isa 2:4 → 6:8 → 40:31 → 55:8 — was checked
  against each quotation's chapter number: 2 → 6 → 40 → 55 is correctly ascending, matching the
  item's framing ("the order they occur across the book of Isaiah").

## Exclusion check (Isaiah 7:14, 9:6-7, ch. 53)

Grepped `docs/content/isaiah-hard.md` for `7:14`, `9:6`, `9:7`, and any reference to chapter 53.
All four matches found are in the brief's own exclusion-statement prose (design-intent section,
pivotal-passages section, Contested Territory section, and the acceptance-criteria checkbox) —
**none is an actual challenge-item reference**. Every challenge item's citation is Isa 1, 2, 6, 12,
38, 40, 41, or 55. **Exclusion confirmed to hold.**

## Conclusion

**`pass`.** All 13 distinct verse references underlying this tier's 12 items independently
re-verified against Bible Hub (a source not previously used as a verse-text source for this
brief), with zero wording discrepancies — including the eight verses this tier newly promotes to
standalone graded-item status (1:16, 2:3, 6:2, 6:4, 6:5, 12:4, 40:29, 55:7, 55:9), which the
theological review flagged for priority in this pass. One quote-character nesting formatting note
recorded for item 6 (Isa 38:1) — not a text-content error, and not fixed in the brief per this
project's established precedent for this class of issue; flagged for the ingestion step instead.
Combined with the theological review's own multi-source verification (ebible.org + BibleGateway +
targeted Bible Hub commentary checks), every challenge-ready verse in this tier has now been
checked against at least three independent live sources. `docs/content/isaiah-hard.md` is eligible
for ingestion (verse-text QA only — ingestion also requires the `verse_text` for item 6 to use
WEB's actual quote-nesting characters, per the note above).
