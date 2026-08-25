# Theological Review — Leviticus, Easy Tier (World 3)

Reviewer: `theological-reviewer` agent, run 2026-08-19.
Brief reviewed: `docs/content/leviticus-easy.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` §2 (Leviticus =
Law group, world 3).
Settled ground (not re-litigated, per the review request): `docs/content/leviticus.md`
(`approved-with-changes`), `docs/reviews/leviticus-review.md`, `docs/qa/leviticus-verbatim-qa.md`
(`pass`). Precedent for method: `docs/reviews/genesis-easy-review.md`,
`docs/reviews/genesis-hard-review.md`.

**Verdict: `approved-with-changes`.** Two required fixes (§6.1, §6.2), four recommendations. All
verse text the brief asserts is verbatim-correct against live WEB sources. The brief's central claim
— that reusing already-approved verse text in new formats introduces no new contested ground — is
**mostly but not entirely correct**: it holds doctrinally, but two format changes (recall→MC on Lev
25:10, and a new blank position on Lev 10:1) do interact with existing bounding in ways the brief
did not anticipate. Not escalated.

---

## 1. Verse-Text Verification

Contrary to the brief's acceptance-criterion note ("not required for this tier ... since no new
verse text was fetched"), **every** challenge-ready verse in this brief was re-verified
character-for-character against live WEB sources. That reasoning is sound as a *scoping* claim, but
verifying anyway is cheap and it caught a labelling discrepancy (§1.1) and an edition trap (§1.2)
that would otherwise have gone to the QA pass unflagged.

