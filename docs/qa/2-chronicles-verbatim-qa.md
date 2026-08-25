# Verbatim-Text QA — 2 Chronicles (World 14)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/2-chronicles-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-08.
Brief checked: `docs/content/2-chronicles.md`.

For verses the theological review already cross-checked against two sources (ebible.org +
biblegateway.com), this pass re-fetched from a third, independent source (Bible Hub,
`biblehub.com/web/2_chronicles/<chapter>.htm`). For verses the review flagged single-source-only
(ebible.org only), this pass fetched from a second, different source (Bible Hub). 2 Chronicles
7:14 is excluded from challenge-ready content entirely per theological review (see the brief's
Contested Territory section) and was correctly not part of this pass's checklist.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| 2 Chr 5:13-14 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| 2 Chr 7:1 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| 2 Chr 7:3 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| 2 Chr 29:1-2 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| 2 Chr 29:3 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| 2 Chr 29:18 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| 2 Chr 34:15 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| 2 Chr 35:1 | ebible.org only | Bible Hub (2nd source) | Match, word-for-word |
| 2 Chr 35:18 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| 2 Chr 36:19-20 | ebible.org only | Bible Hub (2nd source) | Match for quoted (trimmed) portion |
| 2 Chr 36:22 | ebible.org + biblegateway | Bible Hub (3rd source) | Match for quoted (trimmed) portion |
| 2 Chr 36:23 | ebible.org + biblegateway | Bible Hub (3rd source) | Match for quoted (trimmed) portion |

## Notes

1. **2 Chr 29:1-2** — Bible Hub's full verse 1 also includes a clause the brief's trimmed quote
   drops ("...and his mother's name was Abijah the daughter of Zechariah"), consistent with the
   brief's own "(WEB, trimmed)" marking and its ellipsis before jumping to verse 2. The retained
   wording matches exactly.
2. **2 Chr 35:18** — brief drops a trailing clause ("—with the priests, the Levites, and all Judah
   and Israel who were present, and the inhabitants of Jerusalem") after "...as Josiah kept."; this
   is marked "(WEB, trimmed)" and the retained wording matches exactly, including the em-dash
   boundary (cosmetic — the brief simply ends the sentence with a period at the cut point).
3. **2 Chr 36:22** — brief drops "Now" (opening word) and the clause "that Yahweh's word by the
   mouth of Jeremiah might be accomplished," plus the trailing "saying,"; all consistent with the
   "(WEB, trimmed)" marking, retained wording matches exactly.
4. **2 Chr 36:23** — brief drops the mid-sentence clause "Whoever there is among you of all his
   people, Yahweh his God be with him," between "...which is in Judah." and "...let him go up.";
   consistent with the "(WEB, trimmed)" marking, retained wording matches exactly.
5. Quote-mark style (straight vs. curly) and punctuation-at-boundary rendering differences between
   Bible Hub and the brief were observed throughout but are cosmetic, not wording discrepancies.

## Corrections made

None. No real (non-cosmetic) wording, word-order, omission, or wrong-verse-number discrepancies
were found in any of the 12 challenge-ready verse items checked.

## Overall verdict

**pass** — all challenge-ready verses in `docs/content/2-chronicles.md` confirmed
character-for-character accurate against source (Bible Hub as third/second independent source, per
`QA_REQUIREMENTS.md` §3). No corrections needed. `docs/content/2-chronicles.md` was not modified.
