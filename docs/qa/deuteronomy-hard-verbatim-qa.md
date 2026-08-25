# Verbatim-Text QA — Deuteronomy, Hard Tier (World 5)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while
applying `docs/reviews/deuteronomy-hard-review.md`'s required and recommended fixes to
`docs/content/deuteronomy-hard.md`, run 2026-08-20, after theological review
(`approved-with-changes`) and after all required fixes were applied to the brief. Per the review's
explicit instruction, this pass also specifically re-checks item 8's correction, the item 2 (Deut
5:9-10) verse-boundary join, and the item 6 (Deut 31:6) closing-quotation note.

**Edition note:** this pass used **BibleGateway (`version=WEB`)**, confirmed elsewhere in this
project's review trail to render "Yahweh" consistently with the approved medium/easy/hard briefs.

**Result: `pass`.** The one required text fix was independently re-verified with zero discrepancies.

## Verses independently re-checked

| Item | Verse | Brief's corrected text | Source | Result |
|---|---|---|---|---|
| 8 | **Deut 34:9 (full verse restored, review §6.1 required fix)** | "Joshua the son of Nun was full of the spirit of wisdom, for Moses had laid his hands on him. The children of Israel listened to him, and did as Yahweh commanded Moses." | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+34%3A9&version=WEB) | **Match, full verse, verbatim.** Confirms the second sentence ("The children of Israel listened to him, and did as Yahweh commanded Moses.") is exactly as the review found; the brief no longer presents a partial verse as the whole verse. The blank ("hands") is unaffected — it still falls in the first sentence. |

## Item 2 (Deut 5:9-10) — verse-boundary join re-checked per the review's explicit instruction

The review specifically asked this pass to check item 2 against the Genesis Finding-A splice defect
pattern (a blank cut from a block that spliced two verses' clauses out of order under a single wrong
citation). Re-confirmed via [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+5%3A9-10&version=WEB):

- v9: "...visiting the iniquity of the fathers on the children and on the third and on the fourth
  generation of those who hate me"
- v10: "and showing loving kindness to thousands of those who love me and keep my commandments."

The brief's quotation concatenates these two verses **in their original order, with no words added,
removed, or rearranged**, cited as "Deut 5:9-10" — a citation that correctly covers both. **Confirmed
clean; not an instance of the splice defect.** No punctuation (e.g. a stray comma) was found at the
v9/v10 join beyond what the brief already shows.

## Item 6 (Deut 31:6) — closing-quotation note, flagged for ingestion, not a text change

Per review §6.6: [ebible.org DEU31](https://ebible.org/web/DEU31.htm) closes v6 with a closing double
quote, since the verse is the start of Moses' direct speech to the people. BibleGateway's plain-text
rendering does not visibly carry the same quotation-mark convention, but the underlying words are
identical either way. **Recorded for the ingestion pipeline: store the verse with WEB's own closing
quotation mark; the brief's own outer quoting (its own markdown quotation marks around the whole
item) is a brief-formatting convention, not a substitute for WEB's punctuation.** No wording is
affected; this is a data-entry instruction, not a text correction, matching the same class of note
made in `docs/reviews/genesis-easy-review.md` §5.1 and `docs/reviews/numbers-hard-review.md` §5.4.

## Formatting-only change (no wording changed) — spot-confirmed

- **Item 1 (Deut 5:2-3)** — stem explicitly anchored to "According to Deuteronomy 5:2" per review
  §6.3, to guard against a player typing "Sinai" instead of "Horeb." No verse text changed; already
  verified live (two sources) in `docs/reviews/deuteronomy-hard-review.md` §1.

## Not re-litigated (text unchanged by the fix pass)

Items 3, 4, 5, 7, 9, 10, 11, 12 carry no text changes from the review's required or recommended
fixes. These were already verified live, against two independent sources, in
`docs/reviews/deuteronomy-hard-review.md` §1. No new verification needed.

## Conclusion

**`pass`.** The one required text-integrity fix (item 8's restored Deut 34:9) was independently
re-verified against BibleGateway (`version=WEB`) with zero discrepancies. Item 2's verse-boundary join
was re-checked specifically per the review's instruction and confirmed clean — not a splice defect.
Item 6's closing-quotation note is recorded for the ingestion pipeline. `docs/content/deuteronomy-hard.md`
is eligible for ingestion.

**Note carried forward, not a defect of this brief:** per the theological review §5.2/§6.7, boss item
10 (Deut 34:10) is reused verbatim from the approved `medium` tier and displays a terminal period
where live WEB uses a comma. The review explicitly declined to treat this as a defect of this brief
(it is inherited, already-approved text), so it is left unchanged here; it should be raised against
`docs/content/deuteronomy.md` and picked up by that document's own verbatim-QA pass.
