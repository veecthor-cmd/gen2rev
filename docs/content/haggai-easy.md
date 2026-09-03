# Content Brief — Haggai, Easy Tier (World 37)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/haggai-easy-review.md`. No changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — this brief's verse text was drawn from a fresh **draft pull** against two live WEB
sources (ebible.org and biblegateway.com), not the dedicated character-for-character QA check.
Theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table. No `docs/ingest/*.sql` file has been written or modified for
this tier — that is separate, later work, out of scope for this task.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.
All verse text re-fetched live from [ebible.org](https://ebible.org/web/HAG01.htm) and
[biblegateway.com](https://www.biblegateway.com/passage/?search=Haggai+1-2&version=WEB)
(`version=WEB`) on 2026-09-03; both sources matched character-for-character with each other and
with the already-approved `docs/content/haggai.md` text.

> **Haggai 2:10-19 and 2:20-23 are permanently excluded at every difficulty tier**, per
> `docs/content/haggai.md`'s Contested Territory section. No verse from either range appears
> anywhere in this brief.

---

## Design intent for this tier

Per the difficulty-tier design established in `docs/content/genesis-easy.md`: this tier draws the
most iconic, broadly-recognizable facts from Haggai's 4 pivotal passages and favors
multiple-choice recognition over typed recall. It does **not** simplify or paraphrase verse text —
the style guide's "verbatim WEB text only" rule applies identically at every tier. Every regular
item below skews toward **`difficulty_rank` 1**.

## Pivotal Passages — reused from `docs/content/haggai.md`, no new scenes

Same 4 passages, unchanged: **1. Haggai 1:2, 1:4** (the people's excuse and the Lord's rebuke),
**2. Haggai 1:8** (the command to rebuild), **3. Haggai 1:12-13** (the people obey), **4. Haggai
2:4, 2:9** (be strong, and the latter glory). Because every verse within these 4 passages already
has a `medium`-tier challenge item built from it (see
`docs/ingest/habakkuk-zephaniah-haggai.sql`), the items below reuse the same already-approved verse
text but build genuinely new challenge items from it — new question stems grading a different fact
than `medium` graded on that same verse, and/or a new format. Two boss items are exact reuses of
already-reviewed `medium` boss content, per the precedent set in `docs/content/genesis-easy.md`.

## Challenge Items (8: 6 regular + 2 boss)

### Regular (6)

1. **Hag 1:2**: "This is what Yahweh of Armies says: These people say, 'The time hasn't yet come,
   the time for Yahweh's house to be built.'" — MC: "According to Haggai 1:2, what title does
   Yahweh use for himself in this message?" Options: Yahweh of Armies / the God of Abraham / the
   Holy One of Israel / the Lord Most High. Correct: Yahweh of Armies. *(difficulty_rank 1. Medium's
   items on this verse graded the people's excuse; this grades the opening messenger-formula title
   instead.)*
2. **Hag 1:4**: "Is it a time for you yourselves to dwell in your paneled houses, while this house
   lies waste?" — MC: "According to Haggai 1:4, what kind of houses does Yahweh say the people live
   in while his house lies waste?" Options: paneled houses / tents / houses of cedar / palaces.
   Correct: paneled houses. *(difficulty_rank 1. Medium blanked "waste"; this MC item grades the
   verse's other distinctive noun, "paneled.")*
3. **Hag 1:8**: "'Go up to the mountain, bring wood, and build the house. I will take pleasure in
   it, and I will be glorified,' says Yahweh." — MC: "According to Haggai 1:8, where does Yahweh
   tell the people to go to get wood?" Options: up to the mountain / to the riverbank / to the
   marketplace / to Lebanon. Correct: up to the mountain. *(difficulty_rank 1. Medium's items on
   this verse graded what to build and what Yahweh promises; this grades the destination named at
   the verse's start.)*
4. **Hag 1:12**: "Then Zerubbabel the son of Shealtiel and Joshua the son of Jehozadak, the high
   priest, with all the remnant of the people, obeyed Yahweh their God's voice, and the words of
   Haggai the prophet, as Yahweh their God had sent him; and the people feared Yahweh." — MC:
   "According to Haggai 1:12, whose words did the people obey, besides Yahweh's voice?" Options:
   the words of Haggai the prophet / the words of Zechariah / the words of Ezra / the words of
   Malachi. Correct: the words of Haggai the prophet. *(difficulty_rank 1. Medium's items on this
   verse graded who obeyed and what the people did afterward ("feared"); this grades whose words are
   named alongside Yahweh's voice.)*
5. **Hag 1:13**: "Then Haggai, Yahweh's messenger, spoke Yahweh's message to the people, saying, 'I
   am with you,' says Yahweh." — MC: "According to Haggai 1:13, who delivered Yahweh's reassurance
   to the people?" Options: Haggai, Yahweh's messenger / Zerubbabel / Joshua the high priest / an
   angel. Correct: Haggai, Yahweh's messenger. *(difficulty_rank 1. Medium blanked "with," the
   reassurance's own wording; this grades who delivered it.)*
6. **Hag 2:9** (iconic capstone verse): "'The latter glory of this house will be greater than the
   former,' says Yahweh of Armies; 'and in this place I will give peace,' says Yahweh of Armies." —
   MC: "According to Haggai 2:9, what does Yahweh promise to give in that place, besides greater
   latter glory?" Options: peace / silver and gold / rain / victory over enemies. Correct: peace.
   *(difficulty_rank 1. Medium blanked "greater"; this MC item grades the verse's second promise
   instead.)*

### Boss (2)

7. **Boss recall — reused verbatim from `medium`**: Hag 2:4, "'Yet now be ___, Zerubbabel,' says
   Yahweh. 'Be strong, Joshua son of Jehozadak, the high priest. Be strong, all you people of the
   land,' says Yahweh, 'and work, for I am with you,' says Yahweh of Armies." → **strong**.
   *(difficulty_rank 1, unchanged from medium.)*
8. **Boss sequence — reused verbatim from `medium`**: order the 4 pivotal passages as they appear in
   the book (the people's excuse and the Lord's rebuke [1:2, 1:4] → the command to rebuild [1:8] →
   the people obey [1:12-13] → be strong, and the latter glory [2:4, 2:9]).

## Contested Territory

Everything already flagged in `docs/content/haggai.md` applies unchanged and is reconfirmed here
against the items actually used in this tier:

- **Haggai 2:20-23 (the signet-ring oracle) and 2:10-19 (the ritual-purity dialogue) remain
  permanently excluded.** No verse from either range appears in this brief, reconfirmed against
  every item above. This carries forward `medium`'s exclusion unchanged, per this assignment's
  explicit instruction.
- **The people's excuse (item 1, drawing on 1:2) and modern stewardship/tithing application.** The
  bounding from `docs/content/haggai.md` and `docs/reviews/haggai-review.md` holds unchanged: item 1
  grades only the messenger-formula title Yahweh uses for himself in the verse, not the excuse
  itself or any application to modern giving or church-building practice. No item in this brief
  asks a player to apply the text to modern stewardship.
- **Haggai's "shaking of the nations" (2:6-7).** Not selected as challenge-ready text in this brief
  either, consistent with `medium`.
- **No new contested ground.** Items 2-6 and boss item 8 draw on Hag 1:4, 1:8, 1:12, 1:13, and 2:4/
  2:9, already confirmed in `docs/reviews/haggai-review.md` to carry no live cross-tradition dispute.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, no
      changes required, see `docs/reviews/haggai-easy-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off and from this brief's own live draft-pull, both required
      before ingestion)
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages; no new
      scenes added
- [x] Haggai 2:10-19 and 2:20-23 confirmed excluded from this brief, unchanged from `medium`
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
