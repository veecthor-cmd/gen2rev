# Content Brief — Leviticus (World 3)

Status: **`approved-with-changes`** — theological review complete, see
`docs/reviews/leviticus-review.md`. The recommended change (format-restricting Leviticus 10:1-3) is
already applied below.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4).

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — for every verse used, and the
> most pivotal/most contested verses were cross-checked against both. This is not yet the
> independent character-for-character QA check required by `QA_REQUIREMENTS.md` §3. **Do not
> ingest into the `challenge` table (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA
> pass has run**, even after theological sign-off — sign-off and verbatim-text QA are two distinct
> checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Setting / Era

Leviticus is set at Mount Sinai, in the pause between the covenant being ratified (end of Exodus)
and Israel breaking camp to march toward Canaan (start of Numbers) — narratively, almost no time
passes in the book at all. **This brief looks structurally different from Genesis's and Exodus's,
and that's expected, not an oversight.** Leviticus is overwhelmingly legal and ritual material —
instructions for sacrifice, priestly conduct, purity, and holy living — not a sequence of narrated
events. Per this assignment's brief, the "Pivotal Scenes" below are really **pivotal passages**:
five representative blocks of legal/ritual material, plus one genuine narrative beat (Nadab and
Abihu's deaths, Leviticus 10), which is the closest thing the book has to a Genesis- or
Exodus-style "scene." Two large blocks of Leviticus's holiness code were deliberately **not**
selected as pivotal passages and are called out explicitly in Contested Territory below, so their
absence reads as a considered scope decision rather than a gap: the sexual-purity legislation in
Leviticus 18 and 20, and the clean/unclean food laws in Leviticus 11.

## Pivotal Passages (5)

### 1. The Purpose of Sacrifice (Leviticus 1, 17)
The book opens with detailed instructions for the burnt offering — the worshiper lays a hand on the
animal's head before it is offered — and later states the rationale for why blood is central to
Israel's sacrificial system.

**Challenge-ready verses:**
- Leviticus 1:3-4 (WEB, trimmed): "'If his offering is a burnt offering from the herd, he shall
  offer a male without defect. He shall offer it at the door of the Tent of Meeting, that he may
  be accepted before Yahweh. He shall lay his hand on the head of the burnt offering, and it shall
  be accepted for him to make atonement for him.'"
- Leviticus 17:11 (WEB): "'For the life of the flesh is in the blood. I have given it to you on
  the altar to make atonement for your souls; for it is the blood that makes atonement by reason
  of the life.'"

### 2. Nadab and Abihu (Leviticus 10)
Aaron's two eldest sons, newly ordained priests, offer "strange fire" that God had not commanded,
and are killed. Moses tells Aaron this was God showing himself holy. This is the closest thing in
Leviticus to a narrated scene.

**Challenge-ready verses:**
- Leviticus 10:1-2 (WEB): "Nadab and Abihu, the sons of Aaron, each took his censer, and put fire
  in it, and laid incense on it, and offered strange fire before Yahweh, which he had not
  commanded them. Fire came out from before Yahweh, and devoured them, and they died before
  Yahweh."
- Leviticus 10:3 (WEB): "Then Moses said to Aaron, 'This is what Yahweh spoke of, saying, "I will
  show myself holy to those who come near me, and before all the people I will be glorified."'"
  *(Handled per the sensitivity note below — see Contested Territory.)*

### 3. The Day of Atonement (Leviticus 16)
Once a year, on Yom Kippur, the high priest makes atonement for the sanctuary, the priesthood, and
the whole people — the book's single most significant ritual instruction.

**Challenge-ready verses:**
- Leviticus 16:29-30 (WEB): "'It shall be a statute to you forever: in the seventh month, on the
  tenth day of the month, you shall afflict your souls, and shall do no kind of work, whether
  native-born or a stranger who lives as a foreigner among you; for on this day shall atonement be
  made for you, to cleanse you. You shall be clean from all your sins before Yahweh.'"
- Leviticus 16:34 (WEB, trimmed): "'This shall be an everlasting statute for you, to make
  atonement for the children of Israel once in the year because of all their sins.' It was done as
  Yahweh commanded Moses."

### 4. The Holiness Code: "Love Your Neighbor as Yourself" (Leviticus 19)
A wide-ranging chapter of ethical and ritual law grounded in "you shall be holy, for I am holy,"
including the command to love one's neighbor and extend the same to the foreigner living among
Israel.

**Challenge-ready verses:**
- Leviticus 19:2 (WEB, trimmed): "'Speak to all the congregation of the children of Israel, and
  tell them, "You shall be holy; for I, Yahweh your God, am holy."'"
- Leviticus 19:15 (WEB): "'You shall do no injustice in judgment. You shall not be partial to the
  poor, nor show favoritism to the great; but you shall judge your neighbor in righteousness.'"
- Leviticus 19:18 (WEB): "'You shall not take vengeance, nor bear any grudge against the children
  of your people; but you shall love your neighbor as yourself. I am Yahweh.'"
- Leviticus 19:33-34 (WEB, trimmed): "'If a stranger lives as a foreigner with you in your land,
  you shall not do him wrong... you shall love him as yourself; for you lived as foreigners in the
  land of Egypt. I am Yahweh your God.'"

### 5. The Year of Jubilee (Leviticus 25)
Every fiftieth year, land returns to its original family and debts are released — a structural
reset built into Israel's law.

**Challenge-ready verses:**
- Leviticus 25:10 (WEB, trimmed): "'You shall make the fiftieth year holy, and proclaim liberty
  throughout the land to all its inhabitants. It shall be a jubilee to you; and each of you shall
  return to his own property, and each of you shall return to his family.'"
- Leviticus 25:17 (WEB): "'You shall not wrong one another, but you shall fear your God; for I am
  Yahweh your God.'"

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "You shall love your ___ as yourself." (Lev 19:18) → neighbor |
| 2 — Recall | Multiple choice, ritual/narrative fact | "What did Nadab and Abihu offer that Yahweh had not commanded?" → strange fire (Lev 10:1) |
| 3 — Sequence | Order passages within the book | Order the pivotal-passage blocks as they appear in the book (sacrifice instructions → Nadab and Abihu → Day of Atonement → holiness code → Jubilee) |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (Lev 17:11, 19:18, 25:10), place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Leviticus 16:29, in which month and on which day was the Day of Atonement observed?" → the seventh month, the tenth day (tests attentive reading of the text, not the theological significance of the ritual) |

Boss battle (world 3 capstone): a mixed-format sequence spanning all 5 pivotal passages, weighted
toward level 3–5 items. Because Leviticus has fewer narrative beats than Genesis or Exodus, expect
a higher proportion of level 1-2 direct-recall items overall in this world's challenge set relative
to sequencing items — flagged here as a legitimate consequence of the source material's shape, not
a design shortfall.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here:

- **The theological meaning of sacrifice and atonement (Leviticus 1, 17).** This is the book's
  central out-of-bounds risk. Christian tradition (following Hebrews 9-10) widely reads Levitical
  sacrifice as typological foreshadowing of Christ's atonement; Jewish tradition reads the
  sacrificial system on its own covenantal terms, and post-Temple rabbinic Judaism developed a
  theology of atonement through prayer, repentance, and charity in sacrifice's absence (the Temple
  having been destroyed). No challenge item asserts *what sacrifice means* theologically or *what
  it points to* — the challenge-ready verses above and any item built from them stay at the level
  of *what the text instructs/states* (the worshiper lays a hand on the animal, the text states
  blood is what makes atonement per Lev 17:11's own wording) — a citation of the text's own
  stated rationale, not this brief's theological gloss on it.
- **Nadab and Abihu's deaths (Leviticus 10).** Per this assignment's sensitivity note, this is the
  other passage with graphic-content potential (sudden death as immediate consequence). The
  challenge-ready verses are the plain WEB narration with no added description of the deaths
  themselves, and Leviticus 10:3 pairs the event with the text's own stated reason ("I will show
  myself holy"), keeping it a narrative-fact citation rather than commentary this brief adds. This
  also touches the style guide's "moral judgment" boundary — no challenge item should ask whether
  the consequence was proportionate or just, only what the text says happened and why the text
  itself says it happened. **Structural rule (added per theological review,
  `docs/reviews/leviticus-review.md`): Leviticus 10:1-3 may only be used in recall/fill-in-blank or
  strict sequence-order format — never a multiple-choice or open-ended "evaluate this" format —
  and 10:1-2 and 10:3 must always be presented together (never 10:1-2 alone), so the consequence
  is never shown without the text's own stated reason attached.**
- **The Day of Atonement's significance (Leviticus 16).** Yom Kippur remains a currently-observed,
  central holy day in living Judaism, not just an ancient-text topic — reviewer should confirm
  challenge items treat it with the same narrative-only bounding as everything else (what the text
  instructs, not an assessment of the ritual's ongoing efficacy or fulfillment). Christian tradition
  again reads this typologically (Hebrews 9); this brief's items test only the book's own stated
  instructions (timing, who performs it, what it accomplishes per the text's own wording).
- **Historicity of the Jubilee (Leviticus 25).** Scholarly and traditional sources disagree on
  whether the Jubilee was ever consistently practiced in ancient Israel, similar in kind to the
  Genesis flood-scope and creation-days historicity debates already flagged in that book's brief.
  Challenge items test only what the text legislates, not whether or how often it was observed.
- **Deliberately excluded material: Leviticus 18, 20 (sexual-purity legislation) and Leviticus 11
  (clean/unclean food laws).** Leviticus 18 and 20 contain material unsuitable for a child-directed
  MVP regardless of theological framing — not selected as a pivotal passage, and no verse from
  either chapter appears in this brief. Leviticus 11 (dietary law) was left out for scope reasons,
  not sensitivity — it is also a live point of cross-tradition difference (ongoing kosher
  observance in Judaism vs. the Christian reading, per Acts 10 and Mark 7, that these laws don't
  bind Gentile believers) that this brief avoids by simply not building challenges from it. Flagged
  explicitly so the reviewer can confirm the exclusion itself, not just the included content.

## Acceptance Criteria for This Brief

- [x] Reviewed — `approved-with-changes`, change applied (see
      `docs/reviews/leviticus-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 5 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
