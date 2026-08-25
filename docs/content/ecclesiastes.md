# Content Brief — Ecclesiastes (World 21)

Status: **`approved-with-changes`** — theological self-review complete, see
`docs/reviews/ecclesiastes-review.md`. The recommended structural change (Passage 1 / Passage 4
combination restriction) is already applied below.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4).

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — for every verse used, and the
> most pivotal/most-quoted verses (1:2, 3:1-8, 12:13-14) were cross-checked against both. This is
> not yet the independent character-for-character QA check required by `QA_REQUIREMENTS.md` §3.
> **Do not ingest into the `challenge` table until that separate verbatim QA pass has run**, even
> after theological sign-off — sign-off and verbatim-text QA are two distinct checks per that
> document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Tier: medium only**, per `docs/CANON_STRUCTURE.md` §6 phasing — easy/hard tiers for this
expansion batch are separate, later work.

---

## Setting / Era

Ecclesiastes is wisdom literature presented as the reflections of "the Preacher" (Hebrew
"Qoheleth"), "the son of David, king in Jerusalem" (1:1), traditionally associated with Solomon.
Like Leviticus and this book's sibling world Proverbs, **Ecclesiastes is not narrative** — it is a
first-person philosophical reflection, not a sequence of events. Per the established precedent
(`docs/reviews/leviticus-review.md`), this brief structures the "Pivotal Scenes" as **pivotal
passages** tracing the book's real arc: from its opening refrain, through its most famous poem,
to its own stated concluding counsel — deliberately built to let the book's own words carry its
own resolution rather than this brief characterizing what that resolution means. See Contested
Territory below for why that distinction matters here specifically.

## Pivotal Passages (4)

### 1. Vanity of Vanities (Ecclesiastes 1)
The book's opening refrain and thesis statement — the Preacher's survey of life "under the sun"
begins here.

**Challenge-ready verses:**
- Ecclesiastes 1:2 (WEB): "'Vanity of vanities,' says the Preacher; 'Vanity of vanities, all is
  vanity.'"
- Ecclesiastes 1:9 (WEB): "That which has been is that which shall be, and that which has been
  done is that which shall be done; and there is no new thing under the sun."

### 2. A Time for Everything (Ecclesiastes 3)
The book's best-known passage, a poem listing paired opposites, each with its appointed time —
low-risk, extremely well-known text.

**Challenge-ready verses:**
- Ecclesiastes 3:1-8 (WEB): "For everything there is a season, and a time for every purpose under
  heaven: a time to be born, and a time to die; a time to plant, and a time to pluck up that which
  is planted; a time to kill, and a time to heal; a time to break down, and a time to build up; a
  time to weep, and a time to laugh; a time to mourn, and a time to dance; a time to cast away
  stones, and a time to gather stones together; a time to embrace, and a time to refrain from
  embracing; a time to seek, and a time to lose; a time to keep, and a time to cast away; a time to
  tear, and a time to sew; a time to keep silence, and a time to speak; a time to love, and a time
  to hate; a time for war, and a time for peace."
- Ecclesiastes 3:11 (WEB): "He has made everything beautiful in its time. He has also set eternity
  in their hearts, yet so that man can't find out the work that God has done from the beginning
  even to the end."

### 3. Two Are Better Than One (Ecclesiastes 4)
A companionship passage, among the book's most quoted outside the "vanity" refrain and the "time
for everything" poem — practical, uncontested wisdom about mutual support.

**Challenge-ready verses:**
- Ecclesiastes 4:9-10 (WEB): "Two are better than one, because they have a good reward for their
  labor. For if they fall, the one will lift up his fellow; but woe to him who is alone when he
  falls, and doesn't have another to lift him up."
- Ecclesiastes 4:12 (WEB): "If a man prevails against one who is alone, two shall withstand him;
  and a threefold cord is not quickly broken."

### 4. Remember Your Creator; Fear God and Keep His Commandments (Ecclesiastes 12)
The book's closing counsel — an instruction to remember God while young, followed by the book's
own stated summary conclusion. This is the natural capstone/boss item for this world, in the
book's own words.

**Challenge-ready verses:**
- Ecclesiastes 12:1 (WEB): "Remember also your Creator in the days of your youth, before the evil
  days come, and the years draw near, when you will say, 'I have no pleasure in them.'"
- Ecclesiastes 12:13 (WEB): "This is the end of the matter. All has been heard. Fear God and keep
  his commandments; for this is the whole duty of man."
