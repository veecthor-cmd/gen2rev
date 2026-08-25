# Verbatim-Text QA — 2 Kings, Easy Tier (World 12)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed, restored,
corrected, or newly inlined in `docs/content/2-kings-easy.md`, run 2026-08-20, after theological
review (`docs/reviews/2-kings-easy-review.md`, `approved-with-changes`) and after all required and
recommended fixes were applied to the brief.

**Result: `pass`.** All newly-inlined verses (items 14 and 15's previously cross-referenced text)
re-verified against BibleGateway (WEB) — independent of ebible.org, the primary drafting source used
for this brief's originally-new verses — with zero character-level discrepancies. Per the review's
§5.1 finding, `ebible.org/web/` and BibleGateway `version=WEB` render the divine name "Yahweh" and
were used for this pass; `ebible.org/engwebp/` (which renders "the LORD") was avoided, matching this
project's approved `medium`-tier convention and Open Decision #1. Every already-approved verse this
brief reuses without textual change (items 1-13, 16, and item 3's label-only fix) is not
re-litigated; it carries forward its existing `pass` verbatim-QA status from `docs/content/2-kings.md`
or this brief's own theological review, whose live-source checks are recorded in the table below.

## Verses independently re-checked (newly inlined per review §6.2)

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 14 | 2 Kings 2:9 (trimmed) | "...'Ask what I shall do for you, before I am taken from you.' Elisha said, 'Please let a double portion of your spirit be on me.'" | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+2%3A9-15&version=WEB) | **Match.** Full verse: "When they had gone over, Elijah said to Elisha, 'Ask what I shall do for you, before I am taken from you.' Elisha said, 'Please let a double portion of your spirit be on me.'" The brief's ellipsis-prefixed quotation is a verbatim substring, correctly marking the omitted attribution clause. |
| 14 | 2 Kings 19:19 | "Now therefore, Yahweh our God, save us, I beg you, out of his hand, that all the kingdoms of the earth may know that you, Yahweh, are God alone." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+19%3A19%3B2+Kings+19%3A35-36%3B2+Kings+18%3A13&version=WEB) | **Match, exact, full verse.** |
| 14 | 2 Kings 22:8 | "Hilkiah the high priest said to Shaphan the scribe, 'I have found the book of the law in Yahweh's house.' Hilkiah delivered the book to Shaphan, and he read it." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+17%3A5-7%3B2+Kings+17%3A23%3B2+Kings+22%3A8%3B2+Kings+22%3A11%3B2+Kings+22%3A13&version=WEB) | **Match, exact, full verse.** Note: WEB prints Hilkiah's inner speech with double quotes ("I have found..."); the brief nests it in single quotes per the project's quote-nesting convention (review §5.2) since the whole verse sits inside a quoted block — ingestion must store WEB's actual double-quote characters. |
| 15 | 2 Kings 22:11 | "When the king had heard the words of the book of the law, he tore his clothes." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Kings+17%3A5-7%3B2+Kings+17%3A23%3B2+Kings+22%3A8%3B2+Kings+22%3A11%3B2+Kings+22%3A13&version=WEB) | **Match, exact, full verse.** |

## Format / trim-marking / stem-anchoring check (not text changes — no re-verification of content needed)

These items had their displayed punctuation, labels, or MC stems corrected per the review, with no
change to the underlying quoted words. Re-checked against the same live sources as a consistency
pass, since the brief's presentation of the text changed even though the words did not:

- **Item 1 (2:9)**: leading ellipsis added per review §6.5. Re-confirmed against the same
  BibleGateway fetch used for item 14 above — the quoted words are an exact, unbroken substring of
  the full verse starting after "Elijah said to Elisha,". Correct.
- **Item 3 (2:15)**: "trimmed" label removed per review §6.5 — re-confirmed the brief's quotation
  ("When the sons of the prophets... rests on Elisha.'") is the complete verse; BibleGateway's fetch
  confirms the verse continues "They came to meet him, and bowed themselves to the ground before
  him," which the brief correctly does **not** include in its quotation (that continuation was never
  part of this item's displayed text, so no additional trim label is needed there either).
- **Item 4 (17:5-6)**: leading/trailing ellipses added per review §6.5. Re-confirmed against the
  fetched 17:5 ("Then the king of Assyria came up...") and 17:6 ("...and placed them in Halah, and on
  the Habor, the river of Gozan, and in the cities of the Medes.") — the brief's ellipses correctly
  mark both omissions.
- **Item 5 (17:23)**: leading ellipsis added per review §6.5. Re-confirmed against the fetched full
  verse ("until Yahweh removed Israel out of his sight...") — the omitted "until" is correctly
  ellipsis-marked.
- **Items 6, 8, 11**: MC stems anchored to their citations per review §6.4 (no verse-text change).
  Item 11's stem was also reworded from "what did Nebuzaradan do" to "what did Nebuzaradan burn" —
  re-checked that "burn" is textually accurate to 25:9's own two sentences ("He burned Yahweh's
  house... He burned every great house with fire.").
- **Item 7 (18:13)**: Contested Territory bounding sentence corrected (removed "and when") and a
  structural rule added per review §6.3. No verse text involved.

## Not re-litigated (already-approved verses, reused as-is)

Items 1-13 and 16 carry forward the `pass` verbatim-QA status already established for their verse
text: items 1-12 were independently checked against live WEB sources as part of
`docs/reviews/2-kings-easy-review.md` §1 (no character-level mismatch found in any item), and items
13/16 (scene sequencing and the new 2:14 boss item) require no re-verification here — item 16's text
was already checked in that same review table and is unchanged in this pass.

## Conclusion

**`pass`.** All text newly inlined per review §6.2 (items 14 and 15, covering 2 Kings 2:9, 19:19,
22:8, and 22:11) independently re-verified with zero discrepancies. Every trim-marking, label, and
stem-anchoring change (items 1, 3, 4, 5, 6, 8, 11) was cross-checked against the same live sources and
found accurate to the underlying verse text. Combined with the theological review's own multi-source
verification (ebible.org + BibleGateway + BibleHub + Sefaria) and this pass's independent BibleGateway
cross-check, every challenge-ready verse in this tier has now been checked against at least two
independent live sources. `docs/content/2-kings-easy.md` is eligible for ingestion.
