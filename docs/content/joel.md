# Content Brief — Joel (World 29)

Status: **`approved`** — self-run theological review complete, no changes required, see
`docs/reviews/joel-review.md`. Logging the row in `docs/CONTENT_REVIEW_LOG.md` is the calling
(orchestrating) session's job, per `docs/CONVENTIONS.md`'s sole-writer discipline for that file —
not done by this brief.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql`
file has been written for this book — that is a separate later phase, out of scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — with every challenge-ready
> verse pulled from ebible.org and the most pivotal verses (Joel 1:2-4, 2:12-13, 2:28-29)
> cross-checked independently against biblegateway.com as well; all checks matched
> character-for-character. This is not yet the independent character-for-character QA check
> required by `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table
> (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**, even after
> theological sign-off — sign-off and verbatim-text QA are two distinct checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here.

Differentiation note (`docs/CANON_STRUCTURE.md` §6, Minor Prophets): "mostly short, oracle-heavy —
Jonah is the exception (real narrative). Expect thin content briefs for several of these... not
padded to match a book like Isaiah's density." Joel is 3 chapters (73 verses total). This brief
follows the Leviticus precedent (pivotal *passages*, not forced scenes) and stays deliberately
compact — 3 pivotal passages, not padded to match a longer book's count.

## Setting / Era

Joel gives no date-anchoring king or historical event in its opening verse (contrast Amos 1:1,
which names Uzziah, Jeroboam, and "two years before the earthquake"), so its date is genuinely
uncertain — proposals range from the 9th century BC to the post-exilic period, a scholarly dating
question flagged below and not resolved by this brief. What the book itself narrates is unambiguous
regardless of date: a locust plague of unprecedented severity has stripped the land bare, and the
prophet reads it as a foretaste of "the day of Yahweh" — first as impending judgment, then, after a
call to repentance, as a pivot toward Yahweh's promised restoration and, ultimately, the outpouring
of his Spirit.

## Pivotal Passages (3)

### 1. The Locust Plague and the Call to Lament (Joel 1:2-4, 1:13-15)
The book opens directly into catastrophe: a locust swarm — described in four successive waves,
each finishing what the last left behind — has devastated the land so thoroughly that Joel tells
the elders to make sure their grandchildren hear about it. Priests and farmers alike are told to
mourn, fast, and cry out to Yahweh, because this devastation is read as a sign that "the day of
Yahweh is at hand."

**Challenge-ready verses:**
- Joel 1:2 (WEB): "Hear this, you elders, and listen, all you inhabitants of the land! Has this
  ever happened in your days, or in the days of your fathers?"
- Joel 1:4 (WEB): "What the swarming locust has left, the great locust has eaten. What the great
  locust has left, the grasshopper has eaten. What the grasshopper has left, the caterpillar has
  eaten."
- Joel 1:14 (WEB): "Sanctify a fast. Call a solemn assembly. Gather the elders and all the
  inhabitants of the land to the house of Yahweh, your God, and cry to Yahweh."
- Joel 1:15 (WEB): "Alas for the day! For the day of Yahweh is at hand, and it will come as
  destruction from the Almighty."

### 2. "Turn to Me with All Your Heart" (Joel 2:12-13)
After chapter 2 escalates the locust imagery into a full military description (an invading army
that climbs walls and enters houses like an unstoppable force, 2:1-11), the book pivots sharply:
Yahweh himself calls the people to repentance — not outward ritual alone ("tear your heart and not
your garments") but genuine return, grounded in the text's own description of Yahweh's character.

**Challenge-ready verses:**
- Joel 2:12 (WEB): "'Yet even now,' says Yahweh, 'turn to me with all your heart, and with fasting,
  and with weeping, and with mourning.'"
- Joel 2:13 (WEB): "Tear your heart and not your garments, and turn to Yahweh, your God; for he is
  gracious and merciful, slow to anger, and abundant in loving kindness, and relents from sending
  calamity."

### 3. "I Will Pour Out My Spirit on All Flesh" (Joel 2:28-29)
Following Yahweh's promise to restore what the locusts ate (2:18-27), the book's best-known
passage: a future promise that Yahweh's Spirit will come upon "all flesh" without regard to age,
sex, or social status — sons and daughters prophesying, old men dreaming dreams, young men seeing
visions, and even servants and handmaids included. **Per this assignment's instruction, this
passage is treated purely as Joel's own prophecy in its own Old Testament context — this product is
OT-only, so no New Testament cross-reference (e.g., Acts 2's use of this passage at Pentecost)
appears anywhere in this brief or its challenge items.**

**Challenge-ready verses:**
- Joel 2:28 (WEB): "It will happen afterward, that I will pour out my Spirit on all flesh; and your
  sons and your daughters will prophesy. Your old men will dream dreams. Your young men will see
  visions."
- Joel 2:29 (WEB): "And also on the servants and on the handmaids in those days, I will pour out my
  Spirit."

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "I will pour out my ___ on all flesh." (Joel 2:28) → Spirit |
| 2 — Recall | Multiple choice, narrative fact | "What does Joel tell the elders to do with the story of the locust plague?" → tell their children, and have their children tell the next generation (Joel 1:3) |
| 3 — Sequence | Order passages within the book | Order the three pivotal passages as they occur (the locust plague and call to lament → the call to return with all your heart → the promise to pour out the Spirit) |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (1:15, 2:13, 2:28), place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Joel 2:29, besides sons and daughters, old men, and young men, who else does Yahweh say he will pour out his Spirit on?" → the servants and handmaids (tests attentive reading of the text's own list, not the passage's theological scope or timing) |

Boss battle (world 29 capstone): a mixed-format sequence spanning all 3 pivotal passages, weighted
toward level 3-5 items. Because Joel is short (3 chapters, 3 pivotal passages) and each passage is
a compact, self-contained unit rather than a long narrative, expect this world's challenge set to
skew toward level 1-2 direct-recall items relative to sequencing items — the same legitimate
consequence of source-material shape already flagged for Leviticus and Isaiah's shorter oracle
passages, not a design shortfall.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here:

- **Joel 2:28-29, timing and fulfillment of "I will pour out my Spirit on all flesh."** This is the
  book's single most theologically loaded passage. Christian tradition, following Peter's sermon at
  Pentecost (Acts 2:16-21, NT material out of this product's OT-only scope), reads this as at least
  beginning its fulfillment at Pentecost. Mainstream traditional Jewish commentary (Rashi, Radak,
  Ibn Ezra, per the Jewish Bible Quarterly source below) reads "afterward" as pointing to a still-
  future messianic age following Israel's national restoration, not a past or present event, and
  some traditional readings take "your sons and daughters" as referring specifically to Israel's
  descendants rather than a universal "all flesh." **This brief's challenge items test only what
  Joel's own text says — that Yahweh promises to pour out his Spirit on "all flesh" and lists who is
  included (sons/daughters, old men, young men, servants/handmaids) — never when this happens, on
  whom specifically, or whether/how it has been fulfilled.** No NT cross-reference appears anywhere
  in this brief, per this assignment's explicit instruction and the product's OT-only scope.
- **The "day of Yahweh" (Joel 1:15, 2:1, 2:11).** A recurring eschatological/apocalyptic theme
  across the Minor Prophets, flagged by `GEN2REV_MASTER_PROMPT.md` §2.4 as this product's single
  biggest content-risk category. This brief's challenge items (1:15) quote only the text's own
  declaration that "the day of Yahweh is at hand" as the locust plague's felt significance to the
  prophet — no challenge item asks when the day of Yahweh occurs, what it consists of beyond what
  1:15 itself states, or how it relates to any end-times timeline.
- **Literal locust plague vs. military-allegory reading (Joel 1-2).** Scholarly and traditional
  readers disagree on whether Joel describes an actual insect plague, a symbolic description of an
  invading army (the locusts are described in explicitly military terms in ch. 2 — "they run like
  mighty men... they climb the wall like warriors"), or both at once. This brief does not resolve
  the question; the challenge-ready verses (1:4, 1:2) describe only what the text itself says
  happened, in the text's own words, without asserting which reading is correct.
- **Dating and authorship of Joel.** As noted in Setting/Era, Joel's date is a genuine, unresolved
  scholarly question (proposals span several centuries) because the book gives no date-anchoring
  reference the way Amos or Hosea do. This brief makes no dating claim and no challenge item depends
  on resolving it.
- **Deliberately excluded material: Joel 2:30-32 and all of Joel 3.** Joel 2:30-32 (cosmic signs —
  "the sun will be turned into darkness, and the moon into blood" — and the promise that "whoever
  will call on Yahweh's name shall be saved") and Joel 3 (Yahweh's judgment on the surrounding
  nations in "the valley of decision," including graphic language about nations being sold into
  slavery and Egypt/Edom becoming a desolation) are not selected as pivotal passages and no verse
  from either appears in this brief. Both intensify the same "day of Yahweh"/eschatological-judgment
  territory already flagged above, and Joel 2:32 in particular is also quoted in the New Testament
  (Acts 2:21, Romans 10:13) with a Christological application out of scope for this OT-only
  product. With only 3 pivotal passages needed for a book this length, there is no need to take on
  that additional risk — a scope decision, not a sign anything specific was screened out for a
  hidden reason beyond what is stated here.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`,
      see `docs/reviews/joel-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 3 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No New Testament cross-reference appears anywhere in this brief, including for Joel 2:28-29
