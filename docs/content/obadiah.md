# Content Brief — Obadiah (World 31)

Status: **`approved`** — self-run theological review complete, no changes required, see
`docs/reviews/obadiah-review.md`. Logging the row in `docs/CONTENT_REVIEW_LOG.md` is the calling
(orchestrating) session's job, per `docs/CONVENTIONS.md`'s sole-writer discipline for that file —
not done by this brief.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql`
file has been written for this book — that is a separate later phase, out of scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — the full 21-verse text of the
> book was pulled from ebible.org, and every challenge-ready verse (3, 4, 10, 12, 15, 17) was
> independently cross-checked against biblegateway.com as well; all checks matched
> character-for-character. This is not yet the independent character-for-character QA check
> required by `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table
> (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**, even after
> theological sign-off — sign-off and verbatim-text QA are two distinct checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here.

## A note on this brief's scope and thinness

**This brief is intentionally thin, and that is by design, not an oversight — following the 1
Chronicles precedent (`docs/content/1-chronicles.md`), the model this assignment names explicitly
for Obadiah.** Obadiah is the shortest book in the Old Testament: one chapter, 21 verses, a single
unified oracle against a single nation (Edom) with no scene changes, no named individuals beyond
Obadiah and Edom/Esau/Jacob themselves, and no sustained narrative to walk through. Per
`docs/CANON_STRUCTURE.md` §6's Minor Prophets guidance, this brief selects 3 pivotal passages —
matching the "3-4 items is fine" guidance for this specific book — rather than being padded to
resemble a longer book's item count.

## Setting / Era

Obadiah's superscription gives no date-anchoring king or event (the book's shortness leaves little
room for one), so, like Joel, its precise date is not resolved by the text itself; most scholars
place it shortly after Jerusalem's fall to Babylon in 586 BC, based on the oracle's description of
foreigners entering Jerusalem's gates and casting lots for the city (v.11) — read as describing that
destruction — though this dating is not settled and is flagged, not assumed, below. The book is a
single sustained oracle against Edom, the nation descended from Esau (Jacob's brother, per Genesis
25-36), condemning Edom for standing by — or actively participating — while Jerusalem fell, and
promising that Edom's own pride and territory will be brought down in turn, while a remnant escapes
on Mount Zion.

## Pivotal Passages (3)

### 1. Edom's Pride Condemned (Obadiah 3-4)
The oracle opens by naming Edom's core offense as it presents it: pride, rooted in Edom's naturally
defensible, cliff-set territory (the region south of the Dead Sea, historically known for its
rock-cut strongholds), leading Edom to believe itself untouchable.

**Challenge-ready verses:**
- Obadiah 1:3 (WEB): "The pride of your heart has deceived you, you who dwell in the clefts of the
  rock, whose habitation is high, who says in his heart, 'Who will bring me down to the ground?'"
- Obadiah 1:4 (WEB): "Though you mount on high as the eagle, and though your nest is set among the
  stars, I will bring you down from there," says Yahweh.

### 2. Edom's Offense Against Judah (Obadiah 10, 12)
The oracle's specific charge against Edom: at the narrative-summary level, standing aloof — and, per
the text, gloating — while Jerusalem fell to a foreign invader, rather than coming to a kinsman
nation's aid. ("Brother" here reflects the text's own framing of Edom and Judah/Israel as
descendants of the twin brothers Esau and Jacob, per Genesis.)

**Challenge-ready verses:**
- Obadiah 1:10 (WEB): "For the violence done to your brother Jacob, shame will cover you, and you
  will be cut off forever."
- Obadiah 1:12 (WEB, trimmed): "But don't look down on your brother in the day of his disaster, and
  don't rejoice over the children of Judah in the day of their destruction." (verse continues
  "Don't speak proudly in the day of distress." — omitted here per this passage's focus on the
  "don't look down"/"don't rejoice" pair; not quoted or tested — caught by the independent verbatim
  QA pass, see `docs/qa/obadiah-verbatim-qa.md`)

