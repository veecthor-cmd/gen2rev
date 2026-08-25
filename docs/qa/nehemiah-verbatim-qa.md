# Verbatim-Text QA — Nehemiah (World 16)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/nehemiah-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/nehemiah.md`.

Both `docs/content/nehemiah.md` and `docs/reviews/nehemiah-review.md` already cite ebible.org and
biblegateway.com (version=WEB). For genuine independence, this pass fetched every challenge-ready
verse fresh from **Bible Hub** (`biblehub.com/web/<book>/<chapter>.htm`), a source not previously
cited in this book's brief or review — including the three rows the review flagged single-source-
only (Nehemiah 4:17, 6:15-16, and 9:1-3/38), which were prioritized.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Nehemiah 1:3 | ebible + biblegateway | Bible Hub (independent) | Match for quoted portion (see note 1) |
| Nehemiah 1:4 | ebible + biblegateway | Bible Hub (independent) | Match, trimmed at verse boundary |
| Nehemiah 2:4-5 | ebible + biblegateway | Bible Hub (independent) | Match for trimmed portion, honestly marked |
| Nehemiah 2:17-18 | ebible + biblegateway | Bible Hub (independent) | Match for quoted portion (see note 1) |
| Nehemiah 4:17 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match, word-for-word |
| Nehemiah 6:15-16 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match, word-for-word |
| Nehemiah 8:3 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word |
| Nehemiah 8:9-10 | ebible + biblegateway (8:9-10 cross-checked) | Bible Hub (independent) | Match for trimmed portion, honestly marked |
| Nehemiah 8:17 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word |
| Nehemiah 9:1-2 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match for trimmed portion, honestly marked |
| Nehemiah 9:3 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match, word-for-word |
| Nehemiah 9:38 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match, word-for-word |
| Nehemiah 13:15 | ebible + biblegateway | Bible Hub (independent) | **Mismatch found — corrected, see below** |
| Nehemiah 13:19 | ebible + biblegateway | Bible Hub (independent) | **Mismatch found — corrected, see below** |
| Nehemiah 13:22 | ebible + biblegateway | Bible Hub (independent) | **Mismatch found — corrected, see below** |

## Notes

1. **Nehemiah 1:3 and 2:17-18** each drop a leading narrative/dialogue tag ("They said to me,"
   before 1:3; "Then I said to them, 'You see the bad situation...burned with fire.'" before the
   "Come, let's build up the wall" portion of 2:17) without a leading ellipsis mark, and are not
   labeled "(trimmed)" even though they are. This matches the same dialogue-tag-dropping convention
   used consistently across this project's briefs (see `docs/qa/ezra-verbatim-qa.md` note 2) and the
   quoted content itself is word-for-word accurate — a labeling-consistency observation, not a
   wording error. No correction made.

## Corrections made

**Three real discrepancies found, all the same shape, in Scene 5 (Nehemiah 13 Sabbath reform) —
corrected.** In each case the brief's quote ended with a closing period/quote mark at a point where
the source verse actually continues with an additional clause or sentence, and the brief's own
"(trimmed)" label was not backed by any ellipsis marking the cut — a silent truncation rather than
an honestly marked trim:

- **Nehemiah 13:15** — brief stopped at "...on the Sabbath day." The source continues: "...and I
  testified against them in the day in which they sold food." (confirmed via Bible Hub, matching
  ebible.org/biblegateway.com).
- **Nehemiah 13:19** — brief stopped at "...until after the Sabbath." The source continues: "I set
  some of my servants over the gates, so that no burden should be brought in on the Sabbath day."
- **Nehemiah 13:22** — brief stopped at "...to sanctify the Sabbath day." The source continues:
  "Remember me for this also, my God, and spare me according to the greatness of your loving
  kindness."

**Fix applied to `docs/content/nehemiah.md`:** added a trailing ellipsis to each of the three quotes
so the trims are honestly marked, consistent with how leading trims are marked elsewhere in this
brief. The quoted wording itself was not otherwise changed, and all three citations (`Nehemiah
13:15/13:19/13:22 (WEB, trimmed)`) are unchanged.

No other corrections were needed. No wording, word-order, omission-of-a-quoted-word, or
wrong-verse-number discrepancies were found in the other 12 challenge-ready verse blocks checked.

## Overall verdict

**pass-with-corrections** — all 15 challenge-ready verses in `docs/content/nehemiah.md` confirmed
character-for-character accurate against an independent source (Bible Hub, not previously cited in
this book's brief or review) after three corrections in Scene 5 (Nehemiah 13:15, 13:19, 13:22 —
silently-truncated trims, fixed by honestly marking each with an ellipsis). `docs/content/nehemiah.md`
was modified as described above.

Sources used successfully: Bible Hub (`biblehub.com`), World English Bible edition, for all 15
verse blocks. No source was unreachable; no fallback source was needed.
