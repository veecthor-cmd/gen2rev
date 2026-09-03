# Theological Review — Ezra, Hard Tier (World 15)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored the
brief, per `.claude/agents/theological-reviewer.md`'s exact procedure (steps 1-9).
Brief reviewed: `docs/content/ezra-hard.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`
Companion documents checked for consistency: `docs/content/ezra.md`, `docs/reviews/ezra-review.md`
(medium tier), and `docs/content/ezra-easy.md`/`docs/reviews/ezra-easy-review.md` (same session,
same day).

---

## 1. Verse-Text Verification

| Item | Verse(s) | Sources checked | Result |
|---|---|---|---|
| 1 | Ezra 1:2 | [ebible.org WEB, Ezra 1](https://ebible.org/web/EZR01.htm) | Match, single source — **flag for QA §3** |
| 2 | Ezra 1:9 | [ebible.org WEB, Ezra 1](https://ebible.org/web/EZR01.htm) | Match, single source — **flag for QA §3** |
| 3 | Ezra 3:8 | [ebible.org WEB, Ezra 3](https://ebible.org/web/EZR03.htm) | Match — falls inside the range already cross-checked against biblegateway.com in `docs/reviews/ezra-review.md` §1 |
| 4 | Ezra 6:3 | [ebible.org WEB, Ezra 6](https://ebible.org/web/EZR06.htm) | Match, single source only (same chapter `medium` already flagged single-source) — **flag for QA §3** |
| 5 | Ezra 6:22 | [ebible.org WEB, Ezra 6](https://ebible.org/web/EZR06.htm) | Match, single source only (same as `medium`'s own flag for this verse) — **flag for QA §3** |
| 6 | Ezra 7:21 | [ebible.org WEB, Ezra 7](https://ebible.org/web/EZR07.htm) | Match — falls inside the range already cross-checked against biblegateway.com in `docs/reviews/ezra-review.md` §1 |
| 7 | Ezra 7:27 | [ebible.org WEB, Ezra 7](https://ebible.org/web/EZR07.htm) | Match — `medium`'s own review flagged 7:27-28 as single-source only; re-fetched here from ebible.org, unchanged |
| 8 | Ezra 9:6 | [ebible.org WEB, Ezra 9](https://ebible.org/web/EZR09.htm), [biblegateway.com WEB, Ezra 9](https://www.biblegateway.com/passage/?search=Ezra+9&version=WEB) | **Match, two independent sources** — deliberately double-checked given Scene 5's sensitivity |
| 9-10 | Temple-rebuilding sequence; Ezra 3:13 MC | Already verified in `docs/reviews/ezra-review.md` §1 (exact reuse of `medium`'s difficulty-ladder illustrations, no new text) | Match |

No character-level mismatches found for any item. Items 1, 2, 4, and 5 are single-source (ebible.org)
only this pass; prioritize them for the independent QA §3 pass.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every recall blank is drawn from a verbatim WEB
  clause, with the surrounding text quoted exactly. **Pass.**
- All items are recall/typed format per this tier's design intent; none ask the player to affirm
  interpretation beyond the blanked word. **Pass.**
- The brief carries forward Scene 5's exclusion of Ezra 9:1-2, 10:3, 10:10-12, and 10:44 without
  modification, and item 8 (9:6) stays within the confession content already approved for that
  scene. **Pass.**
- Item 5 (Ezra 6:22, "the king of Assyria") was specifically checked for whether the unusual title
  itself needed a structural rule — see §3 below. **Pass, no rule required.**

## 3. Contested-Territory Cross-Check

### Scene 5 bounding (item 8, Ezra 9:6)
This item draws only on the confession verse already approved and cross-tradition-checked in
`docs/reviews/ezra-review.md` §3, and is deliberately double-sourced here given the scene's
sensitivity (see §1 above). The blank falls on "head" — a word with no doctrinal loading — never on
anything touching the divorce/expulsion question. **Bounding holds.**

### Ezra 6:22, "the king of Assyria"
Independently checked via [Bible Hub's aggregated commentary on Ezra 6:22](https://biblehub.com/ezra/6-22.htm)
(Gill, Pulpit Commentary, Cambridge Bible for Schools): all read this as a historical-naming note —
by the time of this verse, the former Assyrian empire's territory had long been absorbed into the
Persian empire, and several commentators note the text applies the older regional name to the
reigning Persian king (most likely Darius) rather than asserting a second, contradictory ruler. No
source found treats this as a live doctrinal or cross-tradition dispute; it is a textual/historical
curiosity, not contested ground requiring narrative-only bounding beyond what applies to any plain
narrative-fact item. **No structural rule needed** — the item already grades only the verbatim word
"Assyria" as WEB prints it.

### Ezra 1:1, prophecy fulfillment
Not used in this tier's brief. The `medium`-established structural rule remains binding but is not
engaged here.

### Chronology of Ezra and Nehemiah
Item 9 (boss sequence) sequences only within this book's own narrative order, matching the bounding
already confirmed in `docs/reviews/ezra-review.md` §3. No change needed.

### Newly-selected verses (1:2, 1:9, 3:8, 6:3, 7:21, 7:27)
Independently considered: a proclamation's wording, an inventory count, a name, a building
dimension, an administrative decree, and a blessing. No live cross-tradition doctrinal disagreement
was found or is plausible for any of these. No dedicated source search beyond §1's verse-text
verification and the Ezra 6:22 check above was needed.

## 4. Verdict

**`approved-with-changes`** — no required fixes; "changes" here refers only to the fact that this
brief is itself the first delivery of `hard`-tier content for this book, carrying forward the
medium-tier's resolved Scene 5 bounding rather than re-litigating it.

**Outstanding, not this review's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3 (items 1, 2, 4, and 5 above are single-source only this pass) — that is a
distinct check from this theological/neutrality review and still must run before ingestion, per
`BACKEND_REQUIREMENTS.md` §4.
