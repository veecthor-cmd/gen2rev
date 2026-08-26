# Content Brief — Amos (World 30)

Status: **`approved`** — self-run theological review complete, no changes required, see
`docs/reviews/amos-review.md`. Logging the row in `docs/CONTENT_REVIEW_LOG.md` is the calling
(orchestrating) session's job, per `docs/CONVENTIONS.md`'s sole-writer discipline for that file —
not done by this brief.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql`
file has been written for this book — that is a separate later phase, out of scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — with every challenge-ready
> verse pulled from ebible.org and the most pivotal verses (Amos 2:6-8, 5:21-24, 7:14-15) cross-
> checked independently against biblegateway.com as well; all checks matched character-for-
> character. This is not yet the independent character-for-character QA check required by
> `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table (`BACKEND_REQUIREMENTS.md`
> §4) until that separate verbatim QA pass has run**, even after theological sign-off — sign-off
> and verbatim-text QA are two distinct checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here.

Differentiation note (`docs/CANON_STRUCTURE.md` §6, Minor Prophets): "mostly short, oracle-heavy...
Expect thin content briefs for several of these... not padded to match a book like Isaiah's
density." Amos is 9 chapters — longer than Joel or Obadiah, but still oracle-heavy with limited
sustained narrative (the exception being Amos's own brief autobiographical exchange with Amaziah in
ch. 7). This brief selects 4 pivotal passages, proportionate to the book's length and its unusually
rich, safely-quotable social-justice material.

## Setting / Era

Amos identifies himself precisely, unlike Joel: a herdsman and sycamore-fig farmer from Tekoa (in
Judah), sent north to prophesy against the kingdom of Israel "in the days of Uzziah king of Judah
and... Jeroboam the son of Joash, king of Israel, two years before the earthquake" (1:1) — placing
him in the mid-8th century BC, a period of relative prosperity and military success for the
northern kingdom under Jeroboam II, which Amos indicts as prosperity built on the exploitation of
the poor. Structurally, the book opens with a cycle of judgment oracles against Israel's
neighbors — building rhetorical momentum before the oracle turns, unexpectedly for Amos's original
audience, onto Israel itself — then moves into direct indictments of Israelite social injustice and
empty ritual, and closes with a short promise of restoration.

## Pivotal Passages (4)

### 1. The Judgment Oracles Against the Nations — and Israel Itself (Amos 1-2)
A tightly patterned cycle: for each of eight nations in turn (Damascus/Syria, Gaza/Philistia, Tyre,
Edom, Ammon, Moab, Judah, and finally Israel), the oracle opens with the same formula — "for three
transgressions of [nation], yes, for four, I will not turn away its punishment" — before naming (at
narrative-summary level only) the nation's offense and Yahweh's stated response. The rhetorical
turn is the point: an Israelite audience would have cheered oracles against surrounding rivals, only
for the pattern to close on their own nation's specific offenses (2:6-8) — economic exploitation of
the poor and desperate.

**Challenge-ready verses:**
- Amos 1:3 (WEB, formula as applied to Damascus): "For three transgressions of Damascus, yes, for
  four, I will not turn away its punishment, because they have threshed Gilead with threshing
  instruments of iron."
- Amos 2:6 (WEB): "For three transgressions of Israel, yes, for four, I will not turn away its
  punishment, because they have sold the righteous for silver, and the needy for a pair of
  sandals."
- Amos 2:7 (WEB): "They trample the heads of the poor into the dust of the earth and deny justice
  to the oppressed. A man and his father use the same maiden, to profane my holy name."

