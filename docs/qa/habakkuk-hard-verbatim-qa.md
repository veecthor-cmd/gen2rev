# Verbatim-Text QA — Habakkuk, Hard Tier (World 35)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/habakkuk-hard.md`, run 2026-09-03, after theological review
(`docs/reviews/habakkuk-hard-review.md`, `approved`, no changes required).

**Result: `pass`, with 2 corrections made.** All 7 challenge-ready verse lines re-verified against
Bible Hub (WEB) — a source not cited by either the brief's own draft-pull (ebible.org +
biblegateway.com) or its theological review. The underlying WEB wording matched at every item with
zero character-level discrepancies; however, 2 items (Hab 1:3 and Hab 3:19) quoted only part of
their verse without the trim label the same exact trims already carry at the medium tier — fixed
directly in the brief (see Corrections below).

## Verses independently re-checked

100% of challenge-ready verse text checked (7 of 7 regular items; boss item 8 reuses the medium
tier's already-QA'd Hab 2:4 item verbatim and boss item 9 is a reference-order/matching sequence
over already-checked verses with no new quoted text).

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Hab 1:2 | "Yahweh, how long will I cry, and you will not hear? I cry out to you 'Violence!' and will you not save?" | [Bible Hub WEB](https://biblehub.com/web/habakkuk/1.htm) | **Match, full verse.** |
| 2 | Hab 1:3 | "Why do you show me iniquity, and look at perversity? For destruction and violence are before me." | [Bible Hub WEB](https://biblehub.com/web/habakkuk/1.htm) | **Match for the quoted portion; portion is a silent truncation — see Corrections.** Full verse continues "...before me. There is strife, and contention rises up." |
| 3 | Hab 1:4 | "Therefore the law is paralyzed, and justice never prevails; for the wicked surround the righteous; therefore justice comes out perverted." | [Bible Hub WEB](https://biblehub.com/web/habakkuk/1.htm) | **Match, full verse.** |
| 4 | Hab 2:2 | "Yahweh answered me, 'Write the vision, and make it plain on tablets, that he who runs may read it.'" | [Bible Hub WEB](https://biblehub.com/web/habakkuk/2.htm) | **Match, full verse** (words identical; Bible Hub's own quote-nesting differs cosmetically, same as noted in `docs/qa/habakkuk-verbatim-qa.md` note 2). |
| 5 | Hab 2:3 | "For the vision is yet for the appointed time, and it hurries toward the end, and won't prove false. Though it takes time, wait for it, because it will surely come. It won't delay." | [Bible Hub WEB](https://biblehub.com/web/habakkuk/2.htm) | **Match, full verse.** |
| 6 | Hab 2:14 | "For the earth will be filled with the knowledge of Yahweh's glory, as the waters cover the sea." | [Bible Hub WEB](https://biblehub.com/web/habakkuk/2.htm) | **Match, full verse.** |
| 7 | Hab 3:19 | "Yahweh, the Lord, is my strength. He makes my feet like deer's feet, and enables me to go in high places." | [Bible Hub WEB](https://biblehub.com/web/habakkuk/3.htm) | **Match for the quoted portion; portion is a silent truncation — see Corrections.** Full verse continues "...in high places. For the music director, on my stringed instruments." |
| 8 (boss) | Hab 2:4 | Reused verbatim from medium tier | [Bible Hub WEB](https://biblehub.com/web/habakkuk/2.htm) | **Match, full verse.** |

## Method

Fetched raw HTML for Habakkuk 1-3 directly from `biblehub.com/web/habakkuk/<chapter>.htm` (not the
LLM-summarized fetch path) and decoded the verse spans programmatically, so the comparison is
against the source's actual characters rather than a paraphrase.

## Corrections made

Two items quoted a real, natural portion of their verse (the exact wording present is accurate)
but presented it without any indication that the verse continues beyond the quoted text — a silent
truncation, not a labeled trim:

1. **Item 2 (Hab 1:3).** Brief quoted only "Why do you show me iniquity, and look at perversity?
   For destruction and violence are before me." The full WEB verse continues "...before me. There
   is strife, and contention rises up." This is the *exact same trim* already present, labeled
   `(WEB, trimmed)`, and independently QA-confirmed accurate at the medium tier
   (`docs/content/habakkuk.md` line 54, `docs/qa/habakkuk-verbatim-qa.md` note 1) — the hard-tier
   brief reused the trimmed wording but dropped the label. **Fixed:** added an explicit trim label
   to `docs/content/habakkuk-hard.md` item 2, citing the medium-tier precedent and stating what the
   verse's remainder says.
2. **Item 7 (Hab 3:19).** Brief quoted only "Yahweh, the Lord, is my strength. He makes my feet
   like deer's feet, and enables me to go in high places." The full WEB verse continues "...in high
   places. For the music director, on my stringed instruments." Same situation as item 2 — this
   exact trim is already labeled and QA-confirmed at the medium tier (`docs/content/habakkuk.md`
   line 91, `docs/qa/habakkuk-verbatim-qa.md` note 1). **Fixed:** added the same style of explicit
   trim label to `docs/content/habakkuk-hard.md` item 7.

No other item in this brief has any missing text, altered wording, or unlabeled trim — every other
item quotes its verse in full.

## Formatting note (not a discrepancy)

Bible Hub renders quoted speech with curly Unicode quotation marks where the brief uses straight
quotes for its own nested-quote markdown convention (e.g. item 4's "Write the vision..."). Words
are identical in every item; only the glyph style differs. Same cosmetic-rendering finding as
`docs/qa/habakkuk-verbatim-qa.md` note 2 and `docs/qa/genesis-easy-verbatim-qa.md` item 2 — an
ingestion detail, not a wording error.

## Conclusion

**`pass`** (after correction). All 7 challenge-ready verses' actual wording independently
re-verified against Bible Hub with zero wording discrepancies. Two items were missing a trim label
that the identical trim already carries, correctly, at the medium tier — now fixed to match that
precedent. `docs/content/habakkuk-hard.md` is eligible for ingestion (pending only the ingestion
step itself, out of scope for this QA pass).
