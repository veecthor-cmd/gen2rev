# Verbatim-Text QA — Ezra (World 15)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/ezra-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/ezra.md`.

Both `docs/content/ezra.md` and `docs/reviews/ezra-review.md` already cite ebible.org and
biblegateway.com (version=WEB) for every scene. For genuine independence, this pass fetched every
challenge-ready verse fresh from **Bible Hub** (`biblehub.com/web/<book>/<chapter>.htm`), a source
not previously cited in this book's brief or review — including the two rows the review flagged
single-source-only (Ezra 6:14-22 and most of 7:1-6/7:27-28), which were prioritized.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Ezra 1:1 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word |
| Ezra 1:3 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word |
| Ezra 1:11 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word (see note 1) |
| Ezra 3:3 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word |
| Ezra 3:11 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word |
| Ezra 3:13 | ebible + biblegateway | Bible Hub (independent) | Match for trimmed portion, honestly marked |
| Ezra 6:14 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match, word-for-word |
| Ezra 6:16 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match, word-for-word |
| Ezra 6:22 | ebible only — **priority** | Bible Hub (2nd, independent source) | Match for trimmed portion, honestly marked |
| Ezra 7:6 | ebible + biblegateway (7:1-6 flagged single-source in review) — **priority** | Bible Hub (independent) | Match for trimmed portion, honestly marked |
| Ezra 7:9 | ebible + biblegateway (cross-checked) | Bible Hub (independent) | Match for trimmed portion, honestly marked |
| Ezra 7:10 | ebible + biblegateway (cross-checked) | Bible Hub (independent) | Match, word-for-word |
| Ezra 9:3 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word (see note 1) |
| Ezra 9:6 | ebible + biblegateway | Bible Hub (independent) | **Mismatch found — corrected, see below** |
| Ezra 10:1 | ebible + biblegateway | Bible Hub (independent) | Match, word-for-word (see note 1) |

## Notes

1. **Ezra 1:11, 9:3, 10:1** — each is labeled "(WEB, trimmed)" in the brief, but the quoted text is
   in fact the complete verse (no content is missing). This is a labeling-consistency observation,
   same category as Genesis's Gen 3:6 finding — not a wording error, no correction made.
2. Several trimmed quotes in this brief drop a leading narrative/dialogue tag (e.g. Ezra 7:9 drops
   the verse's leading "For" before "on the first day of the first month...") without a leading
   ellipsis mark. This matches an established, consistent editorial convention across this project's
   briefs — dropping short introductory connectives/tags before the substantive quoted text — and is
   not treated as a discrepancy.

## Corrections made

**Ezra 9:6 — real discrepancy found and corrected.** The brief quoted: *"My God, I am ashamed and
blush to lift up my face to you, my God, for our iniquities have increased over our head."* — with
a closing period, presented as if the sentence ended there. The source (confirmed via Bible Hub,
matching ebible.org and biblegateway.com) continues past a comma: *"...for our iniquities have
increased over our head, and our guiltiness has grown up to the heavens."* The brief's quote silently
dropped this second clause — real confession-of-guilt content central to this scene — with no
ellipsis or other mark indicating more text followed in the source, i.e. a silent truncation rather
than an honestly marked trim, the exact category of error `QA_REQUIREMENTS.md` §3 and this task
flag as unacceptable even when small.

**Fix applied to `docs/content/ezra.md`:** added a trailing ellipsis to the existing quote so the
trim is honestly marked, consistent with how leading trims are marked elsewhere in this brief (e.g.
Ezra 3:13's leading "..."). The quote itself was not otherwise reworded, and the citation
(`Ezra 9:6 (WEB, trimmed)`) is unchanged:

> Before: `"...for our iniquities have increased over our head."`
> After: `"...for our iniquities have increased over our head..."`

No other corrections were needed. No wording, word-order, omission-of-a-quoted-word, or
wrong-verse-number discrepancies were found in the other 14 challenge-ready verse blocks checked.

## Overall verdict

**pass-with-corrections** — all 15 challenge-ready verses in `docs/content/ezra.md` confirmed
character-for-character accurate against an independent source (Bible Hub, not previously cited in
this book's brief or review) after one correction (Ezra 9:6, silently-truncated clause, fixed by
honestly marking the existing trim with an ellipsis). `docs/content/ezra.md` was modified as
described above.

Sources used successfully: Bible Hub (`biblehub.com`), World English Bible edition, for all 15
verse blocks. No source was unreachable; no fallback source was needed.
