# Content Brief — Haggai, Hard Tier (World 37)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/haggai-hard-review.md`. No changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — this brief's verse text was drawn from a fresh **draft pull** against two live WEB
sources (ebible.org and biblegateway.com), not the dedicated character-for-character QA check.
Theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table. No `docs/ingest/*.sql` file has been written or modified for
this tier — that is separate, later work, out of scope for this task.

Translation: World English Bible (WEB) throughout. All verse text re-fetched live from
[ebible.org](https://ebible.org/web/HAG01.htm) and
[biblegateway.com](https://www.biblegateway.com/passage/?search=Haggai+1-2&version=WEB)
(`version=WEB`) on 2026-09-03; both sources matched character-for-character with each other and
with the already-approved `docs/content/haggai.md` text.

> **Haggai 2:10-19 and 2:20-23 are permanently excluded at every difficulty tier**, per
> `docs/content/haggai.md`'s Contested Territory section. No verse from either range appears
> anywhere in this brief.

---

## Design intent for this tier

This tier requires typed recall throughout, selecting less commonly memorized clauses within the
same 4 pivotal passages rather than the single most iconic phrase per verse. It stays inside the
same guardrails as every other tier: verbatim WEB text only, narrative fact only, no doctrinal
position required. Every regular item below skews toward **`difficulty_rank` 5**.

## Pivotal Passages — reused from `docs/content/haggai.md`, no new scenes

Same 4 passages as `medium` and `easy`, unchanged: **1. Haggai 1:2, 1:4**, **2. Haggai 1:8**,
**3. Haggai 1:12-13**, **4. Haggai 2:4, 2:9**. As with the easy tier, every verse within these 4
passages already has a `medium`-tier challenge item built from it, so the items below are new
challenge items built from the same already-approved verse text — each blanking a different word or
clause than `medium` used on that same verse, all typed recall. Two boss items are exact reuses of
already-reviewed `medium` boss content, per the precedent set in `docs/content/genesis-hard.md`.

## Challenge Items (9: 7 regular + 2 boss)

### Regular (7)

1. **Hag 1:2**: "This is what Yahweh of Armies says: These people say, 'The time hasn't yet come,
   the time for Yahweh's house to be built.'" — recall: "These people say, 'The time hasn't yet
   come, the time for Yahweh's ___ to be built.'" → **house**. *(difficulty_rank 5. Medium blanked
   "come," the verse's first repeated clause; this blanks the noun in its second, parallel clause.)*
2. **Hag 1:4**: "Is it a time for you yourselves to dwell in your paneled houses, while this house
   lies waste?" — recall: "Is it a time for you yourselves to dwell in your ___ houses, while this
   house lies waste?" → **paneled**. *(difficulty_rank 5. Medium blanked "waste," the verse's final
   word; this blanks the descriptive adjective near the verse's start.)*
3. **Hag 1:8**: "'Go up to the mountain, bring wood, and build the house. I will take pleasure in
   it, and I will be glorified,' says Yahweh." — recall: "'Go up to the mountain, bring ___, and
   build the house...' says Yahweh." → **wood**. *(difficulty_rank 5. Medium blanked "house," the
   object built; this blanks the material brought instead.)*
4. **Hag 1:12**: "Then Zerubbabel the son of Shealtiel and Joshua the son of Jehozadak, the high
   priest, with all the remnant of the people, obeyed Yahweh their God's voice, and the words of
   Haggai the prophet, as Yahweh their God had sent him; and the people feared Yahweh." — recall:
   "...obeyed Yahweh their God's voice, and the words of Haggai the ___, as Yahweh their God had
   sent him; and the people feared Yahweh." → **prophet**. *(difficulty_rank 5. Medium blanked
   "feared," the verse's closing verb; this blanks a title deeper in the verse's middle clause.)*
5. **Hag 1:13**: "Then Haggai, Yahweh's messenger, spoke Yahweh's message to the people, saying, 'I
   am with you,' says Yahweh." — recall: "Then Haggai, Yahweh's ___, spoke Yahweh's message to the
   people, saying, 'I am with you,' says Yahweh." → **messenger**. *(difficulty_rank 5. Medium
   blanked "with," from the quoted reassurance itself; this blanks Haggai's own title instead.)*
6. **Hag 2:4**: "'Yet now be strong, Zerubbabel,' says Yahweh. 'Be strong, Joshua son of Jehozadak,
   the high priest. Be strong, all you people of the land,' says Yahweh, 'and work, for I am with
   you,' says Yahweh of Armies." — recall: "...'and work, for I am with you,' says Yahweh of ___." →
   **Armies**. *(difficulty_rank 5. Medium's item on this verse (boss-level) blanked "strong," the
   thrice-repeated command; this regular-tier item blanks the closing divine title instead.)*
7. **Hag 2:9**: "'The latter glory of this house will be greater than the former,' says Yahweh of
   Armies; 'and in this place I will give peace,' says Yahweh of Armies." — recall: "...'and in this
   ___ I will give peace,' says Yahweh of Armies." → **place**. *(difficulty_rank 5. Medium blanked
   "greater," the verse's central comparison; this blanks a precise noun from its second clause.)*

### Boss (2)

8. **Boss recall — reused verbatim from `medium`**: Hag 2:9, "'The latter glory of this house will
   be ___ than the former,' says Yahweh of Armies; 'and in this place I will give peace,' says
   Yahweh of Armies." → **greater**.
9. **Boss sequence — reused verbatim from `medium`**: given three quotations (Hag 1:4, 1:13, 2:9),
   place them in the order they occur in the book and match each to its reference.

## Contested Territory

Everything already flagged in `docs/content/haggai.md` applies unchanged and is reconfirmed here
against the items actually used in this tier:

- **Haggai 2:20-23 (the signet-ring oracle) and 2:10-19 (the ritual-purity dialogue) remain
  permanently excluded.** No verse from either range appears in this brief, reconfirmed against
  every item above.
- **The people's excuse (items 1-2, drawing on 1:2 and 1:4) and modern stewardship/tithing
  application.** The bounding from `docs/content/haggai.md` and `docs/reviews/haggai-review.md`
  holds unchanged: both items grade only single words from the text's own statement of the excuse
  and the rebuke, never an application to modern giving or church-building practice. Precision of
  recall does not increase exposure here.
- **Haggai's "shaking of the nations" (2:6-7).** Not selected as challenge-ready text in this brief
  either, consistent with `medium`.
- **No new contested ground.** Items 3-7 and boss items 8-9 draw on Hag 1:8, 1:12, 1:13, 2:4, and
  2:9, already confirmed in `docs/reviews/haggai-review.md` to carry no live cross-tradition
  dispute.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, no
      changes required, see `docs/reviews/haggai-hard-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off and from this brief's own live draft-pull, both required
      before ingestion)
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages; no new
      scenes added
- [x] Haggai 2:10-19 and 2:20-23 confirmed excluded from this brief, unchanged from `medium`
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
