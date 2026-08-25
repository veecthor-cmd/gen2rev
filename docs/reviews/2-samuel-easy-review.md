# Theological Review — 2 Samuel, Easy Tier (World 10)

Reviewer: `theological-reviewer` agent, run 2026-08-19.
Brief reviewed: `docs/content/2-samuel-easy.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` §4 (History group;
1–2 Samuel differentiation), `docs/content/2-samuel.md` (approved medium tier),
`docs/reviews/2-samuel-review.md` **including its 2026-08-08 addendum** (Kachi Okere's human
sign-off), `docs/ingest/1-2-samuel.sql` (the ingested medium item set), and
`docs/content/2-samuel-hard.md` (for cross-tier rule consistency).
Pilot precedent studied for failure modes: `docs/reviews/genesis-easy-review.md`,
`docs/reviews/genesis-hard-review.md`.

**Verdict: `approved-with-changes`.** Three required fixes (§7), four recommended. The
chapter-11 exclusion holds absolutely. The one live cross-tradition disagreement bearing on a graded
item (2 Sam 7:12's "offspring") was checked against genuinely different traditions and the graded
proposition survives it — but the drafter's **proposed structural rule for 7:12 does not fully close
the gap as worded** (§5.2), and one item quotes a trimmed verse as if it were the whole verse (§3).
**Not escalated.**

---

## 1. FIRST CHECK — Chapter 11 exclusion (the non-negotiable, human-escalated constraint)

Per `docs/reviews/2-samuel-review.md` addendum (2026-08-08, Kachi Okere as named human reviewer):
challenge-ready content from Scene 4 is limited to **2 Samuel 12:1, 12:7, 12:13 only**, with
**nothing from chapter 11 ever selected as challenge text, in any tier**.

I enumerated every verse this brief actually *selects* as challenge content, item by item:

| Item | Verse selected | Chapter |
|---|---|---|
| 1 | 2 Sam 5:3 | 5 |
| 2 | 2 Sam 5:4 | 5 |
| 3 | 2 Sam 6:12 | 6 |
| 4 | 2 Sam 6:14 | 6 |
| 5 | 2 Sam 7:12 | 7 |
| 6 | 2 Sam 7:13 | 7 |
| 7 | 2 Sam 12:1 | 12 |
| 8 | 2 Sam 15:6 | 15 |
| 9 (boss) | 2 Sam 12:7 | 12 |
| 10 (boss) | scene-sequence, no verse text displayed (5 / 6 / 7 / 12 / 15–18 as scene beats) | — |
| 11 (boss) | 2 Sam 18:33 | 18 |
| 12 (boss) | 2 Sam 6:15 | 6 |

**Result: PASS, without qualification.**

- **Zero chapter-11 verses appear as challenge selections anywhere in this brief.** Chapter 11 is
  referenced only in bounding/exclusion prose (brief lines 22, 48, 114, 155–160, 195) — which the
  review instructions expressly permit.
- **Chapter-12 selections are {12:1, 12:7}**, a strict subset of the permitted {12:1, 12:7, 12:13}.
  No chapter-12 verse outside the permitted set is selected.
- No item requires a player to read, recall, type, or choose among any text depicting the encounter,
  the pregnancy, or Uriah's death. Item 7 grades 12:1's own opening line; item 9 grades the word
  "man" in 12:7.
- Scene 4's brief-level scene description is inherited unchanged from the approved medium brief and
  adds no new narrative detail.

**One non-blocking ingest-time observation, recorded so it cannot drift.** Boss item 10 is described
as "reused verbatim from `medium`." Medium's corresponding ingested row
(`docs/ingest/1-2-samuel.sql`, sort_order 9) carries `verse_ref` =
`'2 Samuel 5:1-4; 6:12-15; 7:12-16; 12:1-13; 15:1-18:33'`. That citation *range* nominally spans
chapter-12 verses outside the bounded set (it starts at 12:1 — chapter 11 is **not** in the range, so
the hard constraint is not touched). No text from 12:2–12:12 is displayed or graded; this is a
citation-range artifact only, on an already-approved and already-ingested medium row. Recommendation
in §7.6: when this tier is ingested, narrow the `verse_ref` to the bounded references
(e.g. `2 Samuel 5; 6; 7; 12:1,7,13; 15-18`) so the audit trail of this book never shows a
chapter-12 range wider than the escalated decision permits.

## 2. Verse-Text Verification

Every verse this brief selects was checked against live World English Bible sources, regardless of
the brief's claim that reuse from the approved medium brief made re-fetching unnecessary. **That
claim is the reason a defect got through — see §3 and §6.1.** Five of these verses (5:3, 6:12, 6:15,
7:12, 15:6) were listed but never used at medium, so they have never been through a verbatim-QA pass
and have no ingested row; this brief is the first time their text would be displayed to a player.

| Item | Verse | Live sources checked | Result |
|---|---|---|---|
| 1 | 2 Sam 5:3 | [ebible.org 2SA05](https://ebible.org/web/2SA05.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB) | **Match, two sources**, full verse |
| 2 | 2 Sam 5:4 | [ebible.org 2SA05](https://ebible.org/web/2SA05.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB) | **Match, two sources**, full verse |
| 3 | 2 Sam 6:12 | [ebible.org 2SA06](https://ebible.org/web/2SA06.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+6%3A12-15&version=WEB), [BibleHub WEB](https://biblehub.com/web/2_samuel/6.htm) | **Words verbatim, but the quote is a TRIM of the verse's second sentence, presented unlabelled as the verse — see §3, Finding A (required fix)** |
| 4 | 2 Sam 6:14 | [ebible.org 2SA06](https://ebible.org/web/2SA06.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+6%3A12-15&version=WEB) | **Match, two sources**, full verse |
| 5 | 2 Sam 7:12 | [ebible.org 2SA07](https://ebible.org/web/2SA07.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB) | **Match, two sources**, full verse |
| 6 | 2 Sam 7:13 | [ebible.org 2SA07](https://ebible.org/web/2SA07.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB) | **Match, two sources.** Blank on "kingdom" is correct |
| 7 | 2 Sam 12:1 | [ebible.org 2SA12](https://ebible.org/web/2SA12.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB) | **Match, two sources**, full verse |
| 8 | 2 Sam 15:6 | [ebible.org 2SA15](https://ebible.org/web/2SA15.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB) | **Match, two sources**, full verse |
| 9 | 2 Sam 12:7 | [ebible.org 2SA12](https://ebible.org/web/2SA12.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB) | **Match, two sources.** Blank on "man" correct |
| 11 | 2 Sam 18:33 | [ebible.org 2SA18](https://ebible.org/web/2SA18.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB) | **Match, two sources.** Versification note, §6.2 |
| 12 | 2 Sam 6:15 | [ebible.org 2SA06](https://ebible.org/web/2SA06.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+6%3A12-15&version=WEB), [BibleHub WEB](https://biblehub.com/web/2_samuel/6.htm) | **Match, three sources**, full verse (confirmed no comma after "shouting") |

Context verses checked but not selected: 2 Sam 5:5, 6:13, 7:11, 12:2, 12:3, 12:4, 12:13, 15:5 — all
fetched to test for answer-key ambiguity and stem scope (§4, §6.3).

**One character-level integrity defect found: item 3 (6:12).** No other mismatch.

## 3. Paraphrase / Partial-Quote Check (`CONTENT_STYLE_GUIDE.md` §3, final bullet; §5)

### Finding A — Item 3 (2 Sam 6:12): trimmed quote presented as the whole verse. **Required fix.**

The brief presents item 3's text as:

> "So David went and brought up God's ark from the house of Obed-Edom into David's city with joy."

Two independent live sources agree the full WEB verse is:

> **2 Samuel 6:12** — "King David was told, 'Yahweh has blessed the house of Obed-Edom, and all that
> belongs to him, because of God's ark.' So David went and brought up God's ark from the house of
> Obed-Edom into David's city with joy."

([BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+6%3A12-15&version=WEB);
[BibleHub WEB](https://biblehub.com/web/2_samuel/6.htm))

The words shown are verbatim, so this is not paraphrase — but presenting roughly half a verse as
*the* verse, in an item that displays that text to a player, is the same content-integrity concern
the rule exists to prevent, and it is the identical defect class already caught at
`docs/reviews/genesis-easy-review.md` §6.2 (Gen 8:11). **The answer key is unaffected** — "with joy"
is in the retained clause — so this is a labelling/restoration fix, not a rewrite.

Two things make this blocking rather than cosmetic:

1. **The project already has a convention for this and this brief didn't use it.**
   `docs/content/2-samuel-hard.md` item 8 (15:30) writes "trimmed for challenge use — full verse:
   …". Applying that convention here is a one-line change.
2. **6:12 has never been verbatim-QA'd and has no ingested row.** It was listed at medium but never
   used, and `docs/reviews/2-samuel-review.md` §1 recorded it as a **single-source** ebible.org
   match explicitly flagged "flag for QA §3." My own ebible.org fetch also returned 6:12 truncated
   at exactly the point the brief's quote begins — i.e. the truncation is an artifact of that page's
   retrieval, and the single-source check at medium is how it propagated. Easy tier is where the
   defect would first reach a player.

**Fix (choose one):** (a) restore the full verse text in item 3, or (b) tag the item
"(WEB, trimmed — full verse: 'King David was told, …because of God's ark.' So David went and brought
up God's ark…')" per the hard brief's convention.

**Also recommended:** flag 6:12 back to `docs/content/2-samuel.md`, which carries the same truncated
text at its Scene 2 verse list, so the medium brief and easy brief don't disagree with each other
after this fix.

No other item in the brief presents partial or reworded text as a whole verse. Items 1, 2, 4, 5, 6,
7, 8, 9, 12 all quote complete verses; item 11 is discussed at §6.4.

## 4. Style-Guide Compliance — §2 in-bounds / §3 out-of-bounds

For each item: *does this require the player to affirm anything beyond narrative fact or direct
verse text?*

| Item | Format | Graded content | In-bounds basis (§2) | Result |
|---|---|---|---|---|
| 1 (5:3) | MC | elders made a covenant and anointed David king | narrative fact | Pass — see §5.3 |
| 2 (5:4) | MC | "forty years" | narrative fact | Pass; distractor note §6.3 |
| 3 (6:12) | MC | "with joy" | narrative fact | Doctrinally pass; **fails text integrity**, §3 |
| 4 (6:14) | MC | "a linen ephod" | narrative fact | Pass (unchanged from approved medium item) |
| 5 (7:12) | MC | offspring set up; kingdom established | direct verse text | Pass as written — see §5.2 |
| 6 (7:13) | Recall | "kingdom" | direct verse recall | Pass; inherited recall-only rule honored |
| 7 (12:1) | MC | "two men in one city, one rich and one poor" | direct quotation attributed in-text | Pass; stem-scope fix §7.3 |
| 8 (15:6) | MC | "stole their hearts" | direct verse text | Pass — see §5.4 |
| 9 (12:7) | Recall | "man" | direct verse recall | Pass (verbatim reuse of approved medium boss item) |
| 10 | Sequence | order of the 5 scenes | sequencing | Pass (verbatim reuse; see §1 ingest note) |
| 11 (18:33) | Recall | "son" | direct verse recall | Pass; §6.2, §6.4 |
| 12 (6:15) | MC | "with the sound of the trumpet" | narrative fact | Pass |

**No item asks a player to affirm a doctrinal interpretation, a denominational position, a
historicity/scientific claim, or a moral judgment.** All five §3 prohibitions are clear on the items
as drafted, subject to the §3 text-integrity fix.

Specifically checked and confirmed clear:

- **No moral-judgment item anywhere in Scene 4 or Scene 5.** Nothing asks whether David's sin was
  forgiven "because" of anything, whether Absalom was justified, or whether the rebellion was
  punishment for chapter 12. Item 7 grades the parable's opening description; item 9 grades a single
  word of Nathan's address; item 11 grades a word of David's lament.
- **Uzzah (6:6-7) remains unselected**, as at medium. This tier adds 6:12 and 6:15, both on the
  arrival-and-celebration side of the chapter. Bounding holds.
- **7:13 is recall-only**, exactly as the inherited structural rule requires — verified against both
  `docs/content/2-samuel.md` and the ingested row (`docs/ingest/1-2-samuel.sql`, sort_order 4, same
  blank on "kingdom"). 7:16 does not appear in this tier at all.

**Item/boss count claim verified directly against the SQL.** `docs/ingest/1-2-samuel.sql` has 12
2-Samuel rows with `is_boss_item = true` at sort_order 6, 9, 10, 12 — 12 total, 4 boss. The brief's
design note is accurate, including its stated deviation (reusing 3 of medium's 4 boss items rather
than 2, to hit 4/4). Reuse map confirmed: easy 9 = medium sort_order 6; easy 10 = medium 9; easy 11
= medium 12; medium's sort_order 10 (the 5:1 / 7:16 / 12:7 quotation-ordering item) is **not**
reused, so 7:16 never enters this tier. Item 12 (6:15) is the one genuinely new boss item. The
deviation is flagged in the brief rather than silently applied, which is the right handling.

## 5. Contested-Territory Cross-Check

### 5.1 Scene 4 (2 Samuel 11–12) — closed ground, verified as closed, not re-litigated

Per the assignment and per `docs/reviews/2-samuel-review.md`'s addendum, this is a resolved
human-signed decision and I did not reopen it or seek new sourcing. What I did check is whether the
brief's *application* of the decision holds — see §1. It does, absolutely. The brief restates the
bounding without loosening it, and its acceptance-criteria checkboxes on chapter 11 and chapter 12
are both factually correct.

### 5.2 2 Samuel 7:12 in multiple choice, and the proposed structural rule — **the deep check**

This was the item I was asked to scrutinize hardest, so I did two separate things: (a) test whether
7:12 is genuinely contested, and (b) test whether the drafter's proposed rule actually closes the
gap.

**(a) Is 7:12 genuinely contested at the fulfillment layer? Yes — more so than the brief implies.**

- **Classic Christian commentary, aggregated across traditions of commentator**
  ([BibleHub, 2 Samuel 7:12](https://biblehub.com/commentaries/2_samuel/7-12.htm)): commentators
  divide precisely over the identity of the "offspring who will proceed out of your body."
  Ellicott: the promise "has immediate reference to Solomon." Pulpit: "he must be Solomon."
  Barnes, by contrast, ties **this verse** to the messianic reading via apostolic citation — "we
  have the direct authority of Peter for applying it to Christ the seed of David, and His eternal
  kingdom." Matthew Henry goes further: the establishing of house, throne and kingdom forever "can be
  applied to no other than to Christ." Benson and the Cambridge Bible take a layered position
  ("First Solomon… and finally Christ, in whom the prophecy reaches its highest fulfilment").
- **Jewish tradition** ([Sefaria, II Samuel 7:12, Revised JPS 2023](https://www.sefaria.org/api/texts/II_Samuel.7.12?context=0)):
  "When your days are done and you rest with your ancestors, I will raise up your offspring after
  you, one of your own issue, and I will establish his kingship." A dynastic promise about David's
  line, with no Christological layer in the rendering or its framing.

**This matters more than the brief's own analysis allows.** The brief says the disputed fulfillment
question "attaches to the same interpretive layer in 7:12 as in 7:13/7:16." That is true, and the
sourcing above shows it is *directly* true: 7:12's own clause ("proceed out of your body") is one of
the clauses the messianic argument is built *from* (Barnes' appeal to Peter). 7:12 is therefore not a
safer neighbor of the restricted verses — it carries the same load.

**Does item 5 as drafted violate anything? No.** The graded proposition is: Yahweh promised to set up
an offspring from David's own body and to establish that offspring's kingdom. WEB and Revised JPS
render that proposition identically ("who will proceed out of your body… I will establish his
kingdom" / "one of your own issue… I will establish his kingship"). A Jewish, Catholic, Orthodox, or
Protestant player answers it the same way. This is the same test that made the Gen 1:26 bounding hold
in `docs/reviews/genesis-hard-review.md` §3.1 — the graded token is text the disagreeing traditions
render alike. The distractors ("a new prophet," "a foreign ruler," "the ark's guardian") contain no
fulfillment candidate and no theologically live alternative. **Item 5 passes as written.**

**(b) Does the proposed rule close the gap? Partially — three real holes.** The rule as drafted
reads:

> "2 Samuel 7:12 may be used in multiple-choice format only when the question asks what action
> Yahweh promised (never who 'his kingdom'/'his offspring' ultimately refers to), and no distractor
> set may include a fulfillment candidate (e.g., a specific historical or theological figure) as a
> wrong answer, since that would imply the question has a 'who' answer at all."

**Hole (i) — the distractor clause is asymmetric: it bans fulfillment candidates only as *wrong*
answers.** Nothing in it bans a fulfillment candidate as the **correct** answer. The stem clause is
supposed to catch that, but its qualifier is "*ultimately* refers to." So a future authoring pass
could write: "According to 2 Samuel 7:12, who will proceed out of David's body?" → correct
"Solomon," distractors "Absalom / Saul / Nathan." That asks a *proximate*, not "ultimate," referent,
so it slips the stem clause; and it puts no fulfillment candidate among the *wrong* answers, so it
slips the distractor clause. Yet it grades exactly what the rule exists to prevent — and "Solomon"
appears nowhere in 2 Samuel 7, so it would also be inference rather than verse text, independently
out of bounds under §2. **The rule needs to constrain the question and the whole option set, not
just the distractors.**

**Hole (ii) — the rule governs only "multiple-choice format."** The 7:13/7:16 rule works as a
binary (MC banned, recall allowed) only because those are the two formats it contemplates. But this
book's *already-ingested* item set contains a third type: `sequence` with quotation-to-referent
**attribution** (`docs/ingest/1-2-samuel.sql`, sort_order 10 — quotations matched to speaker and
scene). A "match the promise to who it refers to" item is neither multiple choice nor recall, and is
therefore ungoverned by both the existing rule and the proposed one. **The rule must be
format-agnostic ("in any format").**

**Hole (iii) — the rule lives only in `docs/content/2-samuel-easy.md`.** The canonical home of this
book's structural rules is `docs/content/2-samuel.md`'s Contested Territory section — that is where
the 7:13/7:16 recall-only rule was written when
`docs/reviews/2-samuel-review.md` §5 imposed it, and it is what the hard-tier drafter read and
inherited. I confirmed `docs/content/2-samuel-hard.md` does **not** use 7:12 and does **not** carry
this proposed rule. So as things stand, a future tier, re-authoring pass, or a different book's
drafter looking up 2 Samuel's rules in the medium brief would never see the 7:12 rule at all.

Required rewording is in §7.2. Alternatively — and I flag this as a legitimate simpler option the
drafter may prefer — **make 7:12 recall-only like 7:13 and 7:16.** Given that the sourcing above
shows 7:12 carries the fulfillment dispute just as directly, format symmetry across the three
covenant verses is easier to state, easier to enforce, and impossible to slip. That would cost item
5 its MC format in an MC-favoring tier, which is why I do not require it; the tightened rule in §7.2
is sufficient.

### 5.3 2 Samuel 5:3 — checked independently (the covenant at Hebron)

The brief asserts 5:3 carries "no live cross-tradition disagreement." Since the verse contains the
word "covenant" and `CONTENT_STYLE_GUIDE.md` §3 names covenant-theology readings as out-of-bounds, I
checked rather than accepted it.
[BibleHub, 2 Samuel 5:3 commentary aggregation](https://biblehub.com/commentaries/2_samuel/5-3.htm):
commentators are **unanimous on the narrative facts** — the elders came to Hebron, David made a
covenant with them before Yahweh, they anointed him king over Israel (his third anointing). The
interpretive variation that exists is about matters the item does not touch: the unstated *terms* of
the compact, whether "before Yahweh" implies the ark's presence, and the constitutional character of
Israelite monarchy. Note that this is a *king–people* covenant, not the divine covenant of chapter
7, so the covenant-theology/dispensationalism axis §3 names is not engaged at all. **The brief's
assessment holds; no change to item 1.**

### 5.4 2 Samuel 6 and 15 — inherited bounding re-confirmed

- **6:12 and 6:15 (new items 3 and 12).** Both sit on the arrival-and-celebration side of chapter 6.
  Neither grades *why* the second attempt to move the ark succeeded where the first ended in Uzzah's
  death — the point on which the traditions genuinely diverge, per
  `docs/reviews/2-samuel-review.md` §3. Item 3 grades "with joy," item 12 grades "with the sound of
  the trumpet." **Bounding holds.** Worth recording for future passes: 6:13's ox-and-fattened-calf
  sacrifice and the procedural contrast with 1 Chronicles 15 sit inside the same block and should
  stay unselected for the same reason 6:6-7 does.
- **15:6 (new item 8).** Grades the text's own phrase "stole the hearts of the men of Israel." It
  makes no causal or moral claim connecting the rebellion to chapter 12 — the line the medium
  review drew. **Bounding holds.**

### 5.5 Inherited, already-settled: the divine name "Yahweh"

Items 1, 3, 4, 5, 6, 9, 12 display WEB's "Yahweh" where most English Bibles read "the LORD," a real
cross-tradition sensitivity (Jewish practice avoids vocalizing the Tetragrammaton; the Catholic
Church's 2008 directive instructs against its liturgical use). **Inherited and settled** — WEB is
fixed by Open Decision #1 and the approved medium brief already displays it. Recorded for the trail
only; no action, no re-litigation. Same treatment as `docs/reviews/genesis-easy-review.md` §4.5.

### 5.6 Additional contested item found that the brief did not flag

None of doctrinal consequence. The two additions I would have expected to be riskier — 5:3's
"covenant" (§5.3) and 15:6's "stole the hearts" — both check out as narratively unanimous. The one
genuinely unflagged cross-tradition item is a **versification** divergence, not a doctrinal one:
§6.2.

## 6. Minor Findings (non-blocking)

**6.1 — The brief's "no refetch required" reasoning is the mechanism that produced Finding A.**
The verbatim-text caveat argues no fresh fetch was needed because every verse was already quoted in
the approved medium brief. But "already approved" is not the same as "already verified to display
standard": five of this tier's verses (5:3, 6:12, 6:15, 7:12, 15:6) were listed at medium and never
used, so they have no ingested row and have never been through `QA_REQUIREMENTS.md` §3 verbatim QA —
and `docs/reviews/2-samuel-review.md` §1 recorded three of them as single-source matches explicitly
flagged for that later pass. This tier promotes all five to displayed challenge text for the first
time. **Recommend the caveat be amended** to say so, and that `docs/qa/2-samuel-easy-verbatim-qa.md`
prioritize those five. Recorded as a process finding because the same reasoning will recur on every
easy tier that mines its medium brief's unused verses.

**6.2 — 2 Samuel 18:33 versification (item 11).** In the Masoretic/Hebrew versification this verse
is **2 Samuel 19:1**, not 18:33 — confirmed at
[Sefaria, II Samuel 19:1 (Revised JPS 2023)](https://www.sefaria.org/api/texts/II_Samuel.19.1?context=0):
"The king was shaken. He went up to the upper chamber of the gateway and wept…". The brief's citation
is **correct for WEB** and the item is inherited, already-approved and already-ingested, so nothing
is wrong here. Recording it because (a) a Hebrew-Bible-using reviewer or player will find this verse
under a different number, and (b) it implies a small forward-looking guard: **no challenge item in
any tier should grade the verse *number* itself** (e.g. "in which verse does David weep for
Absalom?"). Grading the words is fine and is what item 11 does.

**6.3 — Item 2 (5:4) distractor "thirty years."** 5:4 states both numbers in one sentence ("thirty
years old… reigned forty years"), and "thirty" is the age, offered here as a wrong answer to a
question about the length of the reign. The stem is properly anchored to 5:4, so unlike the Gen 8:11
case in `docs/reviews/genesis-easy-review.md` §6.1 the answer key is **not** ambiguous — I checked
5:5 ("seven years and six months" in Hebron, "thirty-three years" in Jerusalem) and neither of those
figures is offered, so there is no second defensible answer. It is a confusion trap lifted from the
same verse rather than a defect. Medium's ingested version handles it more cleanly by asking for
both facts in one option ("Thirty years old; reigned forty years"). Consider matching that, or
swapping the distractor, if playtesting shows confusion.

**6.4 — Item 11 (18:33) is not, strictly, a verbatim reuse.** The brief labels it "reused verbatim
from `medium`," but medium's ingested recall template
(`docs/ingest/1-2-samuel.sql`, sort_order 12) presents the **full verse** with the blank at the end,
whereas the brief renders the prompt with a leading ellipsis ("…I wish I had died instead of you,
Absalom, my son, my ___!"). Same verse, same blank, same answer — but a shorter displayed template.
Style guide §5 is satisfied (the full verse text is carried immediately above the recall line), so
this is a labelling accuracy point only: either restore medium's full template or drop the word
"verbatim" for this item. Items 9 and 10 *are* exact reuses; I checked both against the SQL.

**6.5 — Boss-item weighting.** Item 12 (6:15) is a level-1/2 recognition item sitting in the boss
set, where the medium brief specifies level 3–5 weighting. Appropriate for an easy tier and outside
my remit — noting only so it reads as a deliberate choice, same as
`docs/reviews/genesis-easy-review.md` §5.4.

## 7. Required and Recommended Changes

**7.1 — Item 3 (2 Sam 6:12): restore or label the trimmed quote. [required]**
Per Finding A (§3). Either restore the full verse ("King David was told, 'Yahweh has blessed the
house of Obed-Edom, and all that belongs to him, because of God's ark.' So David went and brought up
God's ark from the house of Obed-Edom into David's city with joy.") or tag the item
"(WEB, trimmed — full verse: …)" per the convention already used at
`docs/content/2-samuel-hard.md` item 8. The answer key ("with joy") does not change. **Item 3 is not
eligible for ingestion until this is fixed and re-run through verbatim QA.** Recommend the same
correction be carried back to `docs/content/2-samuel.md`'s Scene 2 verse list, which holds the same
truncated text.

**7.2 — The proposed 2 Samuel 7:12 structural rule: reword and relocate. [required]**
Per §5.2. The rule's substance is right; its wording leaves three openings. Suggested replacement:

> **2 Samuel 7:12 — structural rule (extends the 7:13/7:16 restriction; applies in every tier and
> every format).** No challenge item drawn from 2 Samuel 7:12 may have a person or figure as its
> correct answer, as any option, or as a matching/attribution target — in multiple-choice, recall,
> sequence, matching, or any future format. The graded content must be the promised **action** as
> the verse words it (an offspring set up from David's body; a kingdom established). No item may ask
> who the "offspring" or "his kingdom" refers to, proximately or ultimately.

Three specific improvements over the draft: it constrains the correct answer and the whole option
set rather than only the distractors (hole i); it is format-agnostic (hole ii); it drops the word
"ultimately," which would otherwise permit a "who, proximately?" item.

**Relocation:** the finalized rule must be written into `docs/content/2-samuel.md`'s Contested
Territory section, alongside the 7:13/7:16 rule, not only into this easy-tier brief — that is where
this book's structural rules live and where the hard-tier drafter read them from (hole iii).

**7.3 — Item 7 (12:1): re-anchor the stem to 12:1's own content. [required, trivial]**
The stem asks "what did Nathan's parable to David describe?" Nathan's parable runs 12:1–4, and I
verified 12:2–4's content live (the rich man's flocks; the poor man's one little ewe lamb; the
traveler). Only 12:1 is challenge-ready under the escalated bounding. The answer key is **not**
ambiguous — the distractor "a lost sheep and its shepherd" is wrong on both counts — and no
out-of-bounds text is displayed, so this is **not a bounding violation**. But within a scene governed
by a hard, human-signed constraint, a stem should reference only bounded text rather than gesture at
the wider parable. Suggested: "According to 2 Samuel 12:1, how does Nathan's parable begin — what
two men were in one city?" Medium's ingested 12:1 item ("whom did Yahweh send to David?" → Nathan)
is an even cleaner model.

**7.4 — Verbatim-text caveat: name the five first-time verses. [recommended]**
Per §6.1. State that 5:3, 6:12, 6:15, 7:12 and 15:6 have never been through
`QA_REQUIREMENTS.md` §3 verbatim QA (no ingested row at medium), and that
`docs/qa/2-samuel-easy-verbatim-qa.md` must prioritize them — rather than implying the medium
brief's approval already covers their text.

**7.5 — Contested Territory: add the 18:33 / 19:1 versification note. [recommended]**
Per §6.2, with the forward-looking guard that no item in any tier grades the verse *number* for
David's lament.

**7.6 — Ingest note for boss item 10. [recommended]**
Per §1. When this tier is ingested, narrow the reused `verse_ref` from medium's
`'2 Samuel 5:1-4; 6:12-15; 7:12-16; 12:1-13; 15:1-18:33'` to the bounded references
(e.g. `2 Samuel 5; 6; 7; 12:1,7,13; 15-18`), so no row in this book's audit trail cites a
chapter-12 range wider than the escalated decision allows. No displayed text changes.

**7.7 — Item 11: fix the "verbatim" label or restore the full template. [recommended]**
Per §6.4.

## 8. Verdict

**`approved-with-changes`.**

**Blocking (apply before ingestion):** 7.1 (6:12 trimmed quote), 7.2 (7:12 rule reword + relocation),
7.3 (12:1 stem re-anchor).

**Recommended:** 7.4, 7.5, 7.6, 7.7.

**The chapter-11 constraint holds absolutely.** Zero chapter-11 verses appear as challenge selections
anywhere in this brief; chapter-12 selections are {12:1, 12:7}, inside the permitted set. Chapter 11
appears only in exclusion prose. This was checked item-by-item, not by trusting the brief's own
acceptance-criteria checkboxes (which are, on this point, accurate).

**Not escalated.** The one live cross-tradition disagreement bearing on a graded item — whether 2
Samuel 7:12's "offspring" is Solomon, Christ, or both — is real and directly attached to this verse
(Barnes and Matthew Henry vs. Ellicott and the Pulpit Commentary; the Revised JPS's dynastic
rendering vs. the Christological reading). I did not take the brief's word that its bounding
neutralizes it; I checked the graded proposition against a Jewish translation and an aggregation of
classic Christian commentators and found they render *that proposition* identically, which is what
makes the bounding hold rather than merely sound plausible. The residual risk sits in the rule's
wording, not the item, and §7.2 fixes it. Nothing here touches Scene 4's audience-appropriateness
question, which is closed by Kachi Okere's 2026-08-08 sign-off and was not reopened.

**Residual risk stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer originally scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in
`MEMORY.md`, 2026-08-08). Kachi Okere has since taken the named-human-reviewer role for this book's
Scene 4 escalation specifically; the general residual-risk note remains live — a human specialist may
weigh the 7:12 messianic question differently, and §7.2's rule is the instrument that keeps that
question ungradeable either way.

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/2-samuel-easy-verbatim-qa.md`), which must re-check the corrected item 3 and prioritize the
five first-time verses named in §7.4. Logging this review in `docs/CONTENT_REVIEW_LOG.md` is the
calling session's task, not this reviewer's.

---

### Sources cited in this review

- https://ebible.org/web/2SA05.htm
- https://ebible.org/web/2SA06.htm
- https://ebible.org/web/2SA07.htm
- https://ebible.org/web/2SA12.htm
- https://ebible.org/web/2SA15.htm
- https://ebible.org/web/2SA18.htm
- https://www.biblegateway.com/passage/?search=2+Samuel+6%3A12-15&version=WEB
- https://www.biblegateway.com/passage/?search=2+Samuel+5%3A3-4%3B2+Samuel+12%3A1%3B2+Samuel+12%3A7%3B2+Samuel+12%3A13%3B2+Samuel+15%3A6%3B2+Samuel+18%3A33%3B2+Samuel+7%3A12-13&version=WEB
- https://biblehub.com/web/2_samuel/6.htm
- https://biblehub.com/commentaries/2_samuel/7-12.htm
- https://biblehub.com/commentaries/2_samuel/5-3.htm
- https://www.sefaria.org/api/texts/II_Samuel.7.12?context=0
- https://www.sefaria.org/api/texts/II_Samuel.19.1?context=0

Project files consulted (not external sources): `docs/CONTENT_STYLE_GUIDE.md`,
`docs/CANON_STRUCTURE.md`, `docs/content/2-samuel.md`, `docs/content/2-samuel-hard.md`,
`docs/reviews/2-samuel-review.md`, `docs/reviews/genesis-easy-review.md`,
`docs/reviews/genesis-hard-review.md`, `docs/ingest/1-2-samuel.sql`.
