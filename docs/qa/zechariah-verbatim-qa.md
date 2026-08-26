# Verbatim-Text QA — Zechariah (World 38)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/zechariah-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/zechariah.md`.

Per `docs/reviews/zechariah-review.md` §1, six of the seven pivotal passages were already
cross-checked during theological review against two sources (ebible.org + biblegateway.com,
`version=WEB`); passage 7 (Zechariah 8:16-17) was flagged there as **single-source only**
(ebible.org). This pass re-fetched every passage from a source not yet used in this book's
review chain — Bible Hub (`biblehub.com/web/zechariah/<chapter>.htm`) — read directly via
browser page text (not an AI-summarized fetch) to avoid any risk of the fetch step itself
introducing formatting artifacts. Passage 7 was checked first and given the most scrutiny, per
the assignment's instruction to prioritize it.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Zech 1:1-6 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word (see note 1) |
| Zech 3:1-5 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Zech 4:1-7 | ebible + biblegateway | Bible Hub (3rd source) | Match for quoted content (see note 2) |
| Zech 5:1-4 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Zech 7:8-10 | ebible + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Zech 8:3-8 | ebible + biblegateway | Bible Hub (3rd source) | Match for quoted content (see note 2) |
| Zech 8:16-17 | ebible only (single-source, flagged priority) | Bible Hub (2nd source) | **Mismatch found and corrected — see note 3** |

## Notes

1. **Zech 1:6** — the brief renders the verse as one continuous quotation; Bible Hub's rendering
   inserts an opening smart-quote before "Then they repented..." mid-verse, reflecting a shift in
   who is being quoted (the narrator's report of the fathers' own words) within the same verse.
   Words are identical in both; this is the same "quote-nesting style difference between sources"
   already documented as cosmetic in `docs/qa/genesis-verbatim-qa.md` note 3. No correction needed.
2. **Zech 4:6-7 and 8:3-8** — several sub-quotations in these passages ("Not by might, nor by
   power, but by my Spirit," "Grace, grace, to it!," "The City of Truth," "The Holy Mountain," and
   the verse-boundary split across 8:3/8:4-5/8:7-8) show the same cosmetic quote-nesting/
   verse-grouping difference as note 1 — Bible Hub nests an inner quotation mark around short
   embedded exclamations and groups some adjacent verses under one continuous quotation span,
   while the brief presents each verse as its own separately closed quotation. Words are identical
   in every instance checked. No correction needed. (This also independently reconfirms the
   `zechariah-review.md` §1 note that the brief's verse-by-verse split of 8:3 aligns with standard
   versification, not a re-split introduced by the brief.)
3. **Zech 8:17 — real discrepancy, corrected.** The brief quoted v.17 as ending "...for all these
   are things that I hate." (full stop, end of quotation). Both Bible Hub and a second check against
   ebible.org (re-fetched this pass to confirm before editing, since this is the flagged
   single-source row) show the verse continuing past that point: "...for all these are things that
   I hate," **says Yahweh.** — with "says Yahweh" belonging to v.17 under standard WEB versification
   (v.18 begins a new, unrelated sentence, "The word of Yahweh of Armies came to me"). This is a
   silent truncation, not a labeled trim (contrast with how the brief labels other trimmed quotes
   elsewhere in this project, e.g. Genesis 12:2-3 "(trimmed)") — exactly the kind of discrepancy this
   pass is meant to catch. **Corrected in `docs/content/zechariah.md`**: v.17 now reads `"and let
   none of you devise evil in your hearts against his neighbor, and love no false oath; for all
   these are things that I hate," says Yahweh.` matching the source exactly. The citation
   (Zechariah 8:16-17) is unchanged; only the missing closing words were restored.

## Scope-exclusion verification (independent, not trusted from the brief's own claim)

- Confirmed by direct inspection of `docs/content/zechariah.md`: every "Challenge-ready verses"
  block draws only from Zechariah 1:1-6, 3:1-5, 4:1-7, 5:1-4, 7:8-10, 8:3-8, and 8:16-17 — all
  within chapters 1-8. No passage or verse reference anywhere in the brief falls in chapters 9-14.
- Confirmed no `verse_ref` anywhere in the brief (including the Difficulty Ladder examples) is
  Zechariah 9:9, 11:12-13, 12:10, or 13:7. None of these four references appear in the file at all.
- As a further independent cross-check (not required, but a natural byproduct of fetching chapter 3
  directly from Bible Hub for this pass): confirmed Zechariah 3:8-10 (the "Branch" material the
  brief also excludes) does exist starting immediately after the verses this brief uses, i.e. the
  brief's stated cutoff at v.5 is precisely where the excluded "Branch" content begins — consistent
  with the brief's and review's stated reasoning.

## Corrections made

One. Zechariah 8:17 — restored the omitted trailing "says Yahweh" to match source exactly (see
note 3 above). No other wording, word-order, omission, or wrong-verse-number discrepancies were
found in any of the 33 challenge-ready verses checked across the 7 passages.

## Overall verdict

**pass-with-corrections** — one real, non-cosmetic discrepancy (a silent truncation at the end of
Zechariah 8:17) was found and corrected directly in `docs/content/zechariah.md`. All other
challenge-ready verses in the brief are confirmed character-for-character accurate against an
independent source (Bible Hub, not previously used for this book's six two-source-verified
passages; the second source overall for the previously single-source-flagged 8:16-17). All named
exclusions (Zechariah 9:9, 11:12-13, 12:10, 13:7, and the chapters 9-14 scope boundary generally)
independently confirmed absent.
