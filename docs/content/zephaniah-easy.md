# Content Brief — Zephaniah, Easy Tier (World 36)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/zephaniah-easy-review.md`. No changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — this brief's verse text was drawn from a fresh **draft pull** against two live WEB
sources (ebible.org and biblegateway.com), not the dedicated character-for-character QA check.
Theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table. No `docs/ingest/*.sql` file has been written or modified for
this tier — that is separate, later work, out of scope for this task.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.
All verse text re-fetched live from [ebible.org](https://ebible.org/web/ZEP01.htm) and
[biblegateway.com](https://www.biblegateway.com/passage/?search=Zephaniah+1-3&version=WEB)
(`version=WEB`) on 2026-09-03; both sources matched character-for-character with each other and
with the already-approved `docs/content/zephaniah.md` text.

> **Zephaniah 1:16-18 and 2:4-15 are permanently excluded at every difficulty tier**, per
> `docs/content/zephaniah.md`'s Contested Territory section. No verse from either range appears
> anywhere in this brief.

---

## Design intent for this tier

Per the difficulty-tier design established in `docs/content/genesis-easy.md`: this tier draws the
most iconic, broadly-recognizable facts from Zephaniah's 4 pivotal passages and favors
multiple-choice recognition over typed recall. It does **not** simplify or paraphrase verse text —
the style guide's "verbatim WEB text only" rule applies identically at every tier. Every regular
item below skews toward **`difficulty_rank` 1**.

## Pivotal Passages — reused from `docs/content/zephaniah.md`, no new scenes

Same 4 passages, unchanged: **1. Zephaniah 1:14-15** (the day of Yahweh announced), **2. Zephaniah
2:3** (the call to seek Yahweh), **3. Zephaniah 3:14-15** (Zion's coming joy), **4. Zephaniah 3:17**
(Yahweh rejoices over his people). Because every verse within these 4 passages already has a
`medium`-tier challenge item built from it (see `docs/ingest/habakkuk-zephaniah-haggai.sql`), the
items below reuse the same already-approved verse text but build genuinely new challenge items from
it — new question stems grading a different fact than `medium` graded on that same verse, and/or a
new format (MC where `medium` used recall). One boss item is an exact reuse of already-reviewed
`medium` boss content, per the precedent set in `docs/content/genesis-easy.md`.

## Challenge Items (8: 6 regular + 2 boss)

### Regular (6)

1. **Zeph 1:14**: "The great day of Yahweh is near. It is near and hurries greatly, the voice of the
   day of Yahweh. The mighty man cries there bitterly." — MC: "According to Zephaniah 1:14, who
   cries out bitterly on that day?" Options: the mighty man / the children / the priests / the false
   prophets. Correct: the mighty man. *(difficulty_rank 1. Medium's items on this verse graded "what
   is near"; this grades a different narrative fact from the same verse.)*
2. **Zeph 1:15**: "That day is a day of wrath, a day of distress and anguish, a day of trouble and
   ruin, a day of darkness and gloom, a day of clouds and blackness," — MC: "According to Zephaniah
   1:15, besides a day of wrath, what kind of day does the text call that day?" Options: a day of
   darkness and gloom / a day of celebration / a day of rain / a day of rest. Correct: a day of
   darkness and gloom. *(difficulty_rank 1. Medium blanked "wrath" via recall; this MC item names a
   different item from the same list.)*
3. **Zeph 2:3**: "Seek Yahweh, all you humble of the land, who have kept his ordinances. Seek
   righteousness. Seek humility. It may be that you will be hidden in the day of Yahweh's anger." —
   MC: "According to Zephaniah 2:3, who is told to seek Yahweh?" Options: all the humble of the land
   / only the priests / only the king / only the prophets. Correct: all the humble of the land.
   *(difficulty_rank 1. Medium's items on this verse graded what the humble are told to seek
   besides Yahweh; this grades who is being addressed.)*
4. **Zeph 3:14**: "Sing, daughter of Zion! Shout, Israel! Be glad and rejoice with all your heart,
   daughter of Jerusalem." — MC: "According to Zephaniah 3:14, who is told to sing?" Options: the
   daughter of Zion / the elders / the priests / the shepherds. Correct: the daughter of Zion.
   *(difficulty_rank 1. Medium blanked the verb "rejoice"; this MC item grades the addressee
   instead.)*
5. **Zeph 3:15**: "Yahweh has taken away your judgments. He has thrown out your enemy. The King of
   Israel, Yahweh, is among you. You will not be afraid of evil any more." — MC: "According to
   Zephaniah 3:15, what title does the text give Yahweh?" Options: "The King of Israel" / "The King
   of Nations" / "The Judge of the Earth" / "The Shepherd of Zion." Correct: "The King of Israel."
   *(difficulty_rank 1. Medium blanked "enemy"; this MC item grades a different clause from the same
   verse.)*
6. **Zeph 3:17** (iconic capstone verse): "Yahweh, your God, is among you, a mighty one who will
   save. He will rejoice over you with joy. He will calm you in his love. He will rejoice over you
   with singing." — MC: "According to Zephaniah 3:17, besides rejoicing over you with joy, what else
   does Yahweh do?" Options: calm you in his love / punish your enemies / rebuild the temple / send
   rain. Correct: calm you in his love. *(difficulty_rank 1. Medium's items on this verse graded
   "how is Yahweh described" and blanked "singing"; this grades a third, distinct clause.)*

### Boss (2)

7. **Boss recall — reused verbatim from `medium`**: Zeph 3:17, "Yahweh, your God, is among you, a
   mighty one who will save. He will rejoice over you with joy. He will calm you in his love. He
   will rejoice over you with ___." → **singing**. *(difficulty_rank 1, unchanged from medium —
   already the tier's natural anchor line.)*
8. **Boss sequence — reused verbatim from `medium`**: order the 4 pivotal passages as they appear in
   the book (the day of Yahweh announced [1:14-15] → the call to seek Yahweh [2:3] → Zion's coming
   joy [3:14-15] → Yahweh rejoices over his people [3:17]).

## Contested Territory

Everything already flagged in `docs/content/zephaniah.md` applies unchanged and is reconfirmed here
against the items actually used in this tier:

- **The "day of Yahweh" — near-term historical judgment vs. eschatological reading (items 1, 2, and
  boss item 8, drawing on 1:14-15; item 6 and boss item 7, drawing on 3:17).** The bounding from
  `docs/content/zephaniah.md` and `docs/reviews/zephaniah-review.md` §3 holds unchanged: no item in
  this brief asks whether "the day of Yahweh" refers to a specific historical event, a future
  end-times event, or both. Items 1 and 2 grade only narrative detail the text itself states (who
  cries out, what else the day is called); item 6 and boss item 7 grade only what the text says
  Yahweh does, never a timeline or fulfillment reading.
- **Zephaniah 1:16-18 and 2:4-15 remain permanently excluded.** No verse from either range appears
  in this brief, reconfirmed against every item above. This carries forward `medium`'s exclusion
  unchanged — the graphic judgment imagery (1:16-18) and the oracles against the nations (2:4-15)
  stay out of challenge-ready content at every tier, per this assignment's explicit instruction.
- **Zephaniah 3:9, universalist restoration language.** Not selected as challenge-ready text in this
  brief either, consistent with `medium`.
- **No new contested ground.** Items 3, 4, 5, and boss item 8 draw on Zeph 2:3, 3:14, and 3:15,
  already confirmed in `docs/reviews/zephaniah-review.md` §3 to carry no live cross-tradition
  dispute beyond the "day of Yahweh" question already addressed above.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, no
      changes required, see `docs/reviews/zephaniah-easy-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off and from this brief's own live draft-pull, both required
      before ingestion)
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages; no new
      scenes added
- [x] Zephaniah 1:16-18 and 2:4-15 confirmed excluded from this brief, unchanged from `medium`
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
