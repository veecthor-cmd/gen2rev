# Verbatim-Text QA — Esther, Easy Tier (World 17)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/esther-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/esther-easy-review.md`, `approved-with-changes`).

**Independent source used:** [Bible Hub](https://biblehub.com) (WEB), cross-checked against a fresh
direct fetch of [ebible.org](https://ebible.org) and [biblegateway.com](https://www.biblegateway.com)
(WEB) where a discrepancy was found — neither source had already been cited for the specific item in
question at the point it was re-checked here, per the review log's citations.

**Result: `pass-with-corrections`.** One real, character-level discrepancy found and corrected (item
8, Esther 7:9). All other items match Bible Hub exactly, including full-quote punctuation.

## Verses checked

| Item | Verse | Brief's text | Bible Hub (WEB) | Result |
|---|---|---|---|---|
| 1 | Esther 2:17 | "The king loved Esther more than all the women, and she obtained favor and kindness in his sight more than all the virgins; so that he set the royal crown on her head, and made her queen instead of Vashti." | Identical | **Match.** |
| 2 | Esther 2:5 | "There was a certain Jew in the citadel of Susa whose name was Mordecai, the son of Jair, the son of Shimei, the son of Kish, a Benjamite." | Identical (source has trailing comma, brief has period — end-of-quote punctuation adaptation only, not a text change) | **Match.** |
| 3 | Esther 3:2 | "All the king's servants who were in the king's gate bowed down and paid homage to Haman, for the king had so commanded concerning him. But Mordecai didn't bow down or pay him homage." | Identical | **Match.** |
| 4 | Esther 3:13 | "Letters were sent by couriers into all the king's provinces, to destroy, to kill, and to cause to perish, all Jews, both young and old, little children and women, in one day..." (labeled trim) | Full verse identical up to the trim point; ellipsis correctly marks the trim | **Match.** |
| 5 | Esther 4:16 | "Go, gather together all the Jews who are present in Susa, and fast for me, and neither eat nor drink three days, night or day. I and my maidens will also fast the same way. Then I will go in to the king, which is against the law; and if I perish, I perish." | Identical | **Match.** |
| 6 | Esther 8:16 | "The Jews had light, gladness, joy, and honor." | Identical | **Match.** |
| 7 | Esther 9:26 | "Therefore they called these days 'Purim,' from the word 'Pur.'" | "Therefore they called these days "Purim", from the word "Pur."" | **Match on wording. Punctuation-convention note:** Bible Hub renders the nested quotation with double quotes and comma-outside-quote ("Purim",); the brief uses single quotes with comma-inside-quote ('Purim,'). Same nested-quote-formatting situation already flagged in `docs/qa/genesis-easy-verbatim-qa.md` item 2 — brief formatting is fine for display; ingestion should use the source's actual punctuation marks per that precedent. Not treated as a text discrepancy. |
| 8 | Esther 7:9-10 (full text, trimmed) | Was: "...one of the eunuchs who were **before** the king, said..." | Bible Hub: "...one of the eunuchs who were **with** the king, said..." — independently re-confirmed against fresh direct fetches of both ebible.org and biblegateway.com, both also read "with the king" | **Mismatch found — corrected.** The theological review's citation of this verse (and the brief's "full text" parenthetical) had "before the king"; all three live WEB sources actually read "with the king." Fixed in `docs/content/esther-easy.md` item 8. The graded/challenge-ready quoted fragment itself ("...So they hanged Haman on the gallows that he had prepared for Mordecai.") was already correct and unaffected — matches Esther 7:10 exactly. |
| 10 | Esther 9:28 (labeled trim) | "...that these days of Purim should not fail from among the Jews, nor their memory perish from their offspring." | Full verse identical up to the trim point | **Match.** |

Item 9 (boss sequence, ordering the 5 scenes by title) contains no direct scripture quotation — not
applicable to verbatim-text QA.

## Correction made

**Item 8, Esther 7:9-10 full-text citation** in `docs/content/esther-easy.md`: changed "one of the
eunuchs who were **before** the king" to "one of the eunuchs who were **with** the king," matching
the actual WEB text confirmed by Bible Hub, a fresh ebible.org fetch, and a fresh biblegateway.com
fetch (three-for-three agreement). This was in the citation's contextual "full text" parenthetical,
not the graded challenge stem itself, but it is presented as verbatim scripture and needed
correcting regardless.

## Conclusion

**`pass-with-corrections`.** One genuine discrepancy found (item 8's citation text) and fixed. All
other verses in this brief, including every already-approved verse reused with a new question angle,
match Bible Hub's WEB text exactly. `docs/content/esther-easy.md` is eligible for ingestion.
