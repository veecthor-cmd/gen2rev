# Verbatim-Text QA — 2 Kings, Hard Tier (World 12)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed, restored,
corrected, or newly inlined in `docs/content/2-kings-hard.md`, run 2026-08-20, after theological
review (`docs/reviews/2-kings-hard-review.md`, `approved-with-changes`) and after all required and
recommended fixes were applied to the brief, **with particular attention to item 6's corrected WEB
edition/citation**, per the review's explicit finding (§6.1, "blocking") that this verse's text
conflicted with the approved `medium` brief and needed resolving before ingestion.

**Result: `pass`.** All corrected and newly-inlined verses re-verified against BibleGateway (WEB) —
independent of ebible.org, the primary drafting source used for this brief's originally-new verses —
with zero character-level discrepancies, including item 6's corrected 2 Kings 19:15 reading.
Per the review's §6.4 finding, live WEB sources disagree on 19:15 across printings (see the dedicated
section below); this pass used BibleGateway `version=WEB`, which renders "Yahweh" and currently
matches the approved `medium` brief's reading, consistent with Open Decision #1 and this project's
established convention. Already-approved verses reused from `docs/content/2-kings.md` (items 4, 6, 7,
9, and the boss-sequence items 13-15) are not re-litigated where their text is unchanged from that
approved brief; they carry forward its existing `pass` status.

## Verses independently re-checked (corrected or newly inlined per review §6.1/§6.2/§6.8)

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 2 | 2 Kings 2:12 (trimmed, label added) | "Elisha saw it, and he cried, 'My father, my father, the chariots of Israel and its horsemen!' He saw him no more..." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+2%3A9-15&version=WEB) | **Match.** Full verse: "Elisha saw it, and he cried, 'My father, my father, the chariots of Israel and its horsemen!' He saw him no more. Then he took hold of his own clothes and tore them in two pieces." The brief's trailing ellipsis correctly marks the now-omitted final sentence, resolving the review's Finding §6.2 (previously presented as if it were the complete verse). |
| 5 | 2 Kings 17:7 (trimmed, newly inlined) | "It was so because the children of Israel had sinned against Yahweh their God, who brought them up out of the land of Egypt from under the hand of Pharaoh king of Egypt, and had feared other gods." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+17%3A7%2C18%3B+2+Kings+19%3A1%2C14-15&version=WEB) | **Match, exact.** Verse continues with a comma into v8 ("and had walked in the statutes of the nations..."), so the brief's period at "other gods." is a correct trim boundary, not an alteration of the quoted words. |
| 6 | **2 Kings 19:15 (corrected reading, newly inlined)** | "Yahweh, the God of Israel, who are enthroned above the cherubim, you are the God, even you alone, of all the kingdoms of the earth." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+17%3A7%2C18%3B+2+Kings+19%3A1%2C14-15&version=WEB) | **Match — "who are enthroned above the cherubim" confirmed as the current live BibleGateway WEB reading.** See dedicated section below. |
| 10 | 2 Kings 23:3 (newly inlined) | "The king stood by the pillar and made a covenant before Yahweh to walk after Yahweh and to keep his commandments, his testimonies, and his statutes with all his heart and all his soul, to confirm the words of this covenant that were written in this book; and all the people agreed to the covenant." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+22%3A19%3B+2+Kings+23%3A3%3B+2+Kings+25%3A1%2C11%2C29&version=WEB) | **Match, exact, full verse** — the brief's quotation is the complete verse; no trim was actually needed (the recall stem simply blanks a word within it). |
| 12 | 2 Kings 25:29 (trimmed, newly inlined) | "...and changed his prison garments. Jehoiachin ate bread before him continually all the days of his life." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+22%3A19%3B+2+Kings+23%3A3%3B+2+Kings+25%3A1%2C11%2C29&version=WEB) | **Match.** Live text: "...and changed his prison garments. Jehoiachin ate bread before him continually all the days of his life;" — verse continues past a semicolon into further detail about Jehoiachin's daily allowance, not included in the brief's trim. The brief's closing period at the trim boundary (replacing the source's semicolon) matches this project's established trimmed-quotation convention (used identically in the approved `medium` brief's own 25:27/25:29 quotation). |

