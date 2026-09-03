# Theological Review — Hosea, Hard Tier (World 28)

Reviewer: `theological-reviewer` procedure, self-applied by the same session that authored
`docs/content/hosea-hard.md`, per `.claude/agents/theological-reviewer.md`. Builds on
`docs/reviews/hosea-review.md` (medium) and `docs/reviews/hosea-easy-review.md` (easy) rather than
re-deriving their established cross-tradition sourcing from scratch.

Brief reviewed: `docs/content/hosea-hard.md`

---

## 1. Verse-Text Verification

| Item(s) | Verse(s) | Sources checked | Result |
|---|---|---|---|
| 2, 4, 5, 11 | Hos 1:2, 3:1, 3:5, 1:10 | [ebible.org HOS01](https://ebible.org/web/HOS01.htm), [ebible.org HOS03](https://ebible.org/web/HOS03.htm), [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Hosea+1%3A2-10%2C+Hosea+2%3A14-16%2C+Hosea+3%3A1-5&version=WEB) | **Match, two independent sources** |
| 1, 3 | Hos 1:5, 2:15 | [ebible.org HOS01](https://ebible.org/web/HOS01.htm), [ebible.org HOS02](https://ebible.org/web/HOS02.htm) | Match, single source only — flag for QA §3 |
| 6 | Hos 4:6 | [ebible.org HOS04](https://ebible.org/web/HOS04.htm) | Match, single source only — flag for QA §3 |
| 7 | Hos 6:1-3 | [ebible.org HOS06](https://ebible.org/web/HOS06.htm); already two-source confirmed at medium (`docs/reviews/hosea-review.md` §1) | **Match** |
| 8, 9 | Hos 11:1, 11:9 | [ebible.org HOS11](https://ebible.org/web/HOS11.htm); already two-source confirmed at medium | **Match** |
| 10 | Hos 14:2 | [ebible.org HOS14](https://ebible.org/web/HOS14.htm) | Match, single source only — flag for QA §3 |
| 12 (boss) | Hos 2:16, 6:6, 11:8 | Already two-source confirmed at medium and re-confirmed at easy tier | **Match** |

No character-level mismatches found. This is a draft pull, not the dedicated QA §3 pass; items 1,
3, 6, and 10 (the four genuinely new verses this tier introduces beyond what medium or easy already
two-source-verified) should be prioritized for that pass.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation. **Pass.**
- Every item in this brief is recall/fill-in-blank — no multiple-choice format used anywhere,
  matching this tier's design intent and making the restricted-verse format rule automatically
  satisfied by construction (still individually re-checked below, not assumed safe). **Pass.**
- The marriage narrative remains handled at narrative-fact level only. **Pass.**

## 3. Contested-Territory Cross-Check

### 3.1 Format restrictions carried forward (Hosea 1:2, 3:1, 3:5, 1:10, 6:1-3) — confirmed

All five restricted verses (items 2, 4, 5, 11, 7) are used only as recall/fill-in-blank, consistent
with the medium brief's rule. **Confirmed compliant.**

### 3.2 Hosea 6:1-3 (item 7) — blank placement, one required fix applied

The brief's item 7 blanks "Yahweh" in "Let's press on to know Yahweh" — checked this against the
new, stricter rule the easy-tier review established (§3.2 of `docs/reviews/hosea-easy-review.md`):
**the graded/blanked token in any Hosea 6:1-3 recall item may never be "third" or "day."** "Yahweh"
satisfies this rule cleanly — it sits in a clause with no cross-tradition dispute of any kind. No
change was needed to the item itself; **this review's one required action was adding the explicit
cross-reference to the easy-tier rule into this brief's own Contested Territory section**, so the
rule is stated directly here rather than only inferable from the easy-tier sibling file — now
applied (see `docs/content/hosea-hard.md`'s Contested Territory §, item 7's note).

### 3.3 Hosea 11:1 (item 8) — blank placement confirmed compliant

Item 8 blanks "son" itself ("called my ___ out of Egypt"). Checked directly against the medium
review's structural rule (§3.3): this is the single most precise possible way to satisfy "may state
or test only 'who is called God's son in this verse, in its own context'" — the blank *is* the
fact the rule permits testing, nothing broader. **Confirmed compliant, no change needed.**

### 3.4 No new contested ground

Items 1, 3, 6, 9, 10 (Hos 1:5, 2:15, 4:6, 11:9, 14:2) are plain narrative or covenant language.
Checked each against the medium review's existing scope and this tier's own re-reading of the full
chapter text pulled for this brief; nothing new requiring further cross-tradition sourcing was
found.

## 4. Verdict

**`approved-with-changes`.** Verse text confirmed for every item. Every format restriction carried
forward from medium and easy is correctly engaged by construction (recall-only tier) and individually
re-checked. **One required fix, already applied to the brief**: the hard tier's own Contested
Territory section now explicitly states the "never 'third' or 'day'" rule for Hosea 6:1-3, rather
than leaving a reader of this file alone to infer it only applies because the easy-tier sibling
established it — a documentation completeness fix, not a content or format change (item 7's blank
was already compliant).

**No escalation.**

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, prioritizing Hosea 1:5, 2:15, 4:6, and 14:2 (the single-source-only rows).

---

### Sources cited in this review

- https://ebible.org/web/HOS01.htm
- https://ebible.org/web/HOS02.htm
- https://ebible.org/web/HOS03.htm
- https://ebible.org/web/HOS04.htm
- https://ebible.org/web/HOS06.htm
- https://ebible.org/web/HOS11.htm
- https://ebible.org/web/HOS14.htm
- https://www.biblegateway.com/passage/?search=Hosea+1%3A2-10%2C+Hosea+2%3A14-16%2C+Hosea+3%3A1-5&version=WEB
- `docs/reviews/hosea-review.md`, `docs/reviews/hosea-easy-review.md` (prior-tier reviews, sourcing
  re-used for §3.2-3.3 above)