*(Narrative-summary note: the seven other nations named across the cycle — Gaza/Philistia (1:6),
Tyre (1:9), Edom (1:11), Ammon (1:13), Moab (2:1), and Judah (2:4), in addition to Damascus/Syria
above — can be tested at the level of "which nations does Amos's opening oracle address," per the
identification-level in-bounds category, without quoting each nation's specific offense.)*

### 2. Economic Injustice Named Directly (Amos 5:11-12)
Later in the book, Amos returns to the same theme in his own prophetic voice rather than the
formulaic oracle cycle — a direct, plainly-worded indictment of exploiting the poor through unjust
taxation and bribery in the courts.

**Challenge-ready verses:**
- Amos 5:11 (WEB): "Therefore, because you trample on the poor and take taxes from him of wheat,
  you have built houses of cut stone, but you will not dwell in them."
- Amos 5:12 (WEB): "For I know how many are your offenses, and how great are your sins—you who
  afflict the just, who take a bribe, and who turn away the needy in the courts."

### 3. "Let Justice Roll on Like Rivers" (Amos 5:21-24)
The book's best-known passage, and per this assignment's guidance an excellent, safe centerpiece:
Yahweh declares that Israel's religious ritual — festivals, offerings, music — is worthless without
justice, closing on the book's single most quotable line.

**Challenge-ready verses:**
- Amos 5:21 (WEB): "I hate, I despise your feasts, and I can't stand your solemn assemblies."
- Amos 5:23 (WEB): "Take away from me the noise of your songs! I will not listen to the music of
  your harps."
- Amos 5:24 (WEB): "But let justice roll on like rivers, and righteousness like a mighty stream."

### 4. Amos's Own Call — "I Was No Prophet" (Amos 7:14-15)
The book's one genuine narrative-biographical beat: confronted by Amaziah, the priest of Bethel, who
tells him to go prophesy back in Judah, Amos answers that he was not trained as a prophet or born
into a prophetic family — he was a herdsman and farmer, whom Yahweh took directly from his flock and
sent to prophesy to Israel.

**Challenge-ready verses:**
- Amos 7:14 (WEB): "I was no prophet, neither was I a prophet's son, but I was a herdsman, and a
  farmer of sycamore figs."
- Amos 7:15 (WEB): "and Yahweh took me from following the flock, and Yahweh said to me, 'Go,
  prophesy to my people Israel.'"

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "But let ___ roll on like rivers, and righteousness like a mighty stream." (Amos 5:24) → justice |
| 2 — Recall | Multiple choice, narrative fact | "What was Amos's occupation before Yahweh called him to prophesy?" → a herdsman and a farmer of sycamore figs (Amos 7:14) |
| 3 — Sequence | Order passages within the book | Order the pivotal-passage blocks as they appear in the book (the judgment oracles against the nations and Israel → economic injustice named directly → "let justice roll on like rivers" → Amos's own call) |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (2:6, 5:24, 7:14), place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Amos 2:6, what did Israel do that the text names as its transgression?" → sold the righteous for silver, and the needy for a pair of sandals (tests recall of the text's own stated charge, not a judgment about the surrounding nations' comparative guilt) |

Boss battle (world 30 capstone): a mixed-format sequence spanning all 4 pivotal passages, weighted
toward level 3-4 items. Passage 1's eight-nation cycle supports strong sequence-format items (order
of nations addressed); passages 2-3 are short, self-contained oracle units better suited to
recall-format items, the same pattern already flagged as expected for Leviticus and Isaiah's
non-narrative material.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here:

- **The judgment oracles' severity (Amos 1-2).** Each oracle promises Yahweh "will send a fire" and
  describes military defeat and captivity for the named nation. Per this assignment's guidance,
  these are used only at the narrative-summary level — which nation is addressed and, for
  Israel specifically, what economic/social offense the text names — never at the level of endorsing
  or evaluating the proportionality of the announced punishment. This is the same "stay narrative,
  don't grade the interpretation" pattern already applied to Joshua's conquest oracles and
  Leviticus 10.
- **Amos 2:7's "a man and his father use the same maiden."** This half-verse (not selected as a
  challenge-ready quotation above, though it sits inside the quoted range at 2:7) touches sexual
  content unsuitable for a child-directed MVP. Handled here by omission: the challenge-ready
  excerpt from 2:7 above quotes only its first sentence ("they trample the heads of the poor... deny
  justice to the oppressed"); the second sentence is described only at the narrative-summary level
  in this brief's prose ("economic exploitation of the poor and desperate") and never quoted
  verbatim or built into a challenge item.
- **Deliberately excluded: Amos 9:11-12, "the tabernacle/booth of David that is fallen."** This
  passage is the single most theologically contested verse pair in the book and is excluded
  entirely — no verse from Amos 9:11-12 appears anywhere in this brief. Christian tradition, citing
  Acts 15:16-17 (James's use of this passage at the Jerusalem Council to justify Gentile inclusion
  in the church without circumcision — NT material out of this product's OT-only scope), commonly
  reads "raising up the tabernacle of David" as pointing to the Messiah restoring David's dynasty,
  per mainstream evangelical commentary (e.g.
  [enduringword.com on Amos 9](https://enduringword.com/bible-commentary/amos-9/), which reads the
  restored "tabernacle of David" as fulfilled through "the Messiah, Jesus Christ"). The passage's
  use in Acts 15 also carries a genuine Hebrew/Greek textual difference worth noting for scope: the
  Hebrew (Amos 9:12) says Israel will "possess the remnant of Edom," while the Septuagint Greek that
  Acts 15:17 quotes reads instead that "the remnant of mankind" will "seek the Lord" — a translation
  divergence that itself shapes how the passage gets read theologically. Given how directly this
  passage functions as a foundational Christian proof-text with no comparably load-bearing role in
  Jewish tradition on its own OT terms, narrow narrative-only bounding was judged insufficient the
  same way Isaiah's brief judged it insufficient for Isaiah 7:14, 9:6-7, and 53 — not because the
  underlying Hebrew text is unsafe to quote, but because any use of it here would sit directly on
  contested ground with no safe framing this product's OT-only, narrative-fact-only style guide can
  offer. This book has enough other safe, rich material (justice, Amos's call, the nations oracle)
  that excluding it costs nothing.
- **The closing restoration promise (Amos 9:13-15), included, distinct from 9:11-12.** This brief
  initially considered but ultimately did not select 9:13-15 (agricultural abundance and permanent
  possession of the land) as a fifth pivotal passage, since it immediately follows the excluded
  9:11-12 in the text and a challenge item drawn from it risked implicitly cueing players toward the
  excluded material. Noted here so a future authoring pass understands the omission is deliberate,
  not an oversight.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`,
      see `docs/reviews/amos-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 4 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No verse from Amos 9:11-12 appears anywhere in this brief
- [x] No verse quotes the second sentence of Amos 2:7 verbatim
