# Verbatim-Text QA — Psalms (World 19)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/psalms-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-25.
Brief checked: `docs/content/psalms.md`.

Both the brief and the theological review already gave every verse in this book full two-source
treatment (ebible.org + biblegateway.com), the most thorough source-coverage of any book reviewed
so far in this project. Per this pass's independence requirement, every challenge-ready verse below
was re-fetched from a source neither prior pass used: **Bible Hub**
(`biblehub.com/web/psalms/<chapter>.htm`), read directly from the rendered page (not summarized) via
a live browser session, to rule out any extraction artifact and to independently confirm the review's
note about a false-positive "copyrighted lyrics" refusal some fetch tools threw on Psalms 23/51/121 —
no such refusal occurred with this tool/source combination.

## Verse-by-verse results

| Ref | Prior sources (per brief/review) | This pass's source | Result |
|---|---|---|---|
| Psalm 1:1-6 (full) | ebible.org + biblegateway | Bible Hub | Match, word-for-word |
| Psalm 23, superscription + vv.1-6 (full) | ebible.org + biblegateway | Bible Hub | Match, word-for-word |
| Psalm 51, superscription + vv.1, 2, 10, 17 | ebible.org + biblegateway | Bible Hub | Match, word-for-word |
| Psalm 100:1-5 (full) | ebible.org + biblegateway | Bible Hub | Match, word-for-word (see note 1) |
| Psalm 121, superscription + vv.1-8 (full) | ebible.org + biblegateway | Bible Hub | Match, word-for-word |
| Psalm 150:1-6 (full) | ebible.org + biblegateway | Bible Hub | Match, word-for-word |

## Notes

1. **Psalm 100** — Bible Hub numbers this psalm's opening superscription ("A Psalm of thanksgiving.")
   as part of verse 1, prepended to "Shout for joy to Yahweh, all you lands!" The brief does not
   quote this superscription anywhere (unlike Psalms 23, 51, and 121, which each have an explicit
   "Superscription:" line). This is a scope choice, not a wording error — the brief's v.1 text
   ("Shout for joy to Yahweh, all you lands!") is itself word-for-word accurate; it simply omits the
   short superscription as challenge-ready content, the same way Psalm 150 (which also carries no
   separate superscription line in this brief, and none is present as distinct text in the WEB
   source either) is handled. No correction needed.
2. **Verse/chapter numbering** — confirmed no drift between Bible Hub's verse numbers and the
   brief's for any of the four psalms that carry a superscription (23, 51, 121; Psalms 1 and 100 also
   checked). Specifically for Psalm 51, Bible Hub bundles the superscription into its numbered
   verse 1 (same convention as Psalms 23/100/121), but its numbered verses 2, 10, and 17 line up
   exactly with the brief's v.2, v.10, and v.17 — no off-by-one issue.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, superscription, or wrong-verse-number
discrepancies were found in any of the 6 pivotal psalms' challenge-ready text.

## Overall verdict

**pass** — all challenge-ready verses (and superscriptions, where quoted) in `docs/content/psalms.md`
confirmed character-for-character accurate against an independent third source (Bible Hub), which
also confirms none of the prior two-source review's matches were an artifact of both sources sharing
a common upstream error. No corrections needed. `docs/content/psalms.md` was not modified.
