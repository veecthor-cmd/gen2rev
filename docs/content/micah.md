# Content Brief — Micah (World 33)

Status: **`approved-with-changes`** — self-run theological review complete, see
`docs/reviews/micah-review.md` (change already applied below — no outstanding edits).

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No
`docs/ingest/*.sql` file has been written for this book — that is a separate later phase, out of
scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — with every challenge-ready
> verse cross-checked against both sources independently. All checks matched character-for-
> character; see `docs/reviews/micah-review.md` §1 for the full source-by-source table. This is
> still not a substitute for the independent character-for-character QA check required by
> `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table
> (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**, even after
> theological sign-off — sign-off and verbatim-text QA are two distinct checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here.

---

## Setting / Era

Micah prophesied in Judah in roughly the same period as Isaiah (per the WEB's own chapter 1 dating
notice: the reigns of Jotham, Ahaz, and Hezekiah, c. 750-686 BC), addressing both the northern
kingdom (Samaria, which fell to Assyria in 722 BC during this window) and Judah. Unlike Isaiah, this
is a short book (7 chapters) with almost no sustained narrative — it alternates between oracles of
judgment against injustice and oracles of restoration/hope, closing on one of the Old Testament's
most quoted statements of what God requires (6:8) and a closing hymn of praise for divine mercy
(7:18-20).

**This brief follows the Leviticus/Isaiah precedent explicitly: pivotal *passages*, not forced
scenes.** With only 7 chapters and per `docs/CANON_STRUCTURE.md` §6's own expectation that Minor
Prophets briefs run thinner than a book like Isaiah's, this brief selects 4 passages rather than
padding the count. Micah 5:1-5 (the oracle naming a future ruler from Bethlehem) is deliberately
**excluded entirely** — see Contested Territory below — which is the largest single reason this
book's passage count is smaller than it would otherwise be; the excluded material is not replaced
with substitute content, consistent with how Isaiah handled its own three exclusions.

## Pivotal Passages (4)

### 1. Micah 1:2-4 — Yahweh Comes in Judgment
The book's opening theophany: Yahweh "comes out of his place" and treads the high places of the
earth, with mountains melting like wax before him. Vivid, uncontested poetic imagery that sets the
book's tone.

**Challenge-ready verses (Micah 1:2-4, WEB):**
- v.2: "Hear, you peoples, all of you! Listen, O earth, and all that is therein. Let the Lord
  Yahweh be witness against you, the Lord from his holy temple."
- v.3: "For behold, Yahweh comes out of his place, and will come down and tread on the high places
  of the earth."
- v.4: "The mountains melt under him, and the valleys split apart like wax before the fire, like
  waters that are poured down a steep place."

### 2. Micah 4:1-4 — Swords into Plowshares
A vision of nations streaming to Yahweh's mountain to learn his ways, closing on the near-identical
image also found in Isaiah 2:2-4: swords beaten into plowshares, every man safe under his own vine
and fig tree. One of the most widely shared images across traditions in the whole Minor Prophets
corpus.

**Challenge-ready verses (Micah 4:1-4, WEB):**
- v.1: "But in the latter days, it will happen that the mountain of Yahweh's temple will be
  established on the top of the mountains, and it will be exalted above the hills; and peoples will
  stream to it."
- v.2: "Many nations will go and say, 'Come! Let's go up to the mountain of Yahweh, and to the house
  of the God of Jacob; and he will teach us of his ways, and we will walk in his paths.' For the law
  will go out of Zion, and Yahweh's word from Jerusalem;"
- v.3: "and he will judge between many peoples, and will decide concerning strong nations afar off.
  They will beat their swords into plowshares, and their spears into pruning hooks. Nation will not
  lift up sword against nation, neither will they learn war any more."
- v.4: "But every man will sit under his vine and under his fig tree. No one will make them afraid,
  for the mouth of Yahweh of Armies has spoken."

### 3. Micah 6:6-8 — What Does Yahweh Require?
The book's best-known passage and this world's natural anchor/boss-item: a rhetorical question about
what would satisfy Yahweh (thousands of rams? rivers of oil?), answered with one of the most quoted
verses across all Christian and Jewish traditions.

**Challenge-ready verses (Micah 6:6-8, WEB):**
- v.6: "How shall I come before Yahweh, and bow myself before the exalted God? Shall I come before
  him with burnt offerings, with calves a year old?"
- v.7: "Will Yahweh be pleased with thousands of rams? With tens of thousands of rivers of oil?
  Shall I give my firstborn for my disobedience? The fruit of my body for the sin of my soul?"
- v.8: "He has shown you, O man, what is good. What does Yahweh require of you, but to act justly,
  to love mercy, and to walk humbly with your God?"

### 4. Micah 7:18-20 — "Who Is a God Like You?"
The book's closing doxology: a hymn of praise for Yahweh's readiness to pardon and his covenant
faithfulness to Abraham and Jacob. A fitting capstone passage, structurally similar in role to
Isaiah's use of 55:6-9 or Nahum's use of 1:7.

**Challenge-ready verses (Micah 7:18-20, WEB):**
- v.18: "Who is a God like you, who pardons iniquity, and passes over the disobedience of the
  remnant of his heritage? He doesn't retain his anger forever, because he delights in loving
  kindness."
- v.19: "He will again have compassion on us. He will tread our iniquities under foot. You will
  cast all their sins into the depths of the sea."
- v.20: "You will give truth to Jacob, and mercy to Abraham, as you have sworn to our fathers from
  the days of old."

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "To act justly, to love mercy, and to walk humbly with your ___." (Mic 6:8) → God |
| 2 — Recall | Multiple choice, textual/narrative fact | "According to Micah 6:8, what does Yahweh require besides acting justly and loving mercy?" → walking humbly with your God |
| 3 — Sequence | Order passages within the book | Order the pivotal-passage blocks as they appear in the book (Yahweh's coming → swords into plowshares → what Yahweh requires → "who is a God like you") |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (Mic 4:3, 6:8, 7:18), place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Micah 4:4, what will every man sit under, safe and unafraid?" → his vine and his fig tree (tests attentive reading of the text, not the theological timing of the vision) |

Boss battle (world 33 capstone): a mixed-format sequence spanning all 4 pivotal passages, weighted
toward level 3-5 items and anchored on Micah 6:8 as the single highest-value recall item, given its
prominence across traditions. Because Micah is almost entirely oracle rather than continuous
narrative, expect a higher proportion of level 1-2 direct-recall items relative to sequencing items,
the same pattern already established for Leviticus and Isaiah's non-narrative passages.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here.

### Deliberate exclusion: Micah 5:1-5 (not narrowly bounded — confirmed via independent research)

**Micah 5:2** ("But you, Bethlehem Ephrathah, being small among the clans of Judah, out of you one
will come out to me who is to be ruler in Israel; whose goings out are from of old, from ancient
times") is directly quoted (in adapted form) in Matthew 2:6, where Herod's chief priests and
scribes cite it to identify Bethlehem as the Messiah's birthplace, and Christian tradition reads the
verse as fulfilled specifically in Jesus's birth there. This brief's independent research (not just
accepted from this assignment's framing) confirms the passage is genuinely contested, but the shape
of the contest is more specific than "Jewish tradition reads it differently, full stop":

- Ancient and medieval Jewish sources (Targum Jonathan, and later Rashi) do read Micah 5:2 as
  messianic in a general sense — a future ideal ruler from David's line — and Rashi reads "from of
  old, from ancient times" as pointing to the (pre-)existence of the Messiah's name/lineage. This is
  a case where "the Jewish reading" is not monolithic even before comparing it to Christian
  tradition. [NeverThirsty, "Jewish Rabbis Believed Micah 5:2 Is About the Messiah"](https://www.neverthirsty.org/bible-studies/christmas-accounts/jewish-rabbis-believed-micah-52-is-about-the-messiah/)
  (a Christian apologetics source, read with appropriate caution for framing, but its citations of
  Targum Jonathan and Rashi's actual commentary are independently verifiable claims about historical
  Jewish sources, not this source's own invention).
- The specific, live contested claim is not "was a future Davidic ruler expected" (both traditions
  broadly share that general messianic-hope category) but **whether this specific verse identifies
  Jesus of Nazareth as that ruler** — which is exactly the kind of single-figure identity claim this
  project has already ruled out of bounds for graded content (Isaiah 7:14, 9:6-7, 53; Psalm 22, 110).
  Modern Jewish tradition does not identify Jesus as the fulfillment of Micah 5:2; Christian tradition,
  via Matthew 2:6, asserts exactly that.
- **The passage cannot be narrowly bounded the way Genesis 3:15 or Leviticus 10:1-3 were.** A
  fill-in-blank or multiple-choice item built from "out of you one will come out to me who is to be
  ruler in Israel" or "whose goings out are from of old, from ancient times" would present, as a
  recall target, wording that is itself the subject of the Matthew 2:6 identity-claim — the same
  structural problem Isaiah's review found for 7:14 and 9:6-7 (the tested wording *is* the contested
  claim, not separable context around it).

**Excluded entirely: Micah 5:1-5, the full "ruler from Bethlehem" oracle unit** (not just verse 2
in isolation — verses 1, 3, and 4 describe the same figure's siege context, birth, and shepherding
reign, so excluding 5:2 alone while using its surrounding verses would still graded-test the same
contested figure by implication). No verse from Micah 5 appears anywhere in this brief. Given how
much safe, uncontested material the rest of Micah offers (6:8 alone is one of the most universally
quoted verses in the Minor Prophets), there is no need to attempt narrowing this passage instead of
excluding it.

### Bounded inclusion: Micah 4:1-4's relationship to Isaiah 2:2-4

Micah 4:1-3 and Isaiah 2:2-4 share nearly identical wording — a well-documented literary
relationship (scholars debate which book originated the oracle, or whether both draw on a common
earlier source) that is itself a live scholarly question, not a doctrinal one. This brief takes no
position on priority/borrowing; the passage is presented purely as Micah 4:1-4's own text, cited by
its own book-chapter-verse, with no claim about its relationship to Isaiah's parallel passage. This
mirrors how Isaiah's own brief handled its overlap with 2 Kings 18-19 (a scope/textual-relationship
note, not a theological one).

### No other contested items identified

Micah 1:2-4 (theophany imagery), 6:6-8 (the rhetorical question about sacrifice, echoing similar
sacrifice-language already bounded safely in Leviticus 1/17), and 7:18-20 (praise for mercy and
covenant faithfulness) were checked and no live cross-tradition doctrinal dispute bearing on a
graded item was found — see `docs/reviews/micah-review.md` §3 for the sourcing.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) —
      `approved-with-changes`, change already applied, see `docs/reviews/micah-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 4 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No verse from Micah 5 appears anywhere in this brief
