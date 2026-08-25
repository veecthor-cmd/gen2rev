# Verbatim-Text QA — Jeremiah (World 24)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/jeremiah-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/jeremiah.md`.

Both prior checks (drafting-time self-check and theological review, `docs/reviews/jeremiah-review.md`
§1) used ebible.org and biblegateway.com (WEB). This pass used a genuinely different source not yet
cited for this book — **Bible Hub** (`biblehub.com/web/jeremiah/<chapter>.htm`), WEB translation —
fetched directly (raw HTML, not summarized) for every chapter containing challenge-ready text:
1, 7, 18, 28, 31, 38, 39. Where a discrepancy against Bible Hub's own rendering was found (see Notes),
ebible.org's raw page was re-fetched directly as a tiebreaker, since that source was already
established as reliable in the theological review.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Jer 1:5 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Jer 1:6-7 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Jer 1:9-10 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Jer 1:19 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word (see note 1) |
| Jer 7:3-4 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Jer 7:9-11 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Jer 7:12 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Jer 18:2-4 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Jer 18:6 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word (see note 1) |
| Jer 28:2-4 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Jer 28:9 | biblegateway + ebible | Bible Hub (3rd source) + ebible.org re-check | Match against canonical text (see note 2 — a real Bible Hub-only transcription variance was found and resolved) |
| Jer 28:10-11 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word (see note 1) |
| Jer 28:15-17 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Jer 31:31 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted portion (see note 3) |
| Jer 31:33 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Jer 31:34 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Jer 38:9 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Jer 38:10 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word (see note 4) |
| Jer 38:13 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Jer 39:1-2 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word |
| Jer 39:11-12 | biblegateway + ebible | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| Jer 39:17-18 | biblegateway + ebible | Bible Hub (3rd source) | Match, word-for-word (see note 1) |

## Exclusion checks

- **Jeremiah 39:6-7** (Zedekiah's sons killed before him, his own eyes put out — excluded to match
  2 Kings' parallel exclusion at 2 Kings 25:6-7): confirmed **absent** from every challenge-ready verse
  block in `docs/content/jeremiah.md`. Confirmed via Bible Hub raw fetch that 39:6-7 does exist in the
  source text as expected (so this is a deliberate content-selection exclusion, not a missing-verse
  error) — it simply never appears as quoted challenge-ready text anywhere in the brief.

## Notes

1. Several verses (Jer 1:19, 1:6-7, 18:6, 28:10-11, 39:17-18) show the same quote-nesting style
   difference already documented in `docs/qa/genesis-verbatim-qa.md` note 3 — Bible Hub sometimes
   flattens nested quotations to a single quote-mark style, while the brief and ebible.org use nested
   single/double quotes for reported speech. Words are identical in every case checked; cosmetic
   rendering only, not a wording discrepancy.
2. **Jeremiah 28:9** — Bible Hub's own page (`biblehub.com/web/jeremiah/28.htm`) renders this verse as
   "As for prophet who prophesies of peace..." — omitting "the" before "prophet." This does not match
   the brief's quote ("As for **the** prophet who prophesies of peace..."). Because this looked like a
   possible real discrepancy, it was cross-checked directly against a raw fetch of
   `ebible.org/web/JER28.htm` (the same canonical WEB source already used in drafting and in the
   theological review) via `curl`, which reads: "As for **the** prophet who prophesies of peace, when
   the word of the prophet happens, then the prophet will be known, that Yahweh has truly sent him." —
   matching the brief exactly. **Conclusion: this is an isolated transcription variance in Bible Hub's
   own copy of the WEB text, not an error in the brief.** The brief's wording is confirmed correct
   against the canonical/already-verified source. No correction made to `docs/content/jeremiah.md`.
   Flagged in full per this pass's instruction to log every discrepancy found, however small, even
   when it doesn't require a brief edit.
3. **Jeremiah 31:31** — the brief quotes this verse as a complete sentence ending in a period ("...with
   the house of Israel, and with the house of Judah.'"), but in source the sentence continues with a
   comma into verse 32 ("...with the house of Judah, not according to the covenant that I made with
   their fathers..."). This is the same "punctuation adjustment from trimming at a natural boundary"
   pattern already documented in `docs/qa/genesis-verbatim-qa.md` note 2 (Gen 22:14) — the words quoted
   are identical to source, only the brief isn't labeled "(trimmed)" the way most of this book's other
   partial quotes are. Labeling-consistency observation only, no wording error, no player-facing text
   is inaccurate. No correction made; flagged for the content-authoring team's awareness only.
4. **Jeremiah 38:10** — the brief labels this quote "(trimmed)," but the quoted text is actually the
   verse's complete, untrimmed text word-for-word ("Then the king commanded Ebedmelech the Ethiopian,
   saying, 'Take from here thirty men with you, and take up Jeremiah the prophet out of the dungeon,
   before he dies.'"). This is the mirror-image of note 3 above — a labeling inconsistency, not a
   wording error. No correction made; flagged for the content-authoring team's awareness only.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies were
found in any of the 22 challenge-ready verse blocks checked. The one apparent discrepancy (Jer 28:9,
note 2) traced to a Bible Hub-specific transcription variance, not an error in the brief, and was
resolved by cross-checking a second, already-established source (ebible.org) directly.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/jeremiah.md` confirmed character-for-character
accurate against source (Bible Hub as third independent source, with ebible.org used as a direct
tiebreaker re-check for one apparent Bible Hub-only variance, per `QA_REQUIREMENTS.md` §3). No
corrections needed. `docs/content/jeremiah.md` was not modified. Exclusion of Jeremiah 39:6-7
confirmed.
