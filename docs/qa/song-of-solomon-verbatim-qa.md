# Verbatim-Text QA — Song of Solomon (World 22)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/song-of-solomon-review.md`, including its 2026-08-25 addendum resolving the
whole-book escalation (Kachi Okere approved the brief as scoped — see that addendum). This QA pass
was blocked behind that escalation resolving and is now unblocked per the addendum's final line.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/song-of-solomon.md`.

Given this book's sensitivity, the theological review checked **every** challenge-ready verse
against two sources (ebible.org + biblegateway.com) rather than the single-source-then-flag pattern
used for lower-risk books. This pass re-fetched every challenge-ready verse from a source neither
prior check used — Bible Hub (`biblehub.com/web/songs/<chapter>.htm`) — with raw-HTML inspection
used to resolve one discrepancy found (see note 1).

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Song 2:7 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Song 3:5 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word (including the comma difference vs. 2:7 — see note 2) |
| Song 8:4 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Song 2:10-13 | ebible.org + biblegateway | Bible Hub (3rd source) | Match for wording; quote-mark placement differs (see note 3) |
| Song 2:16 (full verse, trim-boundary check) | ebible.org + biblegateway | Bible Hub (3rd source) | Match — trim boundary independently confirmed (see note 4) |
| Song 8:6-7 | ebible.org + biblegateway | Bible Hub (3rd source) | **Discrepancy found in 8:6 — see note 1.** 8:7 matches word-for-word. |

## Notes

1. **Song of Solomon 8:6 — "Yah" vs. "Yahweh" (WEB-printing edition conflict).** The brief quotes
   this verse ending "...Its flashes are flashes of fire, a very flame of Yah." Bible Hub's WEB
   printing of the same verse instead reads "...a very flame of Yahweh." This was confirmed by
   inspecting Bible Hub's raw HTML directly (not just an AI-summarized read) to rule out a
   transcription artifact — the raw page genuinely prints "Yahweh," in the "World English Bible"
   column, immediately following the "Solomon" speaker heading for verse 6. To resolve which
   reading is the brief's actual source text, this pass also independently re-fetched (raw HTML,
   not relying on the theological review's prior read) both of the review's original two sources:
   ebible.org's raw HTML (`eng-web/SNG08.htm`, the URL ebible.org redirects to) prints "a very flame
   of Yah." and biblegateway.com's WEB rendering likewise reads "a very flame of Yah" (with a
   footnote explaining "Yah" as a shortened form of "Yahweh"). **Two of three independent sources
   (ebible.org, biblegateway.com) agree with the brief's "Yah"; Bible Hub's WEB printing alone reads
   "Yahweh."** This is a genuine cross-edition WEB printing variant — the same category of finding
   as the 2 Kings 19:15 WEB-printing edition conflict this project has previously found — not a
   wording error introduced by the brief. Since the brief's text matches the two sources the
   theological review already used as its primary/canonical pair, and this exact "Yah" vs. divine-
   name ambiguity is already extensively documented in the brief's own Contested Territory section
   (citing TheTorah.com on the *shalhevetyah* dispute), **no correction was made to the brief.**
   Flagged here in full so the discrepancy is on record and not silently resolved.
2. **Song 3:5 vs. 2:7 comma placement.** The brief already notes (in its own text, above the verse
   list) that 8:4 drops the "by the roes... field" clause present in 2:7 and 3:5. This pass also
   confirms a smaller, previously-unremarked difference: 2:7 reads "...that you not stir up, nor
   awaken love..." (comma after "up") while 3:5 reads "...that you not stir up nor awaken love..."
   (no comma) — both independently confirmed against Bible Hub and matching the brief's own
   verbatim rendering of each verse exactly. This is the text as attested (not a transcription
   error in the brief), consistent with the brief's existing framing that these three occurrences
   are not identical strings. No correction needed — the brief already reproduces this correctly.
3. **Song 2:10-13 quote-mark placement.** The brief presents 2:10-13 as one continuous quotation
   (a single open-quote before "Rise up" and one closing quote at the very end, after "come away").
   Bible Hub's per-verse rendering closes the quote at the end of verse 10 ("...come away.'") and
   presents verses 11-13 without re-opening a quote mark. The underlying words are 100% identical in
   sequence and content in both sources — this is a quote-nesting/formatting style difference
   between sources, the same category the Genesis QA pass flagged as cosmetic (see
   `docs/qa/genesis-verbatim-qa.md`, note 3). No correction needed.
4. **Song 2:16 trim-boundary — extra-care check per this pass's specific instructions.** Bible Hub's
   full verse reads: "My beloved is mine, and I am his. He browses among the lilies." This
   independently confirms, from a third source, that the verse's second sentence is exactly "He
   browses among the lilies." and that the brief's trim to "My beloved is mine, and I am his." is a
   clean sentence-boundary cut — not a mid-sentence splice, and not silently including or implying
   any of the excluded clause. Matches the theological review's own confirmation of the same
   boundary (`docs/reviews/song-of-solomon-review.md` §1, §3.3). The brief's labeled exclusion note
   is accurate.

## Corrections made

None. The one substantive discrepancy found (note 1) is a cross-edition WEB printing variant on a
single word, where the brief's text matches 2 of 3 independently-checked sources (including both
sources the theological review used) — not a wording error in the brief. No wording, word-order,
omission, or wrong-verse-number discrepancy was found in any of the 6 challenge-ready verse blocks
checked. `docs/content/song-of-solomon.md` was not modified.

## Sources used

Bible Hub (`biblehub.com/web/songs/<chapter>.htm`), raw-HTML-verified — independent third source for
every challenge-ready verse in this brief. To resolve the discrepancy found at 8:6, this pass also
independently re-verified (raw HTML) ebible.org (`eng-web/SNG08.htm`) and biblegateway.com
(`version=WEB`) rather than relying solely on the theological review's prior reads of those two
sources. No source was unreachable; no fallback source was needed.

## Overall verdict

**pass** — no changes were made to `docs/content/song-of-solomon.md`. One apparent discrepancy was
found and investigated (note 1): Song of Solomon 8:6's closing divine-name form ("Yah" vs.
"Yahweh") differs across WEB printings, confirmed via raw-HTML inspection of all three sources
checked. Investigation resolved this in the brief's favor rather than against it — the brief's
"Yah" is supported by 2 of 3 independent sources, including both sources already used in the
theological review, so no correction was warranted; the discrepancy was in the newly-consulted
Bible Hub printing, not in the brief. The Song 2:16 trim boundary — the specific extra-care item
flagged for this book — is independently confirmed exact. All other verses match
character-for-character.
