# Theological Review — Amos, Hard Tier (World 30)

Reviewer: `theological-reviewer` procedure, self-applied by the same session that authored
`docs/content/amos-hard.md`, per `.claude/agents/theological-reviewer.md`. Builds on
`docs/reviews/amos-review.md` (medium) and `docs/reviews/amos-easy-review.md` (easy).

Brief reviewed: `docs/content/amos-hard.md`

---

## 1. Verse-Text Verification

| Item(s) | Verse(s) | Sources checked | Result |
|---|---|---|---|
| 1, 3, 4 | Amos 1:3, 2:6, 2:7 | [ebible.org AMO01](https://ebible.org/web/AMO01.htm), [ebible.org AMO02](https://ebible.org/web/AMO02.htm); 2:6/2:7 already two-source confirmed at medium | **Match** |
| 2 | Amos 1:11 | [ebible.org AMO01](https://ebible.org/web/AMO01.htm) (fresh pull) | Match, single source only — flag for QA §3 |
| 5, 6, 7 | Amos 5:11, 5:12, 5:23 | [ebible.org AMO05](https://ebible.org/web/AMO05.htm) (fresh pull) | Match, single source only — flag for QA §3 |
| 8 | Amos 7:14 | [ebible.org AMO07](https://ebible.org/web/AMO07.htm); already two-source confirmed at medium | **Match** |
| 9 (boss) | Amos 2:6, 5:24, 7:14 | 2:6 and 7:14 as above; 5:24 re-checked via [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Amos+5%3A21-24&version=WEB) fresh pull | **Match, two independent sources for 5:24** |

No character-level mismatches found. Amos 1:11, 5:11, 5:12, and 5:23 are this brief's
single-source-only rows and should be prioritized for the dedicated QA §3 pass.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation. **Pass.**
- Every item is recall/fill-in-blank, no multiple-choice format used anywhere. **Pass.**
- Item 4 quotes only Amos 2:7's first sentence — confirmed via direct text search of the brief.
  **Pass.**

## 3. Contested-Territory Cross-Check

### 3.1 Amos 9:11-12 — confirmed still excluded

Full-text search confirms no verse from 9:11-12 appears anywhere in `docs/content/amos-hard.md`.

### 3.2 Amos 2:7's second sentence — confirmed still omitted

Same check as easy-tier review; only the first sentence appears.

### 3.3 Amos 5:24 wording (boss item 9) — confirmed

Re-checked "roll on like rivers... a mighty stream" against a fresh biblegateway.com WEB fetch;
matches. The item's own text notes the wording explicitly, same safeguard as the easy tier.

### 3.4 Amos 1:11 (item 2) — new item this tier, checked

This is the first item in this book's difficulty-tier expansion drawn from the Edom oracle within
Amos 1-2's nations cycle (distinct from Amos 9:11-12, and distinct from Obadiah's own,
independently-bounded Edom material in `docs/content/obadiah.md`). Checked the item against the
same "stay narrative, don't grade the interpretation" rule the medium review already applied to the
rest of the nations cycle (§3): the item's blank ("kept his wrath ___" → forever) tests only the
text's own stated language, not an evaluation of the announced punishment's severity or
proportionality. Also checked whether this item creates any unintended cross-reference to Obadiah's
Edom material that would need independent bounding: it does not — Amos 1:11 and Obadiah's selected
verses (3-4, 10, 12, 15, 17) describe different specific charges in different oracles, and neither
brief's items require or imply any claim connecting the two books. **Confirmed compliant, no change
needed.**

### 3.5 No new contested ground

Items 1, 3, 5, 6, 7, 8 (1:3, 2:6, 5:11, 5:12, 5:23, 7:14) are plain narrative description.

## 4. Verdict

**`approved`** — every check passed; no changes required.

**No escalation.**

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, prioritizing Amos 1:11, 5:11, 5:12, and 5:23 (the single-source-only rows).

---

### Sources cited in this review

- https://ebible.org/web/AMO01.htm
- https://ebible.org/web/AMO02.htm
- https://ebible.org/web/AMO05.htm
- https://ebible.org/web/AMO07.htm
- https://www.biblegateway.com/passage/?search=Amos+5%3A21-24&version=WEB
- `docs/reviews/amos-review.md`, `docs/reviews/amos-easy-review.md` (prior-tier reviews)
- `docs/content/obadiah.md` (checked for cross-book Edom-material overlap, §3.4 above)