## Item 6 — specific WEB-edition/citation check (per the review's explicit "blocking" finding, §6.1)

The theological review's §2 finding caught that the original draft's item 6 rendered 2 Kings 19:15 as
"Yahweh, the God of Israel, **enthroned above** the cherubim" (dropping "who are"), which is a
character-level mismatch against the approved `docs/content/2-kings.md` brief's "Yahweh, the God of
Israel, **who are enthroned above** the cherubim." The review found **three different live readings**
across four sources (ebible.org `/web`, ebible.org `/engwebp`, BibleGateway/BibleHub, and
BibleStudyTools), confirming this is a genuine WEB printing/edition conflict, not a typo on either
side.

Independently re-verified for this QA pass: [BibleGateway `version=WEB`](https://www.biblegateway.com/passage/?search=2+Kings+17%3A7%2C18%3B+2+Kings+19%3A1%2C14-15&version=WEB)
currently returns "Yahweh, the God of Israel, who are enthroned above the cherubim, you are the God,
even you alone, of all the kingdoms of the earth" as part of the full verse "Hezekiah prayed before
Yahweh, and said, 'Yahweh, the God of Israel, who are enthroned above the cherubim, you are the God,
even you alone, of all the kingdoms of the earth. You have made heaven and earth.'" — **this matches
the approved `medium` brief's reading exactly**, confirming the fix applied to this brief (adopting
"who are enthroned above the cherubim" and adding the "(WEB, trimmed)" label) is correct: it now
agrees with `medium`, with the graded token ("cherubim") unchanged in every printing regardless.

**Not resolved by this QA pass, and not this pass's job:** the underlying question of which WEB
printing/edition the project should formally pin in `MEMORY.md` (review §6.4) is a product-owner
decision above both the theological review's and this QA pass's scope, since resolving it fully would
require deciding whether to also update the already-approved `medium` brief — out of scope per this
task's instructions. This QA pass confirms only that the two already-drafted briefs (`medium` and
this `hard` tier) now agree with each other and with the currently-live BibleGateway WEB text, which
is sufficient for this brief's own ingestion gate.

## Format check (no text change — scene-label and cross-reference fixes)

- **Item 11 (25:1)**: a "Scene: the siege of Jerusalem begins, in King Zedekiah's reign" label was
  added outside the quotation per review §6.7/§4.5, to disambiguate the pronoun "his reign" (which
  sits grammatically next to "Nebuchadnezzar king of Babylon" later in the same sentence). Re-checked
  against the same BibleGateway fetch above: the verbatim WEB quotation itself is unchanged and
  matches exactly; the added label is non-verse text and required no separate verbatim check.
- **Sensitivity note**: "Item 12 below (25:11...)" corrected to "Item 16 below (25:11...)" per
  review §6.3 — a cross-reference fix only, no verse text involved.

## Not re-litigated (already-approved verses, reused as-is)

Item 4 (17:18), item 7 (19:1), item 9 (22:19), and boss items 13-15 (*scene-sequence, quotation-order,
and 22:11 MC content*, reused verbatim from `medium`/`easy`) carry forward their
`pass` verbatim-QA status: items 4, 7, and 9 were independently checked against live WEB sources as
part of `docs/reviews/2-kings-hard-review.md` §1 (all confirmed exact matches) and are unchanged in
this pass; items 13-15 reuse already-approved `medium` content with no text change. Item 16 (25:11)
was independently checked in that same review table (**Match, exact, full verse**) and is unchanged
here.

## Conclusion

**`pass`.** All text corrected or newly inlined per review §6.1, §6.2, and §6.8 (items 2, 5, 6, 10,
and 12) independently re-verified with zero discrepancies, including item 6's WEB-edition-conflict
resolution, specifically re-checked as the review instructed. Combined with the theological review's
own multi-source verification (ebible.org + BibleGateway + BibleHub + BibleStudyTools + Sefaria) and
this pass's independent BibleGateway cross-check, every challenge-ready verse in this tier has now
been checked against at least two independent live sources, and the one live edition conflict found
has been resolved to agree with the approved `medium` brief. `docs/content/2-kings-hard.md` is
eligible for ingestion.
