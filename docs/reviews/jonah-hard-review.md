# Theological Review — Jonah, Hard Tier (World 32)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored the
brief, per `.claude/agents/theological-reviewer.md`'s exact procedure (steps 1-9).
Brief reviewed: `docs/content/jonah-hard.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`
Prior review checked against: `docs/reviews/jonah-review.md` (medium tier) and
`docs/reviews/jonah-easy-review.md` (easy tier, same book, same underlying source verification).

---

## 1. Verse-Text Verification

Every verse used in this brief was re-fetched fresh from ebible.org (full chapters 1-4) during this
review, and cross-checked against the existing double-sourcing on record in
`docs/reviews/jonah-review.md` §1 (ebible.org + biblegateway.com, whole book).

| Item | Verse | Source(s) | Result |
|---|---|---|---|
| 1 | Jonah 1:9 | [ebible.org JON01](https://ebible.org/web/JON01.htm); already double-sourced in `docs/reviews/jonah-review.md` §1 | **Match** |
| 2 | Jonah 1:6 | same — new verse relative to prior briefs, but part of the same already-fetched full chapter 1 | **Match** |
| 3 | Jonah 2:6 | [ebible.org JON02](https://ebible.org/web/JON02.htm); new verse relative to prior briefs, part of the same already-fetched full chapter 2 | **Match** |
| 4 | Jonah 2:4 | same | **Match** |
| 5 | Jonah 3:3 | [ebible.org JON03](https://ebible.org/web/JON03.htm); new verse, part of already-fetched full chapter 3 | **Match** |
| 6 | Jonah 3:9 | same | **Match** |
| 7 | Jonah 4:2 | [ebible.org JON04](https://ebible.org/web/JON04.htm); already double-sourced | **Match** |
| 8 | Jonah 4:3 | same; new verse, part of already-fetched full chapter 4 | **Match** |
| 9 | Jonah 1:12 | ebible.org JON01; already double-sourced | **Match** |
| 11 | Jonah 4:10-11 | ebible.org JON04; already double-sourced | **Match** |

No character-level mismatches found. Items 2, 3, 5, 6, and 8 use verses not previously quoted in
`docs/content/jonah.md` or `docs/content/jonah-easy.md`; all five are within chapters already fetched
in full from ebible.org for this and prior reviews (single-source for these five specifically —
flagged here for the independent QA §3 pass to prioritize, consistent with this project's convention
for newly-introduced verses).

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line matches WEB verbatim; every blank
  is a single word or short phrase drawn directly from the verbatim text, never a paraphrase. **Pass.**
- All challenge-ready content is narrative fact or direct verse text, recall-only throughout per this
  tier's design intent. **Pass.**
- Item 3's blank ("mountains") and item 4's blank ("temple") sit inside Jonah's prayer (a
  first-person poetic psalm) but each blank targets a plain narrative/descriptive noun, not an
  interpretive claim about the prayer's theology. **Pass.**
- Boss item 11 (4:10-11 recall capstone) presents the text's closing question verbatim, blank on
  "animals" only — does not supply Jonah's unrecorded answer. **Pass.**

## 3. Contested-Territory Cross-Check

This tier's items map onto scenes already cleared in `docs/reviews/jonah-review.md` §3, but two items
use verses closer to the "divine relenting" contested item than anything in the medium or easy tiers,
so those get focused re-confirmation here rather than a blanket "no change needed":

- **Item 6 (Jonah 3:9, "perish")** — "Who knows whether God will not turn and relent, and turn away
  from his fierce anger, so that we might not perish?" This is the Ninevite king's own quoted
  proclamation, not a narratorial or brief-authored claim about God's nature. The medium-tier review
  already sourced the live divine-relenting disagreement (classical/anthropomorphic reading —
  [Bible Hub on Jonah 3:10](https://biblehub.com/commentaries/jonah/3-10.htm), Poole/Gill/JFB/Barnes —
  vs. open theism's genuine-responsiveness reading — [Wikipedia, "Open theism"](https://en.wikipedia.org/wiki/Open_theism))
  and found it asymmetric enough (mainstream convergence vs. one minority Protestant position) that
  narrative-only bounding, without a Genesis-3:15-style hard format restriction, is sufficient. This
  item's blank ("perish") grades only the king's quoted wording, not whether God actually did or how
  he "turns," so it stays inside that same bounding. **No change needed.**
- **Item 7 (Jonah 4:2, "kindness")** — reuses the already-cleared verse (medium tier's Scene 5
  challenge-ready verse) at a new blank; grades only Jonah's own quoted description of God's
  character. Same bounding as above. **No change needed.**
- **Item 8 (Jonah 4:3, "die")** — Jonah's own quoted wish to die, parallel in kind to the
  already-reviewed 4:9 ("I am right to be angry, even to death") which the medium-tier review
  confirmed stays correctly on the narrative-fact/moral-judgment boundary (`CONTENT_STYLE_GUIDE.md`
  §3) — no item asks whether Jonah's despair was justified, only what he said. **No change needed.**
- **Fish historicity, Nineveh/Nahum tension, "sign of Jonah" exclusion**: no item in this tier
  reopens these beyond what's already cleared (items 3, 4 are within the fish/prayer scene but grade
  only plain descriptive nouns; no item references Nahum or NT material). **No change needed.**

## 4. Additional Items Found

None. Every verse and framing in this brief traces to a scene and Contested Territory item already
identified and sourced in `docs/reviews/jonah-review.md`.

## 5. Verdict

**`approved`** — no structural changes required. Every item traces to an already-cleared scene, uses
verbatim WEB text in recall-only format appropriate to this tier, and stays within the Contested
Territory bounding already established and specifically re-confirmed here for the divine-relenting
and Jonah's-despair items.

**Not escalated.** The two items closest to live contested ground (3:9's "relent" language and 4:3's
death-wish) both grade only quoted narrative wording, consistent with how the medium tier's review
already resolved the same underlying questions (asymmetric divine-relenting disagreement; moral-
judgment boundary on Jonah's anger/despair).

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, with priority on this brief's newly-introduced verses (1:6, 2:4, 2:6, 3:3,
3:9, 4:3) not previously quoted in any prior Jonah brief.
