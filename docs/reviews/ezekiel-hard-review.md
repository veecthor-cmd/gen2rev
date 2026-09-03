# Theological Review — Ezekiel, Hard Tier (World 26)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored
`docs/content/ezekiel-hard.md`, following the exact procedure in
`.claude/agents/theological-reviewer.md`.
Brief reviewed: `docs/content/ezekiel-hard.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`
Prior review checked against: `docs/reviews/ezekiel-review.md` (medium tier) and
`docs/reviews/ezekiel-easy-review.md` (easy tier, same session) — this review's job is to confirm
the medium brief's Contested Territory rulings, format restrictions, and the two full-chapter
exclusions still hold when applied to new, more precise verses drawn from the same six
already-approved passage ranges, not to re-litigate them from scratch.
Assignment-specific guardrail re-checked: **Ezekiel 16, 23, and 38-39 must remain entirely excluded
— no verse, scene description, or content reference of any kind, at any tier.**

---

## 1. Verse-Text Verification

| Verse(s) | Sources checked | Result |
|---|---|---|
| Ezek 1:28 | [ebible.org WEB, Ezek 1](https://ebible.org/web/EZK01.htm), [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Ezekiel+1%3A28%2C+Ezekiel+2%3A9-10%2C+Ezekiel+3%3A1%2C+Ezekiel+4%3A5%2C+Ezekiel+33%3A11%2C+Ezekiel+18%3A23%2C+Ezekiel+34%3A15-16%2C+Ezekiel+34%3A24%2C+Ezekiel+37%3A14&version=WEB) | **Match, two independent sources** |
| Ezek 2:9-10 | ebible.org (as above), biblegateway.com (as above) | **Match, two independent sources** |
| Ezek 3:1 | ebible.org (as above), biblegateway.com (as above) | **Match, two independent sources** |
| Ezek 4:5 | ebible.org (as above), biblegateway.com (as above) | **Match, two independent sources** |
| Ezek 33:11 | ebible.org (as above), biblegateway.com (as above) | **Match, two independent sources** |
| Ezek 18:23 | ebible.org (as above), biblegateway.com (as above) | **Match, two independent sources** |
| Ezek 34:16 | ebible.org WEB, Ezek 34 (as above); biblegateway's batched fetch returned 34:15-16 but was cut off before v16's final clause | **Match on the portion biblegateway confirmed ("...will strengthen that which was sick"); full verse otherwise single-sourced — flag for QA §3** |
| Ezek 34:24 | ebible.org WEB, Ezek 34 (as above); biblegateway's batched fetch did not return this verse's text | **Match, single source — flag for QA §3, same passage the medium review already flagged (34:11-16) for a second-source single-passage re-check; this brief extends that same flag to 34:24** |
| Ezek 37:14 | ebible.org WEB, Ezek 37 (as above); biblegateway's batched fetch did not return this verse's text | **Match, single source — flag for QA §3, falls inside the medium review's already-flagged Ezek 37:1-14 range** |
| Ezek 3:17, 18:20, 37:4 (boss quotation-matching item) | Already verified — 3:17 and 18:20 at medium tier (two independent sources each, per `docs/reviews/ezekiel-review.md` §1), 37:4 as part of the medium review's single-source-confirmed 37:1-14 block | **Match, carried forward; 37:4 remains part of the outstanding QA-pass flag** |

**Overall: no character-level mismatches found.** Six of the nine distinct new verses received a
full two-independent-source check in this review; three (34:16's tail clause, 34:24, and 37:14)
received only a single live-source confirmation because BibleGateway's batched-passage fetch
returned partial or no text for those specific verses despite repeated requests — the same kind of
fetch-tool limitation the medium review documented for this same chapter pair (34 and 37). This is
flagged explicitly here rather than treated as equivalent to the fully double-verified rows, per
this role's "never treat your own synthesis as the source" standard.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line is attributed to a specific WEB
  reference, and all trims are marked with ellipses. **Pass.**
- All ten challenge items are narrative fact or direct verse text, entirely recall/fill-in-blank
  format for the seven regular items (consistent with this tier's design intent), plus a
  quotation-matching item for the boss. **Pass.**
- Item 8 (Ezek 34:24) blanks "prince," never "David" or any interpretive clause — honoring the
  medium brief's structural restriction on this verse. **Pass, confirmed in §3.**

## 3. Contested-Territory Cross-Check

This tier introduces no new passages and no verse ranges beyond what the medium brief already
scoped. This review confirmed, passage by passage, that every new item stays inside the six ranges
medium defined (Ezek 1:1-3/1:26-28/2:1-10/3:1-4; 4:1-8; 3:16-21/33:1-11; 18:1-4,20,23;
34:1-6,11-16,23-24; 37:1-14) — none extends into 1:4-25, 2:5-8, 3:5-16/20-21, 33:1-3/7-10,
34:7-10/17-22, or 37:15 onward.

- **Ezekiel 16 and 23.** Checked the brief file text directly: no verse, paraphrase, or scene
  description referencing either chapter appears anywhere. **Exclusion confirmed complete.**
- **Ezekiel 38-39 (Gog and Magog).** Checked the brief file text directly: no verse or scene
  description appears anywhere. **Exclusion confirmed complete.**
- **Ezekiel 34:23-24, "my servant David."** Item 8 is recall/fill-in-blank only, blanking "prince"
  (a different word than the easy tier's "David") — never a question about who the figure is or
  what he represents. **Rule honored, confirmed** — and this tier's recall-by-default design makes
  the restriction naturally satisfied throughout.
- **The 390-day count (Ezekiel 4:5).** Item 4 tests only the text's own stated number ("three
  hundred ninety"), never its chronological referent or symbolic meaning, consistent with the
  medium brief's Level 5 example and the medium review's finding (§3.6) that this is a historicity
  question, not a doctrinal one. **Rule honored, confirmed.**
- **Ezekiel 18 vs. Exodus 20:5.** Item 6 (18:23) tests only the verse's own stated content — the
  fill-in-blank target is the word "live," not any harmonization claim. **Rule honored, confirmed.**
- **Ezekiel 37 (dry bones).** Item 9 (37:14) and boss item 10's use of 37:4 test only the text's own
  wording — neither asks the player to resolve the Talmudic literal-vs-allegory dispute the medium
  review documented (§3.4) or state what the vision means beyond what 18:20/3:17 already state
  narratively. **Rule honored, confirmed.**
- **The temple vision (Ezekiel 40-48).** No verse from these chapters appears. **Confirmed, no
  overlap.**

## 4. Recommended Changes

None beyond the verbatim-sourcing flags in §1 above (Ezek 34:16's tail clause, 34:24, and 37:14 —
each single-sourced due to a fetch-tool limitation, not a content concern), which extend rather than
duplicate the medium review's existing QA-pass flag for this same chapter pair.

## 5. Verdict

**`approved-with-changes`** — to match this project's established convention of using this verdict
whenever a review surfaces a sourcing-completeness finding worth recording, even when the brief
itself needs no content edit. Every substantive check passed: verse text verified against at least
one live source for every item (two independent sources for six of nine new verses), no
paraphrase-as-quotation, no new contested ground, the 34:23-24 recall-only restriction honored with
a distinct blank from the easy tier, and both full-chapter exclusions (16/23, 38-39) confirmed
complete.

**Not escalated.** Nothing in this brief presents genuine unresolved disagreement bearing on a
graded item beyond what the medium review already adjudicated.

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, which should specifically re-verify Ezek 34:16 (tail clause), 34:24, and
37:14 against a second live source using a single-passage (not batched) fetch — extending the same
gap the medium review already flagged for this chapter pair (`docs/reviews/ezekiel-review.md` §1,
§4) rather than a new one.

---

### Sources cited in this review

- https://ebible.org/web/EZK01.htm
- https://ebible.org/web/EZK02.htm
- https://ebible.org/web/EZK03.htm
- https://ebible.org/web/EZK04.htm
- https://ebible.org/web/EZK18.htm
- https://ebible.org/web/EZK33.htm
- https://ebible.org/web/EZK34.htm
- https://ebible.org/web/EZK37.htm
- https://www.biblegateway.com/passage/?search=Ezekiel+1%3A28%2C+Ezekiel+2%3A9-10%2C+Ezekiel+3%3A1%2C+Ezekiel+4%3A5%2C+Ezekiel+33%3A11%2C+Ezekiel+18%3A23%2C+Ezekiel+34%3A15-16%2C+Ezekiel+34%3A24%2C+Ezekiel+37%3A14&version=WEB
