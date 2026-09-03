# Verbatim-Text QA — Nehemiah, Hard Tier (World 16)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/nehemiah-hard.md`, run 2026-09-03, after theological review
(`docs/reviews/nehemiah-hard-review.md`, `approved`).

**Independent source used:** [Bible Hub, WEB](https://biblehub.com/web/) (biblehub.com/web/nehemiah/&lt;ch&gt;.htm)
— World English Bible specifically, a source genuinely distinct from ebible.org and biblegateway.com,
both of which were already cited (as a double-sourced pair, for every item) in
`docs/reviews/nehemiah-hard-review.md` §1.

**Result: `pass-with-corrections`.** 6 of 8 challenge-ready verses matched exactly. Two items
(Nehemiah 2:1 and Nehemiah 13:22) silently dropped part of their verse's text with no trim label —
both fixed directly in the brief (see below). Items 9-10 (boss sequence and MC) quote no new verse
text in this brief — they reuse `medium`'s already-verified difficulty-ladder content.

## Verses independently re-checked

| Item | Verse | Brief's text | Bible Hub (WEB) | Result |
|---|---|---|---|---|
| 1 | Neh 1:1 | "The words of Nehemiah the son of Hacaliah. Now in the month Chislev, in the twentieth year, as I was in Susa the palace," | [biblehub.com/web/nehemiah/1.htm](https://biblehub.com/web/nehemiah/1.htm) | **Match**, including "Susa" (not the archaic "Shushan"). Confirmed complete — chapter 1 has only 11 verses and the trailing comma is the true end of verse 1 (the sentence continues into verse 2). |
| 2 | Neh 1:11 | "...and grant him mercy in the sight of this man.' Now I was cup bearer to the king." | [biblehub.com/web/nehemiah/1.htm](https://biblehub.com/web/nehemiah/1.htm) | **Match.** Verse-boundary-checked directly: chapter 1 ends at verse 11, and "Now I was cup bearer to the king." is confirmed to be the closing sentence of verse 11 itself (there is no verse 12), not a separate/unnumbered continuation. Brief's leading "..." correctly labels the trim of the verse's opening prayer clause. |
| 3 | Neh 2:1 | "In the month Nisan, in the twentieth year of Artaxerxes the king, when wine was before him, I picked up the wine, and gave it to the king." | [biblehub.com/web/nehemiah/2.htm](https://biblehub.com/web/nehemiah/2.htm) | **Mismatch found (silent truncation) — corrected.** Verse-boundary-checked against 2:1-3 listed individually: verse 1 continues **"...and gave it to the king. Now I had not been sad before in his presence."** — the brief silently dropped this second sentence, with no trim label. |
| 4 | Neh 4:6 | "So we built the wall; and all the wall was joined together to half its height, for the people had a mind to work." | [biblehub.com/web/nehemiah/4.htm](https://biblehub.com/web/nehemiah/4.htm) | **Match**, confirmed complete. |
| 5 | Neh 6:15 | "So the wall was finished in the twenty-fifth day of Elul, in fifty-two days." | [biblehub.com/web/nehemiah/6.htm](https://biblehub.com/web/nehemiah/6.htm) | **Match**, confirmed complete. |
| 6 | Neh 8:4 | "Ezra the scribe stood on a pulpit of wood, which they had made for the purpose; and beside him stood Mattithiah, Shema, Anaiah, Uriah, Hilkiah, and Maaseiah, on his right hand..." | [biblehub.com/web/nehemiah/8.htm](https://biblehub.com/web/nehemiah/8.htm) | **Match, character-by-character.** Trailing "..." correctly labels the trim (verse continues with the names standing on Ezra's left hand); retained text is verbatim. |
| 7 | Neh 9:2 | "The offspring of Israel separated themselves from all foreigners and stood and confessed their sins and the iniquities of their fathers." | [biblehub.com/web/nehemiah/9.htm](https://biblehub.com/web/nehemiah/9.htm) | **Match**, confirmed complete. |
| 8 | Neh 13:22 (recall, blank inlined) | "I commanded the Levites that they should purify themselves, and that they should come and keep the gates, to sanctify the ___ day." → **Sabbath** | [biblehub.com/web/nehemiah/13.htm](https://biblehub.com/web/nehemiah/13.htm) | **Mismatch found (silent truncation) — corrected.** Verse-boundary-checked against 13:21-23 listed individually: verse 22 continues **"...to sanctify the Sabbath day. Remember me for this also, my God, and spare me according to the greatness of your loving kindness."** — the brief presented "day." as the end of the verse with no ellipsis or trim label, silently omitting the second sentence. The blanked word ("Sabbath") itself was correct. |

## Discrepancies found and fixed

**Item 3, Neh 2:1** — the brief quoted only the first sentence of the verse ("...gave it to the
king.") with no trim marker, but WEB's verse 1 continues with "Now I had not been sad before in his
presence." (confirmed against verses 2:1-3 individually — this sentence belongs to verse 1, not
verse 2).

**Fix applied** in `docs/content/nehemiah-hard.md`, item 3: restored the missing sentence to the
quoted verse text and noted the correction in the citation. The recall blank ("Nisan") and answer
are unaffected.

**Item 8, Neh 13:22** — the brief's recall format ended the quote at "...to sanctify the ___ day."
with no ellipsis, but WEB's verse 22 continues with a full second sentence ("Remember me for this
also, my God...") that was silently omitted.

**Fix applied** in `docs/content/nehemiah-hard.md`, item 8: added a trailing "..." to the quoted
text to correctly label the trim, and noted the omitted sentence in the citation for clarity. The
blanked word ("Sabbath") and answer are unaffected.

## Conclusion

**`pass-with-corrections`.** 6 of 8 challenge-ready verses matched Bible Hub's WEB text exactly with
no issues. Two items (2:1 and 13:22) had real silent-truncation discrepancies — both fixed directly
in `docs/content/nehemiah-hard.md` per this report. Eligible for ingestion per `QA_REQUIREMENTS.md`
§3 now that both corrections are applied. Note: this brief's theological review (§1) claimed every
item was double-sourced and matched exactly — that review did not catch either silent truncation
found here, underscoring why the independent verbatim-text QA pass is a distinct, required check
even after a clean theological-review verdict.
