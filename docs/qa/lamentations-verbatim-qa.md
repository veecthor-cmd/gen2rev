# Verbatim-Text QA — Lamentations (World 25)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/lamentations-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/lamentations.md`.

Both prior checks (drafting-time self-check and theological review, `docs/reviews/lamentations-review.md`
§1) used ebible.org and biblegateway.com (WEB). This pass used a genuinely different source not yet
cited for this book — **Bible Hub** (`biblehub.com/web/lamentations/<chapter>.htm`), WEB translation —
fetched directly (raw HTML, not summarized) for every chapter containing challenge-ready text: 1, 3, 5.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Lam 1:1 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Lam 1:2 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Lam 1:12 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Lam 3:18 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Lam 3:19-20 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Lam 3:21-23 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Lam 3:24 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Lam 5:19 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Lam 5:20 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Lam 5:21 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |

Note: Lam 1:2 in the brief is marked "(trimmed)" and its quoted text — "She weeps bitterly in the
night. Her tears are on her cheeks. Among all her lovers she has no one to comfort her. All her
friends have dealt treacherously with her. They have become her enemies." — is in fact the verse's
complete, untrimmed text word-for-word (confirmed against Bible Hub's full verse 2). Same
labeling-inconsistency pattern as Genesis QA and Jeremiah QA note 4 (mislabeled "(trimmed)" when it
isn't) — not a wording error, no correction needed.

## Exclusion checks

- **Lamentations 5:22** (the book's actual final verse, deliberately excluded from the closing-plea
  passage per the brief's Contested Territory section, due to genuine Hebrew translation ambiguity):
  confirmed **absent** from every challenge-ready verse block in `docs/content/lamentations.md`. The
  closing-plea passage stops cleanly at 5:21. Confirmed via Bible Hub raw fetch that 5:22 does exist in
  the source text as expected ("But you have utterly rejected us. You are very angry against us.") —
  so this is a deliberate, bounded exclusion, not a missing-verse error.
- **Lamentations 2:20 and 4:10** (siege-cannibalism references): confirmed **absent** — this brief's
  three pivotal passages are drawn only from chapters 1, 3, and 5; no challenge-ready verse block
  anywhere in the brief cites chapter 2 or chapter 4 at all, so 2:20 and 4:10 could not appear even
  incidentally.
- **Lamentations 3:1-17** (more intense affliction imagery, excluded per Contested Territory):
  confirmed **absent** from challenge-ready text — the third pivotal passage opens cleanly at 3:18.
  Confirmed via Bible Hub raw fetch that verses 1-17 do contain the described imagery (bear/lion
  attack imagery at 3:10, arrow into the kidneys at 3:13, teeth broken with gravel at 3:16), consistent
  with the brief's own description of what it is excluding.

## Corrections made

None. No wording, word-order, omission, or wrong-verse-number discrepancies were found in any of the
10 challenge-ready verse blocks checked.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/lamentations.md` confirmed character-for-character
accurate against source (Bible Hub as third independent source, per `QA_REQUIREMENTS.md` §3). No
corrections needed. `docs/content/lamentations.md` was not modified. Exclusions of Lamentations 5:22,
2:20, 4:10, and 3:1-17 all confirmed.
