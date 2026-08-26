# Verbatim-Text QA — Malachi (World 39)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/malachi-review.md`. Malachi is the final book of the entire 39-book Old
Testament expansion, so this pass gave every verse full individual scrutiny rather than any
sampling shortcut, consistent with `QA_REQUIREMENTS.md` §3's 100%-coverage requirement.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/malachi.md`.

Per `docs/reviews/malachi-review.md` §1, every challenge-ready verse in this brief was already
cross-checked during theological review against at least two, and for several passages all three,
of ebible.org, biblegateway.com, and biblehub.com (all `version=WEB`). None of this book's rows
were single-source. Since biblehub.com had already been used for most passages here (unlike in
Zechariah), this pass used a genuinely different fourth source not cited anywhere in the review
chain: **bible.com (YouVersion), World English Bible — American English Edition ("WEBUS")**,
fetched directly via browser page text (not an AI-summarized fetch, to avoid the fetch step itself
introducing formatting artifacts). WEBUS is confirmed to be a WEB variant (retains "Yahweh," public
domain, explicitly labeled "World English Bible, American English Edition, without Strong's
Numbers"), not a different translation.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Mal 1:6 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |
| Mal 1:7 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |
| Mal 1:8 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |
| Mal 1:11 | ebible + biblegateway | bible.com WEBUS (3rd/4th source) | Match, word-for-word |
| Mal 3:1 | ebible + biblegateway | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:2 | ebible + biblegateway | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:3 | ebible + biblegateway | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:6 | biblegateway + biblehub | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:8 | biblegateway + biblehub | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:9 | biblegateway + biblehub | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:10 | biblegateway + biblehub | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:16 | biblegateway + biblehub | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:17 | biblegateway + biblehub | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 3:18 | biblegateway + biblehub | bible.com WEBUS (3rd source) | Match, word-for-word |
| Mal 4:1 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |
| Mal 4:2 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |
| Mal 4:3 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |
| Mal 4:4 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |
| Mal 4:5 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |
| Mal 4:6 | ebible + biblegateway + biblehub | bible.com WEBUS (4th source) | Match, word-for-word |

## Notes

1. No wording, word-order, omission, or wrong-verse-number discrepancies were found anywhere in
   this book. Every one of the 20 challenge-ready verses across the 6 pivotal passages matched the
   independent source exactly, including punctuation-relevant details that would matter for a
   fill-in-blank format (e.g. "storehouse" in 3:10, "Elijah the prophet" in 4:5, the exact list of
   who is turned to whom in 4:6).
2. Verified the brief's stated excerpting pattern holds: passage 1 (1:6-11) uses verses 6, 7, 8, 11
   and correctly omits 9-10/12-14 at clean verse boundaries (no mid-verse splicing); passage 2
   (3:1-3) uses 1-3 in full and stops cleanly before v.4; passage 3 (3:6-10) uses 6, 8, 9, 10 and
   cleanly skips 7 (the "how shall we return?" exchange) without altering the wording of the verses
   it does use. This matches the pattern already noted in `docs/reviews/malachi-review.md` §1 and
   is independently reconfirmed here against the 4th source.
3. No quote-nesting or verse-grouping cosmetic differences of the kind seen in the Genesis and
   Zechariah QA passes were observed in this book's verses — bible.com WEBUS's quotation-mark
   placement matches the brief's own quotation boundaries verse-for-verse in every passage checked.

## Scope-exclusion verification (independent, not trusted from the brief's own claim)

- Confirmed by direct inspection of `docs/content/malachi.md`: every "Challenge-ready verses" block
  draws only from Malachi 1:6-11, 3:1-3, 3:6-10, 3:16-18, 4:1-3, and 4:4-6.
- Confirmed no `verse_ref` anywhere in the brief (including the Difficulty Ladder examples) is
  Malachi 1:2-3 or any verse within 2:10-16. Neither range appears in the file at all — chapter 2
  is not referenced anywhere in the brief's challenge-ready content.
- As a further independent cross-check (a natural byproduct of fetching Malachi 1 in full from
  bible.com for this pass): confirmed Malachi 1:2-3 ("I have loved you... but Esau I hated...")
  does exist immediately before the verses this brief uses (1:6 onward), i.e. the brief's excluded
  material is exactly where claimed and the brief's first challenge-ready verse (1:6) begins after
  it, not overlapping it.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies
were found in any of the 20 challenge-ready verse blocks checked.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/malachi.md` confirmed character-for-character
accurate against an independent fourth source (bible.com WEBUS, not previously cited anywhere in
this book's review chain) per `QA_REQUIREMENTS.md` §3. No corrections needed. `docs/content/malachi.md`
was not modified. All named exclusions (Malachi 1:2-3, 2:10-16) independently confirmed absent.

As the final book of the 39-book Old Testament expansion, this closes the last outstanding
verbatim-text QA pass in the sequence — both Wave 3 books assigned to this session (Zechariah,
Malachi) now have a completed independent QA report.
