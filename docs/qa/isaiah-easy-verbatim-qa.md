# Verbatim-Text QA — Isaiah, Easy Tier (World 23)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/isaiah-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/isaiah-easy-review.md`, `approved`, no changes required).

**Result: `pass`.** All 11 distinct verses underlying this tier's 12 items (9 regular + 3 boss;
the boss sequence's direct quotations reuse verses 6:3 and 6:8 already checked as items 4 and 5)
were independently re-verified against **Bible Hub** (biblehub.com, WEB), a source not previously
cited for this brief — `docs/reviews/isaiah-review.md` (medium tier) and
`docs/reviews/isaiah-easy-review.md` both used only ebible.org and BibleGateway. Bible Hub's raw
page HTML (not just its rendered text) was pulled directly to confirm exact source characters.
Zero wording discrepancies found. One quote-character formatting note (not a wording
discrepancy) is recorded below, consistent with the project's existing precedent for this class of
issue (`docs/qa/genesis-easy-verbatim-qa.md` item 2).

## Verses independently re-checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Isa 1:18 | "'Come now, and let's reason together,' says Yahweh: 'Though your sins are as scarlet, they shall be as white as snow. Though they are red like crimson, they shall be as wool.'" | [Bible Hub WEB, Isaiah 1](https://biblehub.com/web/isaiah/1.htm) | **Match.** Source uses two double-quoted spans ("Come now..." / "Though your sins..."); brief demotes to single quotes for its own outer-wrapper formatting — same convention already established in `docs/qa/genesis-easy-verbatim-qa.md` item 2. Content identical. |
| 2 | Isa 1:17 | "Learn to do well. Seek justice. Relieve the oppressed. Defend the fatherless. Plead for the widow." | [Bible Hub WEB, Isaiah 1](https://biblehub.com/web/isaiah/1.htm) | **Match, exact.** |
| 3 | Isa 2:4 | "He will judge between the nations, and will decide concerning many peoples. They shall beat their swords into plowshares, and their spears into pruning hooks. Nation shall not lift up sword against nation, neither shall they learn war any more." | [Bible Hub WEB, Isaiah 2](https://biblehub.com/web/isaiah/2.htm) | **Match, exact.** |
| 4 | Isa 6:3 | "One called to another, and said, 'Holy, holy, holy, is Yahweh of Armies! The whole earth is full of his glory!'" | [Bible Hub WEB, Isaiah 6](https://biblehub.com/web/isaiah/6.htm) | **Match.** Same single-level quote-demotion formatting as item 1. |
| 5 | Isa 6:8 | "I heard the Lord's voice, saying, 'Whom shall I send, and who will go for us?' Then I said, 'Here I am. Send me!'" | [Bible Hub WEB, Isaiah 6](https://biblehub.com/web/isaiah/6.htm) | **Match, exact.** |
| 6 | Isa 12:2 | "Behold, God is my salvation. I will trust, and will not be afraid; for Yah, Yahweh, is my strength and song; and he has become my salvation." | [Bible Hub WEB, Isaiah 12](https://biblehub.com/web/isaiah/12.htm) | **Match, exact.** |
| 7 | Isa 38:1 | "In those days Hezekiah was sick and near death. Isaiah the prophet, the son of Amoz, came to him, and said to him, 'Yahweh says, "Set your house in order, for you will die, and not live."'" | [Bible Hub WEB, Isaiah 38](https://biblehub.com/web/isaiah/38.htm) (raw HTML confirmed) | **Match on wording; quote-nesting formatting note — see below.** |
| 8 | Isa 40:31 | "but those who wait for Yahweh will renew their strength. They will mount up with wings like eagles. They will run, and not be weary. They will walk, and not faint." | [Bible Hub WEB, Isaiah 40](https://biblehub.com/web/isaiah/40.htm) | **Match, exact.** |
| 9 | Isa 41:10 | "Don't you be afraid, for I am with you. Don't be dismayed, for I am your God. I will strengthen you. Yes, I will help you. Yes, I will uphold you with the right hand of my righteousness." | [Bible Hub WEB, Isaiah 41](https://biblehub.com/web/isaiah/41.htm) | **Match, exact.** |
| 10 | Isa 55:6 | "Seek Yahweh while he may be found. Call on him while he is near." | [Bible Hub WEB, Isaiah 55](https://biblehub.com/web/isaiah/55.htm) | **Match, exact.** |
| 12 | Isa 55:9 | "For as the heavens are higher than the earth, so are my ways higher than your ways, and my thoughts than your thoughts." | [Bible Hub WEB, Isaiah 55](https://biblehub.com/web/isaiah/55.htm) | **Match, exact.** |

Item 11 (boss ordering sequence) reuses the already-checked quotations from items 4 and 5 ("Holy,
holy, holy..." and "Here I am. Send me!"); its other two beats ("Isaiah sees the Lord seated high
on a throne," "A seraph touches Isaiah's lips with a live coal") are narrative captions describing
Isa 6:1 and 6:6-7, not presented as direct quotation, so no verbatim-text check applies to them —
consistent with how prior easy-tier briefs (Genesis, Psalms) use boss-sequence captions.

## Quote-nesting formatting note (item 7, Isa 38:1) — not a wording discrepancy

Bible Hub's raw HTML (`&#8220;Yahweh says, &#8216;Set your house in order, for you will die, and
not live.&#8217;&#8221;`) decodes to: outer quote = double (`"`), inner quote = single (`'`).
Independently cross-checked against ebible.org's rendering of the same verse, which confirms the
same nesting direction (outer double, inner single). The brief's text has this **reversed**: outer
= single (`'Yahweh says, ...'`), inner = double (`"Set your house...not live."`).

Word-for-word content is identical between brief and source — every word occupies the same
position relative to the same quote boundaries; only the *type* of quote character marking each
nesting level differs. This is the same class of issue already identified and resolved as an
ingestion-formatting note (not a text fix) in `docs/qa/genesis-easy-verbatim-qa.md` item 2 ("brief's
single quotes are correct *brief* formatting... but ingestion must store WEB's actual double-quote
characters"). Following that precedent, **no wording change was made to the brief** — this is
recorded here as an instruction for whoever writes `docs/ingest/isaiah-easy-tiers.sql`: the
`verse_text` for item 7 (Isa 38:1) must use WEB's actual quote nesting (outer `"`, inner `'`), not
the brief's display-formatting quote characters.

**This same reversed nesting originates in `docs/content/isaiah.md` (medium tier), which this
brief explicitly copies verbatim** — it is not introduced by this tier. It is out of scope for
this QA pass to edit `docs/content/isaiah.md` (a different brief than the two assigned here), but
the same ingestion note applies there too; flagging for the orchestrating session to track
separately.

## Answer-key / format check (not just text)

- All 9 regular items and boss items 10/12 are multiple-choice; confirmed each item's stated
  "Correct" answer is the option that matches the quoted verse text verbatim (e.g. item 8's
  correct answer "eagles" matches 40:31's "wings like eagles"; item 3's "plowshares" matches
  2:4's "swords into plowshares"). No mismatch found between any correct-answer label and its
  source verse.
- Boss sequence (item 11) order was checked against the verse references cited (6:1 → 6:3 → 6:6-7
  → 6:8): this is the correct chronological order within Isaiah 6's narrative.

## Exclusion check (Isaiah 7:14, 9:6-7, ch. 53)

Grepped `docs/content/isaiah-easy.md` for `7:14`, `9:6`, `9:7`, and any reference to chapter 53.
All five matches found are in the brief's own exclusion-statement prose (design-intent section,
pivotal-passages section, Contested Territory section, and the acceptance-criteria checkbox) —
**none is an actual challenge-item reference**. Every challenge item's citation is Isa 1, 2, 6, 12,
38, 40, 41, or 55. **Exclusion confirmed to hold.**

## Conclusion

**`pass`.** All 11 distinct verses underlying this tier's 12 items independently re-verified
against Bible Hub (a source not previously cited for this brief), with zero wording
discrepancies. One quote-character nesting formatting note recorded for item 7 (Isa 38:1) — not a
text-content error, and not fixed in the brief per this project's established precedent for this
class of issue; flagged for the ingestion step instead. Combined with the theological review's own
two-source verification (ebible.org + BibleGateway), every challenge-ready verse in this tier has
now been checked against at least three independent live sources. `docs/content/isaiah-easy.md` is
eligible for ingestion (verse-text QA only — ingestion also requires the `verse_text` for item 7 to
use WEB's actual quote-nesting characters, per the note above).
