# Content Brief — Isaiah (World 23)

Status: **`approved-with-changes`** — self-run theological review complete, see
`docs/reviews/isaiah-review.md` (changes already applied below — no outstanding edits). Logged in
`docs/CONTENT_REVIEW_LOG.md` row 23.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql`
file has been written for this book — that is a separate later phase, out of scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — for **every** verse used in
> this brief, all eight passages, cross-checked against both sources independently (the same
> full-coverage two-source standard used for Song of Solomon, given this book's comparable
> sensitivity). All checks matched character-for-character; see `docs/reviews/isaiah-review.md` §1
> for the full source-by-source table. This is still not a substitute for the independent
> character-for-character QA check required by `QA_REQUIREMENTS.md` §3. **Do not ingest into the
> `challenge` table (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**,
> even after theological sign-off — sign-off and verbatim-text QA are two distinct checks per that
> document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here.

---

## Setting / Era

Isaiah ministered as a prophet in Judah across roughly four decades (traditionally dated c. 740-681
BC per the WEB's own chapter 1 and 6 dating notices, spanning the reigns of Uzziah, Jotham, Ahaz,
and Hezekiah), a period bracketing the Assyrian Empire's rise, the fall of the northern kingdom
(Israel) to Assyria — already covered as 2 Kings' World 12 material — and the Assyrian siege of
Jerusalem under Hezekiah. At 66 chapters, Isaiah is both the longest and the most theologically
loaded book in this wave, combining short narrative stretches (chiefly chs. 6-8 and 36-39) with a
very large body of prophetic oracle, poetry, and exhortation that has no narrative "plot" to walk
through scene by scene.

**This brief follows the Leviticus/Psalms/Job precedent explicitly, per this assignment's
instruction: pivotal *passages/themes*, not forced scenes.** Where a passage is genuinely narrative
(Isaiah's call vision in ch. 6; Hezekiah's illness in ch. 38), it is treated as a scene. Everywhere
else, this brief selects short, self-contained, thematically pivotal passages — oracle, exhortation,
or doxology — the same adaptation Job's brief used for its "poetic middle." With 66 chapters and 8
passages selected, the remaining material is not "missing"; it is out of scope for this pass, the
same way Leviticus left out chapters 11, 18, and 20 and Psalms left out 144 of 150 psalms.

**Deliberately excluded, and why (flagged up front, not just in Contested Territory below):**
Isaiah contains three of the most Jewish-vs-Christian-contested passages in the entire Old
Testament — **Isaiah 7:14** ("the virgin/young woman shall conceive"), **Isaiah 9:6-7** ("Mighty
God, Everlasting Father"), and **Isaiah 53** (the "suffering servant"). All three are excluded
entirely from this brief, not narrowly bounded. See "Deliberate Exclusions" under Contested
Territory below for the sourced reasoning — independently confirmed via live research for this
brief, not assumed from the assignment's framing — for why narrow bounding (the technique used
successfully elsewhere in this project, e.g. Genesis 3:15, Leviticus 10:1-3, Job 19:25-27) was
judged insufficient for these three specifically, the same way Psalms judged it insufficient for
Psalms 22 and 110. With 66 chapters to choose from, there is no need to take on that risk.

**Overlap note (Isaiah 36-39 vs. 2 Kings 18-20):** Isaiah 36-37 is a near-verbatim parallel to 2
Kings 18-19 (the Assyrian siege and Yahweh's deliverance of Jerusalem), already used as World 12's
third pivotal scene with its own challenge-ready verses (2 Kings 19:15, 19:19, 19:35-36). Rather
than repeat that narrative, this brief uses **Isaiah 38** (Hezekiah's illness, prayer, and healing)
instead — material 2 Kings' brief did not use (2 Kings 20, the parallel account of Hezekiah's
illness, was not selected in World 12's brief), so this is genuinely new content for the product,
not a re-telling.

## Pivotal Passages (8)

### 1. Isaiah 1:16-18 — "Come Now, Let's Reason Together"
An opening call to repentance, closing on one of the book's most memorized lines — the promise that
confessed sin can be made "white as snow." Pure exhortation, no narrative or doctrinal complexity.

**Challenge-ready verses (Isaiah 1:16-18, WEB):**
- v.16: "Wash yourselves. Make yourself clean. Put away the evil of your doings from before my
  eyes. Cease to do evil."
- v.17: "Learn to do well. Seek justice. Relieve the oppressed. Defend the fatherless. Plead for
  the widow."
- v.18: "Come now, and let's reason together," says Yahweh: "Though your sins are as scarlet, they
  shall be as white as snow. Though they are red like crimson, they shall be as wool."

### 2. Isaiah 2:2-4 — Swords into Plowshares
A vision of nations streaming to Yahweh's house to learn his ways, closing on the book's
best-known image outside the Psalter: swords beaten into plowshares, an end to nations "learning
war." Also inscribed, in part, on the Isaiah Wall across from the United Nations headquarters —
cross-tradition, widely shared imagery.

**Challenge-ready verses (Isaiah 2:2-4, WEB):**
- v.2: "It shall happen in the latter days, that the mountain of Yahweh's house shall be
  established on the top of the mountains, and shall be raised above the hills; and all nations
  shall flow to it."
- v.3: "Many peoples shall go and say, 'Come, let's go up to the mountain of Yahweh, to the house
  of the God of Jacob; and he will teach us of his ways, and we will walk in his paths.' For the
  law shall go out of Zion, and Yahweh's word from Jerusalem."
- v.4: "He will judge between the nations, and will decide concerning many peoples. They shall
  beat their swords into plowshares, and their spears into pruning hooks. Nation shall not lift up
  sword against nation, neither shall they learn war any more."

### 3. Isaiah 6:1-8 — The Call of Isaiah
The book's clearest narrative scene: Isaiah's throne-room vision of "the Lord... high and lifted
up," the seraphim's "Holy, holy, holy," his confession of unworthiness, the coal that touches his
lips, and his response to Yahweh's call — "Here I am. Send me!" Structurally the same kind of
call-and-commission narrative already used safely elsewhere in this project (cf. Moses at the
burning bush, Genesis/Exodus material).

**Challenge-ready verses (Isaiah 6:1-8, WEB, full text — 8 verses):**
- v.1: "In the year that King Uzziah died, I saw the Lord sitting on a throne, high and lifted up;
  and his train filled the temple."
- v.2: "Above him stood the seraphim. Each one had six wings. With two he covered his face. With
  two he covered his feet. With two he flew."
- v.3: "One called to another, and said, 'Holy, holy, holy, is Yahweh of Armies! The whole earth is
  full of his glory!'"
- v.4: "The foundations of the thresholds shook at the voice of him who called, and the house was
  filled with smoke."
- v.5: "Then I said, 'Woe is me! For I am undone, because I am a man of unclean lips and I live
  among a people of unclean lips, for my eyes have seen the King, Yahweh of Armies!'"
- v.6: "Then one of the seraphim flew to me, having a live coal in his hand, which he had taken
  with the tongs from off the altar."
- v.7: "He touched my mouth with it, and said, 'Behold, this has touched your lips; and your
  iniquity is taken away, and your sin forgiven.'"
- v.8: "I heard the Lord's voice, saying, 'Whom shall I send, and who will go for us?' Then I said,
  'Here I am. Send me!'"

### 4. Isaiah 12:2-6 — "Behold, God Is My Salvation"
A short thanksgiving hymn closing the book's first major section (chs. 1-12) — pure praise, no
narrative or doctrinal complexity, structurally similar in role and tone to Psalms' use of Psalm
100 and Psalm 150 in that book's brief.

**Challenge-ready verses (Isaiah 12:2-6, WEB, full text — 5 verses):**
- v.2: "Behold, God is my salvation. I will trust, and will not be afraid; for Yah, Yahweh, is my
  strength and song; and he has become my salvation."
- v.3: "Therefore with joy you will draw water out of the wells of salvation."
- v.4: "In that day you will say, 'Give thanks to Yahweh! Call on his name! Declare his doings
  among the peoples! Proclaim that his name is exalted!'"
- v.5: "Sing to Yahweh, for he has done excellent things! Let this be known in all the earth!"
- v.6: "Cry aloud and shout, you inhabitant of Zion, for the Holy One of Israel is great among
  you!"

### 5. Isaiah 38:1-6 — Hezekiah's Illness and Healing
King Hezekiah, near death, prays and weeps; Yahweh sends Isaiah back with a promise of fifteen more
years of life and deliverance from Assyria. New content for this product (see Overlap note above)
— not a repeat of World 12's siege narrative.

**Challenge-ready verses (Isaiah 38:1-6, WEB):**
- v.1: "In those days Hezekiah was sick and near death. Isaiah the prophet, the son of Amoz, came
  to him, and said to him, 'Yahweh says, "Set your house in order, for you will die, and not
  live."'"
- v.2-3 (trimmed): "Then Hezekiah turned his face to the wall and prayed to Yahweh, and said,
  'Remember now, Yahweh, I beg you, how I have walked before you in truth and with a perfect
  heart, and have done that which is good in your sight.' Then Hezekiah wept bitterly."
- v.5 (trimmed): "'Go, and tell Hezekiah, "Yahweh, the God of David your father, says, 'I have
  heard your prayer. I have seen your tears. Behold, I will add fifteen years to your life.'"'"

### 6. Isaiah 40:28-31 — Wings Like Eagles
The opening of "Second Isaiah" 's great comfort section: Yahweh does not grow weary, and those who
wait for him will "mount up with wings like eagles." One of the most memorized passages in the
book across traditions.

**Challenge-ready verses (Isaiah 40:28-31, WEB, full text — 4 verses):**
- v.28: "Haven't you known? Haven't you heard? The everlasting God, Yahweh, the Creator of the
  ends of the earth, doesn't faint. He isn't weary. His understanding is unsearchable."
- v.29: "He gives power to the weak. He increases the strength of him who has no might."
- v.30: "Even the youths faint and get weary, and the young men utterly fall;"
- v.31: "but those who wait for Yahweh will renew their strength. They will mount up with wings
  like eagles. They will run, and not be weary. They will walk, and not faint."

### 7. Isaiah 41:10 — "Don't Be Afraid, for I Am with You"
A single, short, self-contained verse of assurance — no interpretive divide identified anywhere in
this brief's research.

**Challenge-ready verse (Isaiah 41:10, WEB):**
- "Don't you be afraid, for I am with you. Don't be dismayed, for I am your God. I will strengthen
  you. Yes, I will help you. Yes, I will uphold you with the right hand of my righteousness."

### 8. Isaiah 55:6-9 — "My Thoughts Are Not Your Thoughts"
A closing call to seek Yahweh, paired with the book's clearest statement of divine transcendence —
low doctrinal risk, in near-universal use across traditions.

**Challenge-ready verses (Isaiah 55:6-9, WEB, full text — 4 verses):**
- v.6: "Seek Yahweh while he may be found. Call on him while he is near."
- v.7: "Let the wicked forsake his way, and the unrighteous man his thoughts. Let him return to
  Yahweh, and he will have mercy on him, to our God, for he will freely pardon."
- v.8: "For my thoughts are not your thoughts, and your ways are not my ways," says Yahweh."
- v.9: "For as the heavens are higher than the earth, so are my ways higher than your ways, and my
  thoughts than your thoughts."

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "Though your sins are as scarlet, they shall be as ___ as snow." (Isa 1:18) → white |
| 2 — Recall | Multiple choice, textual/narrative fact | "What did the seraph touch to Isaiah's lips?" → a live coal (Isa 6:6-7) |
| 3 — Sequence | Order verses within a passage | Order Isaiah 6:1-8 as it happens (the vision → the seraphim's cry → Isaiah's confession → the coal → "Here I am. Send me!") |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (Isa 6:8, 40:31, 55:8), place them in canonical chapter order and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Isaiah 38:5, how many years did Yahweh add to Hezekiah's life?" → fifteen (tests attentive reading of the text's own stated number, not the theological significance of the healing) |

Boss battle (world 23 capstone): a mixed-format sequence spanning all 8 passages, weighted toward
level 3-5 items. Because five of the eight passages here are short, self-contained oracle/praise
units rather than a continuous narrative (the same shape already flagged as expected for Leviticus,
Job's poetic middle, and Psalms), expect a higher proportion of level 1-2 direct-recall items
relative to sequencing items — except within passages 3 (Isaiah 6) and 5 (Isaiah 38), which are
narrative and support full sequence-format items same as any narrative-book scene.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here.
This section is unusually long given Isaiah's concentration of contested material, per this
assignment's explicit instruction that this book needs the most careful Contested Territory section
of anything in this wave.

### Deliberate exclusions (not narrowly bounded — confirmed via independent research)

- **Isaiah 7:14, "the virgin/young woman shall conceive."** Confirmed genuine, deep, live
  cross-tradition divergence at the translation level itself, prior to any theological reading. The
  Hebrew *almah* means "young woman" generically elsewhere in the Torah (e.g. Genesis 24:43, Exodus
  2:8), distinct from *betulah* ("virgin"); mainstream Jewish sources (e.g.
  [Aish](https://aish.com/does-isaiah-714-refer-to-a-virgin-birth/),
  [Jews for Judaism](https://jewsforjudaism.org/knowledge/articles/isaiah-714-a-virgin-birth))
  read the sign as pointing to a child born within Isaiah and Ahaz's own lifetime, not a future
  virgin birth. Christian tradition, following the Septuagint's Greek rendering (*parthenos*,
  "virgin") and Matthew 1:23's citation, reads it messianically. This is not a case where the
  narrative content is cleanly separable from the interpretive question the way Genesis 3:15's
  "he/it will bruise your head" was — the translation choice itself (which single word to put in a
  fill-in-blank or multiple-choice item) *is* the contested claim. **Excluded entirely. No verse
  from Isaiah 7 appears anywhere in this brief.**
- **Isaiah 9:6-7, "Mighty God, Everlasting Father."** Confirmed genuine divergence: mainstream
  Jewish sources (e.g. [Jews for Judaism](https://www.jewsforjudaism.org/knowledge/articles/who-is-the-child-in-isaiah-95-6/))
  read the verse as a theophoric royal name for Hezekiah — titles praising God, not asserting the
  child's own divinity — while Christian tradition reads the titles as directly asserting the
  child's divine nature, applied to Jesus. Any recall or fill-in-blank item using these titles would
  necessarily present one reading's premise (are these titles describing a human king's name, or
  asserting a divine identity?) as settled. **Excluded entirely. No verse from Isaiah 9 appears
  anywhere in this brief.**
- **Isaiah 53, the "suffering servant."** Confirmed the deepest and most consequential divergence of
  the three: Christian tradition reads the chapter as messianic prophecy fulfilled in Jesus's
  crucifixion; the dominant strand of rabbinic Jewish tradition, especially from the medieval period
  onward, reads the servant as collective Israel (see [Outreach Judaism](https://outreachjudaism.org/gods-suffering-servant-isaiah-53/),
  [Aish](https://aish.com/isaiah_53_the_suffering_servant/)) — though research for this brief also
  surfaced that this is genuinely contested *within* Jewish tradition and across time, not a
  monolithic "the Jewish view": earlier rabbinic sources including Targum Jonathan and the Talmud
  (Sanhedrin 98b) applied parts of the chapter messianically, and the Zohar identifies a "Messiah
  ben Joseph" figure with the servant, with the Israel-as-servant reading becoming dominant later,
  partly in response to Christian polemical use of the chapter. This is not a case where a "test
  what the text says, not what it means" bounding can work, the same conclusion this project's own
  precedent already reached for Psalm 22 and Psalm 110 (structurally the closest parallel) — the
  chapter's entire content is a description of a suffering figure whose *identity* is the
  contested question; there is no verse in it that can be quoted without the quoting itself implying
  an identification. **Excluded entirely. No verse from Isaiah 53 appears anywhere in this brief.**
  This reviewer's confidence in this exclusion, independent of the assignment's framing, is high —
  live sourcing confirmed the divergence is real, deep, ongoing, and not resolvable by narrow
  verse-level bounding the way most of this project's other contested items have been.

### Bounded inclusions (narrative-only, interpretation not graded)

- **Isaiah 2:2-4, "the latter days" and its timing.** Confirmed a genuine, live divergence: Jewish
  tradition reads "the latter days" as a still-future messianic age centered on a rebuilt Temple;
  Christian tradition (per NT usage) commonly reads the "latter days" as inaugurated at Christ's
  first coming, with "the mountain of Yahweh's house" sometimes read as the Church rather than a
  literal Temple ([overview of both readings](https://www.bible.ca/ef/expository-isaiah-2-1-5.htm),
  [enduringword.com](https://enduringword.com/bible-commentary/isaiah-2/)). No challenge item built
  from this passage asks when "the latter days" occur, whether they have begun, or what "the
  mountain of Yahweh's house" refers to — only what the text states will happen (nations flowing
  to it, swords beaten into plowshares). This is the same "stay narrative, don't grade the timing or
  referent" pattern already applied to Genesis 3:15 and Leviticus 16.
- **Isaiah 6:1, "I saw the Lord" and its New Testament connection.** Confirmed that John 12:41 (NT,
  out of scope for this OT-only project) identifies the figure Isaiah saw with Christ specifically,
  and that this Christological reading of the theophany is well-attested in Christian tradition
  (e.g. [Church Life Journal, Notre Dame](https://churchlifejournal.nd.edu/articles/john-12-isaiah-and-the-glory-of-christ-crucified/)).
  Jewish tradition reads the vision as a direct theophany of God, with no such identification. No
  challenge item built from Isaiah 6 asks who or what Isaiah saw beyond the text's own words ("the
  Lord sitting on a throne") — the vision is graded purely as narrated: what Isaiah saw, what the
  seraphim said, what happened to him, how he responded. No NT cross-reference appears anywhere in
  this brief, consistent with the project's OT-only scope.
- **Isaiah 38, Hezekiah's healing and the parallel account in 2 Kings 20 / 2 Chronicles 32.** The
  three accounts (Isaiah 38, 2 Kings 20, 2 Chronicles 32:24-26) differ slightly in narrative detail
  and order (e.g. 2 Kings includes the sign of the sundial/shadow going backward, not used in this
  brief's selected verses; 2 Chronicles adds that Hezekiah's heart was later "lifted up" in pride).
  This brief's challenge items are built only from Isaiah 38:1-6's own wording and make no claim
  about how the three accounts relate or which is more complete — a scope decision, not a
  theological one, flagged so a future authoring pass doesn't assume the accounts are identical.
- **Isaiah 40-55's authorship ("Second Isaiah" / Deutero-Isaiah).** Confirmed this is a genuine,
  long-standing, live scholarly question: mainstream historical-critical scholarship holds
  something close to a consensus that chapters 40-66 (and possibly parts of 1-39) were composed by
  a different hand, or hands, at a later date than the 8th-century prophet of chapters 1-39 — while
  traditional Jewish and much traditional Christian scholarship holds the whole book was written by
  the one prophet named in 1:1 ([overview of the scholarly-vs-traditional divide](https://evidenceunseen.com/old-testament/difficulties/authorship-of-isaiah)).
  This is structurally similar to the Mosaic-authorship question already flagged in the Pentateuch
  books' briefs. This brief takes no position: it presents all eight passages simply as "Isaiah"
  material, cited by book-chapter-verse only, with no claim about single or composite authorship,
  and no passage's Setting/Era description above depends on resolving the question either way
  (passages 6-8, drawn from chs. 40 and 55, are described only by their content and canonical
  location, not by an authorship claim).

### Passages and material deliberately not selected, for scope or overlap reasons

- **Chapters 24-27 ("the Isaiah Apocalypse") and 65-66 (new heavens and new earth).** This material
  touches the same end-times/eschatological interpretive territory `GEN2REV_MASTER_PROMPT.md` §2.4
  names as the single biggest content risk for this whole product, and which `docs/CANON_STRUCTURE.md`
  §6 specifically flags for this wave (see also Daniel's planned apocalyptic-material exclusions).
  Not selected as a pivotal passage; no verse from these chapters appears in this brief. Given how
  much safe material Isaiah offers elsewhere, there is no need to attempt narrowing this material for
  this pass.
- **Isaiah 36-37 (the Assyrian siege narrative).** Deliberately not repeated here — see Overlap note
  in Setting/Era above; this material is already covered by 2 Kings' World 12 brief.
- **Isaiah 39 (the Babylonian envoys and the prophecy of exile).** Not selected; this material's
  exile-foreshadowing content is already the closing beat of 2 Kings' World 12 brief (2 Kings 25),
  and including it here would duplicate that book's capstone note rather than add new content.
- **The remaining 50+ chapters generally.** Not selected for scope reasons per this brief's 8-passage
  target, consistent with how Leviticus, Job, and Psalms scoped their own pivotal-passage counts —
  not a signal that any specific unselected passage was screened out for a hidden sensitivity reason
  unless named explicitly above.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) —
      `approved-with-changes`, changes already applied, see `docs/reviews/isaiah-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 8 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No verse from Isaiah 7:14, 9:6-7, or 53 appears anywhere in this brief