### 3. The Day of Yahweh and Deliverance on Mount Zion (Obadiah 15, 17)
The oracle's closing turn: Edom's own deeds will return on its own head as "the day of Yahweh"
comes for all nations, while Mount Zion — Jerusalem — becomes a place of escape and holiness.

**Challenge-ready verses:**
- Obadiah 1:15 (WEB): "For the day of Yahweh is near all the nations! As you have done, it will be
  done to you. Your deeds will return upon your own head."
- Obadiah 1:17 (WEB): "But in Mount Zion, there will be those who escape, and it will be holy. The
  house of Jacob will possess their possessions."

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "The ___ of your heart has deceived you." (Obadiah 1:3) → pride |
| 2 — Recall | Multiple choice, narrative fact | "What nation is Obadiah's oracle addressed against?" → Edom (Obadiah 1:1) |
| 3 — Sequence | Order passages within the book | Order the three pivotal passages as they occur (Edom's pride condemned → Edom's offense against Judah → the day of Yahweh and deliverance on Mount Zion) |
| 4 — Sequence + recall | Order + attribute a quotation | Given the three quotations 1:4, 1:10, 1:15, place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Obadiah 1:12, what does the text say Edom should not have done regarding Judah's disaster?" → looked down on their brother / rejoiced over Judah's destruction (tests recall of the text's own stated command, not a judgment about whether Edom's guilt was severe enough to warrant the announced consequence) |

**No boss battle beyond the standard mixed-format sequence** spanning all 3 pivotal passages — per
the 1 Chronicles precedent, a book this short does not need a distinct capstone structure beyond
what its 3 passages already support. Expect this world's challenge set to be almost entirely level
1-2 direct-recall items, since 21 verses of unified oracle offers limited sequencing material beyond
the whole-book passage order itself.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here:

- **Edom as a later cipher for Rome/Christendom in Jewish tradition.** Confirmed via research for
  this brief (see review): later rabbinic tradition, beginning with Rabbi Akiva's reading of Esau as
  a figure for Rome (in the aftermath of the Bar Kokhba revolt), and continuing after Rome's
  Christianization, uses "Edom" as a recurring cipher for Israel's later imperial oppressors, well
  beyond the historical Edomite kingdom Obadiah originally addressed. This is a genuine, real
  interpretive layer specific to Jewish tradition. **This brief's challenge items test only what
  Obadiah's own text says about the historical nation of Edom named in the oracle — no challenge
  item asks what "Edom" symbolizes in later tradition, identifies Edom with any later or
  contemporary nation or religious group, or requires a player to affirm the later typological
  reading.**
- **The oracle's totality — "there will not be any remaining to the house of Esau" (Obadiah 1:18).**
  Not selected as a challenge-ready verse in this brief, precisely because its language of total
  destruction is the closest thing in this short book to the kind of severity already flagged as
  sensitive in Joshua's conquest oracles and Amos's judgment cycle. The challenge-ready verses
  selected above (vv. 3-4, 10, 12, 15, 17) state Edom's specific offense and its stated consequence
  in the text's own terms without reaching for this verse's most totalizing language.
- **Dating of Obadiah.** As noted in Setting/Era, most scholars place the book shortly after 586 BC,
  but this is not settled by the text itself (the superscription gives no date). This brief makes no
  firm dating claim and no challenge item depends on resolving it.
- **Moral evaluation of the announced judgment on Edom.** Per the style guide's "moral judgment"
  boundary, no challenge item asks whether Edom's announced punishment was proportionate or just —
  every item in this brief's Difficulty Ladder tests only what the text states Edom did and what the
  text states will happen in response, never whether that response was warranted.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`,
      see `docs/reviews/obadiah-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 3 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] This brief's intentionally thin scope (3 pivotal passages, no distinct boss-battle structure)
      stated explicitly per the 1 Chronicles precedent and `docs/CANON_STRUCTURE.md` §6 guidance —
      not silently thin
