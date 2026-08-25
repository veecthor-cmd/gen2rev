# Content Brief — Psalms (World 19)

Status: **`submitted`** — self-run theological review complete, see `docs/reviews/psalms-review.md`
(no changes required; verdict `approved`). Per `docs/CANON_STRUCTURE.md` §6, this is Wave 1 of the
25-book Old Testament expansion; the calling/orchestrating session consolidates all of Wave 1's
entries into `docs/CONTENT_REVIEW_LOG.md` afterward (sole-writer discipline, `docs/CONVENTIONS.md`)
— this brief's status header will be updated to reflect that log entry once written there.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql`
file has been written for this book — that is a separate later phase, out of scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — for **every** verse used in
> this brief, all six psalms, cross-checked against both sources (a fuller cross-check than
> Leviticus's, where only the most pivotal verses got two-source treatment). All checks matched
> character-for-character; see `docs/reviews/psalms-review.md` §1 for the full source-by-source
> table. This is still not a substitute for the independent character-for-character QA check
> required by `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table
> (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**, even after
> theological sign-off — sign-off and verbatim-text QA are two distinct checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here. (This is distinct
from the 5-level difficulty *ladder* below, which — same as every other book in this pipeline —
progresses within medium-tier content; see Genesis's and Leviticus's briefs for precedent.)

---

## Setting / Era

Psalms has no single narrative arc, no single author, and no single era — it's a 150-poem
collection assembled across roughly a millennium of Israel's worship life, spanning attributions to
Moses (Psalm 90, not used here), David (the largest single block, traditionally ~73 psalms),
Asaph, the sons of Korah, Solomon, and a substantial number of anonymous psalms. It is the
Hebrew Bible's hymnal and prayer book — used in Temple worship, and still central to synagogue
liturgy and Christian worship/devotion today, in both cases as *living*, currently-used religious
text, not just an ancient-text topic (the same caution the Leviticus review raised about Yom
Kippur applies here, arguably more so, since portions of Psalms are recited daily in Jewish and
Christian liturgical practice).

**This brief is Leviticus's "pivotal passages" adaptation taken further, per this assignment's
brief.** Leviticus grouped legal material into five representative blocks within one continuous
book. Psalms has no continuous block to group — it's 150 independent poems — so this brief instead
selects **whole individual psalms (or a tight verse cluster within one psalm)**, each standing on
its own as a "pivotal passage." The selection criterion, per this assignment's brief, is
**theological uncontestedness and cross-tradition memorability**, not comprehensive genre coverage
or narrative sequence — with 150 psalms and only 6 chosen, the other 144 are not "missing," they're
simply out of scope for this pass, the same way Leviticus left out chapters 11, 18, and 20.

**Deliberately not selected, and why (flagged up front, not just in Contested Territory below):**
- **Imprecatory psalms** (e.g. Psalm 137's closing verses, Psalm 109) — excluded entirely per this
  assignment's explicit instruction. There is no shortage of safe material; no attempt is made to
  "soften" or partially use these psalms.
- **Psalms 22 and 110** — both carry a real, live Jewish-vs-Christian interpretive divergence over
  messianic/Christological readings (Psalm 22's suffering imagery, Psalm 110's "the LORD says to
  my Lord" language, quoted messianically in the New Testament). Per this assignment's instruction,
  these are simply not selected rather than attempting to bound a messianic reading out of a
  challenge item — with 150 psalms to choose from, there was no need to take on that risk.
- **Psalm 19, Psalm 139, Psalm 90, and dozens of other strong candidates** — genuinely also
  low-risk and memorable, but six psalms already gives full difficulty-ladder coverage and genre
  range (wisdom, trust/lament-adjacent, penitential, praise, trust/protection, doxology); adding
  more would pad this brief without changing its risk profile or design coverage.

## Pivotal Psalms (6)

### 1. Psalm 1 — The Two Ways
Wisdom psalm, and the deliberate front door to the whole Psalter (Psalm 1 is widely read as an
editorial preface to the collection). Contrasts the person who delights in Yahweh's law with the
wicked, using an agricultural image (a tree by water vs. wind-driven chaff).

**Challenge-ready verses (Psalm 1, WEB, full text — 6 verses):**
- v.1: "Blessed is the man who doesn't walk in the counsel of the wicked, nor stand on the path of
  sinners, nor sit in the seat of scoffers;"
- v.2: "but his delight is in Yahweh's law. On his law he meditates day and night."
- v.3: "He will be like a tree planted by the streams of water, that produces its fruit in its
  season, whose leaf also does not wither. Whatever he does shall prosper."
- v.4: "The wicked are not so, but are like the chaff which the wind drives away."
- v.5: "Therefore the wicked shall not stand in the judgment, nor sinners in the congregation of
  the righteous."
- v.6: "For Yahweh knows the way of the righteous, but the way of the wicked shall perish."

### 2. Psalm 23 — The Shepherd Psalm
Near-universally memorized across Christian and Jewish tradition alike; a psalm of trust built on
shepherd imagery, traditionally attributed to David ("A Psalm by David" per the WEB superscription).
Low doctrinal risk on its face — see Contested Territory for the one interpretive nuance worth
flagging (v.6's "forever").

**Challenge-ready verses (Psalm 23, WEB, full text — 6 verses):**
- Superscription: "A Psalm by David."
- v.1: "Yahweh is my shepherd; I shall lack nothing."
- v.2: "He makes me lie down in green pastures. He leads me beside still waters."
- v.3: "He restores my soul. He guides me in the paths of righteousness for his name's sake."
- v.4: "Even though I walk through the valley of the shadow of death, I will fear no evil, for you
  are with me. Your rod and your staff, they comfort me."
- v.5: "You prepare a table before me in the presence of my enemies. You anoint my head with oil.
  My cup runs over."
- v.6: "Surely goodness and loving kindness shall follow me all the days of my life, and I will
  dwell in Yahweh's house forever."

### 3. Psalm 51:1-2, 10, 17 — David's Repentance
Traditionally the central penitential psalm, carrying a WEB superscription tying it to David's
sin with Bathsheba and Nathan's confrontation (2 Samuel 11-12). **Per this assignment's
instruction, this brief uses only the psalm's own text — it does not re-open or re-narrate 2 Samuel
11's content**, which was already excluded from that book's own brief. The superscription itself
(the psalm's own attribution of its occasion) is in-bounds as narrative fact stated by the text;
the events of 2 Samuel 11 are not re-told here. Only four verses are selected, deliberately
excluding verse 5 — see Contested Territory.

**Challenge-ready verses (Psalm 51, WEB, selected):**
- Superscription: "For the Chief Musician. A Psalm by David, when Nathan the prophet came to him,
  after he had gone in to Bathsheba."
- v.1: "Have mercy on me, God, according to your loving kindness. According to the multitude of
  your tender mercies, blot out my transgressions."
- v.2: "Wash me thoroughly from my iniquity. Cleanse me from my sin."
- v.10: "Create in me a clean heart, O God. Renew a right spirit within me."
- v.17: "The sacrifices of God are a broken spirit. O God, you will not despise a broken and
  contrite heart."

### 4. Psalm 100 — A Psalm of Thanksgiving
Short, uncontested call to worship — the pure praise/thanksgiving genre, no narrative or doctrinal
complexity at all.

**Challenge-ready verses (Psalm 100, WEB, full text — 5 verses):**
- v.1: "Shout for joy to Yahweh, all you lands!"
- v.2: "Serve Yahweh with gladness. Come before his presence with singing."
- v.3: "Know that Yahweh, he is God. It is he who has made us, and we are his. We are his people,
  and the sheep of his pasture."
- v.4: "Enter into his gates with thanksgiving, and into his courts with praise. Give thanks to
  him, and bless his name."
- v.5: "For Yahweh is good. His loving kindness endures forever, his faithfulness to all
  generations."

### 5. Psalm 121 — The Lord as Keeper
A Song of Ascents (per its WEB superscription), traditionally recited by pilgrims traveling up to
Jerusalem. Built on the repeated word "keep/keeper," affirming God's protection.

**Challenge-ready verses (Psalm 121, WEB, full text — 8 verses):**
- Superscription: "A Song of Ascents."
- v.1: "I will lift up my eyes to the hills. Where does my help come from?"
- v.2: "My help comes from Yahweh, who made heaven and earth."
- v.3: "He will not allow your foot to be moved. He who keeps you will not slumber."
- v.4: "Behold, he who keeps Israel will neither slumber nor sleep."
- v.5: "Yahweh is your keeper. Yahweh is your shade on your right hand."
- v.6: "The sun will not harm you by day, nor the moon by night."
- v.7: "Yahweh will keep you from all evil. He will keep your soul."
- v.8: "Yahweh will keep your going out and your coming in, from this time forward, and forever
  more."

### 6. Psalm 150 — Closing Doxology (World 19 capstone)
The final psalm in the Psalter — a pure, escalating call to praise God "with everything that has
breath," naming a full inventory of ancient Israelite worship instruments. Functions as this
world's boss-battle capstone, mirroring its canonical role as the Psalter's own closing doxology.

**Challenge-ready verses (Psalm 150, WEB, full text — 6 verses):**
- v.1: "Praise Yah! Praise God in his sanctuary! Praise him in his heavens for his acts of power!"
- v.2: "Praise him for his mighty acts! Praise him according to his excellent greatness!"
- v.3: "Praise him with the sounding of the trumpet! Praise him with harp and lyre!"
- v.4: "Praise him with tambourine and dancing! Praise him with stringed instruments and flute!"
- v.5: "Praise him with loud cymbals! Praise him with resounding cymbals!"
- v.6: "Let everything that has breath praise Yah! Praise Yah!"

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "Yahweh is my ___; I shall lack nothing." (Ps 23:1) → shepherd |
| 2 — Recall | Multiple choice, textual fact | "Per Psalm 1, what happens to the wicked in the wind?" → they are driven away like chaff (Ps 1:4) |
| 3 — Sequence | Order verses within a psalm | Order Psalm 150's instrument list as it appears (trumpet/harp/lyre → tambourine/dancing/strings/flute → cymbals) |
| 4 — Sequence + recall | Order + attribute a quotation | Given three opening lines (Ps 23:1, 100:1, 121:1), place them in canonical psalm-number order and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Psalm 51's own superscription, who confronted David that occasioned this psalm?" → Nathan the prophet (tests attentive reading of the text's own stated heading, not an assessment of David's conduct) |

Boss battle (world 19 capstone): Psalm 150, a mixed-format sequence weighted toward level 3-5 items
(the full instrument list is a strong sequencing/recall combination), functioning narratively and
mechanically as the Psalter's own closing doxology — chosen for this role per this assignment's
suggestion. Because each of the 6 pivotal psalms here is short and stands alone (unlike a narrative
book's multi-scene arc), expect a higher proportion of level 1-2 direct-recall items across the
whole world's challenge set relative to sequencing items, similar to the shape already flagged as
expected for Leviticus.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here:

- **Psalm superscriptions' historicity/authorship (Psalms 23, 51, 121).** Three of the six
  psalms used here carry WEB superscriptions ("A Psalm by David," Psalm 51's Bathsheba/Nathan
  note, "A Song of Ascents"). Scholarship is genuinely divided on whether these titles are reliable
  ancient authorial/historical notices or later editorial additions — some psalms anonymous in the
  Hebrew text gained titles only in the Septuagint. This brief treats the superscriptions the same
  way it treats verse text generally: quoted as what the text itself states, with no challenge item
  asserting the superscriptions' historical reliability one way or the other. A recall item asking
  "what does Psalm 23's heading say" tests the text as printed, not a claim about whether that
  heading is historically accurate.
- **Psalm and chapter numbering (all six psalms, structurally).** This brief follows the Hebrew/
  Masoretic numbering (also standard in Protestant Bibles, including the WEB), used throughout the
  rest of this project. Catholic and Orthodox tradition historically follows Septuagint/Vulgate
  numbering, which runs one behind Hebrew numbering from Psalm 10 through Psalm 146 (converging
  again at 148-150, meaning Psalm 150's number is the same in both systems — fitting, given its use
  here as capstone). This is a translation/convention difference, not a doctrinal one, but worth
  the reviewer's explicit confirmation since it's a genuine cross-tradition point this project
  hasn't had to handle in the MVP's 14 books (all narrative books, where chapter numbering doesn't
  diverge this way).
- **Psalm 23:6, "dwell in Yahweh's house forever."** Christian devotional tradition commonly reads
  this as a forward-looking reference to eternal life/heaven. Jewish tradition, and a meaningful
  strand of Christian scholarly commentary itself, reads "forever" more as "as long as I live" /
  ongoing worship and communion in this life (the Temple/sanctuary), not an afterlife claim — this
  is not solely a Jewish-vs-Christian split but also a live scholarly-vs-devotional split within
  Christian sources themselves. No challenge item built from this brief asks what "forever" means
  or refers to — only what the verse says. This is the same "stay narrative, don't grade the
  interpretation" pattern already applied to Genesis 3:15 and Leviticus 16.
- **Psalm 51:5, deliberately excluded.** The verse immediately following the four used here ("Behold,
  I was brought forth in iniquity. In sin my mother conceived me.") is one of the most contested
  single verses in the Psalter — read in some Christian (especially Reformed/Calvinist) tradition
  as scriptural support for original sin/total depravity doctrine, a specifically denominational
  reading not shared across all of Christianity, let alone Judaism, which has no equivalent
  doctrine of inherited guilt from conception. This brief does not use v.5 anywhere, in any format.
  Flagged explicitly, same pattern as Leviticus's deliberate-exclusion note, so the reviewer can
  confirm the exclusion itself rather than just the four verses actually selected.
- **Psalm 51's superscription and its 2 Samuel tie-in.** The heading names the occasion (David,
  Bathsheba, Nathan) but this brief does not re-narrate or add any detail beyond what the
  superscription itself states — 2 Samuel 11's content remains excluded from this project exactly
  as that book's own brief already established. No challenge item requires knowledge of 2 Samuel
  11's events; the superscription alone is self-contained narrative fact.
- **Psalm 1:5, "judgment."** Classic Christian commentators genuinely disagree on whether "the
  judgment" here means final/eschatological judgment specifically, or a broader sense of divine
  accountability including present-life consequence — an intra-Christian scholarly nuance rather
  than a hard denominational line, but worth flagging since end-times/judgment material is
  explicitly named as contested territory elsewhere in this project's expansion plan (see the
  Major Prophets group in `docs/CANON_STRUCTURE.md` §6). No challenge item built from Psalm 1:5
  specifies which reading is correct — it only tests that the text states the wicked "shall not
  stand in the judgment."
- **Psalm 150 and instrumental worship.** The psalm's own text names specific instruments (trumpet,
  harp, lyre, tambourine, strings, flute, cymbals) as part of ancient Israelite worship. A live
  present-day worship-practice debate exists in some Christian traditions (notably a cappella-only
  Churches of Christ and historic Reformed "regulative principle" positions) over whether
  instrumental worship is warranted under the New Testament, sometimes citing this very psalm as a
  point of tension. This brief's challenge items only test what instruments the text names, in what
  order — a purely descriptive/textual-recall fact — never a normative claim about how worship
  should be conducted today. This is a live practice debate, not a narrative or doctrinal-content
  dispute about the psalm's own meaning, so it bears a lighter risk profile than the other items
  above, but is flagged for completeness per this book's unusually high concentration of
  cross-tradition edge cases relative to a narrative book.
- **Imprecatory psalms and Psalms 22/110 — deliberately excluded, not bounded.** See "Setting/Era"
  above. Unlike the other items in this section, these are not included-with-bounding; they are
  simply not selected, per this assignment's explicit instruction. Flagged here so the reviewer can
  confirm the exclusion is sound rather than assuming an oversight.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) —
      `approved`, see `docs/reviews/psalms-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 6 pivotal psalms above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No imprecatory psalm, and no Psalm 22/110 messianic-reading item, appears anywhere in this
      brief