| Item | Verse | Live source(s) checked | Result |
|---|---|---|---|
| 1 | Lev 1:3-4 | [ebible.org WEB LEV01](https://ebible.org/web/LEV01.htm) | **Match, full and verbatim** — incl. "He shall lay his hand on the head of the burnt offering, and it shall be accepted for him to make atonement for him." |
| 2 | Lev 10:1-3 | [ebible.org WEB LEV10](https://ebible.org/web/LEV10.htm) | **Match, verbatim** for the quoted block. Blank answer `strange` is the correct WEB word (see §4.2). |
| 3 | Lev 16:34 | [ebible.org WEB LEV16](https://ebible.org/web/LEV16.htm), [biblehub WEB parallel, Lev 16:34](https://biblehub.com/leviticus/16-34.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+16%3A34%3BLeviticus+17%3A11%3BLeviticus+25%3A10%3BLeviticus+25%3A17%3BLeviticus+19%3A2&version=WEB) | **Match, and the verse is complete as quoted**, including the trailing "It was done as Yahweh commanded Moses." (Two of three fetches truncated at "…all their sins."; Bible Hub's WEB parallel column confirms the trailing sentence. Same failure mode as the Gen 8:11 fetch in `genesis-easy-review.md` §1 — worth the third source.) |
| 4 | Lev 16:29-30 | [ebible.org WEB LEV16](https://ebible.org/web/LEV16.htm) | **Match, verbatim** |
| 5 | Lev 19:2 | [ebible.org WEB LEV19](https://ebible.org/web/LEV19.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+16%3A34%3BLeviticus+17%3A11%3BLeviticus+25%3A10%3BLeviticus+25%3A17%3BLeviticus+19%3A2&version=WEB) | **Match, two sources.** Quote-nesting differs cosmetically (already recorded in `docs/qa/leviticus-verbatim-qa.md` note 2). |
| 6 | Lev 19:18 | [ebible.org WEB LEV19](https://ebible.org/web/LEV19.htm) | **Match, verbatim** |
| 7 | Lev 19:15 | [ebible.org WEB LEV19](https://ebible.org/web/LEV19.htm) | **Match, verbatim.** Blank answer `righteousness` correct. |
| 8 | Lev 25:10 | [ebible.org WEB LEV25](https://ebible.org/web/LEV25.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+16%3A34%3BLeviticus+17%3A11%3BLeviticus+25%3A10%3BLeviticus+25%3A17%3BLeviticus+19%3A2&version=WEB) | **Match, two sources, full verse** |
| 9 | Lev 17:11 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+16%3A34%3BLeviticus+17%3A11%3BLeviticus+25%3A10%3BLeviticus+25%3A17%3BLeviticus+19%3A2&version=WEB) | **Match, verbatim.** Blank answer `life` correct (identical to approved `medium` boss row). |
| 10 | Sequence labels (no verse text) | n/a | Not verse text; see §5.3 |
| 11 | Lev 25:17 | [ebible.org WEB LEV25](https://ebible.org/web/LEV25.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+16%3A34%3BLeviticus+17%3A11%3BLeviticus+25%3A10%3BLeviticus+25%3A17%3BLeviticus+19%3A2&version=WEB) | **Match, two sources, full verse** |

**No character-level mismatch was found anywhere in this brief.** No paraphrase is presented as
quotation (§3 below).

### 1.1 Labelling: the dropped "(trimmed)" tags are correct, and they reveal an over-tag in `medium`

`docs/content/leviticus.md` labels Lev 1:3-4, 16:34, 19:2 and 25:10 "(WEB, trimmed)". This brief
quotes the same text and drops the label. I checked whether that was an integrity regression of the
Gen 8:11 kind. **It is not** — in all four cases the quoted text is the *complete* verse or verse
pair as WEB prints it, with nothing elided:

- Lev 1:3-4 — v3 and v4 in full ([ebible WEB](https://ebible.org/web/LEV01.htm)).
- Lev 16:34 — full, incl. the trailing sentence ([Bible Hub WEB parallel](https://biblehub.com/leviticus/16-34.htm)).
- Lev 19:2 — full; v2 begins at "Speak to all the congregation…" ([ebible WEB](https://ebible.org/web/LEV19.htm)).
- Lev 25:10 — full ([ebible WEB](https://ebible.org/web/LEV25.htm)).

So the `easy` brief is *more* accurate than `medium` here. The genuinely trimmed verse in `medium`
(Lev 19:33-34, which carries a real mid-verse ellipsis) is not used in this tier at all. Recorded so
the content team can correct `medium`'s labels rather than "fixing" `easy` to match them. Note also
that Lev 10:3 continues "Aaron held his peace." after the quoted portion in both `medium` and this
brief — already flagged in `docs/qa/leviticus-verbatim-qa.md` note 1, unchanged here, no new issue.

### 1.2 Edition trap for the verbatim-QA pass — new, not previously recorded

My first fetch of Leviticus 1 and 10 used `ebible.org/engwebp/…` (the URL pattern used in
`docs/reviews/genesis-hard-review.md`). That edition renders the divine name as **"the LORD"**
([engwebp LEV10](https://ebible.org/engwebp/LEV10.htm)), whereas `ebible.org/web/…` renders
**"Yahweh"** ([web LEV10](https://ebible.org/web/LEV10.htm)). Every brief in this project quotes
"Yahweh". Wording is otherwise identical, so this is not a text error anywhere — but a QA pass that
checks a "Yahweh" brief against the `engwebp` edition will generate false mismatches on every verse
containing the divine name. **`docs/qa/leviticus-easy-verbatim-qa.md` should standardise on
`ebible.org/web/` (or BibleGateway `version=WEB`), and this note should carry forward to every
remaining book's QA.**

## 2. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

Question applied to each item: *does this require a player to affirm anything beyond narrative fact
or direct verse text?*

| Item | Verse / task | Format | In-bounds basis (§2) | Result |
|---|---|---|---|---|
| 1 | Lev 1:3-4 | MC | Narrative fact — what the text instructs | Pass (§4.1) |
| 2 | Lev 10:1-3 | Recall | Direct verse recall | Pass on doctrine; **template fix required** (§6.2), plus §4.2 |
| 3 | Lev 16:34 | MC | Textual detail | Pass (§4.3) |
| 4 | Lev 16:29-30 | MC | Textual detail | Pass (§4.3), minor tense note (§6.4) |
| 5 | Lev 19:2 | MC | Direct quotation attributed in-text | Pass; stem reword recommended (§4.5 / §6.3) |
| 6 | Lev 19:18 | MC | Direct quotation attributed in-text | Pass; distractor swap recommended (§4.6 / §6.5) |
| 7 | Lev 19:15 | Recall | Direct verse recall | Pass — clean |
| 8 | Lev 25:10 | MC | Textual detail | **Stem fix required** (§4.4 / §6.1) |
| 9 | Lev 17:11 (boss) | Recall | Direct verse recall | Pass — verbatim reuse of approved `medium` row |
| 10 | Sequence (boss) | Sequence | Sequencing | Pass — verbatim reuse; see §5.3 |
| 11 | Lev 25:17 (boss) | MC | Direct quotation attributed in-text | Pass — clean |

**Excluded-material check (explicitly requested): PASS.** Chapters drawn on across all 11 items are
Leviticus 1, 10, 16, 17, 19 and 25 only. **No verse, clause, or distractor from Leviticus 11
(dietary law), Leviticus 18 or Leviticus 20 (sexual-purity legislation) appears anywhere in this
brief**, including in MC distractor sets and the boss sequence labels — I checked the distractors
individually, since that is exactly where excluded material could re-enter a brief unnoticed. The
adjacency noted in §4.5 is about a *commentator's* reading of an included verse, not about any
excluded text appearing.

**Item-count claim verified, not assumed.** The brief claims `medium` ingested 11 Leviticus
challenge rows, 3 of them `is_boss_item = true`. Confirmed directly against
`docs/ingest/exodus-leviticus.sql` (lines 34–59): 11 rows; boss rows are Lev 17:11, Lev 10:1-3, and
the 5-passage sequence. The brief's shape claim is accurate. Note one deliberate difference it does
not spell out: `easy` swaps Lev 10:1-3 *out* of the boss set (replacing it with the new Lev 25:17
MC) and demotes it to a regular item. That is a safety improvement, not a defect — the Nadab and
Abihu material now sits in a lower-stakes slot — but it should be stated in the brief so it reads as
intentional.

## 3. Paraphrase-Presented-As-Quotation Check (§3, final bullet)

No invented or reworded text is presented as scripture. Every string in quotation marks framed as a
verse was matched to live WEB text in §1. MC option strings (e.g. item 4's "atonement would be made
and the people would be cleansed from their sins") are restatements *of* the text presented as
answer options, not in quotation marks and not framed as "the verse" — this is the same construction
already approved in `docs/content/genesis-easy.md` and is not a §3 violation. **Pass.**

## 4. Contested-Territory Cross-Check

The brief asserts "no genuinely new contested ground was introduced by this tier." I tested that
claim per item rather than accepting it. It holds **doctrinally** — no graded token in this tier
requires a denominational position — but two format changes interact with existing bounding in ways
the brief did not anticipate (§4.2, §4.4).

### 4.1 Lev 1:3-4 (item 1) — the format change moves the graded content, and that needed checking

`medium` used this verse as a **recall** item blanking `atonement` (`exodus-leviticus.sql` line 38).
`easy` converts it to **MC on the hand-laying gesture**. That is not merely "a new format" as the
brief describes it — it moves the graded content from the atonement word to the *semikhah* gesture,
whose significance is genuinely disputed. So it needed a real check.

- **Classic Christian commentators** — [Bible Hub, Leviticus 1:4 commentaries](https://biblehub.com/commentaries/leviticus/1-4.htm):
  unanimous on the physical act (Keil-Delitzsch: "forcible pressure of the hand"; Cambridge Bible:
  the Hebrew verb "implies pressure or leaning upon an object"; Gill: with both hands, with all his
  strength), and openly divided on meaning — Gill reads "the transferring of his sins from himself
  to this sacrifice"; Barnes, identification with the victim; Ellicott, transfer of the offerer's
  feelings; Matthew Henry, willing surrender; Keil-Delitzsch explicitly *rejects* imputation-of-sin
  theories.
- **Jewish tradition** — [Sefaria, Rashi on Leviticus 1:4](https://www.sefaria.org/api/texts/Rashi_on_Leviticus.1.4?context=0):
  treats hand-laying halakhically (which offerings require it, which are excluded) and bounds the
  burnt offering's atoning scope narrowly — it "can only propitiate for the neglect of a positive
  command and for the transgression of a prohibition transformed into a positive command," not for
  severe transgressions.

**Bounding holds, and it holds for the strongest possible reason:** the disagreement is entirely
about *what the gesture means*, while the sources are unanimous about *what was physically done* —
which is precisely and only what item 1 grades. The stem is reference-anchored ("According to
Leviticus 1:3-4…"), and none of the three distractors is a textually defensible answer to it. This
is the same structure that made Gen 22:13 safe in `genesis-easy-review.md` §4.1. **No change to
item 1.**

**Forward-looking rule recommended (§6.6):** no challenge in any tier may grade *what the hand-laying
signified*, or offer options like "transferred his sins to the animal" vs "dedicated it to God" —
that is a live split among mainstream Christian commentators alone, before Jewish readings are added.

### 4.2 Lev 10:1-3 (item 2) — the inherited structural rule is honoured, but the new blank lands on a translation-specific word

The inherited rule (recall/fill-in-blank or strict sequence only, never MC; 10:1-2 and 10:3 always
presented together) is **respected**: item 2 is recall, and the quoted block runs 10:1 through 10:3.
Good. But `easy` moves the blank from `glorified` (`medium`'s answer — the text's own stated *reason*)
to `strange` — the descriptor of the *offence*. That is a new graded token on contested ground, and
the brief does not notice it.

- **Translation divergence is real.** WEB reads "strange fire"; the Revised JPS (2023) reads
  "**alien** fire" ([Sefaria, Leviticus 10:1](https://www.sefaria.org/api/texts/Leviticus.10.1?context=0));
  the underlying Hebrew root is *zûr* (H2114), glossed "to turn aside … hence to be a foreigner,
  strange, profane" ([Blue Letter Bible H2114](https://www.blueletterbible.org/lexicon/h2114/kjv/wlc/0-1/)).
  The brief's own boss-sequence label (item 10, inherited from `medium`) calls it "**unauthorized**
  fire" — a third rendering, inside the same world.
- **What made the fire "strange" is genuinely disputed** —
  [Bible Hub, Leviticus 10:1 commentaries](https://biblehub.com/commentaries/leviticus/10-1.htm):
  fire not taken from the altar (majority), wrong timing (outside the morning/evening sacrifice),
  improperly compounded incense (minority), each taking his own censer, intoxication (inferred from
  the wine prohibition that follows), usurping the high priest's function. Commentators converge on
  "unauthorized" as a summary and diverge on the specifics.

**Bounding still holds** — the graded token is the WEB text's own adjective, displayed verbatim to
the player, and the item asks *what word the verse uses*, never *what made the fire strange*. But
two consequences follow, both actionable:

1. A structural note is warranted (§6.6): **no challenge may grade what made the fire "strange" /
   what Nadab and Abihu's specific offence was.** That is a live multi-way split.
2. There is an answer-key/UX consequence (§6.5): a player who knows this passage from NIV/NABRE-style
   wording knows it as "unauthorized fire", and this world's own boss card says "unauthorized". Since
   the recall template displays the WEB text with the blank in it, the player has the surrounding WEB
   context — acceptable — but the sequence label should be aligned to WEB's word.

### 4.3 Lev 16:34 and 16:29-30 (items 3, 4) — Day of Atonement

Both items are new MC angles on already-approved text. The inherited bounding
(`docs/reviews/leviticus-review.md` §3) is that items test the text's own stated instructions, never
the ritual's ongoing efficacy or fulfilment — the live divergence being the Christian typological
reading via Hebrews 9-10 versus Yom Kippur as a currently-observed holy day in living Judaism. Both
items stay there: item 3 grades the verse's own phrase "once in the year", item 4 grades the verse's
own statement that atonement is made and the people cleansed. Neither asks whether the ritual is
superseded, sufficient, or still efficacious. **Bounding holds; no change.** (Sources for this
divergence are those cited in `docs/reviews/leviticus-review.md` §3; I did not independently re-fetch
them, since no new ground is introduced here — stating that explicitly rather than implying fresh
verification.)

One deliberate observation, non-blocking: item 3's graded fact (yearly repetition) is the exact hinge
of the Hebrews 9-10 argument. Because the answer is the verse's own words and no option gestures at
what the repetition *implies*, this is safe — but it is worth knowing that this specific fact sits
closer to the contested line than the other items in the tier, so any future flavour text attached
to it needs care.

### 4.4 Lev 25:10 (item 8) — the format change does cross the Jubilee bounding. **Required fix.**

`docs/content/leviticus.md` bounds the Jubilee item: "Challenge items test only what the text
legislates, not whether or how often it was observed" — because whether the Jubilee was ever actually
practised is a live historicity question (`docs/reviews/leviticus-review.md` §3, which cites its own
source for that; not re-fetched here).

`medium` used Lev 25:10 as recall, blanking `liberty` inside the verse's own prescriptive wording
("You shall make the fiftieth year holy, and proclaim ___…") — so the item could not imply
occurrence. `easy` converts it to MC with the stem **"what happened in the fiftieth year?"** and a
correct option in the narrative past tense: **"liberty was proclaimed and each person returned to
their own property and family."**

The verse is legislation in the second-person imperative ("You shall make… and proclaim…" —
[ebible WEB LEV25](https://ebible.org/web/LEV25.htm)). Asking what *happened*, and answering that it
*was proclaimed* and people *returned*, states the Jubilee as an occurred event — which is exactly
the claim the inherited bounding says no item may make. The reference anchor ("According to Leviticus
25:10") mitigates but does not remove this, because the anchor identifies the source, not the mood.
This is a bounding crossing created purely by the format change, in the one item where the brief's
"no new ground" claim most needed testing. **Fix required — see §6.1.** Item 4's "what did the text
say would happen" has the same tense shape but is explicitly attributed to the text and concerns a
ritual instruction with no historicity dispute attached; folded into §6.4 as consistency only.

### 4.5 Lev 19:2 (item 5) — an adjacency the brief did not flag

Item 5 asks **"why** were the people told to be holy?" A "why" stem is a mild drift from the style
guide's "ask what the text says, never why God commanded it" (§4), though here the text itself
supplies the reason clause, so the graded answer is verbatim verse text.

Checking it against Jewish tradition surfaced something worth recording:
[Sefaria, Rashi on Leviticus 19:2](https://www.sefaria.org/api/texts/Rashi_on_Leviticus.19.2?context=0)
reads "You shall be holy" as meaning "keep aloof from the forbidden sexual relations just mentioned
and from sinful thoughts" — i.e. in this reading Lev 19:2 is a header pointing **back to Leviticus
18**, the chapter this project deliberately excludes.

**This does not break the item, and no excluded text enters the game**: Rashi's comment is about what
being holy *consists of*, not about the verse's stated grounding, and every tradition agrees the
verse's own reason clause is "for I, Yahweh your God, am holy" — which is the graded answer, quoted
verbatim. But it means the *open-ended "why" framing* is the one thing that could invite a player (or
a future authoring pass) toward content the project has deliberately excluded on child-safety
grounds. Tightening the stem closes that off cheaply. **Recommended, §6.3**, plus a forward-looking
rule at §6.6.

### 4.6 Lev 19:18 (item 6) — the cross-testament distractor

Item 6's distractor set includes **"pray for your enemy"**, which is Matthew 5:44 — from a different
testament, in an item about a Torah verse. Textually the key is unimpeachable (Lev 19:18 says love
your neighbour, not pray for your enemy). But the Sermon on the Mount's "You have heard that it was
said… hate your enemy" (Matt 5:43) sits on top of a long history of framing Leviticus as the narrow
foil to Jesus' teaching, and that framing is live in the commentary tradition on this very verse:
[Bible Hub, Leviticus 19:18 commentaries](https://biblehub.com/commentaries/leviticus/19-18.htm) —
Jamieson-Fausset-Brown writes that "the Israelites in a later age restricted its meaning as
applicable only to their own countrymen. This narrow interpretation was refuted by our Lord…", while
Benson and Poole read "neighbour" broadly from the start, citing Lev 19:34.

Marking "pray for your enemy" **wrong** on a Leviticus question is not an assertion about Judaism and
is not a §3 violation — but it is a supersessionist framing risk that *only exists because this tier
converted a recall item into multiple choice*. This is the concrete instance of the general principle
noted in `genesis-hard-review.md` §2: typed recall cannot smuggle in an interpretive distractor;
multiple choice can. Swapping in an in-Leviticus distractor removes the risk at zero cost.
**Recommended, §6.5.**

### 4.7 Items carried over unchanged — spot-checked, no change

- **Item 9 (Lev 17:11 boss recall)** — byte-identical to the approved `medium` boss row. The
  sacrifice/atonement divergence is the book's biggest contested item, and the graded token is `life`,
  a word inside the verse's own stated rationale. Bounding per `docs/reviews/leviticus-review.md` §3
  holds unchanged. No change.
- **Item 11 (Lev 25:17 boss MC)** — genuinely new item, but the graded answer ("fear your God") is the
  verse's own clause and the stem's "instead of" tracks the verse's own "but". Clean.
- **Item 7 (Lev 19:15)** — MC→recall, i.e. movement toward the *lower*-exposure format. Clean.
- **Divine name "Yahweh"** — inherited, settled (Open Decision #1 fixes WEB). Recorded in
  `genesis-easy-review.md` §4.5; no re-litigation.

## 5. Minor Findings (non-blocking)

**5.1 Item 5 distractor "because Moses commanded it."** Lev 19:1-2 has Yahweh instruct Moses to speak
these words to the congregation ([ebible WEB LEV19](https://ebible.org/web/LEV19.htm)), so the command
*is* delivered through Moses. The key is still unambiguous (the verse's reason clause is the divine
"for I… am holy"), but for a young or first-time player this distractor is closer to half-true than a
distractor should be. Consider replacing it (e.g. "because the priests required it").

**5.2 Item 1 distractor overlap.** "pour oil on it" is not part of the burnt-offering instruction in
Lev 1, but oil does appear in the grain-offering instructions of Leviticus 2. The stem's reference
anchor resolves it. No change needed; noted for playtesting only.

**5.3 Boss sequence label wording (item 10).** The reused label says Nadab and Abihu offered
"unauthorized fire" while item 2 in the same tier grades the typed word `strange`. The label is a
summary, not quoted verse text, so this is not a §3 violation and `medium` already approved it — but
`easy` is the first tier to make that word a graded token, so the mismatch is newly visible to a
player. Aligning the label to WEB's "strange fire" is a one-word change. Folded into §6.5.

**5.4 `medium` brief inconsistency, inherited, for the content team not this review.** The
difficulty-ladder table in `docs/content/leviticus.md` (level 2 row) still gives a **multiple-choice**
Nadab and Abihu example ("What did Nadab and Abihu offer that Yahweh had not commanded?"), which the
structural rule added by `docs/reviews/leviticus-review.md` §4 now forbids. No ingested row violates
the rule (`exodus-leviticus.sql` line 41 is recall), and `easy` correctly uses recall — so nothing has
shipped wrong. But the ladder table is the artefact a future authoring pass will copy from, and it
currently contradicts the rule. Recommend correcting it in `docs/content/leviticus.md`.

## 6. Required and Recommended Changes

**6.1 — Item 8 (Lev 25:10): re-cast the stem and correct option in prescriptive mood. [required]**
Current: "According to Leviticus 25:10, what happened in the fiftieth year?" → "liberty was
proclaimed and each person returned to their own property and family." This states the Jubilee as an
occurred event, crossing the inherited bounding that items test only what the text legislates, never
whether it was observed (§4.4). Fix, e.g.: stem "According to Leviticus 25:10, what was to happen in
the fiftieth year?" with the correct option "liberty was to be proclaimed throughout the land, and
each person was to return to his own property and family" — and put the distractors in the same mood
so the correct answer isn't identifiable by grammar alone.

**6.2 — Item 2 (Lev 10:1-3): the ingested recall template must carry the full 10:1-3 block. [required]**
The brief quotes the full block, then states the blank as a one-clause fragment ("…and offered ___
fire before Yahweh, which he had not commanded them."). `medium`'s ingested row
(`exodus-leviticus.sql` line 42) puts the blank *inside the whole 10:1-3 template*, which is what
actually enforces the pairing rule at the data layer. If this tier's fragment is ingested as the
displayed template, the pairing rule is satisfied only in the brief and not in the artefact the
player sees. Specify the full-block template explicitly in the brief, as `medium` does.

**6.3 — Item 5 (Lev 19:2): re-anchor the stem to the text. [recommended]**
Change "why were the people told to be holy?" to "what reason does Leviticus 19:2 give for the command
to be holy?" Same answer, same difficulty, but it asks what the text says rather than opening a "why"
that a major Jewish reading answers by pointing at Leviticus 18 (§4.5).

**6.4 — Item 4 (Lev 16:29-30): match the mood convention from §6.1. [recommended]**
"what did the text say would happen" is acceptable as written, but once §6.1 is applied the tier
should read consistently — prefer "According to Leviticus 16:29-30, what does the text say is to
happen on the Day of Atonement?"

**6.5 — Distractor and label hygiene. [recommended]**
(a) Item 6: replace "pray for your enemy" (Matt 5:44) with an in-Leviticus distractor — e.g. "bring
your case before the priest" — removing the implicit Leviticus-versus-Sermon-on-the-Mount framing that
only appeared because this item became multiple choice (§4.6). (b) Item 10: change the sequence label
"unauthorized fire" to WEB's "strange fire" for consistency with item 2's graded token (§5.3).
(c) Item 5: consider replacing the "because Moses commanded it" distractor (§5.1).

**6.6 — Contested Territory: add three forward-looking structural rules. [recommended]**
The brief's Contested Territory section currently says only "no genuinely new contested ground was
introduced." Replace that with the three rules this review's cross-checks actually establish, in the
style of the existing Lev 10:1-3 rule:
- **Lev 1:4** — no challenge may grade *what the laying on of the hand signified* (transfer of sin vs
  identification vs dedication vs surrender is a live split among mainstream Christian commentators
  alone, before Jewish readings are added). Grading *what the worshiper did* is fine and is what item
  1 does.
- **Lev 10:1** — no challenge may grade *what made the fire "strange"* or what the specific offence
  was (altar-source, timing, incense compounding, intoxication and presumption are all live
  explanations). Grading the WEB text's own word, with the verse displayed, is fine and is what item 2
  does. Also record that "strange" is WEB-specific (JPS "alien", and this project's own boss label
  "unauthorized").
- **Lev 19:2** — no challenge may ask *what being holy consists of* or what the command refers back
  to; items stay on the verse's own stated grounding clause. This keeps the excluded Leviticus 18
  material out of reach of a future authoring pass (§4.5).

**6.7 — Two brief-level statements to correct. [recommended]**
(a) State explicitly that Lev 10:1-3 moves out of the boss set at this tier (§2) so it reads as
deliberate. (b) Drop or footnote the acceptance-criterion claim that verbatim re-verification is "not
required for this tier" — it is cheap, and doing it here produced §1.1 and §1.2. The verbatim-QA pass
in `docs/qa/leviticus-easy-verbatim-qa.md` is still required regardless (§7).

## 7. Verdict

**`approved-with-changes`.**

Every verse text this brief asserts is verbatim-correct against live WEB sources — including the two
"free" verses (Lev 16:34, Lev 19:2) promoted from `medium`'s challenge-ready list to standalone items,
both of which are complete verses as quoted. No item asks a player to affirm a doctrinal
interpretation, denominational position, historicity claim, or moral judgment, with the single
exception of item 8's tense, fixed by §6.1. The requested exclusion check passes cleanly: no
Leviticus 11, 18 or 20 material appears anywhere, including in distractors and boss labels.

**On the specific claim I was asked to test** — that reusing already-approved verse text in new
formats introduces no new contested ground — the answer is: **doctrinally yes, structurally no.** The
verse text carries its approval forward, but *format is not neutral*. Three of the eleven items
changed what they grade when they changed format, and two of those changes interact with existing
bounding: Lev 25:10's recall→MC conversion turned legislation into a narrated event (required fix),
and Lev 10:1-3's new blank position moved the graded token from the text's stated reason onto the
contested descriptor of the offence (bounding still holds, rule recommended). A fourth (Lev 1:3-4)
moved the graded content onto the *semikhah* gesture and needed a full cross-tradition check to clear
— it cleared, because the traditions that disagree about the gesture's meaning are unanimous about the
act. **Recommendation for the remaining books: a "no new verse text" claim should not be treated as
implying "no new review surface." Format changes need their own check.**

**Not escalated.** Every contested item was checked against real, live sources representing genuinely
different traditions — Jewish (Sefaria: Revised JPS, Rashi on Lev 1:4, 19:2), classic
Protestant/aggregated Christian commentary (Bible Hub on Lev 1:4, 10:1, 19:18), and lexical (Blue
Letter Bible). In each case the graded token turned out to be text those traditions render or narrate
identically. The one finding that gave me pause — Rashi reading Lev 19:2 as pointing back to Leviticus
18, the chapter this project excludes on child-safety grounds — does not put any excluded text in the
game and does not touch the graded answer; §6.3 and §6.6 close the opening. I judged that adequate
rather than escalation-worthy, and am recording the reasoning so it can be second-guessed.

**Source I could not obtain:** [bible.usccb.org/bible/leviticus/10](https://bible.usccb.org/bible/leviticus/10)
returned HTTP 403, so I could **not** verify the Catholic NABRE rendering of Lev 10:1 against a live
source. My §4.2 finding therefore rests on the WEB, Revised JPS and Blue Letter Bible readings I did
verify; any claim about NABRE's specific wording is deliberately omitted rather than asserted from
memory.

**Residual risk, stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in `MEMORY.md`,
2026-08-08; Open Decision #7 still has no named human reviewer). Nothing here required escalation, but
a human specialist — particularly one from a Jewish tradition — might weigh the Lev 19:2 adjacency
(§4.5) and the Lev 19:18 distractor (§4.6) differently than I have.

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/leviticus-easy-verbatim-qa.md`), which must use the `ebible.org/web/` edition per §1.2 and
re-check items 8 and 2 after the §6.1/§6.2 fixes. Logging this review in
`docs/CONTENT_REVIEW_LOG.md` is the calling session's task, not this reviewer's.

---

### Sources cited in this review

- https://ebible.org/web/LEV01.htm
- https://ebible.org/web/LEV10.htm
- https://ebible.org/web/LEV16.htm
- https://ebible.org/web/LEV19.htm
- https://ebible.org/web/LEV25.htm
- https://ebible.org/engwebp/LEV01.htm
- https://ebible.org/engwebp/LEV10.htm
- https://www.biblegateway.com/passage/?search=Leviticus+16%3A34%3BLeviticus+17%3A11%3BLeviticus+25%3A10%3BLeviticus+25%3A17%3BLeviticus+19%3A2&version=WEB
- https://biblehub.com/leviticus/16-34.htm
- https://biblehub.com/commentaries/leviticus/1-4.htm
- https://biblehub.com/commentaries/leviticus/10-1.htm
- https://biblehub.com/commentaries/leviticus/19-18.htm
- https://www.sefaria.org/api/texts/Leviticus.10.1?context=0
- https://www.sefaria.org/api/texts/Rashi_on_Leviticus.1.4?context=0
- https://www.sefaria.org/api/texts/Rashi_on_Leviticus.19.2?context=0
- https://www.blueletterbible.org/lexicon/h2114/kjv/wlc/0-1/
- https://bible.usccb.org/bible/leviticus/10 — **attempted, HTTP 403, not obtained** (see §7)

### Project files consulted

- `docs/content/leviticus-easy.md` (brief under review)
- `docs/content/leviticus.md`, `docs/reviews/leviticus-review.md`, `docs/qa/leviticus-verbatim-qa.md`
- `docs/ingest/exodus-leviticus.sql` (item-count and format verification)
- `docs/CONTENT_STYLE_GUIDE.md`, `docs/CANON_STRUCTURE.md`
- `docs/reviews/genesis-easy-review.md`, `docs/reviews/genesis-hard-review.md` (method precedent)
