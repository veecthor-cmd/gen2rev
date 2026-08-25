# Content Brief — Ezekiel (World 26)

Status: **`approved-with-changes`** — theological self-review complete, see
`docs/reviews/ezekiel-review.md`. The "changes" the review found necessary are a QA-sourcing
completeness flag (re-verify Ezekiel 34 and 37 against a second live source using a single-passage
fetch — see review §1 and §4), not a content or bounding change to this file; no edit to this brief
was required as a result of review. Not yet logged in `docs/CONTENT_REVIEW_LOG.md` (consolidated
separately by the orchestrating session across all of Wave 2 — see `docs/CONVENTIONS.md`'s
sole-writer discipline note).

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4).

**Medium tier only.** Easy/hard tiers are explicitly out of scope for this pass, per
`docs/CANON_STRUCTURE.md` §6's phasing note.

> **Verbatim-text caveat:** verse text below was retrieved via automated web-fetch passes against
> two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — with every challenge-ready
> block cross-checked against both (one passage, Ezekiel 37, had its full text independently
> confirmed on ebible.org and spot-confirmed on BibleGateway — see the review file §1 for detail).
> This is not yet the independent character-for-character QA check required by
> `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table
> (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**, even after
> theological sign-off.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Setting / Era

Ezekiel prophesies among the Judean exiles already deported to Babylon, by the river Chebar,
beginning in the fifth year of King Jehoiachin's captivity (Ezekiel 1:1-3) — roughly a decade
before Jerusalem's final fall in 586 BC, which the book's later chapters also address. Unlike
Isaiah and Jeremiah, who prophesy from within Judah as the crisis unfolds, Ezekiel prophesies
entirely from exile, to a community that has already lost its land and Temple in one wave of
deportation and is about to lose them completely. The book alternates between vivid symbolic
visions (the call vision, chs. 1-3; the dry bones, ch. 37; the temple vision, chs. 40-48),
enacted "sign-acts" the prophet performs bodily to dramatize a message (chs. 4-5, 12, 24), and
oracles of judgment and restoration addressed to Israel, Judah, and surrounding nations. Like
Leviticus and Job before it in this project's precedent, Ezekiel is adapted here as **pivotal
passages** rather than a narrative-scene sequence — it has real narrated moments (the call vision,
the sign-acts, the dry bones), but the bulk of the book is oracle and vision, not a story with a
cast moving through events in the way Genesis or Samuel/Kings are.

**Two large, deliberate exclusions govern this brief, stated plainly here rather than left to be
inferred from their absence:**

- **Ezekiel 16 and 23 are excluded entirely — no verse, no narrative-summary scene description,
  and no reference to their content anywhere in this brief, including this section.** Both
  chapters are extended allegories personifying Israel and Judah as unfaithful wives, and both are
  described across current commentary — cited across traditions, not just one — as containing some
  of the most sexually explicit material in the entire Bible (see `docs/reviews/ezekiel-review.md`
  §3 for sourcing). This is a stronger exclusion than this project applied to Song of Solomon: that
  book's overall existence and theme were still described in its brief even though specific verses
  were excluded from grading (`docs/content/song-of-solomon.md`); here, per this assignment's
  explicit instruction, the chapters are not summarized or characterized at all beyond naming them
  as excluded, because there is no need to reference them given how much other pivotal material
  this book contains.
- **Ezekiel 38-39 (the Gog and Magog oracle) are excluded entirely from graded content.** This
  project's own master prompt named end-times interpretation as the single biggest content-risk
  category for the whole product before a single book was built (`GEN2REV_MASTER_PROMPT.md` §2.4),
  and `docs/CANON_STRUCTURE.md` §6 independently flagged Daniel's apocalyptic material (chs. 7-12)
  as needing the same treatment for the same reason. Gog and Magog is genuinely, currently
  contested across mainstream traditions — premillennial/dispensationalist readings treat it as a
  still-future, geopolitically identifiable battle; amillennial and other readings treat it as
  symbolic of the final conflict against God's people at the end of the age, occurring at a
  different point in their own eschatological scheme; other readings tie it to events already
  fulfilled in antiquity. No challenge item, and no narrative-summary description beyond naming the
  exclusion, is built from these chapters.

Both exclusions are treated as considered scope decisions, not gaps — flagged here explicitly per
the Leviticus/Job precedent so a future authoring pass doesn't mistake the silence for an oversight
and doesn't quietly reintroduce the material.

## Pivotal Passages (6)

### 1. The Call Vision and Commissioning (Ezekiel 1:1-3, 1:26-28, 2:1-10, 3:1-4)
By the river Chebar, the heavens open and Ezekiel sees "visions of God" — described later in the
chapter (not quoted below, since the wheel/creature imagery in 1:4-25 is dense and not needed for
a clean challenge item) culminating in a vision of a throne with "the likeness of the appearance of
a man" on it, radiant like fire and surrounded by rainbow-light — "the appearance of the likeness
of Yahweh's glory." Ezekiel falls on his face; a voice commissions him to go to "a rebellious
house" whether they listen or not, and he is told to eat a scroll filled with "lamentations,
mourning, and woe" — which tastes, in the vision, "as sweet as honey."

**Challenge-ready verses:**
- Ezekiel 1:1-3 (WEB): "Now in the thirtieth year, in the fourth month, in the fifth day of the
  month, as I was among the captives by the river Chebar, the heavens were opened, and I saw
  visions of God. In the fifth of the month, which was the fifth year of King Jehoiachin's
  captivity, Yahweh's word came to Ezekiel the priest, the son of Buzi, in the land of the
  Chaldeans by the river Chebar; and Yahweh's hand was there on him."
- Ezekiel 1:26-28 (WEB): "Above the expanse that was over their heads was the likeness of a
  throne, as the appearance of a sapphire stone. On the likeness of the throne was a likeness as
  the appearance of a man on it above. I saw as it were glowing metal, as the appearance of fire
  within it all around, from the appearance of his waist and upward; and from the appearance of
  his waist and downward I saw as it were the appearance of fire, and there was brightness around
  him. As the appearance of the rainbow that is in the cloud in the day of rain, so was the
  appearance of the brightness all around. This was the appearance of the likeness of Yahweh's
  glory. When I saw it, I fell on my face, and I heard a voice of one that spoke."
- Ezekiel 2:3-4 (WEB): "He said to me, 'Son of man, I send you to the children of Israel, to a
  nation of rebels who have rebelled against me. They and their fathers have transgressed against
  me even to this very day. The children are impudent and stiff-hearted. I am sending you to
  them, and you shall tell them, "This is what the Lord Yahweh says."'"
- Ezekiel 2:9-10 (WEB): "When I looked, behold, a hand was stretched out to me; and behold, a
  scroll of a book was in it. He spread it before me. It was written within and without; and
  lamentations, mourning, and woe were written in it."
- Ezekiel 3:1-3 (WEB): "He said to me, 'Son of man, eat what you find. Eat this scroll, and go,
  speak to the house of Israel.' So I opened my mouth, and he caused me to eat the scroll. He
  said to me, 'Son of man, eat this scroll that I give you and fill your belly and your bowels
  with it.' Then I ate it. It was as sweet as honey in my mouth."

### 2. The Sign-Act: Bearing Israel's and Judah's Iniquity (Ezekiel 4:1-8)
Ezekiel is told to draw a model of besieged Jerusalem on a clay tile, then to lie on his left side
for a symbolic number of days representing the years of Israel's iniquity, and afterward on his
right side for a shorter symbolic period representing Judah's — his own body enacting the message
before he speaks a word of it.

**Challenge-ready verses:**
- Ezekiel 4:1-3 (WEB): "You also, son of man, take a tile, and lay it before yourself, and portray
  on it a city, even Jerusalem. Lay siege against it, build forts against it, and cast up a mound
  against it. Also set camps against it and plant battering rams against it all around. Take for
  yourself an iron pan and set it for a wall of iron between you and the city. Then set your face
  toward it. It will be besieged, and you shall lay siege against it. This shall be a sign to the
  house of Israel."
- Ezekiel 4:4-5 (WEB): "Moreover lie on your left side, and lay the iniquity of the house of
  Israel on it. According to the number of the days that you shall lie on it, you shall bear their
  iniquity. For I have appointed the years of their iniquity to be to you a number of days, even
  three hundred ninety days. So you shall bear the iniquity of the house of Israel."
- Ezekiel 4:6 (WEB): "Again, when you have accomplished these, you shall lie on your right side,
  and shall bear the iniquity of the house of Judah. I have appointed forty days, each day for a
  year, to you."

### 3. The Watchman (Ezekiel 3:16-21; parallel restatement in 33:1-11)
Yahweh appoints Ezekiel a "watchman" for Israel: if he warns the wicked and they don't turn, their
blood is on their own head and he has done his duty; if he fails to warn them, their blood is
required at his hand. Chapter 33 restates the same watchman image in a fuller form, using the
ordinary picture of a city watchman blowing a trumpet to warn of an approaching army, and adds
Yahweh's own stated motive: "I have no pleasure in the death of the wicked."

**Challenge-ready verses:**
- Ezekiel 3:17-19 (WEB): "'Son of man, I have made you a watchman to the house of Israel.
  Therefore hear the word from my mouth, and warn them from me. When I tell the wicked, "You will
  surely die," and you give him no warning, nor speak to warn the wicked from his wicked way, to
  save his life, that wicked man will die in his iniquity; but I will require his blood at your
  hand. Yet if you warn the wicked, and he doesn't turn from his wickedness, nor from his wicked
  way, he will die in his iniquity; but you have delivered your soul.'"
- Ezekiel 33:4-6 (WEB): "'...then whoever hears the sound of the trumpet and doesn't heed the
  warning, if the sword comes and takes him away, his blood will be on his own head. He heard the
  sound of the trumpet and didn't take warning. His blood will be on him; whereas if he had heeded
  the warning, he would have delivered his soul. But if the watchman sees the sword come and
  doesn't blow the trumpet, and the people aren't warned, and the sword comes and takes any person
  from among them, he is taken away in his iniquity, but his blood I will require at the
  watchman's hand.'"
- Ezekiel 33:11 (WEB): "'"As I live," says the Lord Yahweh, "I have no pleasure in the death of
  the wicked, but that the wicked turn from his way and live. Turn, turn from your evil ways! For
  why will you die, house of Israel?"'"

### 4. Individual Responsibility: "The Soul Who Sins Shall Die" (Ezekiel 18:1-4, 20, 23)
Ezekiel confronts a proverb circulating among the exiles — "the fathers have eaten sour grapes, and
the children's teeth are set on edge" — used to blame their ancestors for the exile rather than
take responsibility themselves. Yahweh states plainly that each individual is accountable for his
or her own sin, not a parent's or child's, and restates the "no pleasure in the death of the
wicked" theme from the watchman passage.

**Challenge-ready verses:**
- Ezekiel 18:2-4 (WEB): "'What do you mean, that you use this proverb concerning the land of
  Israel, saying, "The fathers have eaten sour grapes, and the children's teeth are set on edge"?
  As I live,' says the Lord Yahweh, 'you shall not use this proverb any more in Israel. Behold, all
  souls are mine; as the soul of the father, so also the soul of the son is mine. The soul who
  sins, he shall die.'"
- Ezekiel 18:20 (WEB): "The soul who sins, he shall die. The son shall not bear the iniquity of
  the father, neither shall the father bear the iniquity of the son."
- Ezekiel 18:23 (WEB): "'Have I any pleasure in the death of the wicked?' says the Lord Yahweh,
  'and not rather that he should return from his way, and live?'"

### 5. The Shepherd of Israel (Ezekiel 34:1-6, 11-16, 23-24)
Ezekiel condemns Israel's "shepherds" (its rulers) for feeding themselves instead of the flock,
leaving the sheep scattered and preyed upon. Yahweh then declares he will search for his sheep
himself, gather them, and shepherd them personally — and, in the passage's closing verses, promises
to set "my servant David" over them as one shepherd.

**Challenge-ready verses:**
- Ezekiel 34:2-4 (WEB): "'Son of man, prophesy against the shepherds of Israel. Prophesy, and tell
  them, even the shepherds, "The Lord Yahweh says: Woe to the shepherds of Israel who feed
  themselves! Shouldn't the shepherds feed the sheep? You eat the fat. You clothe yourself with
  the wool. You kill the fatlings, but you don't feed the sheep. You haven't strengthened the
  diseased. You haven't healed that which was sick. You haven't bound up that which was broken.
  You haven't brought back that which was driven away. You haven't sought that which was lost, but
  you have ruled over them with force and with rigor."'"
- Ezekiel 34:11-12 (WEB): "'For the Lord Yahweh says: "Behold, I myself, even I, will search for
  my sheep, and will seek them out. As a shepherd seeks out his flock in the day that he is among
  his sheep that are scattered abroad, so I will seek out my sheep. I will deliver them out of all
  places where they have been scattered in the cloudy and dark day."'"
- Ezekiel 34:15-16 (WEB): "'"I myself will be the shepherd of my sheep, and I will cause them to
  lie down," says the Lord Yahweh. "I will seek that which was lost, and will bring back that
  which was driven away, and will bind up that which was broken, and will strengthen that which
  was sick; but I will destroy the fat and the strong. I will feed them in justice."'"
- Ezekiel 34:23-24 (WEB): "'I will set up one shepherd over them, and he will feed them, even my
  servant David. He will feed them, and he will be their shepherd. I, Yahweh, will be their God,
  and my servant David prince among them. I, Yahweh, have spoken it.'" *(Handled per the format
  restriction below — see Contested Territory: Ezekiel 34:23-24.)*

### 6. The Valley of Dry Bones (Ezekiel 37:1-14)
Yahweh sets Ezekiel down in a valley "full of bones," "very dry," and asks whether they can live.
Ezekiel prophesies as commanded; the bones join together, grow sinews and flesh, and finally
breathe and stand as "an exceedingly great army." Yahweh explains the vision plainly within the
text itself: "these bones are the whole house of Israel," and the vision promises Yahweh will
open their graves, bring them up, and return them to their land.

**Challenge-ready verses:**
- Ezekiel 37:1-3 (WEB): "Yahweh's hand was on me, and he brought me out in Yahweh's Spirit, and
  set me down in the middle of the valley; and it was full of bones. He caused me to pass by them
  all around; and behold, there were very many in the open valley, and behold, they were very dry.
  He said to me, 'Son of man, can these bones live?' I answered, 'Lord Yahweh, you know.'"
- Ezekiel 37:4-6 (WEB): "Again he said to me, 'Prophesy over these bones, and tell them, "You dry
  bones, hear Yahweh's word. The Lord Yahweh says to these bones: Behold, I will cause breath to
  enter into you, and you will live. I will lay sinews on you, and will bring up flesh on you, and
  cover you with skin, and put breath in you, and you will live. Then you will know that I am
  Yahweh."'"
- Ezekiel 37:7-8 (WEB): "So I prophesied as I was commanded. As I prophesied, there was a noise,
  and behold, there was an earthquake. Then the bones came together, bone to its bone. I saw, and,
  behold, there were sinews on them, and flesh came up, and skin covered them above; but there was
  no breath in them."
- Ezekiel 37:9-10 (WEB): "Then he said to me, 'Prophesy to the wind, prophesy, son of man, and
  tell the wind, "The Lord Yahweh says: Come from the four winds, breath, and breathe on these
  slain, that they may live."' So I prophesied as he commanded me, and the breath came into them,
  and they lived, and stood up on their feet, an exceedingly great army."
- Ezekiel 37:11-12 (WEB): "Then he said to me, 'Son of man, these bones are the whole house of
  Israel. Behold, they say, "Our bones are dried up, and our hope is lost. We are completely cut
  off." Therefore prophesy, and tell them, "The Lord Yahweh says: Behold, I will open your graves,
  and cause you to come up out of your graves, my people; and I will bring you into the land of
  Israel."'"
- Ezekiel 37:13-14 (WEB): "'"You will know that I am Yahweh, when I have opened your graves and
  caused you to come up out of your graves, my people. I will put my Spirit in you, and you will
  live. Then I will place you in your own land; and you will know that I, Yahweh, have spoken it
  and performed it," says Yahweh.'"

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "The soul who ___, he shall die." (Ezek 18:20) → sins |
| 2 — Recall | Multiple choice, narrative/textual fact | "What did Ezekiel lie on his left side to represent, according to Ezekiel 4:4?" → the iniquity of the house of Israel |
| 3 — Sequence | Order passages within the book | Order the pivotal passages as they appear in the book (call vision → sign-act → watchman → individual responsibility → shepherd → dry bones) |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (3:17, 18:20, 37:4), place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Ezekiel 4:5-6, how many days did Ezekiel lie on his left side, and how many on his right?" → 390 days, then 40 days (tests attentive reading of the text's own stated numbers, not their symbolic or chronological significance) |

Boss battle (world 26 capstone): a mixed-format sequence spanning all 6 pivotal passages, weighted
toward level 3-5 items. The watchman (3:17-19 / 33:11) and the dry bones ("can these bones live?")
are the two strongest single-passage recall/recognition candidates, being among the most widely
known material in the book across traditions. Given the two large exclusions (chs. 16, 23, 38-39)
and the technical/architectural material this brief also does not draw from (the temple vision,
chs. 40-48 — out of scope for the same passage-vs-narrative reasons Leviticus's ritual material was
handled, not a sensitivity exclusion), expect — consistent with Leviticus's and Job's precedent —
a higher proportion of recall items relative to sequencing items than in narrative-heavy books.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here.

- **Deliberately, entirely excluded: Ezekiel 16 and 23.** Restated here from Setting/Era for
  visibility at the point a reviewer checks this section: both chapters are extended allegories
  describing Israel and Judah as unfaithful wives in graphic sexual terms as a metaphor for
  idolatry, widely discussed in commentary — across traditions — as among the most explicit
  material in the Bible. No verse, scene description, or reference to their content appears
  anywhere in this brief. This is a stronger exclusion than Song of Solomon received (that book's
  overall theme was still described even as specific verses were excluded from grading) — here,
  per this assignment's instruction, the chapters are not characterized at all beyond naming the
  exclusion, since no pivotal-passage selection requires drawing on them.

- **Deliberately, entirely excluded: Ezekiel 38-39 (Gog and Magog).** Restated here for the same
  visibility reason. This is contested end-times/apocalyptic material — see the review file for
  sourcing on the live disagreement between premillennial/dispensationalist, amillennial, and
  preterist readings. No verse or scene description from these chapters appears anywhere in this
  brief. Flagged as the same category of risk `docs/CANON_STRUCTURE.md` §6 already named for
  Daniel's chapters 7-12, which this project's sister book in this wave handles the same way.

- **Ezekiel 34:23-24, "my servant David."** Genuine cross-tradition divergence on this figure's
  identity, structurally similar to Job 19:25-27's "Redeemer" and the Leviticus/Job precedent for
  handling it. Christian tradition widely reads "my servant David" as a messianic reference to
  Christ, the promised heir of David's line. Jewish tradition is itself divided: some medieval
  commentators (e.g. RaDaK, Abarbanel, as repeated by Malbim, per sourcing in the review file) read
  the parallel "prince" language in Ezekiel 44-46 messianically as well, while other major Jewish
  commentators (e.g. Rashi) read the same figure non-messianically. This brief's bounding: the
  challenge item is the verbatim WEB text only, testing recall of what the text says, never what
  "my servant David" refers to or who he is. **Structural rule: Ezekiel 34:23-24 may only be used
  in recall/fill-in-blank format — never a multiple-choice "who is my servant David" or "what does
  this mean" format** — consistent with how Job 19:25-27 and Ezekiel 34's own precedent-setting
  siblings were bounded.

- **Ezekiel 37 (the valley of dry bones) — reviewed and confirmed low-risk, not excluded.** Per
  this assignment's own framing, this passage's plain narrative meaning (restoration of the exiled
  house of Israel to its land) is not seriously disputed across traditions the way Job 19:25-27 or
  Ezekiel 34:23-24 are. Jewish tradition (see review file §3 for sourcing) does show an internal,
  ancient rabbinic dispute — recorded in the Talmud (Sanhedrin 92b) — over whether the vision
  describes a literal individual resurrection that occurred in history or is purely a parable/
  allegory for national restoration, but that dispute is about how literally to read the vision,
  not about what it means (Israel's restoration) — and no challenge item in this brief asks which
  reading is correct, only what the text narrates happening and what the text itself states the
  vision represents (37:11, in the text's own words: "these bones are the whole house of Israel").
  Flagged explicitly so the reviewer can independently confirm this bounding rather than have the
  brief's confidence substitute for the check.

- **Ezekiel 18's tension with Exodus 20:5.** Exodus 20:5 states Yahweh is "a jealous God, visiting
  the iniquity of the fathers on the children, on the third and on the fourth generation," which
  reads in some tension with Ezekiel 18's "the son shall not bear the iniquity of the father."
  Commentary across sources (see review file) offers several harmonizations (national/covenantal
  vs. individual scope; natural consequence vs. direct judicial punishment; Ezekiel's oracle as a
  corrective to a fatalistic misapplication of the earlier principle, not a contradiction of it) —
  this brief takes no position among them. The challenge items built from Ezekiel 18 test only what
  Ezekiel 18 itself states, not how it relates to or resolves against Exodus 20:5, and no item
  requires the player to know or affirm any harmonization.

- **The 390 and 40 day counts (Ezekiel 4:4-6).** The historicity/chronology question — what
  historical period these numbers correspond to, whether they are meant literally or symbolically,
  and how (or whether) they line up with the actual length of the exile — is a live scholarly
  question but not a doctrinal or denominational one in the sense the style guide is built to
  guard against. This brief's items test only the text's own stated numbers (Level 5 example
  above), not their chronological referent or symbolic meaning.

- **The sign-act's disturbing content (Ezekiel 4, and the wider sign-act pattern in the book).**
  Per this assignment's sensitivity framing for the whole book, sign-acts elsewhere in Ezekiel (ch.
  5's hair-cutting and burning as a sign of the city's fate; ch. 24's instruction not to mourn his
  wife's death as a sign) are considerably more graphic or emotionally heavy than the tile-and-lying
  sign-act of chapter 4. This brief draws only from Ezekiel 4:1-8, the mildest and most
  child-appropriate of the book's sign-acts, and does not draw from chapter 5, chapter 12, or
  chapter 24 at all — a deliberate, not incidental, scope choice.

- **Deliberately excluded material: the temple vision (Ezekiel 40-48).** Nine chapters of detailed
  architectural measurements, priestly instructions, and the closing river-and-land vision. Left
  out for the same reason Leviticus's ritual-law chapters were adapted to passage-format rather
  than exhaustively covered — it is not narratively pivotal in the way the six passages above are —
  and separately because chapters 40-48 (the future/restored temple) are read by some traditions
  (particularly dispensationalist premillennialism) as a literal future millennial temple and by
  others as symbolic/typological, a live interpretive question adjacent to, though distinct from,
  the Gog/Magog end-times question already excluded above. No verse from these chapters appears in
  this brief.

## Acceptance Criteria for This Brief

- [x] Reviewed — `approved-with-changes` (QA-sourcing flag only, no brief edit required), see
      `docs/reviews/ezekiel-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 6 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding or format restriction
- [x] Ezekiel 16, 23, and 38-39 are excluded entirely — no verse, scene description, or content
      reference anywhere in this brief
