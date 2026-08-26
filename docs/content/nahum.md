# Content Brief — Nahum (World 34)

Status: **`approved`** — self-run theological review complete, see `docs/reviews/nahum-review.md`.
No changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No
`docs/ingest/*.sql` file has been written for this book — that is a separate later phase, out of
scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — with every challenge-ready
> verse cross-checked against both sources independently. All checks matched character-for-
> character; see `docs/reviews/nahum-review.md` §1 for the full source-by-source table. This is
> still not a substitute for the independent character-for-character QA check required by
> `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table
> (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**, even after
> theological sign-off — sign-off and verbatim-text QA are two distinct checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here.

---

## Setting / Era

Nahum prophesied sometime between the fall of Thebes (No-Amon, referenced as already having
happened in 3:8, 663 BC) and the fall of Nineveh itself (612 BC), most likely mid-to-late 7th
century BC. The book is a single sustained oracle — "a revelation about Nineveh" (1:1) — announcing
that the Assyrian capital, which had stood for a century as the empire that destroyed the northern
kingdom of Israel (722 BC, per 2 Kings' World 12 material), would itself fall.

**Narrative relationship to Jonah:** Nahum is, in a real sense, a sequel to Jonah's story. In Jonah
(set roughly a century earlier, mid-8th century BC), Nineveh repents at Jonah's preaching and Yahweh
relents from destroying it. Nahum announces that by his own time, Nineveh's cruelty had resumed and
its judgment was now certain — the repentance of Jonah's day did not last. This brief's Setting/Era
framing states this relationship as historical/narrative fact (both books' own internal dating and
content support it); it does not require resolving any doctrinal question to state it.

**This is a very short book (3 chapters, 47 verses total) and, per `docs/CANON_STRUCTURE.md` §6's
own expectation for the Minor Prophets, this brief is deliberately thin** — 3 pivotal passages,
matching the book's own limited scope and this project's precedent (1 Chronicles' deliberately thin
brief; Isaiah's own guidance to Daniel and other Minor Prophets books not to force padding). Nahum
3's extended description of Nineveh's fall (the book's longest chapter) contains real graphic
destruction imagery — see Contested Territory below for how this brief handles that chapter without
excluding the book's narrative content outright.

## Pivotal Passages (3)

### 1. Nahum 1:2-3, 1:7 — Yahweh's Character: Just and Good
The book opens by establishing who Yahweh is before turning to Nineveh specifically: a God who is
both slow to anger and unwilling to leave guilt unaddressed, and — in the same chapter — "a
stronghold in the day of trouble" for those who take refuge in him. These two verses, read together,
present both sides of the book's premise without requiring a graded item to adjudicate between them.

**Challenge-ready verses (Nahum 1:2-3, 1:7, WEB):**
- v.2: "Yahweh is a jealous God and avenges. Yahweh avenges and is full of wrath."
- v.3: "Yahweh is slow to anger, and great in power, and will by no means leave the guilty
  unpunished."
- v.7: "Yahweh is good, a stronghold in the day of trouble; and he knows those who take refuge in
  him."

### 2. Nahum 1:15 — Good News for Judah
A single verse announcing Nineveh's coming fall as good news and peace for Judah — the oracle's own
stated purpose, textually parallel in image (a messenger's feet on the mountains) to Isaiah 52:7,
though this brief makes no claim about that relationship beyond noting the shared image exists.

**Challenge-ready verse (Nahum 1:15, WEB):**
- "Behold, on the mountains the feet of him who brings good news, who publishes peace! Keep your
  feasts, Judah! Perform your vows, for the wicked one will no more pass through you. He is utterly
  cut off."

### 3. Nahum 3 — The Certainty of Nineveh's Fall (narrative-summary level)
Chapter 3 is the book's extended oracle against Nineveh, describing the city's coming military
defeat in vivid, sometimes graphic poetic imagery (piled corpses, siege imagery, imagery of public
shaming). **Per this assignment's explicit guidance, this brief handles chapter 3 at the
narrative-summary level rather than pulling its most graphic verses as challenge-ready text.** The
chapter's content is summarized here in prose (Nineveh's defenses fail, its wealth is plundered, its
fall is total and irreversible) rather than quoted verse-by-verse. The one verse selected as
challenge-ready is the chapter's closing line, which states the outcome and its certainty without
graphic description of the destruction itself.

**Challenge-ready verse (Nahum 3:19, WEB):**
- "There is no healing your wound, for your injury is fatal. All who hear the report of you clap
  their hands over you, for who hasn't felt your endless cruelty?"

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "Yahweh is good, a ___ in the day of trouble." (Nah 1:7) → stronghold |
| 2 — Recall | Multiple choice, textual/narrative fact | "According to Nahum 1:15, what does the messenger on the mountains bring?" → good news, peace |
| 3 — Sequence | Order passages within the book | Order the pivotal-passage blocks as they appear in the book (Yahweh's character → good news for Judah → the certainty of Nineveh's fall) |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (Nah 1:3, 1:7, 3:19), place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Nahum 1:1, what is the book's own description of what Nahum saw?" → a revelation/vision about Nineveh (tests attentive reading of the text's own superscription, not the theological weight of judgment) |

Boss battle (world 34 capstone): a mixed-format sequence spanning all 3 pivotal passages, weighted
toward level 1-2 direct recall given the book's short length and small verse pool. Because this is
the shortest of this wave's three books and almost entirely oracle rather than narrative, expect
minimal sequencing depth relative to books with continuous narrative — the same pattern already
flagged as expected for the Minor Prophets generally in `docs/CANON_STRUCTURE.md` §6.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here.

### Graphic destruction imagery (Nahum 2-3)

This is the book's primary sensitivity issue, not a doctrinal one. Nahum 3 in particular contains
imagery of piled corpses (3:3), a extended metaphor of Nineveh as a "prostitute" being publicly
shamed (3:4-6), and a reference to children being "dashed in pieces" during the city's historical
conquest (3:10, describing what happened to Thebes/No-Amon, cited as a precedent for what will
happen to Nineveh). **None of these verses are used as challenge-ready text in this brief.** Per
this assignment's explicit guidance, chapter 3's content is handled at the narrative-summary level
in prose (see Passage 3 above), and the one verse selected from the chapter (3:19) states the
outcome's certainty and completeness without quoting or requiring recall of the graphic imagery
itself. This is a child-safety/content-integrity guardrail application
(`GEN2REV_MASTER_PROMPT.md` §5), not a cross-tradition theological question — no source disagrees
that this imagery exists in the text; the question is purely whether it belongs in graded recall
content for a child-directed product, and this brief's answer is no.

### Yahweh's "vengeance" (Nahum 1:2) alongside "goodness" (Nahum 1:7)

No live cross-tradition doctrinal dispute was found over these two verses individually — both
"Yahweh avenges" and "Yahweh is good... a stronghold" are direct WEB text, uncontroversial across
Jewish and Christian tradition as accurate descriptions of the text's own content. The brief pairs
both verses in the same pivotal passage deliberately, so that a player encountering this world's
content sees both sides of the book's premise rather than only the judgment half — a content-shaping
choice, not a doctrinal one, and not something a graded item needs to reconcile or adjudicate.

### Nahum and Jonah: no doctrinal claim about divine "change of mind"

The Setting/Era section above states, as narrative fact, that Nineveh repented in Jonah's day and
that Nahum's oracle comes after that repentance apparently lapsed. This is stated only as a
historical/narrative sequence (per both books' own internal content and dating), not as a doctrinal
claim about God's nature (e.g. whether Yahweh's "relenting" in Jonah 3:10 implies mutability/openness
theology, a live theological debate in some traditions). No challenge item in this brief, or in
Jonah's brief (out of scope for this assignment), is built to require a position on that question.

### No other contested items identified

Nahum contains no passage comparable in kind to Micah 5:2 or the Isaiah passages excluded elsewhere
in this project — no verse in this book carries a live Jewish-vs-Christian identity-claim dispute.
See `docs/reviews/nahum-review.md` §3 for the sourcing that confirms this finding rather than simply
assuming it from the book's short length.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`,
      no changes required, see `docs/reviews/nahum-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 3 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No graphic destruction verse from Nahum 2-3 appears as challenge-ready text in this brief
