# Theological Review — Esther, Hard Tier (World 17)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored
`docs/content/esther-hard.md`, following the exact procedure in
`.claude/agents/theological-reviewer.md`.
Brief reviewed: `docs/content/esther-hard.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`
Prior review checked against: `docs/reviews/esther-review.md` (medium tier) — this review's job is
to confirm the medium brief's Contested Territory rulings and structural rules still hold when
applied to new, more obscure verses drawn from the same approved scenes, not to re-litigate them
from scratch.

---

## 1. Verse-Text Verification

| Verse(s) | Sources checked | Result |
|---|---|---|
| Esther 2:7 | [ebible.org WEB, Esther 2](https://ebible.org/web/EST02.htm), [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Esther+2&version=WEB) | **Match, two independent sources** (also matches `docs/content/esther.md`'s already-approved citation) |
| Esther 2:20, 2:21-22 | same as above | **Match, two independent sources** |
| Esther 3:7 | [ebible.org WEB, Esther 3](https://ebible.org/web/EST03.htm), [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Esther+3&version=WEB) | **Match, two independent sources** |
| Esther 4:14 | Already verified at medium tier per `docs/reviews/esther-review.md` §1 (two independent sources) — this brief reuses the identical verse text with a different blank | **Match, carried forward** |
| Esther 5:14 | [ebible.org WEB, Esther 5](https://ebible.org/web/EST05.htm), [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Esther+5-6&version=WEB) | **Match, two independent sources** |
| Esther 6:1, 6:10 | [ebible.org WEB, Esther 6](https://ebible.org/web/EST06.htm), [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Esther+5-6&version=WEB) | **Match, two independent sources** |
| Esther 8:8 | [ebible.org WEB, Esther 8](https://ebible.org/web/EST08.htm), [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Esther+8&version=WEB) | **Match, two independent sources** |
| Esther 9:22 | [ebible.org WEB, Esther 9](https://ebible.org/web/EST09.htm), [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Esther+9&version=WEB) | **Match, two independent sources** (also matches `docs/content/esther.md`'s already-approved citation) |
| Esther 9:26 | same as above | **Match, two independent sources**, carried forward from `medium` and `easy` |

No mismatches found anywhere in this brief. Every new verse this tier introduces was checked against
two independent live WEB sources, and every reused already-approved verse matches its medium-tier
citation exactly. The independent character-for-character QA pass (`QA_REQUIREMENTS.md` §3) is
still required before ingestion, per standing project policy.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line is attributed to a specific WEB
  reference, and all trims are marked with ellipses. **Pass.**
- All ten challenge items are narrative fact or direct verse text, entirely recall/fill-in-blank
  format (consistent with this tier's design intent) or sequence/matching format for the boss items
  — no editorial commentary or doctrinal claim introduced. **Pass.**
- Every regular item (1-7) is typed recall, no multiple-choice scaffolding, matching this tier's
  stated design intent and the Genesis-hard precedent. **Pass.**

## 3. Contested-Territory Cross-Check

This tier introduces no new scenes and no new contested ground. This review's job is to confirm the
medium brief's three Contested Territory rulings (`docs/reviews/esther-review.md` §3) still hold
against this brief's specific new items.

- **The absence of God's name from the text.** Not engaged by any item in this brief. No change
  needed.
- **The "gathering of virgins" / royal harem context (Esther 2).** Item 1 (Esther 2:7) is the only
  item drawing on a restricted verse, and it is authored as recall/fill-in-blank — the same format
  this entire tier defaults to, so the restriction is satisfied without needing to override the
  tier's own design intent. Items 2 (2:21-22) and boss item 10's quotation of 2:20 concern the
  eunuchs' conspiracy and Esther's concealment of her identity respectively — neither is part of the
  restricted verse set and neither poses a comparable risk (no selection-process content). **Rule
  honored, confirmed.**
- **The genocide plot (ch. 3) and its violent reversal (ch. 8-9).** Item 3 (3:7, the casting of
  lots) and item 7 (8:8, the legal mechanism for the counter-decree) are procedural/narrative detail
  with no violent content. Item 9's finer-grained boss sequence narrates "Haman exposed and hanged
  on his own gallows" and "the Jews prevail and Purim is established" — at the same narrative-
  summary level the medium brief already established, with no added detail. **Confirmed this brief
  does not touch Esther 9:6-10 or 9:16** — verified by re-reading every item, including the boss
  sequence's narrative labels, against those two excluded passages; no overlap found. No change
  needed.

## 4. Recommended Changes

None. This brief was authored with the medium brief's structural rules already applied (item 1's
recall format, which this tier's design intent would have produced regardless), so no further edit
is needed as a result of this review.

## 5. Verdict

**`approved-with-changes`** — to match this project's established convention of using this verdict
whenever a review confirms structural restrictions were correctly applied, even when no further
edit is required. Every check above passed: verse text verified against two independent live
sources for every new item, reused verses confirmed to match their already-approved citations, no
paraphrase-as-quotation, no new contested ground, and the 2:7/2:15/2:17 recall-only restriction and
the 9:6-10/9:16 exclusion both confirmed honored — including in the more granular boss sequence,
which is exactly the kind of item where a finer-grained retelling could accidentally reintroduce
excluded detail, and this review specifically checked for that.

**Not escalated.** Nothing in this brief presents genuine unresolved disagreement bearing on a
graded item beyond what the medium review already adjudicated.

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, which still must run before any item in this brief reaches the `challenge`
table, per `BACKEND_REQUIREMENTS.md` §4.
