# Verbatim-Text QA — Ruth (World 8)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of every
challenge-ready verse, distinct from and in addition to theological review
(`docs/reviews/ruth-review.md`).

Brief checked: `docs/content/ruth.md`. Per the theological review's §1, most verse groups were
single-source (ebible.org only); Ruth 1:16-17 and Ruth 4:13-17 were already two-source
(ebible.org + biblegateway.com). Per the QA §3 process: single-source rows were checked against a
second source (Bible Hub WEB); the already-two-source rows were checked against a third,
independent source (Bible Hub WEB). Ruth 1:16 was additionally double-checked given the documented
truncation caught during authoring (an initial ebible.org extraction dropped the second sentence of
1:16, caught and re-fetched before the brief was finalized).

## Verse-by-verse results

| Verse(s) | Brief text basis | Sources used for this QA pass | Result |
|---|---|---|---|
| Ruth 1:8-9 (trimmed) | Single source (ebible.org) | Bible Hub WEB (`/web/ruth/1.htm`, verses 6-17) | Match — trim points align exactly with source wording |
| Ruth 1:16 (documented truncation issue during authoring) | Two sources already (ebible.org + biblegateway.com), re-fetched during authoring after an initial truncation | Bible Hub WEB full-range re-fetch **and** ebible.org full-range re-fetch (verses 8-17), both requested with an explicit no-truncation instruction, specifically confirming both sentences of 1:16 are present | Match — exact, full two-sentence text present in both independent re-fetches ("Don't urge me to leave you... where you stay, I will stay. Your people will be my people, and your God my God.") |
| Ruth 1:17 | Two sources already (ebible.org + biblegateway.com) | Bible Hub WEB — third source | Match — exact |
| Ruth 2:2-3 (trimmed) | Single source (ebible.org) | Bible Hub WEB (`/web/ruth/2.htm`, verses 1-12) | Match — trim points align exactly with source wording |
| Ruth 2:8-9 (trimmed) | Single source (ebible.org) | Bible Hub WEB | Match — trim points align exactly with source wording |
| Ruth 2:11-12 (trimmed) | Single source (ebible.org) | Bible Hub WEB | Match — quoted portion matches exactly |
| Ruth 3:1-2 (trimmed) | Single source (ebible.org) | Bible Hub WEB (`/web/ruth/3.htm`, verses 1-11) | Match — trim points align exactly with source wording |
| Ruth 3:9 (trimmed) | Single source (ebible.org) | Bible Hub WEB | Match — quoted portion matches exactly |
| Ruth 3:11 | Single source (ebible.org) | Bible Hub WEB | Match — exact |
| Ruth 4:9-10 (trimmed) | Single source (ebible.org) | Bible Hub WEB (`/web/ruth/4.htm`, verses 9-22) | Match — trim points align exactly with source wording |
| Ruth 4:13-14 (trimmed) | Two sources already (ebible.org + biblegateway.com) | Bible Hub WEB — third source | Match — trim points align exactly with source wording |
| Ruth 4:17 | Two sources already (ebible.org + biblegateway.com) | Bible Hub WEB — third source | Match — exact, including the source's unusual punctuation (period placed after the closing quotation mark in "saying, 'A son is born to Naomi'.") |
| Ruth 4:21-22 | Single source (ebible.org) | Bible Hub WEB | Match — exact |

## Cosmetic vs. real differences

No differences of any kind (cosmetic or real) were found in Ruth. All quoted text, including
ellipsis-trim boundaries and the unusual quote/period ordering in 4:17, matches the WEB source
exactly across all sources checked.

## Corrections made

None. No discrepancies were found in the Ruth brief.

## Overall verdict: **pass**

All 12 challenge-ready verse groups in `docs/content/ruth.md` were independently re-verified
character-for-character, including a specific extra-careful re-check of Ruth 1:16 (the verse with a
documented truncation issue during authoring). No corrections were needed. This was the cleanest of
the three books in this assignment — no wording, word-order, or omission discrepancies of any kind
were found. The brief is clear to proceed to the next stage of the content pipeline as far as this
QA §3 pass is concerned.
