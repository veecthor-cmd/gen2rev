# Theological Review — Amos, Easy Tier (World 30)

Reviewer: `theological-reviewer` procedure, self-applied by the same session that authored
`docs/content/amos-easy.md`, per `.claude/agents/theological-reviewer.md`. Builds on
`docs/reviews/amos-review.md` (medium) rather than re-deriving its established sourcing, with
particular attention carried forward to the medium review's Amos 5:24 wording catch and the
Amos 9:11-12 exclusion.

Brief reviewed: `docs/content/amos-easy.md`

---

## 1. Verse-Text Verification

| Item(s) | Verse(s) | Sources checked | Result |
|---|---|---|---|
| 1 | Amos 1:3 | [ebible.org AMO01](https://ebible.org/web/AMO01.htm) (fresh pull); already single-source-checked at medium | Match, single source only — flag for QA §3 |
| 2, 3 | Amos 2:6, 2:7 | [ebible.org AMO02](https://ebible.org/web/AMO02.htm); already two-source confirmed at medium (`docs/reviews/amos-review.md` §1) | **Match, two independent sources** |
| 4 | Amos 5:12 | [ebible.org AMO05](https://ebible.org/web/AMO05.htm); already single-source-checked at medium | Match, single source only — flag for QA §3 |
| 5, 6 | Amos 5:21, 5:24 | [ebible.org AMO05](https://ebible.org/web/AMO05.htm); [biblegateway.com WEB](https://www.biblegateway.com/passage/?search=Amos+5%3A21-24&version=WEB) (fresh pull, 2026-09-03) | **Match, two independent sources — WEB reads "roll on... a mighty stream," confirmed again, not the NRSV/RSV "roll down... ever-flowing stream"** |
| 7, 8 | Amos 7:14, 7:15 | [ebible.org AMO07](https://ebible.org/web/AMO07.htm); already two-source confirmed at medium | **Match** |

No character-level mismatches found. Amos 1:3 and 5:12 are this brief's single-source-only rows,
carried forward from the same status at medium, and should remain prioritized for QA §3.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation. **Pass.**
- Every regular item is multiple-choice favoring iconic recognition; boss item is sequence-format.
  **Pass.**
- Item 3 quotes only Amos 2:7's first sentence — checked the brief's text directly to confirm the
  second sentence never appears, verbatim or paraphrased, anywhere in this file. **Pass.**
- Item 1 stays at the identification level (which nation) per the in-bounds category the medium
  brief itself names. **Pass.**

## 3. Contested-Territory Cross-Check

### 3.1 Amos 9:11-12 — confirmed still excluded

Full-text search of `docs/content/amos-easy.md` confirms no verse from 9:11-12 appears anywhere.
Re-affirms the medium review's finding (§3) that exclusion, not narrow bounding, is the correct
handling for this passage. No new sourcing needed — the medium review's Acts 15/Hebrew-Greek
divergence sourcing stands unchanged.

### 3.2 Amos 2:7's second sentence — confirmed still omitted

Item 3 quotes only "They trample the heads of the poor into the dust of the earth and deny justice
to the oppressed." Checked against the full verse text pulled fresh this pass
(`ebible.org AMO02`) to confirm the sentence boundary is correct and nothing from the second
sentence is present. **Confirmed compliant.**

### 3.3 Amos 5:24 wording — confirmed, extra safeguard maintained

Re-ran the exact check the medium review flagged as its central catch: confirmed via a fresh
biblegateway.com WEB fetch this pass that "roll on like rivers... a mighty stream" is still the
correct current WEB text, not the more famous "roll down like waters... an ever-flowing stream"
(NRSV/RSV). Item 6's stem explicitly notes this distinction in-line, an extra safeguard beyond what
the medium brief itself did. **Confirmed compliant.**

### 3.4 The judgment oracles' severity (item 1) — confirmed

Identification-level only; no evaluation of the oracle's severity or proportionality. Same bounding
as medium.

### 3.5 No new contested ground

Items 2, 4, 5, 7, 8 (2:6, 5:12, 5:21, 7:14, 7:15) are plain narrative description or already-cleared
iconic lines.

## 4. Verdict

**`approved`** — every check passed; no changes required. Both of this book's central risks —
Amos 9:11-12's exclusion and Amos 5:24's wording accuracy — were independently re-confirmed rather
than assumed carried-over.

**No escalation.**

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, prioritizing Amos 1:3 and 5:12 (the single-source-only rows) and
re-confirming the 5:24 wording once more at that pass, per the medium review's standing instruction.

---

### Sources cited in this review

- https://ebible.org/web/AMO01.htm
- https://ebible.org/web/AMO02.htm
- https://ebible.org/web/AMO05.htm
- https://ebible.org/web/AMO07.htm
- https://www.biblegateway.com/passage/?search=Amos+5%3A21-24&version=WEB
- `docs/reviews/amos-review.md` (medium-tier review)
