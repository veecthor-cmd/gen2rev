# Verbatim-Text QA — 1 Chronicles (World 13)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/1-chronicles-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-08.
Brief checked: `docs/content/1-chronicles.md`.

For verses the theological review already cross-checked against two sources (ebible.org +
biblegateway.com), this pass re-fetched from a third, independent source (Bible Hub,
`biblehub.com/web/1_chronicles/<chapter>.htm`). For verses the review flagged single-source-only
(ebible.org only), this pass fetched from a second, different source (Bible Hub). Per the brief's
own scope note, this book has only 10 challenge-ready verse items total (one of them a bare
three-word genealogy fragment), so this is a small, complete check — every item was verified.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| 1 Chr 1:1 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| 1 Chr 21:1 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| 1 Chr 21:18 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| 1 Chr 21:26 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| 1 Chr 22:5 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| 1 Chr 22:7-8 | ebible.org only | Bible Hub (2nd source) | Match for quoted portion (see note 1) |
| 1 Chr 22:14 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| 1 Chr 28:9-10 | ebible.org + biblegateway | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| 1 Chr 28:20 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| 1 Chr 29:14 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |

## Notes

1. **1 Chr 22:7-8** — the brief quotes this as plain "(WEB)", not "(WEB, trimmed)" the way most
   other partial quotes in this brief are marked. Source verse 7 in full is: `David said to Solomon
   his son, 'As for me, it was in my heart to build a house to the name of Yahweh my God.'` The
   brief's quote starts directly at the enclosed direct speech ("As for me...") and omits the
   narrator frame ("David said to Solomon his son,"), then continues into the whole of verse 8
   verbatim. The quoted words themselves are character-for-character accurate; only the
   "(trimmed)" label is arguably missing given the narrator-frame omission, consistent with how
   21:18 (which similarly drops a leading "Then") is labeled. This is a labeling-consistency
   observation, not a wording error — no player-facing text is inaccurate. No correction made;
   flagged for the content-authoring team's awareness only.
2. All other trimmed quotes (21:18, 22:5, 22:14, 28:9-10, 28:20) are correctly marked
   "(WEB, trimmed)" in the brief, and in every case the retained wording matches Bible Hub's text
   exactly, with only expected boundary effects (a capitalized first word where a lowercase
   conjunction was cut, mid-sentence ellipses over the omitted material). All cosmetic.
3. Quote-mark style (straight vs. curly) and punctuation-at-boundary rendering differences between
   Bible Hub and the brief were observed but are cosmetic, not wording discrepancies.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies
were found in any of the 10 challenge-ready verse items checked.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/1-chronicles.md` confirmed
character-for-character accurate against source (Bible Hub as third/second independent source, per
`QA_REQUIREMENTS.md` §3). No corrections needed. `docs/content/1-chronicles.md` was not modified.
