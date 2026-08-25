# Verbatim-Text QA — Job (World 18)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/job-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/job.md`.

Both the brief and the theological review already used ebible.org and biblegateway.com (the
pivotal passages two-source, the rest single-source-only via ebible.org). Per this pass's
independence requirement, every challenge-ready verse below was re-fetched from a source neither
of those prior passes used: **Bible Hub** (`biblehub.com/web/<book>/<chapter>.htm`), read directly
from the rendered page (not summarized) via a live browser session to rule out any extraction
artifact. Where a discrepancy was found, it was additionally cross-checked against a second new
source, **Bible Study Tools** (`biblestudytools.com/web/<book>/<chapter>.html`), before treating it
as confirmed.

## Verse-by-verse results

| Ref | Prior sources (per brief/review) | This pass's source | Result |
|---|---|---|---|
| Job 1:1-3 | ebible.org | Bible Hub | Match, word-for-word |
| Job 1:8 | ebible.org | Bible Hub + Bible Study Tools | **Mismatch — see Corrections** |
| Job 1:12 | ebible.org | Bible Hub | Match, word-for-word |
| Job 1:20-21 | ebible.org + biblegateway (pivotal) | Bible Hub | Match, word-for-word |
| Job 1:22 | ebible.org + biblegateway (pivotal) | Bible Hub | Match, word-for-word |
| Job 2:9-10 | ebible.org | Bible Hub | Match, word-for-word |
| Job 19:25 | ebible.org + biblegateway (pivotal) | Bible Hub | Match, word-for-word |
| Job 19:26-27 | ebible.org + biblegateway (pivotal) | Bible Hub | Match for quoted portion (see note 1) |
| Job 38:1-3 | ebible.org + biblegateway (pivotal) | Bible Hub | Match, word-for-word |
| Job 38:4-7 | ebible.org + biblegateway (pivotal) | Bible Hub | Match, word-for-word |
| Job 38:16-17 | ebible.org | Bible Hub | Match, word-for-word |
| Job 38:31-32 | ebible.org | Bible Hub | Match, word-for-word |
| Job 39:19-20 | ebible.org | Bible Hub | Match, word-for-word |
| Job 39:22 | ebible.org | Bible Hub | Match, word-for-word |
| Job 42:2-3 | ebible.org + biblegateway (pivotal) | Bible Hub | Match for quoted (trimmed, ellipsis-marked) portion |
| Job 42:5-6 | ebible.org + biblegateway (pivotal) | Bible Hub | Match, word-for-word |
| Job 42:7 | ebible.org | Bible Hub | Match for quoted (trimmed) portion |
| Job 42:10 | ebible.org | Bible Hub | Match, word-for-word |
| Job 42:12 | ebible.org | Bible Hub | Match, word-for-word (see note 2) |
| Job 42:16-17 | ebible.org | Bible Hub | Match, word-for-word |

## Notes

1. **Job 19:26-27** — the brief's quote ends at "My eyes will see, and not as a stranger." The WEB
   text of v.27 continues in the same verse with a new sentence, "My heart is consumed within me."
   The quoted portion is word-for-word accurate and stops at a natural sentence boundary; it is just
   not marked "(trimmed)" the way other partial quotes in this brief are (e.g. Job 42:2-3, 42:7).
   Labeling-consistency observation only, same pattern as Genesis QA's note on Gen 3:6 — no
   player-facing text is inaccurate. No correction made.
2. **Job 42:12** — labeled "(WEB, trimmed)" in the brief, but the quoted text is actually the
   complete, untrimmed verse ("So Yahweh blessed the latter end of Job more than his beginning. He
   had fourteen thousand sheep, six thousand camels, one thousand yoke of oxen, and a thousand
   female donkeys." — matches Job 42:12 in full). The opposite labeling issue from note 1: marked
   trimmed when nothing was cut. Cosmetic only — no player-facing text is inaccurate, and an
   over-cautious "(trimmed)" label creates no misleading omission. No correction made.

## Corrections made

**Job 1:8 — real wording discrepancy, corrected.** The brief quoted: "...For there is no one like
him **on** the earth, a blameless and an upright man..." The WEB source text (confirmed via Bible
Hub's rendered page and independently via Bible Study Tools) reads "...For there is no one like him
**in** the earth..." — "in," not "on." This is internally consistent with Job 2:3's parallel line
("there is no one like him in the earth"), which the brief itself quotes correctly elsewhere in the
same book (see Job 2:9-10 entry — 2:3 itself isn't challenge-ready text in this brief, but its
wording confirms the pattern). This is exactly the kind of small-word discrepancy this project's
process is designed to catch — a preposition swap that a two-source review agreeing with itself
wouldn't surface, but a third source did.

`docs/content/job.md`'s Job 1:8 quotation has been corrected from "on the earth" to "in the earth,"
citation unchanged (still Job 1:8, WEB).

## Overall verdict

**pass-with-corrections** — one real wording discrepancy found and corrected (Job 1:8, "on" → "in"
the earth). All other 19 challenge-ready verse blocks in `docs/content/job.md` confirmed
character-for-character accurate against an independent third source (Bible Hub, cross-confirmed
against a fourth source, Bible Study Tools, for the corrected verse). Two cosmetic
labeling-consistency notes recorded above; no further action needed on those.
