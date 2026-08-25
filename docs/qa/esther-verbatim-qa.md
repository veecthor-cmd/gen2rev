# Verbatim-Text QA — Esther (World 17)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/esther-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/esther.md`.

Both `docs/content/esther.md` and `docs/reviews/esther-review.md` already cite ebible.org and
biblegateway.com (version=WEB) for most verses. For genuine independence, this pass fetched every
challenge-ready verse fresh from **Bible Hub** (`biblehub.com/web/<book>/<chapter>.htm`), a source
not previously cited in this book's brief or review — including the two scenes the review flagged
single-source-only (Esther 2 and Esther 7), which were prioritized.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Esther 2:7 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match, word-for-word (see note 1) |
| Esther 2:15 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match for trimmed portion, honestly marked |
| Esther 2:17 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match, word-for-word |
| Esther 3:5-6 | ebible + biblegateway | Bible Hub (independent) | Match for trimmed portion, honestly marked |
| Esther 3:9 | ebible + biblegateway | Bible Hub (independent) | **Mismatch found — corrected, see below** |
| Esther 3:13 | ebible + biblegateway | Bible Hub (independent) | **Mismatch found — corrected, see below** |
| Esther 4:13-14 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word |
| Esther 4:16 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word |
| Esther 7:3-4 | ebible only — **priority** | Bible Hub (2nd, independent source) | **Mismatch found — corrected, see below** |
| Esther 7:9-10 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match for trimmed portion, honestly marked |
| Esther 9:22 | ebible + biblegateway | Bible Hub (independent) | Match for trimmed portion, honestly marked |
| Esther 9:26 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word (see note 2) |
| Esther 9:28 | ebible + biblegateway | Bible Hub (independent) | Match for trimmed portion, honestly marked |

## Notes

1. **Esther 2:7** is labeled "(WEB, trimmed)" but the quoted text is in fact the complete verse — a
   labeling-consistency observation, same category as Genesis's Gen 3:6 finding, not a wording error.
   No correction made.
2. **Esther 9:26** — Bible Hub renders the closing punctuation as `'Purim', from the word 'Pur.'`
   (comma outside the closing single quote), while the brief renders it as `'Purim,' from the word
   'Pur.'` (comma inside). This is a quote-nesting/punctuation-style difference between sources, not
   a wording discrepancy — the words are identical. Cosmetic, matching the pattern
   `docs/qa/genesis-verbatim-qa.md` note 3 already documented for this project. No correction made.

## Corrections made

**Three real discrepancies found, all the same shape — corrected.** In each case the brief's quote
ended with a closing period/quote mark at a point where the source verse actually continues with an
additional clause or sentence, with no ellipsis marking the cut — a silent truncation rather than an
honestly marked trim:

- **Esther 3:9** — brief stopped at "...into the hands of those who are in charge of the king's
  business." The source continues: "...to bring it into the king's treasuries." (confirmed via
  Bible Hub, matching ebible.org/biblegateway.com).
- **Esther 3:13** — brief stopped at "...which is the month Adar." The source continues: "...and to
  plunder their possessions." This omission is more than cosmetic: this book's own theological
  review (`docs/reviews/esther-review.md` §3) specifically cites "the text's own repetition that the
  Jews took no plunder despite the decree permitting it" as part of its self-defense reading of
  chapter 9's violence — but Esther 3:13 is the one challenge-ready verse that establishes the decree
  *permitted* plunder in the first place, and the brief's own quote of it silently dropped exactly
  that clause. Restored rather than just ellipsis-marked, given its role in the brief's own
  documented reasoning.
- **Esther 7:3-4** — brief stopped at "...to be destroyed, to be slain, and to perish." The source
  continues with a full additional sentence: "But if we had been sold for male and female slaves, I
  would have held my peace, although the adversary could not have compensated for the king's loss."

**Fix applied to `docs/content/esther.md`:**
- Esther 3:9 and Esther 7:3-4: added a trailing ellipsis to each quote so the trim is honestly
  marked, consistent with how leading and mid-quote trims are marked elsewhere in this brief.
  Quoted wording otherwise unchanged; citations (`(WEB, trimmed)`) unchanged.
- Esther 3:13: restored the dropped clause ", and to plunder their possessions" to the existing
  quote (rather than only ellipsis-marking it), given the clause's direct relevance to this book's
  own contested-territory reasoning. Citation (`Esther 3:13 (WEB, trimmed)`) unchanged — the quote
  is still a trim relative to the full verse (it still omits the opening "Letters were sent by
  couriers..." framing's minor connectives, already accurately represented).

No other corrections were needed. No wording, word-order, omission-of-a-quoted-word, or
wrong-verse-number discrepancies were found in the other 8 challenge-ready verse blocks checked.

## Overall verdict

**pass-with-corrections** — all 13 challenge-ready verse blocks in `docs/content/esther.md`
confirmed character-for-character accurate against an independent source (Bible Hub, not previously
cited in this book's brief or review) after three corrections (Esther 3:9, 3:13, 7:3-4 — silently-
truncated trims; 3:13's dropped clause restored in full given its role in the brief's own contested-
territory analysis, the other two honestly marked with an ellipsis). `docs/content/esther.md` was
modified as described above.

Sources used successfully: Bible Hub (`biblehub.com`), World English Bible edition, for all 13
verse blocks. No source was unreachable; no fallback source was needed.
