# Verbatim-Text QA — Judges (World 7)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of every
challenge-ready verse, distinct from and in addition to theological review
(`docs/reviews/judges-review.md`).

Brief checked: `docs/content/judges.md`. All verses in the theological review's §1 were single-source
(ebible.org only) except Judges 21:25 (already two-source: ebible.org + biblegateway.com). Per the
QA §3 process: single-source rows were checked against a second source (Bible Hub WEB); the
already-two-source row (21:25) was checked against a third, independent source (Bible Hub WEB).
Judges 6:36-40 was additionally double-checked given the documented WebFetch paraphrase caught
during authoring.

## Verse-by-verse results

| Verse(s) | Brief text basis | Sources used for this QA pass | Result |
|---|---|---|---|
| Judg 2:14 | Single source (ebible.org) at review | Bible Hub WEB (`/web/judges/2.htm`); re-confirmed with a full-range re-fetch of both Bible Hub and ebible.org (verses 11-19, to rule out truncation) | Match — exact |
| Judg 2:16 | Single source (ebible.org) | Bible Hub WEB; ebible.org full-range re-fetch | Match — exact |
| Judg 2:18-19 (trimmed) | Single source (ebible.org) | Bible Hub WEB; ebible.org full-range re-fetch | Match — brief's ellipsis trim points align exactly with source wording |
| Judg 4:4-5 | Single source (ebible.org) | Bible Hub WEB (`/web/judges/4.htm`) | Match — exact |
| Judg 4:6-7 (trimmed) | Single source (ebible.org) | Bible Hub WEB | Match — trim points align exactly with source wording |
| Judg 4:14-16 (trimmed) | Single source (ebible.org) | Bible Hub WEB | Match — trim points align exactly with source wording |
| Judg 6:14-16 | Single source (ebible.org) | Bible Hub WEB (`/web/judges/6.htm`) | Match — exact |
| Judg 6:37 (part of 6:36-40, documented paraphrase issue during authoring) | Single source (ebible.org), re-fetched during authoring after an initial paraphrase error | Bible Hub WEB full-range (verses 36-40) **and** ebible.org full-range re-fetch (verses 36-40), both requested with an explicit no-summarization instruction | Match — exact, in both independent re-fetches. No paraphrase or truncation found in either source; the authoring-time issue is fully resolved in the current brief text. |
| Judg 7:2 (trimmed) | Single source (ebible.org) | Bible Hub WEB (`/web/judges/7.htm`) | Match — quoted portion ("The people who are with you..." onward) matches exactly |
| Judg 7:20-21 (trimmed) | Single source (ebible.org) | Bible Hub WEB | Match — trim points align exactly with source wording |
| Judg 21:25 | Two sources already (ebible.org + biblegateway.com) | Bible Hub WEB (`/web/judges/21.htm`) — third, independent source | Match — exact |

## Cosmetic vs. real differences

No differences of any kind (cosmetic or real) were found in Judges. All quoted text, including
ellipsis-trim boundaries, matches the WEB source exactly across all sources checked.

## Corrections made

None. No discrepancies were found in the Judges brief.

## Overall verdict: **pass**

All 12 challenge-ready verse groups in `docs/content/judges.md` were independently re-verified
character-for-character, including a specific extra-careful re-check of Judges 6:36-40 (the passage
with a documented WebFetch paraphrase issue during authoring). No corrections were needed. The brief
is clear to proceed to the next stage of the content pipeline as far as this QA §3 pass is concerned.
