# Gen2Rev — Content Style Guide

Status: Draft v1, Phase 2. Governs every challenge item and content brief across all 13 MVP books.
Source: `GEN2REV_MASTER_PROMPT.md` Phase 2 Task 4, Section 5 (guardrails).
This is the rulebook `SKILL.md` step 2 ("flag contested territory") and the theological-reviewer
gate (`SKILL.md` step 3) are checked against.

---

## 1. Default Posture

**Verse-only, cited, no commentary.** Every graded challenge item is built from narrative fact or
direct verse text — never from a theological claim, interpretation, or application the text itself
doesn't state outright.

## 2. In-Bounds (safe to build challenges from)

- **Direct verse recall** — the exact WEB text of a verse, cited with book/chapter/verse.
- **Narrative facts** — who did what, in what order, where, said what, to whom — as the text
  narrates it, not as later tradition or a specific denomination interprets it.
- **Sequencing** — the order events happen in the text (e.g. the order of the plagues, the order
  of David and Goliath's confrontation, the order of Solomon's temple construction steps).
- **Character/setting identification** — names, places, relationships stated in the text.
- **Direct quotations attributed in-text** — e.g. what God says to Abraham, what Joseph says to his
  brothers — quoted, not paraphrased as if it were direct text (per the content-integrity
  guardrail in `CLAUDE.md`).

## 3. Out-of-Bounds for MVP (do not build graded challenges from these)

- **Doctrinal interpretation** — e.g. covenant theology vs. dispensationalism readings of the
  Abrahamic covenant; specific soteriological framing of sacrifice/atonement language in Leviticus.
- **Denominational positions** — anything where a "correct answer" would side with one
  denomination's reading over another's equally mainstream reading.
- **Historicity/scientific framing debates** — e.g. whether Genesis 1's "days" are literal
  24-hour days, a literary framework, or long ages; whether the Flood was global or local. The
  text's narrative content (what happens, in what order, as told) is in-bounds; the extra-textual
  debate about how to read it scientifically or historically is not.
- **Moral judgment questions** — asking a player to evaluate whether a character's action was
  right or wrong beyond what the text itself states (e.g. don't build a challenge whose "correct"
  answer requires a player to personally endorse a judgment the text is silent on).
- **Paraphrase presented as quotation** — a challenge must never present invented or reworded text
  as if it were a direct verse; if it's not verbatim WEB text, it isn't presented in quotation
  marks or as "the verse."

## 4. Handling Contested Territory When It's Unavoidable

Some pivotal, narratively-important scenes sit near contested ground even in in-bounds content
(e.g. the binding of Isaac in Genesis 22 touches sacrifice/testing theology; the conquest
narratives in Joshua touch just-war and ḥerem debates). The rule is not "avoid the scene" — these
are pivotal scenes that belong in the world's content brief — it's **stay narrative, don't grade
the interpretation**:

- The challenge asks *what happened* and *what the text says*, never *why God commanded it* or
  *whether it was justified*.
- Every content brief must have an explicit "contested territory" note (per `SKILL.md` step 2)
  flagging where a book touches this kind of ground, so the theological reviewer evaluates it
  deliberately rather than it surfacing as a surprise after ingestion.

## 5. Citation Requirement

Every challenge item, with no exceptions, carries:
1. The verse reference (book chapter:verse)
2. The translation (WEB for MVP)
3. The verbatim text, if the challenge displays or requires recall of text

No challenge item ships without all three — this is enforced technically in the content pipeline
(`BACKEND_REQUIREMENTS.md` §4), not just by this style guide.

## 6. Acceptance Criteria

- [ ] Every content brief written under this guide has an explicit contested-territory section,
      even if it says "none identified"
- [ ] No challenge item in any book's brief asks a player to affirm a doctrinal or denominational
      position
- [ ] No challenge item presents paraphrased text as direct quotation
- [ ] Theological reviewer sign-off checks conformance to this guide specifically, not just
      general "does this seem fine"
