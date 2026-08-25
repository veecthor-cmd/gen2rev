# Theological Review — 1 Samuel, Easy Tier (World 9)

Reviewer: `theological-reviewer` agent, run 2026-08-20.
Brief reviewed: `docs/content/1-samuel-easy.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` (§2 History group,
§4 Samuel/Kings/Chronicles differentiation).
Settled ground treated as inherited, not re-litigated: `docs/content/1-samuel.md`
(`approved-with-changes`) and `docs/reviews/1-samuel-review.md`.
Precedent for failure modes looked for: `docs/reviews/genesis-easy-review.md` (unanchored MC stem
producing a second defensible answer) and `docs/reviews/genesis-hard-review.md` (composite
quotation splicing two adjacent verses under one citation).

**Verdict: `approved-with-changes`.** One blocking defect (Finding A — item 2's question stem is
factually contradicted by the text, and the textually-correct answer is offered as a distractor).
Five further required/recommended fixes in §6. **No escalation:** every contested item was checked
against live sources from genuinely different traditions, and in each case the graded token is text
those traditions render identically. Both inherited hard constraints were checked directly and
**both hold** — zero verses from 1 Samuel 15 appear anywhere, and 18:3 is recall-only.

---

## 1. Verse-Text Verification

Every challenge-ready verse in the brief was fetched from live WEB sources. Per the Genesis
precedent I did **not** take reuse-from-`medium` as grounds to skip verification, because the two
Genesis reviews showed that re-cutting an already-approved block is exactly where text integrity
breaks. Every verse below was checked against **two independent live sources**.

Note on edition: `ebible.org/web/` (engweb) renders the divine name **"Yahweh"**; `ebible.org/engwebp/`
(the British/International edition) renders **"the LORD"**. The brief uses "Yahweh" throughout,
which is correct for the edition the project has standardised on (matching `docs/content/1-samuel.md`).
Flagging the two-edition trap so the verbatim-QA pass does not fetch the wrong one and report false
mismatches.

