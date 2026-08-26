# Verbatim-Text QA — Habakkuk (World 35)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/habakkuk-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/habakkuk.md`.

The theological review (`docs/reviews/habakkuk-review.md` §1) checked Habakkuk 2:4 and 3:17-19
against two sources (ebible.org + BibleGateway); it checked 1:2-4, 2:1-3, and 2:14 against
ebible.org only and flagged those rows for this pass. Per assignment instructions, this pass
fetched every challenge-ready verse — including the already-two-source rows — from a source
neither prior check used: Bible Hub (`biblehub.com/web/<book>/<chapter>.htm`), WEB translation.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Hab 1:2 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Hab 1:3 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion — see note 1 |
| Hab 1:4 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Hab 2:1 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Hab 2:2 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Hab 2:3 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Hab 2:4 | ebible.org + BibleGateway | Bible Hub (3rd source) | Match, word-for-word |
| Hab 2:14 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| Hab 3:17 | ebible.org + BibleGateway | Bible Hub (3rd source) | Match, word-for-word |
| Hab 3:18 | ebible.org + BibleGateway | Bible Hub (3rd source) | Match, word-for-word |
| Hab 3:19 | ebible.org + BibleGateway | Bible Hub (3rd source) | Match for quoted (trimmed) portion — see note 1 |

## Notes

1. **Hab 1:3 and Hab 3:19 — pre-existing trim labels confirmed accurate.** At the start of this QA
   pass, `docs/content/habakkuk.md` already carried uncommitted edits labeling both verses
   `(WEB, trimmed)` (visible in `git diff` prior to this session's changes). This pass's
   independent Bible Hub fetch confirms both labels are accurate, not just present:
   - Hab 1:3 full verse continues "...before me. There is strife, and contention rises up." after
     the brief's quoted portion — a genuine, correctly-labeled trim.
   - Hab 3:19 full verse continues "...in high places. For the music director, on my stringed
     instruments." after the brief's quoted portion — a genuine, correctly-labeled trim.
   No further edit was needed for either verse; this pass only verifies the existing labels.
2. Bible Hub renders reported speech with a flattened single-quote style in places where the brief
   and ebible.org use nested quotes (e.g. Hab 2:2's "Write the vision..."). Words are identical in
   every case checked; treated as cosmetic rendering, not a wording discrepancy (same pattern noted
   in `docs/qa/genesis-verbatim-qa.md` note 3).

## Corrections made

None by this pass. (The two trim labels on Hab 1:3 and Hab 3:19 were already present in the
working copy of the brief before this pass began; this pass confirmed them accurate rather than
introducing them.)

## Overall verdict

**pass** — all 11 challenge-ready verse lines in `docs/content/habakkuk.md` (spanning Habakkuk
1:2-4, 2:1-4, 2:14, 3:17-19) confirmed character-for-character accurate against Bible Hub as an
independent source not used in the theological review. No new corrections needed.
