# Content Brief — Zephaniah, Hard Tier (World 36)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/zephaniah-hard-review.md`. No changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — this brief's verse text was drawn from a fresh **draft pull** against two live WEB
sources (ebible.org and biblegateway.com), not the dedicated character-for-character QA check.
Theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table. No `docs/ingest/*.sql` file has been written or modified for
this tier — that is separate, later work, out of scope for this task.

Translation: World English Bible (WEB) throughout. All verse text re-fetched live from
[ebible.org](https://ebible.org/web/ZEP01.htm) and
[biblegateway.com](https://www.biblegateway.com/passage/?search=Zephaniah+1-3&version=WEB)
(`version=WEB`) on 2026-09-03; both sources matched character-for-character with each other and
with the already-approved `docs/content/zephaniah.md` text.

> **Zephaniah 1:16-18 and 2:4-15 are permanently excluded at every difficulty tier**, per
> `docs/content/zephaniah.md`'s Contested Territory section. No verse from either range appears
> anywhere in this brief.

---

## Design intent for this tier

This tier requires typed recall throughout, selecting less commonly memorized clauses within the
same 4 pivotal passages rather than the single most iconic phrase per verse. It stays inside the
same guardrails as every other tier: verbatim WEB text only, narrative fact only, no doctrinal
position required. Every regular item below skews toward **`difficulty_rank` 5**.

## Pivotal Passages — reused from `docs/content/zephaniah.md`, no new scenes

Same 4 passages as `medium` and `easy`, unchanged: **1. Zephaniah 1:14-15**, **2. Zephaniah 2:3**,
**3. Zephaniah 3:14-15**, **4. Zephaniah 3:17**. As with the easy tier, every verse within these 4
passages already has a `medium`-tier challenge item built from it, so the items below are new
challenge items built from the same already-approved verse text — each blanking a different word or
clause than `medium` used on that same verse, all typed recall. One boss item is an exact reuse of
already-reviewed `medium` boss content, per the precedent set in `docs/content/genesis-hard.md`.

## Challenge Items (8: 6 regular + 2 boss)

### Regular (6)

1. **Zeph 1:14**: "The great day of Yahweh is near. It is near and hurries greatly, the voice of the
   day of Yahweh. The mighty man cries there bitterly." — recall: "...the voice of the day of
   Yahweh. The mighty man cries there ___." → **bitterly**. *(difficulty_rank 5. Medium blanked
   "near," the verse's opening word; this blanks the closing clause instead.)*
2. **Zeph 1:15**: "That day is a day of wrath, a day of distress and anguish, a day of trouble and
   ruin, a day of darkness and gloom, a day of clouds and blackness," — recall: "...a day of trouble
   and ___, a day of darkness and gloom, a day of clouds and blackness," → **ruin**. *(difficulty_rank
   5. Medium blanked "wrath," the first item in this list; this blanks a middle item less likely to
   be recalled by position alone.)*
3. **Zeph 2:3**: "Seek Yahweh, all you humble of the land, who have kept his ordinances. Seek
   righteousness. Seek humility. It may be that you will be hidden in the day of Yahweh's anger." —
   recall: "Seek Yahweh, all you humble of the land, who have kept his ___." → **ordinances**.
   *(difficulty_rank 5. Medium blanked "humility," the third imperative; this blanks a precise noun
   from the verse's opening clause.)*
4. **Zeph 3:14**: "Sing, daughter of Zion! Shout, Israel! Be glad and rejoice with all your heart,
   daughter of Jerusalem." — recall: "Sing, daughter of Zion! Shout, ___!" → **Israel**.
   *(difficulty_rank 5. Medium blanked "rejoice"; this blanks the addressee of the verse's second
   imperative.)*
5. **Zeph 3:15**: "Yahweh has taken away your judgments. He has thrown out your enemy. The King of
   Israel, Yahweh, is among you. You will not be afraid of evil any more." — recall: "Yahweh has
   taken away your ___." → **judgments**. *(difficulty_rank 5. Medium blanked "enemy," the verse's
   second clause; this blanks its opening clause instead.)*
6. **Zeph 3:17**: "Yahweh, your God, is among you, a mighty one who will save. He will rejoice over
   you with joy. He will calm you in his love. He will rejoice over you with singing." — recall: "He
   will ___ you in his love." → **calm**. *(difficulty_rank 5. Medium blanked "singing," the verse's
   final and most memorable word; this blanks a verb from its third clause instead.)*

### Boss (2)

7. **Boss recall — reused verbatim from `medium`**: Zeph 3:17, "...He will calm you in his love. He
   will rejoice over you with ___." → **singing**.
8. **Boss sequence — reused verbatim from `medium`**: given three quotations (Zeph 1:14, 2:3, 3:17),
   place them in the order they occur in the book and match each to its reference.

## Contested Territory

Everything already flagged in `docs/content/zephaniah.md` applies unchanged and is reconfirmed here
against the items actually used in this tier:

- **The "day of Yahweh" — near-term historical judgment vs. eschatological reading (items 1 and 2,
  drawing on 1:14-15; item 6 and boss items 7-8, drawing on 3:17).** The bounding from
  `docs/content/zephaniah.md` and `docs/reviews/zephaniah-review.md` §3 holds unchanged: no item in
  this brief asks whether "the day of Yahweh" refers to a specific historical event, a future
  end-times event, or both. Precision of recall does not increase doctrinal exposure — each item
  grades a single word or short clause from the text's own description of the day, never a timeline
  or fulfillment claim.
- **Zephaniah 1:16-18 and 2:4-15 remain permanently excluded.** No verse from either range appears
  in this brief, reconfirmed against every item above.
- **Zephaniah 3:9, universalist restoration language.** Not selected as challenge-ready text in this
  brief either, consistent with `medium`.
- **No new contested ground.** Items 3, 4, 5, and boss item 8 draw on Zeph 2:3, 3:14, and 3:15,
  already confirmed in `docs/reviews/zephaniah-review.md` §3 to carry no live cross-tradition
  dispute beyond the "day of Yahweh" question already addressed above.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, no
      changes required, see `docs/reviews/zephaniah-hard-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off and from this brief's own live draft-pull, both required
      before ingestion)
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages; no new
      scenes added
- [x] Zephaniah 1:16-18 and 2:4-15 confirmed excluded from this brief, unchanged from `medium`
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
