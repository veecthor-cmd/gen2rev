# Verbatim-Text QA — 1 Samuel (World 9)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of every
challenge-ready verse, distinct from and in addition to theological review
(`docs/reviews/1-samuel-review.md`).

Brief checked: `docs/content/1-samuel.md`. Per the theological review's §1, some verse groups were
single-source (ebible.org only); 1 Sam 16:7, 16:13, 17:45, and 17:49-50 were already two-source
(ebible.org + biblegateway.com). Per the QA §3 process: single-source rows were checked against a
second source (Bible Hub WEB); the already-two-source rows were checked against a third, independent
source (Bible Hub WEB). 1 Sam 16:7 was additionally double-checked given the documented truncation
caught during theological review (an initial ebible.org extraction returned only the verse's first
sentence).

## Verse-by-verse results

| Verse(s) | Brief text basis | Sources used for this QA pass | Result |
|---|---|---|---|
| 1 Sam 3:4-5 | Single source (ebible.org) | Bible Hub WEB (`/web/1_samuel/3.htm`, verses 1-10) | Match — exact |
| 1 Sam 3:9 | Single source (ebible.org) | Bible Hub WEB | **Cosmetic difference only.** Source renders this as a quote-within-a-quote: `"...that you shall say, 'Speak, Yahweh; for your servant hears.'"` (nested single quotes around the line Eli tells Samuel to say). The brief renders the whole line as one continuous quotation without the inner nested quote marks. Wording is identical; only the nested-quotation punctuation differs. No correction made — this is a quote-style/nesting convention, not a wording change, and matches how the brief handles other embedded quotations elsewhere in the project. |
| 1 Sam 3:10 | Single source (ebible.org) | Bible Hub WEB | Match — exact |
| 1 Sam 8:5 | Single source (ebible.org) | Bible Hub WEB (`/web/1_samuel/8.htm`, verses 4-8) | Match — exact |
| 1 Sam 8:7 | Single source (ebible.org) | Bible Hub WEB | Match — exact |
| 1 Sam 10:1 | Single source (ebible.org) | Bible Hub WEB (`/web/1_samuel/10.htm`) | Match — exact |
| 1 Sam 15:22 | Single source (ebible.org) | Bible Hub WEB (`/web/1_samuel/15.htm`, verses 20-23) | Match — quoted portion matches exactly |
| 1 Sam 16:7 (documented truncation issue at theological review) | Two sources already (ebible.org + biblegateway.com, after an initial ebible.org pull returned only the first sentence) | Bible Hub WEB full-range re-fetch (verses 6-13) — third source, explicitly requested to include the full sentence | Match — exact, full two-sentence verse present ("Don't look on his face... I don't see as man sees. For man looks at the outward appearance, but Yahweh looks at the heart.") |
| 1 Sam 16:13 | Two sources already (ebible.org + biblegateway.com) | Bible Hub WEB — third source; ebible.org re-fetched directly to confirm verse boundary | **Real discrepancy found and corrected.** The brief quoted 16:13 as a complete verse (labeled `(WEB)`, not `(WEB, trimmed)`, no ellipsis) but omitted the verse's final sentence, "So Samuel rose up and went to Ramah." Both Bible Hub and a direct ebible.org re-fetch confirm that sentence is part of verse 13 in WEB. **Corrected** `docs/content/1-samuel.md` to include the full sentence — see Corrections section below. |
| 1 Sam 17:45 | Two sources already (ebible.org + biblegateway.com) | Bible Hub WEB (`/web/1_samuel/17.htm`, verses 44-51) — third source | Match — exact |
| 1 Sam 17:49 | Two sources already (ebible.org + biblegateway.com) | Bible Hub WEB — third source | Match — exact |
| 1 Sam 17:50 | Two sources already (ebible.org + biblegateway.com) | Bible Hub WEB — third source | Match — exact |
| 1 Sam 18:1 | Single source (ebible.org) | Bible Hub WEB (`/web/1_samuel/18.htm`, verses 1-4) | Match — exact |
| 1 Sam 18:3 | Single source (ebible.org) | Bible Hub WEB | Match — exact |
| 1 Sam 24:6 | Single source (ebible.org) | Bible Hub WEB (`/web/1_samuel/24.htm`, verses 4-7, 16-17) | Match — exact |
| 1 Sam 24:17 | Single source (ebible.org) | Bible Hub WEB | Match — exact |

## Cosmetic vs. real differences

- **Cosmetic:** 1 Sam 3:9 — nested-quotation-mark style difference only (see table above), no
  wording change.
- **Real:** 1 Sam 16:13 — omission of the verse's final sentence, presented as if it were a complete
  quotation. Corrected (see below).

## Corrections made

**1 Samuel 16:13** — `docs/content/1-samuel.md`, Pivotal Scene 3.

- **Before:** `1 Samuel 16:13 (WEB): "Then Samuel took the horn of oil and anointed him in the middle of his brothers. Then Yahweh's Spirit came mightily on David from that day forward."`
- **After:** `1 Samuel 16:13 (WEB): "Then Samuel took the horn of oil and anointed him in the middle of his brothers. Then Yahweh's Spirit came mightily on David from that day forward. So Samuel rose up and went to Ramah."`
- **Why:** the brief labeled this verse as a plain `(WEB)` quotation (not `(WEB, trimmed)`, no
  ellipsis), implying a complete verse, but it silently dropped the verse's final sentence. Confirmed
  against two independent sources (Bible Hub WEB and a direct ebible.org re-fetch) that "So Samuel
  rose up and went to Ramah." is part of verse 13. Corrected to include the full verse text so the
  brief's own labeling convention (no "trimmed" tag = complete quote) is accurate.

## Overall verdict: **pass-with-corrections**

14 of 16 challenge-ready verse groups in `docs/content/1-samuel.md` matched source exactly. One
(1 Sam 3:9) has a cosmetic nested-quotation-style difference with no wording impact, left as-is. One
(1 Sam 16:13) had a real, unflagged omission — the verse was presented as complete but was missing
its final sentence — and has been corrected directly in the brief to match the verified WEB source
text. No unresolved items remain.