| Item | Verse | Sources checked | Result |
|---|---|---|---|
| 1 | 1 Sam 3:4-5 | [ebible.org WEB 1SA03](https://ebible.org/web/1SA03.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A4-5%3B1+Samuel+3%3A10%3B1+Samuel+8%3A5%3B1+Samuel+8%3A7%3B1+Samuel+10%3A1&version=WEB) | **Match** — v4+v5 concatenated, correctly cited as a 4-5 range (not a splice error) |
| 2 | 1 Sam 3:10 | [ebible.org WEB 1SA03](https://ebible.org/web/1SA03.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A4-5%3B1+Samuel+3%3A10%3B1+Samuel+8%3A5%3B1+Samuel+8%3A7%3B1+Samuel+10%3A1&version=WEB) | **Text matches.** The *stem* does not — see Finding A |
| 3 | 1 Sam 8:5 | [ebible.org WEB 1SA08](https://ebible.org/web/1SA08.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A4-5%3B1+Samuel+3%3A10%3B1+Samuel+8%3A5%3B1+Samuel+8%3A7%3B1+Samuel+10%3A1&version=WEB) | **Match** |
| 4 | 1 Sam 8:7 | [ebible.org WEB 1SA08](https://ebible.org/web/1SA08.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A4-5%3B1+Samuel+3%3A10%3B1+Samuel+8%3A5%3B1+Samuel+8%3A7%3B1+Samuel+10%3A1&version=WEB) | **Match** |
| 5 | 1 Sam 10:1 | [ebible.org WEB 1SA10](https://ebible.org/web/1SA10.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A4-5%3B1+Samuel+3%3A10%3B1+Samuel+8%3A5%3B1+Samuel+8%3A7%3B1+Samuel+10%3A1&version=WEB) | **Match** — and WEB's verse genuinely ends there; see Finding F for why that is worth knowing |
| 6 | 1 Sam 16:13 | [ebible.org WEB 1SA16](https://ebible.org/web/1SA16.htm), [Bible Hub WEB 1 Sam 16](https://biblehub.com/web/1_samuel/16.htm) | **Match**, including the closing sentence "So Samuel rose up and went to Ramah." (my BibleGateway pull truncated after "from that day forward" — a fetch artifact, resolved by the Bible Hub pull, same pattern the Genesis-easy review hit on Gen 8:11) |
| 7 | 1 Sam 17:45 | [ebible.org WEB 1SA17](https://ebible.org/web/1SA17.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+16%3A13%3B1+Samuel+17%3A45%3B1+Samuel+17%3A49-50%3B1+Samuel+18%3A1%3B1+Samuel+18%3A3%3B1+Samuel+24%3A6&version=WEB) | **Match** |
| 8 | 1 Sam 24:6 | [ebible.org WEB 1SA24](https://ebible.org/web/1SA24.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+16%3A13%3B1+Samuel+17%3A45%3B1+Samuel+17%3A49-50%3B1+Samuel+18%3A1%3B1+Samuel+18%3A3%3B1+Samuel+24%3A6&version=WEB) | **Match** |
| 9 | 1 Sam 17:49-50 (merged block) | [ebible.org WEB 1SA17](https://ebible.org/web/1SA17.htm), [Bible Hub WEB 1 Sam 17](https://biblehub.com/web/1_samuel/17.htm) | **Match.** Verse boundary explicitly checked: v49 ends "…fell on his face to the earth."; v50 begins "So David prevailed…". The brief's merged string is the exact concatenation and is cited as `17:49-50`. **This is the Gen 9:13 failure mode and it did not occur here.** |
| 10 | Boss sequence (16:13, 17:49-50, 18:1/3, 24:6) | as above | Text of all component verses verified; see Finding D on the "verbatim reuse" claim |
| 11 | 1 Sam 18:3 | [ebible.org WEB 1SA18](https://ebible.org/web/1SA18.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+16%3A13%3B1+Samuel+17%3A45%3B1+Samuel+17%3A49-50%3B1+Samuel+18%3A1%3B1+Samuel+18%3A3%3B1+Samuel+24%3A6&version=WEB) | **Match** — "Then Jonathan and David made a covenant, because he loved him as his own soul." Blank answer `covenant` is correct |

**No character-level mismatch was found in any verse text the brief asserts.** The brief's
verbatim-text caveat is accurate: this remains distinct from, and does not substitute for, the
`QA_REQUIREMENTS.md` §3 pass.

## 2. Hard Constraints From the Approved `medium` Brief

The two constraints the review request named were checked directly, item by item, not accepted on
the brief's assertion.

**2.1 — Chapter 15 exclusion: HOLDS, footprint is zero.**
Verses selected across all 11 items: 3:4-5, 3:10, 8:5, 8:7, 10:1, 16:13, 17:45, 17:49-50, 18:1
(sequence beat only), 18:3, 24:6. **No verse from 1 Samuel 15 appears in any item**, including
15:22, which `medium` does use and which this tier deliberately drops. The only occurrence of "15"
in the brief is inside the inherited *scene title* ("Saul's Disobedience and Rejection; David
Anointed (1 Sam 15, 16)"), carried over verbatim from `docs/content/1-samuel.md` — a scene label,
not a verse selection. The Amalek/ḥerem command (15:2-3) is not quoted, referenced as content, or
alluded to in any stem, option, or distractor. Confirmed compliant, and the brief's decision to go
to zero rather than inherit 15:22 is a genuine tightening, not a restatement.

I also checked for the Genesis-easy §6.3 failure (scene scope silently widening on reuse): the easy
brief's 5 scene titles and chapter references are identical to `docs/content/1-samuel.md`. **No
scope creep — nothing analogous to the stray "Genesis 17" occurred here.**

**2.2 — 18:1/18:3 recall-only rule: HOLDS for item 11; the rule's *wording* needs a clarification.**
Item 11 is fill-in-the-blank, the blanked token is `covenant`, and no stem asks the player to
characterise the relationship. Compliant with both the letter and the purpose of the rule.

However, boss **item 10** uses 18:1/18:3 as a *sequencing* beat ("Jonathan makes a covenant with
David"). Sequencing is neither recall/fill-in-blank nor multiple choice, so the rule as currently
written in `docs/content/1-samuel.md` — "may **only** be used in recall/fill-in-blank format… never
as a multiple-choice item asking players to characterize what kind of relationship or love this
was" — technically forbids it, while the rule's stated purpose plainly does not. The identical beat
already sits in `medium`'s approved difficulty-ladder level 3, so this is an inherited wording
imprecision surfacing at a new tier, not a new violation. See Finding I for the fix. I judge the
*purpose* satisfied: the beat uses the text's own word ("covenant") and grades only ordering.

## 3. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

For each item: *does this require the player to affirm anything beyond narrative fact or direct
verse text?*

| Item | Format | In-bounds basis (§2) | Result |
|---|---|---|---|
| 1 — 3:4-5 | MC | Direct quotation attributed in-text | Pass on doctrine; distractor issue, Finding C |
| 2 — 3:10 | MC | Direct quotation attributed in-text | **Fail on factual accuracy — Finding A.** Doctrinally in-bounds |
| 3 — 8:5 | MC | Narrative fact | Pass |
| 4 — 8:7 | MC | Direct quotation attributed in-text | Pass — bounding confirmed at §4.1 |
| 5 — 10:1 | MC | Narrative fact | Pass — see Finding F guard |
| 6 — 16:13 | MC | Character identification | Pass |
| 7 — 17:45 | MC | Direct quotation attributed in-text | Pass |
| 8 — 24:6 | MC | Direct quotation attributed in-text | Pass — see §4.3 |
| 9 — 17:49-50 | Boss MC | Narrative fact | Pass on doctrine; missing distractor set, Finding E |
| 10 — sequence | Boss sequence | Sequencing | Pass — see §2.2 / Finding I |
| 11 — 18:3 | Boss recall | Direct verse recall | Pass — see §4.2 |

**All five §3 prohibitions are clear.** No item asks for doctrinal interpretation, a denominational
position, a historicity/scientific framing, or a moral judgment. Item 8 is the closest approach to
the moral-judgment line — it concerns David's refusal to strike Saul — but it grades the *phrase
David used* ("Yahweh's anointed"), not whether sparing Saul was right, which is precisely the
distinction `medium` was approved on. The tier's heavy use of MC does raise exposure relative to
typed recall (a distractor set can smuggle in framing that a blank cannot), which is why §5 below
scrutinises distractors specifically rather than only stems.

## 4. Contested-Territory Cross-Check

### 4.1 — 1 Sam 8:7 (item 4), the one genuinely new selection. **Bounding holds.**

This is the only item drawing a verse the `medium` brief listed but never built an item from, and
the brief correctly flagged it rather than assuming it safe. The underlying dispute is real and
live: *was Israel's request for a king sin, a concession, or something God had always intended?*

Sources consulted, deliberately across traditions:

- **Jewish — the dispute is live *inside* the tradition, on the record.**
  [Sefaria, Sanhedrin 20b](https://www.sefaria.org/api/texts/Sanhedrin.20b.9?context=0) preserves
  the direct disagreement: appointing a king is treated as a commandment (Deut 17:14–15), against
  **Rabbi Nehorai**, who holds "this biblical passage was stated only in response to" the people's
  complaint — i.e. not an affirmative obligation at all, with Samuel's speech read as intended to
  deter them. That is a mainstream, canonical Jewish disagreement about the very question the item
  must not grade.
- **Jewish translation** — [Sefaria, I Samuel 8:7 (Revised JPS 2023)](https://www.sefaria.org/api/texts/I_Samuel.8.7?context=0):
  "For it is not you that they have rejected; it is Me they have rejected to rule over them."
- **Catholic (Vulgate/Knox)** — [New Advent, 1 Kings (1 Samuel) 8](https://www.newadvent.org/bible/1sa008.htm):
  "non enim te abjecerunt, sed me, ne regnem super eos."
- **Classic Protestant aggregation** — [Bible Hub commentaries, 1 Samuel 8:7](https://biblehub.com/commentaries/1_samuel/8-7.htm)
  (Keil–Delitzsch, Poole, Benson, Matthew Henry, Gill, Ellicott, Pulpit). These converge on
  motivation rather than form — Keil–Delitzsch: the verdict "refers not so much to the desire
  expressed, as to the feelings from which it had sprung"; Poole, asked directly whether wanting a
  king was unlawful, answers "No, as appears from Deu 17:14; but herein was their sin, that they
  desired it upon sinful grounds."
- **Inherited, not re-fetched this pass:** the Ligonier ("Israel Sinfully Demands a King") vs.
  Enduring Word (accommodation) divergence documented in §3 of `docs/reviews/1-samuel-review.md`.

**Why the bounding holds rather than merely sounding plausible:** the graded token is *whom Yahweh
named as rejected*. WEB, Revised JPS, and the Vulgate all state the identical proposition — not
Samuel, but God — and none of the disagreeing authorities above disputes it; they disagree about
*how culpable the request was* and *whether monarchy was commanded*, neither of which the item
touches. The distractor "Samuel" is explicitly negated by the verse itself ("they have not rejected
you"), so it is a clean distractor, not a defensible second answer. **No change required to item 4.**

### 4.2 — 1 Sam 18:3 (item 11). **Bounding holds; one forward-looking guard recommended.**

The underlying divergence (ancient Near Eastern covenant-of-loyalty reading vs. readings that find
romantic/erotic significance) is established as genuine and live in §3 of
`docs/reviews/1-samuel-review.md`; I did not re-open it, since the question here is whether *this
item* engages it. It does not: recall format, blank on `covenant`, no characterisation asked.

One thing worth recording that the earlier review did not: the verse's second clause is genuinely
ambiguous in Hebrew as to *who* loved *whom*, and translations resolve it differently.
[Sefaria, I Samuel 18:3 (Revised JPS 2023)](https://www.sefaria.org/api/texts/I_Samuel.18.3?context=0)
renders it "Jonathan and David made a pact, because **[Jonathan]** loved him as himself" — the
square brackets are the translation supplying a subject the Hebrew leaves open. WEB preserves the
ambiguity ("because he loved him as his own soul"). Item 11 blanks neither the pronoun nor "loved",
so nothing turns on it. Guard recommended at Finding H so a later authoring pass cannot blank "he".

Note also that JPS reads "pact" where WEB reads "covenant". This does not affect the item — §2
permits direct recall of the *WEB* text, and WEB is fixed by Open Decision #1 — but it confirms the
answer token is translation-specific, which the QA pass should be aware of.

### 4.3 — 1 Sam 24:6 (item 8). **Bounding holds. Versification divergence found — Finding G.**

"Yahweh's anointed" as a reason not to strike a reigning king sits near political-theology ground
(the sanctity of the anointed ruler, resistance theory) where traditions have historically differed.
The item is clear of it: it grades the phrase the text puts in David's mouth, not whether the
principle binds anyone.

While verifying, I found a real divergence the brief did not flag:
[Sefaria, I Samuel 24:7](https://www.sefaria.org/api/texts/I_Samuel.24.7?context=0) carries this
verse — "GOD forbid that I should do such a thing to my lord—GOD's anointed…" — at **24:7**, one
ahead of the WEB/KJV **24:6**. Hebrew and English versification differ across this chapter. Item 8's
stem does not cite the reference, so no player is graded on the number, and the item is safe as
written. See Finding G.

### 4.4 — 1 Sam 10:1 (item 5). **Bounding holds. Textual divergence found — Finding F.**

Not flagged by the brief, and it should have been: 10:1 is one of the better-known MT/LXX divergences
in the book. WEB follows the Masoretic text and the verse ends at "…prince over his inheritance?".
The Greek and Latin traditions carry a substantially longer reading, which Catholic translation
follows: [USCCB, NABRE 1 Samuel 10](https://bible.usccb.org/bible/1samuel/10) reads "The LORD anoints
you ruler over his people Israel. You are the one who will govern the LORD's people and save them
from the power of their enemies all around them." The Jewish translation footnotes the same variant
explicitly — [Sefaria, I Samuel 10:1](https://www.sefaria.org/api/texts/I_Samuel.10.1?context=0)
notes the Septuagint and Vulgate longer reading while printing the shorter MT text.

**The graded content is untouched by this.** Item 5 grades the *act*: pouring oil on the head and
kissing. Every witness has it — Sefaria/JPS: "Samuel took a flask of oil and poured some on Saul's
head and kissed him". Nothing in the answer key depends on where the verse ends or what the longer
reading adds. This is structurally the same situation as the Gen 22:13 אַחַר/אֶחָד variant in
`docs/reviews/genesis-easy-review.md`: a real manuscript divergence adjacent to a safe item, which
should be written down now so it stays adjacent. Finding F.

### 4.5 — 1 Sam 16:13 (item 6). Spot-checked, no change.

"Yahweh's Spirit came mightily on David" is displayed, and traditions differ on what Spirit-endowment
of an OT figure amounts to. The graded token is "Samuel" — who performed the anointing — a proper
noun the text supplies outright, the lowest-risk §2 category. No item asks what the Spirit's coming
meant or effected. In-bounds; no rule needed. The inherited 16:7 election/foreknowledge bounding is
not engaged at all, since 16:7 is not used in this tier.

### 4.6 — Inherited: the divine name "Yahweh".

Items 1, 2, 4, 5, 6, 7, 8 display WEB's "Yahweh", and in items 4 and 7 it is the correct *answer
option*. This is a real cross-tradition sensitivity (Jewish practice avoids vocalising the
Tetragrammaton; Sefaria's JPS prints "GOD"; the Catholic Church's 2008 liturgical directive
instructs against its use). It is **inherited, settled ground** — WEB is fixed by Open Decision #1
and `docs/content/1-samuel.md` already displays it under an approved review. Recorded for the trail
only; no action, no re-litigation. Worth noting that this tier makes "Yahweh" a *selectable answer*
rather than only display text, which `medium` did not; I do not consider that a change in kind,
since the player is selecting the word the cited translation uses, but it is the first time the
project has done it and is stated here so it is a seen decision rather than an unseen one.

## 5. Paraphrase-Presented-As-Quotation Check (§3, final bullet)

No invented text is presented as *the verse* anywhere. Every quoted verse block matched live WEB
text in §1.

The distractor sets need attention, though — MC distractors in this brief are written in quotation
marks as things a character might have said, which makes them read as candidate scripture:

- Item 1: "Speak, Lord, I am listening." / "Why do you call me, father?" / "I am not worthy."
- Item 2: "Here I am; for you called me." / "I don't understand, Lord." / "Go, lie down."

Two of these are not neutral inventions. **"Speak, Lord, I am listening"** is a recognisable
rendering of this very passage in other mainstream translations (WEB's own wording at 3:9/3:10 is
"Speak, Yahweh; for your servant hears" / "Speak; for your servant hears"), so it is not a wrong
answer in the ordinary sense — it is a *right answer in a different Bible*, offered to a
first-time player as an error. **"Go, lie down"** is verbatim WEB text from 3:9, presented as a
wrong thing for Samuel to have said. And item 2's "Here I am; for you called me." is item 1's
*correct* answer. Findings B and C.

I do not read §3's final bullet as banning quoted distractors outright — that would make "what did
X say" items impossible, and the Genesis tiers were approved with the same pattern. The rule's
target is text presented *as the verse*. But near-misses drawn from the same passage, or from other
translations of the graded verse, defeat the rule's purpose in a beginner tier.

## 6. Required and Recommended Changes

**6.1 — Finding A. Item 2 (1 Sam 3:10): the stem is contradicted by the text. [required — blocking]**

The stem reads "What did Samuel say **the third time** Yahweh called him?" The text is explicit:
1 Sam 3:8 — "**Yahweh called Samuel again the third time.** He arose and went to Eli and said,
'Here I am; for you called me.'"
([BibleGateway WEB, 1 Sam 3:1-10](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1-10&version=WEB);
[ebible.org WEB 1SA03](https://ebible.org/web/1SA03.htm)). The call in 3:10 is therefore the
**fourth**, not the third.

So the textually-correct answer to the stem as written is "Here I am; for you called me." — which
the item lists as **distractor option B** and marks wrong. This is the Genesis-easy §6.1 defect
(a stem with a second defensible answer among its distractors), but worse: here the distractor is
not merely defensible, it is the answer the text gives to the question actually asked.

**Fix — anchor the stem to the reference, as the brief already does correctly for items 4 and 7:**
"According to 1 Samuel 3:10, what did Samuel say when Yahweh came, stood, and called him?" — or
frame it by Eli's instruction: "…what did Samuel finally say, after Eli told him how to answer?"
Do **not** simply change "third" to "fourth": that would still leave item 1's correct answer sitting
in item 2's distractor list (Finding B), and it would foreground a counting detail no beginner-tier
item should hinge on. Item 2 is **not eligible for ingestion until fixed.**

**6.2 — Finding B. Item 2: remove the cross-item distractor collision. [required]**

"Here I am; for you called me." is item 1's correct answer and item 2's distractor. Even with the
stem anchored per 6.1, a player who has just been rewarded for that exact string is being asked to
mark it wrong two items later. Replace it with a plainly non-scriptural option. (The Genesis-easy
review raised the milder version of this at its §5.3 as a design nit; here it compounds a real
answer-key defect, so it is required rather than advisory.)

**6.3 — Finding C. Items 1 and 2: fix two distractors that aren't wrong. [required]**

- Item 1, "Speak, Lord, I am listening." — a recognisable other-translation rendering of the same
  narrative's famous line. Replace with an option that is not a rendering of any verse in 1 Samuel 3.
- Item 2, "Go, lie down." — **verbatim WEB text of 3:9** (Eli's instruction), used as a wrong answer.
  It is the wrong *speaker*, which is a fair distinction at `hard`, but at a tier explicitly designed
  so a first-time player "can succeed without prior Bible knowledge" it teaches by punishing a
  correct recollection. Replace.
- **Recommended general convention** to add to the tier's design-intent section: *invented MC
  distractors must not be near-renderings of any verse in the passage in play, and must not
  reproduce WEB text belonging to a different speaker in that passage.*

**6.4 — Finding D. Items 9 and 10: the "reused verbatim from `medium`" claim is inaccurate. [required]**

Neither item is a verbatim reuse, and the claim matters because it is what the QA pass will rely on
to decide what it can skip:
- **Item 9** merges 17:49 and 17:50, which `medium` lists as two separate challenge-ready bullets,
  into a single quotation block cited `17:49-50`, and it anchors the stem ("According to 1 Samuel
  17:49-50, …") where `medium`'s ladder example reads simply "What did David use to defeat Goliath?".
  Both changes are *improvements* — the citation is correct and the anchoring is exactly right — but
  the merged string has never been through verbatim QA as a single string. I verified it matches
  (§1, item 9); QA must treat it as new text, not settled text.
- **Item 10** condenses `medium`'s five-beat sequence (anointed → Goliath → covenant with Jonathan →
  pursued by Saul → spares Saul in the cave) into four, folding the pursuit and the cave into one
  beat. Legitimate for an easy tier; not "verbatim".

**Fix:** change the labels from "reused verbatim from `medium`" to "adapted from `medium` — stem
anchored / beats condensed; merged 17:49-50 block requires fresh verbatim QA."

**6.5 — Finding E. Item 9: no distractor set is given. [required]**

Item 9 is specified as a boss MC but lists only the correct answer ("a sling and a stone"). It
cannot be ingested as a multiple-choice challenge without options, and `CONTENT_STYLE_GUIDE.md` §5
is enforced technically at ingestion per `BACKEND_REQUIREMENTS.md` §4. Supply three distractors —
and per 6.3, keep them clear of "a sword", which 17:50's own closing clause ("there was no sword in
David's hand") makes textually loaded.

**6.6 — Finding F. Add 1 Sam 10:1 to Contested Territory with a structural guard. [recommended]**

Record the MT/LXX divergence documented at §4.4 (WEB/MT ends at "prince over his inheritance?";
NABRE and the LXX/Vulgate tradition carry a substantially longer reading; JPS footnotes it), and add
the rule, in the style of the existing 18:1/18:3 restriction: **no challenge in any tier may grade
the content of what Samuel said at 10:1, or where the verse ends.** Grading the *act* (pouring oil,
kissing) is fine and is what item 5 does — every textual tradition has it.

**6.7 — Finding G. Add a 1 Samuel 24 versification note. [recommended]**

Hebrew/Jewish versification runs one verse ahead of WEB/KJV through 1 Samuel 24 (§4.3: Sefaria
carries this verse at 24:7). Item 8 is unaffected because its stem cites no reference. Note that any
future *anchored* stem on this chapter ("According to 1 Samuel 24:6…") will display a number a
Jewish-tradition reader locates elsewhere — harmless for grading, worth knowing before it surfaces
in a Memory Vault citation or a shared-result screen.

**6.8 — Finding H. Extend the 18:3 guard to the pronoun. [recommended]**

Add to the inherited 18:1/18:3 rule: **the blank in any 18:3 recall item stays on "covenant"; the
pronoun "he", and the words "loved" and "soul", are never the blanked token.** Rationale at §4.2 —
the subject of "he loved him" is supplied editorially by translators (JPS brackets "[Jonathan]"),
so blanking the pronoun would ask a player to resolve a translation decision, not recall a word.
Item 11 already complies; this keeps a later pass from drifting.

**6.9 — Finding I. Clarify the recall-only rule's wording in `docs/content/1-samuel.md`. [recommended]**

Per §2.2, the rule as written ("may only be used in recall/fill-in-blank format") technically
forbids the sequencing beat in item 10, which `medium`'s own approved ladder already contains.
Amend to: *"…recall/fill-in-blank format only, or as a narrative beat in a sequencing item stated
in the text's own terms ('Jonathan makes a covenant with David'); never as a multiple-choice item
asking players to characterize what kind of relationship or love this was."* This changes no
content — it removes a contradiction a future authoring pass would otherwise have to guess at.

## 7. Verdict

**`approved-with-changes`.**

Every verse text the brief asserts is verbatim-correct against two independent live WEB sources.
Both inherited hard constraints hold: **zero verses from 1 Samuel 15 appear anywhere in this tier**
(the exclusion is in fact tightened, since 15:22 is dropped too), and 18:3 is used in recall-only
format with the blank on "covenant". The one genuinely new selection, 8:7, was checked against
Jewish (Sanhedrin 20b, Revised JPS), Catholic (Vulgate/Knox) and classic Protestant (Bible Hub
aggregation) sources; those authorities disagree substantially about how culpable Israel's request
was, while rendering the graded proposition — that it was God, not Samuel, whom the people rejected
— identically. That is what makes the narrative-only bounding hold rather than merely sound
plausible. Neither of the Genesis composite-quotation failure modes recurred: item 9's two-verse
merge is correctly cited as a range and matches the source exactly.

**Blocking before ingestion:** Finding A (item 2's stem is contradicted by 1 Sam 3:8, with the
textually-correct answer sitting in the distractor list). This is a factual-accuracy defect, not a
doctrinal one, and 6.1 gives the concrete fix.

**Not escalated.** Three real divergences were found — the intra-Jewish and cross-tradition dispute
over kingship at 8:7, the MT/LXX longer reading at 10:1, and Hebrew/English versification in ch. 24
— and each was checked directly against the graded answer key rather than assumed harmless. None
bears on a key. Findings 6.6–6.8 exist so they stay that way.

**Residual risk, stated plainly:** this review was performed by an AI agent standing in for the
named human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in
`MEMORY.md`, 2026-08-08). **Open Decision #7 still has no named human theological reviewer**, so
there is currently nowhere for an escalation from this role to land. Nothing in this brief required
escalation. A human specialist might still weigh §4.6 (making "Yahweh" a selectable answer option
for the first time in the project) differently than I have.

**Sources I attempted and could not use, stated rather than papered over:**
`bible.usccb.org/bible/1samuel/8` returned HTTP 403 on this pass, so the Catholic cross-check on
8:7 rests on New Advent's Vulgate/Knox text rather than on NABRE's chapter notes; USCCB's 1 Samuel
**10** page did load and is cited at §4.4. Sefaria's Rashi and Radak entries for I Samuel 8:7
returned empty text arrays (no commentary content available at those references), so the Jewish
cross-check on that verse rests on Sanhedrin 20b and Revised JPS instead. Two `gotquestions.org`
URLs returned 404 and no contemporary-evangelical source is cited for 8:7 beyond the Bible Hub
aggregation and the Ligonier/Enduring Word divergence inherited from `docs/reviews/1-samuel-review.md`.

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/1-samuel-easy-verbatim-qa.md`), which must (a) fetch from the `ebible.org/web/` edition,
not `engwebp` — see the edition note in §1 — and (b) treat item 9's merged 17:49-50 block as new
text rather than settled, per Finding D. Logging this review in `docs/CONTENT_REVIEW_LOG.md` is the
calling session's task, not this reviewer's.

---

### Sources cited in this review

World English Bible text:
- https://ebible.org/web/1SA03.htm
- https://ebible.org/web/1SA08.htm
- https://ebible.org/web/1SA10.htm
- https://ebible.org/web/1SA16.htm
- https://ebible.org/web/1SA17.htm
- https://ebible.org/web/1SA18.htm
- https://ebible.org/web/1SA24.htm
- https://ebible.org/engwebp/1SA03.htm (British/International edition — consulted only to identify the "the LORD" vs "Yahweh" edition difference noted in §1)
- https://www.biblegateway.com/passage/?search=1+Samuel+3%3A4-5%3B1+Samuel+3%3A10%3B1+Samuel+8%3A5%3B1+Samuel+8%3A7%3B1+Samuel+10%3A1&version=WEB
- https://www.biblegateway.com/passage/?search=1+Samuel+16%3A13%3B1+Samuel+17%3A45%3B1+Samuel+17%3A49-50%3B1+Samuel+18%3A1%3B1+Samuel+18%3A3%3B1+Samuel+24%3A6&version=WEB
- https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1-10&version=WEB
- https://biblehub.com/web/1_samuel/16.htm
- https://biblehub.com/web/1_samuel/17.htm

Cross-tradition:
- https://www.sefaria.org/api/texts/I_Samuel.8.7?context=0 (Revised JPS 2023)
- https://www.sefaria.org/api/texts/I_Samuel.10.1?context=0 (Revised JPS 2023, incl. LXX/Vulgate variant footnote)
- https://www.sefaria.org/api/texts/I_Samuel.18.3?context=0 (Revised JPS 2023)
- https://www.sefaria.org/api/texts/I_Samuel.24.7?context=0 (Hebrew versification)
- https://www.sefaria.org/api/texts/Sanhedrin.20b.9?context=0 (Rabbi Nehorai vs. the mitzvah-of-kingship position)
- https://biblehub.com/commentaries/1_samuel/8-7.htm (Keil–Delitzsch, Poole, Benson, Henry, Gill, Ellicott, Pulpit)
- https://www.newadvent.org/bible/1sa008.htm (Vulgate / Knox)
- https://bible.usccb.org/bible/1samuel/10 (NABRE, longer reading at 10:1)

Inherited from prior approved reviews, not re-fetched this pass:
- https://learn.ligonier.org/devotionals/israel-sinfully-demands-a-king
- https://enduringword.com/bible-commentary/1-samuel-8/
