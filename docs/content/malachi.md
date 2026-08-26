# Content Brief — Malachi (World 39)

Status: **`approved-with-changes`** — self-run theological review complete, see
`docs/reviews/malachi-review.md` (changes already applied below — no outstanding edits). To be
logged in `docs/CONTENT_REVIEW_LOG.md` by the orchestrating session (per this assignment's
sole-writer discipline for that file — not edited here).

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql`
file has been written for this book — that is a separate later phase, out of scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against **three** independent live WEB sources for the passages actually used —
> [ebible.org](https://ebible.org/web/), [biblegateway.com](https://www.biblegateway.com/)
> (`version=WEB`), and [biblehub.com](https://biblehub.com/web/) — cross-checked against at least
> two of the three for every verse in this brief (all four chapters fetched in full for context;
> see `docs/reviews/malachi-review.md` §1 for the full source-by-source table). This is still not a
> substitute for the independent character-for-character QA check required by `QA_REQUIREMENTS.md`
> §3. **Do not ingest into the `challenge` table (`BACKEND_REQUIREMENTS.md` §4) until that separate
> verbatim QA pass has run**, even after theological sign-off — sign-off and verbatim-text QA are
> two distinct checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here.

**Capstone note:** Malachi is the last book of the Old Testament in the canonical order this
product follows, and this world closes the entire 39-book Old Testament sequence (`CANON_STRUCTURE.md`
§6 — Wave 3, the last of the Minor Prophets). This brief was written with that weight in mind: the
closing passage (4:4-6) is treated as a deliberate capstone beat for the whole product, not just this
one world, and reasoning for that choice is stated explicitly below rather than assumed.

---

## Setting / Era

Malachi is set in post-exilic Judah, most likely during or shortly after Nehemiah's governorship
(traditionally dated c. 460-420 BC), after the Temple had been rebuilt (Ezra/Haggai/Zechariah's
generation, already the subject of Worlds 34-36 and this wave's Zechariah brief) but before the
spiritual and social decay Malachi confronts had been fully addressed — the same complaints (corrupt
priests, careless sacrifices, unfaithfulness in marriage, withheld tithes) that Nehemiah's own memoir
describes fighting on his second term as governor (Nehemiah 13). At only 4 short chapters, Malachi
has almost no narrative — like Leviticus, Isaiah, and this wave's other prophetic/wisdom books, it is
overwhelmingly a sequence of oracles: Yahweh, through the prophet, brings a charge, the people
(voiced as "you say...") object or ask "how?", and Yahweh answers. **This brief follows the
Leviticus/Isaiah precedent explicitly: pivotal *passages*, not forced scenes** — there is no
narrative "plot" to walk through here at all, only six self-contained oracular units.

Chronologically and canonically, Malachi is the final prophetic voice of the Old Testament as this
product orders it — after Malachi, the canon (in this product's Protestant ordering) is silent until
the New Testament opens with John the Baptist, whom Christian tradition reads as an answer to this
book's own closing words. That fact shapes how the final pivotal passage below (4:4-6) is framed, and
is discussed at length in Contested Territory.

## Pivotal Passages (6)

### 1. Malachi 1:6-11 — Corrupt Offerings
Yahweh, through the priests, opens with a direct rebuke: the priests who are supposed to honor him
are offering blind, lame, and sick animals — refuse no one would dare give to a mere governor — while
claiming his altar is contemptible. Establishes the book's whole register: charge, objection, answer.

**Challenge-ready verses (Malachi 1:6-11, WEB):**
- v.6: "A son honors his father, and a servant his master. If I am a father, then where is my honor?
  And if I am a master, where is the respect due me?" says Yahweh of Armies to you priests who
  despise my name. "You say, 'How have we despised your name?'"
- v.7: "You offer polluted bread on my altar. You say, 'How have we polluted you?' In that you say,
  'Yahweh's table is contemptible.'"
- v.8: "When you offer the blind for sacrifice, isn't that evil? And when you offer the lame and
  sick, isn't that evil? Present it now to your governor! Will he be pleased with you? Or will he
  accept your person?" says Yahweh of Armies.
- v.11: "For from the rising of the sun even to its going down, my name is great among the nations,
  and in every place incense will be offered to my name, and a pure offering; for my name is great
  among the nations," says Yahweh of Armies.

### 2. Malachi 3:1-5 — The Coming Messenger
Yahweh promises to send "my messenger" to prepare the way, followed by "the Lord" and "the messenger
of the covenant" coming suddenly to the temple — a refiner's fire who purifies the priesthood and
judges injustice against workers, widows, orphans, and foreigners. *(Identity of the messenger(s) is
handled per the narrative-only bounding in Contested Territory below.)*

**Challenge-ready verses (Malachi 3:1-3, WEB):**
- v.1: "Behold, I send my messenger, and he will prepare the way before me! The Lord, whom you seek,
  will suddenly come to his temple. Behold, the messenger of the covenant, whom you desire, is
  coming!" says Yahweh of Armies.
- v.2: "But who can endure the day of his coming? And who will stand when he appears? For he is like
  a refiner's fire, and like launderers' soap;"
- v.3: "and he will sit as a refiner and purifier of silver, and he will purify the sons of Levi, and
  refine them as gold and silver; and they shall offer to Yahweh offerings in righteousness."

### 3. Malachi 3:6-12 — "Will a Man Rob God?"
Yahweh's unchangingness is why Israel still exists at all; the specific charge that follows is
withheld tithes and offerings, with an invitation to "test me" and see the resulting blessing.
*(Handled per the recall-only, no-modern-application bounding in Contested Territory below.)*

**Challenge-ready verses (Malachi 3:6-10, WEB):**
- v.6: "For I, Yahweh, don't change; therefore you, sons of Jacob, are not consumed."
- v.8: "Will a man rob God? Yet you rob me! But you say, 'How have we robbed you?' In tithes and
  offerings."
- v.9: "You are cursed with the curse; for you rob me, even this whole nation."
- v.10: "Bring the whole tithe into the storehouse, that there may be food in my house, and test me
  now in this," says Yahweh of Armies, "if I will not open you the windows of heaven, and pour you
  out a blessing, that there will not be enough room for."

### 4. Malachi 3:13-18 — The Book of Remembrance
A closing contrast: those who say serving God is pointless, versus those who "feared Yahweh" and
spoke with one another — whose words are written in "a book of memory," Yahweh's own promise to
"spare them, as a man spares his own son who serves him." Low doctrinal risk, near-universal across
traditions.

**Challenge-ready verses (Malachi 3:16-18, WEB):**
- v.16: "Then those who feared Yahweh spoke one with another; and Yahweh listened and heard, and a
  book of memory was written before him for those who feared Yahweh and who honored his name."
- v.17: "They shall be mine," says Yahweh of Armies, "my own possession in the day that I make. I
  will spare them, as a man spares his own son who serves him."
- v.18: "Then you shall return and discern between the righteous and the wicked, between him who
  serves God and him who doesn't serve him."

### 5. Malachi 4:1-3 — The Day of Yahweh: The Sun of Righteousness
A short oracle of coming judgment and vindication: "the day" will burn the proud and wicked like
stubble, but for those who fear Yahweh's name, "the sun of righteousness" will rise "with healing in
its wings." *(Handled per the no-identity-claim bounding in Contested Territory below.)*

**Challenge-ready verses (Malachi 4:1-3, WEB):**
- v.1: "For behold, the day comes, burning like a furnace, when all the proud and all who work
  wickedness will be stubble. The day that comes will burn them up," says Yahweh of Armies, "so that
  it will leave them neither root nor branch."
- v.2: "But to you who fear my name shall the sun of righteousness arise with healing in its wings.
  You will go out and leap like calves of the stall."
- v.3: "You shall tread down the wicked; for they will be ashes under the soles of your feet in the
  day that I make," says Yahweh of Armies.

### 6. Malachi 4:4-6 — Remember the Law; Elijah's Return (closing capstone)
The Old Testament's own closing words in this product's canonical order: a call to remember the Law
of Moses, followed by the promise that Yahweh will send "Elijah the prophet" before "the great and
terrible day of Yahweh," to turn the hearts of fathers to children and children to fathers. See
Contested Territory below for the extensive sourced reasoning behind including this passage, and for
why it was chosen as this world's — and this whole product's OT arc's — closing boss-battle beat.

**Challenge-ready verses (Malachi 4:4-6, WEB, full — 3 verses):**
- v.4: "Remember the law of Moses my servant, which I commanded to him in Horeb for all Israel, even
  statutes and ordinances."
- v.5: "Behold, I will send you Elijah the prophet before the great and terrible day of Yahweh
  comes."
- v.6: "He will turn the hearts of the fathers to the children and the hearts of the children to
  their fathers, lest I come and strike the earth with a curse."

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "Bring the whole tithe into the ___, that there may be food in my house." (Mal 3:10) → storehouse |
| 2 — Recall | Multiple choice, textual fact | "According to Malachi 1:8, what kind of animals were the priests offering that Yahweh calls evil?" → the blind, the lame, and the sick |
| 3 — Sequence | Order passages within the book | Order the pivotal-passage blocks as they appear in the book (corrupt offerings → the coming messenger → tithing → the book of remembrance → the day of Yahweh → Elijah's return) |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (Mal 3:1, 3:10, 4:5), place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not doctrinal claim) | Multiple choice on textual detail | "According to Malachi 4:6, whose hearts will the coming Elijah turn?" → the hearts of the fathers to the children, and the children to the fathers (tests attentive reading of the text's own stated content, not any claim about when or through whom this happens) |

Boss battle (world 39 capstone, and the closing beat of the entire 39-book Old Testament sequence): a
mixed-format sequence spanning all 6 pivotal passages, weighted toward level 3-5 items, **closing on
Malachi 4:4-6** specifically — the last quotation the player encounters in the whole product's OT
arc is Yahweh's promise to send Elijah "before the great and terrible day," deliberately chosen as
the sequence's final beat (see Contested Territory for why this is judged a fitting and safe closing
note, not just a convenient one). Because five of the six passages here are short, self-contained
oracle units rather than a continuous narrative (the same shape already established for Leviticus,
Job, Psalms, and Isaiah), expect a higher proportion of level 1-2 direct-recall items relative to
sequencing items, consistent with those books' precedent.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here.

### Deliberate exclusion: Malachi 1:2-3, "Jacob I loved, but Esau I hated"

**Excluded entirely. No verse from Malachi 1:2-3 appears anywhere in this brief**, per this
assignment's guidance, confirmed (not merely accepted) by independent research:

- **The Hebrew-idiom nuance is real and worth citing, but does not by itself neutralize the risk.**
  Cross-tradition commentary (Jamieson-Fausset-Brown, Matthew Poole, the Pulpit Commentary, and
  others aggregated at [Bible Hub](https://biblehub.com/commentaries/malachi/1-3.htm)) converges,
  without meaningful disagreement, on reading "hated" as a comparative/covenantal idiom — "did not
  choose him out to be the object of gratuitous favor" — not literal emotional hostility, and as
  describing the two *nations'* historical fates (Israel's restoration vs. Edom's desolation) rather
  than Esau's individual person. This reading is shared across Jewish and Christian commentary
  traditions; no live disagreement was found on the idiom itself.
- **The live, unresolved disagreement is what later use of this exact verse pair does with it —
  specifically Paul's citation in Romans 9:13, which is the proof-text most associated with the
  Calvinist/Arminian dispute over unconditional individual election.** Calvinist sources read
  Romans 9's use of Malachi 1 as establishing that God elects specific individuals to salvation
  without reference to their choices; Arminian sources read the same passage as being about God's
  choice of nations/roles in redemptive history, not individual eternal destiny (see
  [Society of Evangelical Arminians, "Arminian Principles for Interpreting Romans 9"](https://evangelicalarminians.org/arminian-principles-for-interpreting-romans-9/)
  vs. [The Gospel Coalition, "How Romans 9 Anticipates Objections to Unconditional Election"](https://www.thegospelcoalition.org/article/romans-9-anticipates-objections-unconditional-election/)).
  This is a genuine, live, ongoing intra-Christian doctrinal fight, not a settled question.
- **This is the closest true precedent in this project's own history: Exodus's exclusion of the
  Pharaoh's-heart-hardening motif**, logged in `docs/CONTENT_REVIEW_LOG.md` row 2 as "genuine
  Calvinist/Arminian/Maimonides-vs-Sforno divergence too deep for narrative bounding alone." Malachi
  1:2-3 sits in the same category for the same reason: the verse pair is not merely *adjacent* to a
  live doctrinal fight, it is the single most load-bearing OT proof-text *for* that fight (via
  Romans 9:13), to a degree that selecting and presenting it as challenge content — even in a bare
  recall/fill-in-blank format with no interpretive framing added — risks the item being read through
  that lens regardless of this product's own neutral intent, the same way the Pharaoh's-heart motif
  was judged too identified with a specific doctrinal debate for narrative bounding to neutralize.
- **A second, independent reason for exclusion, apart from the Romans 9 hook:** even confined
  strictly to the OT text on its own terms, a decontextualized game UI item that presents God saying
  "I hated" a specific named individual — even where scholarly consensus reads this as an idiom — is
  not something a fill-in-blank or multiple-choice format can respell as "loved less" without either
  quoting language the format can't gloss, or paraphrasing away the actual text (which the style
  guide's paraphrase-as-quotation rule forbids). This is a real, independent complication with the
  verse's language, not just a doctrinal-fight avoidance.
- With 4 other chapters offering plenty of safe pivotal material (this brief's 6 selected passages),
  there is no product need to take on this risk.

### Deliberate exclusion: Malachi 2:10-16, unfaithfulness and divorce

**Not selected as a pivotal passage. No verse from Malachi 2:10-16 appears anywhere in this brief.**
Two independent reasons, confirmed via research:

- **A genuine textual/translation crux, not just a doctrinal one.** In the Masoretic Text, the verb
  in 2:16 traditionally rendered "I hate divorce" is third-person ("he hates"), not first-person
  ("I hate") — meaning the grammatical subject of "hates" in the Hebrew is disputed to be either
  Yahweh or the divorcing husband himself. Older translation traditions (KJV, and NIV/NASB/NKJV with
  a footnote) render "For I hate divorce"; newer translations engaging more recent Hebrew scholarship
  (2011 NIV, ESV, CSB) render it as describing "the man who hates and divorces his wife." This is
  confirmed as "not a liberal-vs-conservative divide but a genuine textual question" per
  [Dr. Claude Mariottini's overview of the translation debate](https://claudemariottini.com/2022/10/03/translating-the-bible-does-god-hate-divorce/)
  and [Focus Magazine's "'He Hates' or God Hates" analysis](https://focusmagazine.org/he-hates-or-god-hates-the-text-of-malachi-216.php).
  A recall or fill-in-blank item on this verse would have to commit to one subject or the other —
  the same structural problem this project's precedent (Isaiah 7:14, this brief's own 1:2-3 above)
  has already found unresolvable by narrow bounding.
- **A live, present-day topic across Christian traditions independent of the translation question**
  (teaching on divorce and remarriage differs meaningfully across Catholic, Orthodox, and Protestant
  traditions today), which the style guide's "doctrinal interpretation"/"denominational positions"
  exclusions (§3) already cover.
- Given the translation-level ambiguity alone, exclusion — not narrow bounding — is the sound choice,
  consistent with how this brief handles 1:2-3.

### Bounded inclusion: Malachi 3:1, identity of "my messenger" and "the messenger of the covenant"

Confirmed genuine, and genuinely multi-way, divergence on who these figures are — not a clean
two-tradition split:

- **Within Jewish tradition itself, classical commentators disagree with each other.** Rashi reads
  "my messenger" as the angel of death and "the messenger of the covenant" as an angel of the Lord;
  Radak identifies "the Lord" and "the messenger of the covenant" as the Messiah and Elijah
  respectively; Ibn Ezra reads "my messenger" as possibly Messiah son of Joseph and "the messenger of
  the covenant" as the glory of God manifest in the Temple (per
  [In Search of Shalom's summary of Rambam/Radak/Ibn Ezra readings](https://www.insearchofshalom.com/all/themessiah/rambamtanakh/the-purifier-who-will-come-to-his-temple)
  and cross-tradition commentary aggregated at [Bible Hub](https://biblehub.com/commentaries/malachi/3-1.htm)).
- **Christian tradition** reads "my messenger" as John the Baptist (per Mark 1:2/Matthew 11:10/Luke
  7:27's direct citation of this verse) and "the Lord"/"the messenger of the covenant" as Jesus,
  taken by some sources as supporting Jesus's own divine identity (per
  [GotQuestions.org, "Who is the promised messenger of Malachi 3:1?"](https://www.gotquestions.org/promised-messenger-Malachi.html)).
- **This project's bounding technique for identity-contested figures where the plain text is an
  event/action description rather than a self-contained identity claim** (the same pattern used for
  Isaiah 6:1's theophany and Genesis 3:15's pronoun) applies cleanly here: no challenge item built
  from 3:1-5 identifies who "my messenger," "the Lord," or "the messenger of the covenant" are beyond
  the text's own words. Items test only what the text says will happen — a messenger will prepare
  the way, the one who comes will act like a refiner's fire, the sons of Levi will be purified — not
  who any of these figures is. This differs from Isaiah 53, where the entire content of the chapter
  *is* a description of a figure whose identity is the contested question with no separable
  action-only content; here, the described actions (preparing a way, refining silver, purifying
  priests) stand on their own as narrative-style content independent of identity.

### Bounded inclusion: Malachi 3:6-12, tithing

Confirmed a real, live, ongoing intra-Christian debate — not settled — on whether Malachi's tithing
instruction is binding on Christians today. Dispensationalist-leaning sources hold the Old Covenant
tithing command was never repeated to the Church and giving today is voluntary
([GotQuestions.org, "Does the teaching on tithing in Malachi 3:9-10 apply to us today?"](https://www.gotquestions.org/Malachi-tithing.html));
other Christian teaching treats a tithe-level standard as a continuing expectation. Per this
assignment's guidance, confirmed sound: the OT verses themselves are safe to quote as a plain
historical/textual fact (what Malachi told post-exilic Judah to do) — **no challenge item asserts or
implies whether tithing is binding on present-day Christians.** Items test only what the text states
Yahweh said through Malachi (the charge of robbing God, the instruction to bring the whole tithe, the
invitation to test him), the same recall-only pattern already used for Leviticus's Jubilee (25:10) and
2 Chronicles' excluded "if my people..." (7:14) precedent — except here, unlike 2 Chronicles 7:14,
recall-only bounding is judged sufficient rather than requiring full exclusion, because the graded
content is a historical instruction to a specific ancient audience ("bring the whole tithe into the
storehouse") rather than a conditional promise phrased for open-ended present-day application.

### Bounded inclusion: Malachi 4:1-3, "the sun of righteousness"

Researched independently. Unlike 7:14/9:6-7's Isaiah-style Jewish-vs-Christian identity split, the
live disagreement found here is smaller and mostly *intra*-Christian: some expositors read "the sun
of righteousness" as a messianic title, others as figurative language for the coming day of
vindication/the Millennial reign in dispensationalist frameworks, and the New Testament itself never
applies this exact title to Jesus (per [Enduring Word's Malachi 4 commentary](https://enduringword.com/bible-commentary/malachi-4/)
and [GotQuestions.org, "What is the sun of righteousness (Malachi 4:2)?"](https://www.gotquestions.org/sun-of-righteousness.html)).
No challenge item built from this passage identifies "the sun of righteousness" with any specific
person or claims a fulfillment — items test only the text's own description (a day that burns the
wicked like stubble; for those who fear Yahweh's name, healing arises "with healing in its wings").
This is the same "describe what the text says will happen, don't grade who or when" pattern already
confirmed sound for Isaiah 2:2-4 and Genesis 3:15.

### Bounded inclusion, and this world's closing capstone: Malachi 4:4-6, Elijah's return

This is the passage this assignment flagged for the most careful, non-rushed treatment, given it
closes both this world and the entire 39-book Old Testament sequence. Independent research confirms
the reasoning the assignment offered, with one important refinement:

- **Both traditions do expect an Elijah-figure — this is confirmed, not assumed.** In living Jewish
  practice, Elijah is understood to return before the messianic redemption: the empty "cup of
  Elijah" poured at the Passover Seder, the door opened for him, and "Elijah's chair" held for him at
  every circumcision ceremony are all still-observed customs tied directly to this expectation (per
  [Chabad.org, "Elijah Heralding the Redemption"](https://www.chabad.org/library/article_cdo/aid/1069796/jewish/Elijah-Heralding-the-Redemption.htm)
  and [My Jewish Learning-affiliated coverage of the Passover "fifth cup" tradition](https://reformjudaism.org/passover-mystery-fifth-cup)).
  In Christian tradition, Jesus identifies John the Baptist as the promised Elijah (Matthew 11:14,
  17:10-13; Luke 1:17's angelic announcement that John will go "in the spirit and power of Elijah"),
  though John the Baptist himself denies being Elijah literally (John 1:21) — Christian sources
  themselves note this is read as a *typological/spiritual* fulfillment, not a claim of literal
  reincarnation (per [BJU Seminary, "Was John the Baptist Elijah?"](https://seminary.bju.edu/theology-in-3d/was-john-the-baptist-elijah/)).
- **The key structural difference from Isaiah 7:14/9:6-7/53, confirmed by this research: the text of
  Malachi 4:5 itself names its figure explicitly — "Elijah the prophet" — with no ambiguity about
  which historical prophet is meant.** This is unlike Isaiah 53's anonymous "servant" or Isaiah
  9:6-7's unnamed royal child, where the contested question is *who the text itself is describing*.
  Here, the text's own content (an Elijah-type figure will come before the great and terrible day,
  and will turn the hearts of fathers to children and children to fathers) is not in dispute between
  traditions at all. **What is contested is a fulfillment claim — has this specific prophecy already
  happened (via John the Baptist), or is it still future — which is inherently a New-Testament-side
  question**, since only the NT narrative can be cited as claiming a fulfillment occurred. This
  product is explicitly OT-only in scope (per `PRODUCT_REQUIREMENTS.md` and every prior book's
  brief), so a fulfillment claim was never in scope to begin with, for either tradition's version of
  it.
- **Bounding applied: no challenge item asserts, implies, or asks whether this prophecy has been
  fulfilled, by whom, or when.** Every challenge-ready verse and item built from 4:4-6 stays at the
  level of what the text itself states will happen — Elijah's coming, and the turning of hearts
  described in 4:6 — the same "test what the text says, not what later tradition says it means or
  whether it happened" pattern used throughout this project (Leviticus 17:11's atonement language,
  Genesis 3:15, Isaiah 2:2-4 and 6:1 above).
- **On using 4:4-6 as the product's OT-arc closing capstone specifically:** this reviewer judges it a
  fitting choice, for reasons independent of the passage's contested elements. The verse pair closes
  the Hebrew canon on a forward-looking note — remembering the Law given at the very start of Israel's
  story (Horeb/Sinai, the setting of Exodus and Leviticus, Worlds 2-3) while pointing toward something
  still to come — which mirrors this product's own arc (Genesis's creation opening through Malachi's
  forward-pointing close) without requiring the product to take any position on what that "something"
  is. A player who has walked the whole 39-world arc closes on Yahweh naming a prophet, not on a
  judgment scene alone (4:1-3 remains the harsher note immediately before it) — a deliberate, sourced
  editorial choice for this capstone, not a default fallback because no other option was considered.
  The alternative closing options considered and set aside: 3:16-18 (book of remembrance) is a strong
  thematic close but less well-known and less structurally final than the book's actual last verses;
  4:1-3 alone would close the entire OT arc on judgment/burning imagery, tonally harsher than
  warranted for a capstone. 4:4-6, as the book's and (in this product's order) the Testament's actual
  final verses, is both the most textually natural choice and, per the research above, one this
  reviewer is confident is safely bounded.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) —
      `approved-with-changes`, changes already applied, see `docs/reviews/malachi-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 6 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No verse from Malachi 1:2-3 or 2:10-16 appears anywhere in this brief