- Ecclesiastes 12:14 (WEB): "For God will bring every work into judgment, with every hidden thing,
  whether it is good, or whether it is evil."

## Difficulty Ladder

Like Proverbs, Ecclesiastes has no narrative event-sequence — "sequence" items order *passages as
they appear in the book* or *lines within a listed passage* (e.g. the paired opposites in 3:1-8),
not plot events.

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "Vanity of vanities... all is ___." (Eccl 1:2) → vanity |
| 2 — Recall | Multiple choice, attribution | "Which chapter contains 'a time to be born, and a time to die'?" → Ecclesiastes 3 |
| 3 — Sequence | Order paired opposites as they occur in the text | Given "a time to plant" and "a time to pluck up," place them in the order Eccl 3:2 states them |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (1:2, 3:1, 12:13), place them in the order they occur in the book and match each to its reference |
| 5 — Recall on textual detail | Multiple choice | "According to Ecclesiastes 12:13, what does the text state is 'the whole duty of man'?" → to fear God and keep his commandments (direct quotation of the text's own stated conclusion, not this brief's characterization of it) |

Boss battle (world 21 capstone): a mixed-format round spanning all 4 passages, weighted toward
level 3-5 items, closing on Ecclesiastes 12:13-14 as the final item — the book's own concluding
statement, not an externally-imposed "moral of the story."

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here:

- **Whether the book's overall message is resolved hope or stays bleak.** This is the central
  interpretive fork for Ecclesiastes and the single biggest risk specific to this book, per this
  assignment's brief. Readings diverge on how "vanity"/"meaningless" (Hebrew "hevel," often
  rendered "vapor" or "breath") relates to the book's closing counsel in 12:13-14 — whether 12:13-14
  resolves the book's earlier bleakness into settled faith, is a later editorial epilogue somewhat
  in tension with the body of the book, or is itself just one more observation without fully
  resolving the tension the book raises. **No challenge item in this brief asks the player to
  characterize the book's overall philosophical stance** (e.g. no item like "what is Ecclesiastes'
  message about life" or "does the book conclude life is meaningless"). Every item stays at direct
  quotation/attribution level — testing that the text says "vanity of vanities" in ch. 1 and that
  the text says "fear God and keep his commandments" in ch. 12, without asserting how those two
  statements relate to each other philosophically. This is the same "quote the text's own words,
  don't synthesize its overall stance" boundary this assignment's brief specifically called for.
  **Structural rule (added per theological self-review, `docs/reviews/ecclesiastes-review.md`): no
  single challenge item may combine material from Passage 1 (1:2, 1:9) and Passage 4 (12:13-14) in
  a way that asks the player to state how the two relate (e.g. "how does the book resolve its
  opening vanity claim") — each passage's verses may be quoted and attributed individually, and may
  co-appear only in a pure ordering/sequence item (level 3-4) that asks *which comes first in the
  book*, never one that asks the player to characterize their relationship.**
- **"Vanity"/"meaningless" (hevel) as a translation choice.** WEB renders the Hebrew "hevel" as
  "vanity"; other major translations render it "meaningless" (NIV) or "futility" (NASB) — a real
  translation-level difference that shifts tone (moral judgment vs. existential absence of
  permanence). This brief uses WEB's "vanity" throughout per the project's translation standard and
  does not build any item asking the player to interpret what "vanity" means beyond quoting the
  word itself.
- **Solomonic authorship (1:1, 1:12).** As with Proverbs, mainstream and critical scholarship
  diverge on whether Solomon is the direct author, a later writer adopting his voice/persona, or
  the frame is meant symbolically. This brief does not build any item asserting an authorship
  conclusion beyond what the text's own opening line states ("the Preacher, the son of David, king
  in Jerusalem") — items test only that this self-description appears in 1:1, not a scholarly
  authorship determination.
- **Chapters/material not selected.** Ecclesiastes 2 (the Preacher's experiment with pleasure and
  achievement) and portions of chapters 5-11 (reflections on wealth, injustice, and mortality) were
  not selected as pivotal passages — a scope decision for a 4-passage medium-tier brief, consistent
  with how Leviticus and other non-narrative books in this batch selected representative passages
  rather than exhaustive coverage. Flagged so the reviewer can confirm the exclusion is a
  reasonable scope decision, not a gap.

## Acceptance Criteria for This Brief

- [x] Reviewed by theological self-review — `approved-with-changes`, change applied (see
      `docs/reviews/ecclesiastes-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 4 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      quotation-only bounding
