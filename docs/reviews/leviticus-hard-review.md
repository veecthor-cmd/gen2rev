# Theological Review — Leviticus, Hard Tier (World 3)

Reviewer: `theological-reviewer` agent, run 2026-08-19.
Brief reviewed: `docs/content/leviticus-hard.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` §2 (Leviticus = Law
group, world 3), `GEN2REV_MASTER_PROMPT.md` §5 (cross-cutting guardrails) and §6 (Open Decisions
#1, #6, #7, #7b).
Treated as already-settled ground per the review request: `docs/content/leviticus.md`
(`approved-with-changes`), `docs/reviews/leviticus-review.md` (source of the Lev 10:1-3 recall-only
structural rule), `docs/qa/leviticus-verbatim-qa.md` (`pass`).
Process precedent: `docs/reviews/genesis-easy-review.md` and `docs/reviews/genesis-hard-review.md`.

**Verdict: `approved-with-changes`.** All 8 newly-fetched verses are verbatim-correct against two
independent live WEB sources, and all three contested items the drafter flagged were checked against
real cross-tradition sources and their bounding **holds**. One required fix (boss item 11 presents a
trimmed verse without a trim label), several punctuation/convention notes for the verbatim-QA pass,
and five recommended strengthenings — including **three genuine contested-territory items the brief
did not flag**. The Lev 10:1-3 recall-only restriction is honoured. Not escalated.

---

## 1. Verse-Text Verification

Every verse newly introduced by this tier was checked against **two independent live WEB sources**.
Verses reused verbatim from the already-approved and already-QA'd `medium` brief were not
re-litigated, per the scope given for this review.

| Item | Verse | Sources checked | Result |
|---|---|---|---|
| 1 | Lev 1:2 | [ebible.org LEV01](https://ebible.org/web/LEV01.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2%3BLeviticus+19%3A11%3BLeviticus+19%3A14%3BLeviticus+19%3A32%3BLeviticus+25%3A9%3BLeviticus+25%3A23&version=WEB) | **Words match verbatim.** Quote-nesting inverted vs. source — see Finding B |
| 2 | Lev 16:34 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+16%3A1-2%3BLeviticus+16%3A17%3BLeviticus+16%3A34&version=WEB), [Bible Hub WEB](https://biblehub.com/web/leviticus/16.htm) | **Match** — identical to the `medium` text already QA-passed |
| 3 | Lev 16:17 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+16%3A1-2%3BLeviticus+16%3A17%3BLeviticus+16%3A34&version=WEB), [Bible Hub WEB](https://biblehub.com/web/leviticus/16.htm) | **Match, exact, full verse** |
| 4 | Lev 19:11 | [ebible.org LEV19](https://ebible.org/web/LEV19.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2%3BLeviticus+19%3A11%3BLeviticus+19%3A14%3BLeviticus+19%3A32%3BLeviticus+25%3A9%3BLeviticus+25%3A23&version=WEB) | **Words match verbatim.** The brief's description of the three-clause printing is accurate and confirmed — see Finding C |
| 5 | Lev 19:14 | [ebible.org LEV19](https://ebible.org/web/LEV19.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2%3BLeviticus+19%3A11%3BLeviticus+19%3A14%3BLeviticus+19%3A32%3BLeviticus+25%3A9%3BLeviticus+25%3A23&version=WEB) | **Match** |
| 6 | Lev 19:32 | [ebible.org LEV19](https://ebible.org/web/LEV19.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2%3BLeviticus+19%3A11%3BLeviticus+19%3A14%3BLeviticus+19%3A32%3BLeviticus+25%3A9%3BLeviticus+25%3A23&version=WEB) | **Match — "the elderly" confirmed on both sources.** The brief's decision to verify rather than assume was correct |
| 7 | Lev 25:9 | [ebible.org LEV25](https://ebible.org/web/LEV25.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2%3BLeviticus+19%3A11%3BLeviticus+19%3A14%3BLeviticus+19%3A32%3BLeviticus+25%3A9%3BLeviticus+25%3A23&version=WEB) | **Words match verbatim.** Brief adds enclosing quote marks the source does not print at this verse — see Finding B |
| 8 | Lev 25:23 | [ebible.org LEV25](https://ebible.org/web/LEV25.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+1%3A2%3BLeviticus+19%3A11%3BLeviticus+19%3A14%3BLeviticus+19%3A32%3BLeviticus+25%3A9%3BLeviticus+25%3A23&version=WEB) | **Match**, including the leading single quote |
| 11 | Lev 16:2 | [ebible.org LEV16](https://ebible.org/web/LEV16.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Leviticus+16%3A1-2%3BLeviticus+16%3A17%3BLeviticus+16%3A34&version=WEB) | **Quoted words match verbatim, but the quotation is an unlabelled TRIM** — see Finding A |
| 9–10 | Lev 17:11; Lev 10:1-3 | Reused verbatim from `docs/content/leviticus.md`; verbatim QA `pass` (`docs/qa/leviticus-verbatim-qa.md`) | Not re-litigated per review scope; no text changed. Carried-forward note restated in Finding D |

**No character-level wording mismatch was found in any of the 8 newly-fetched verses.** The brief's
claim that these were fetched fresh from ebible.org rather than recalled is consistent with what I
found — including the two places where a fresh fetch actually mattered (Lev 19:32 "the elderly",
Lev 19:11's split-clause printing), both of which the brief called correctly.

### Finding A — boss item 11 (Lev 16:2): unlabelled trim. **Required fix.**

The brief presents item 11's text as:

> "'Tell Aaron your brother not to come at just any time into the Most Holy Place within the veil,
> before the mercy seat which is on the ark; lest he die; for I will appear in the cloud on the
> mercy seat.'"

Both live sources agree that **Leviticus 16:2 begins "and Yahweh said to Moses,"** and only then
continues into the divine speech the brief quotes. ebible.org prints verse 2 as:

> and Yahweh said to Moses, "Tell Aaron your brother not to come at just any time into the Most Holy
> Place within the veil, before the mercy seat which is on the ark; lest he die; for I will appear
> in the cloud on the mercy seat."

BibleGateway's WEB rendering of 16:1-2 agrees. Every word the brief shows is verbatim — this is
**not** paraphrase-presented-as-quotation, and it is a materially smaller problem than the Gen 9:13
composite-splice found in `docs/reviews/genesis-hard-review.md`. But presenting part of a verse as
*the* verse, in a challenge that displays that text to a player, is the same content-integrity
concern that rule exists to prevent, and it is the identical defect already ruled on at Gen 8:11
(`docs/reviews/genesis-easy-review.md` §6.2). `docs/content/leviticus.md` already has the
convention — "(WEB, trimmed)" with an ellipsis inside the quotation — and this item simply needs to
use it.

**Fix (pick one):**

1. **Preferred** — re-tag as "(WEB, trimmed)" and open the quotation with an ellipsis:
   `"...'Tell Aaron your brother not to come at just any time...'"`, matching `medium`'s convention
   for Lev 1:3-4, 16:34, 19:33-34 and 25:10.
2. Restore the full verse, displaying "and Yahweh said to Moses, 'Tell Aaron your brother...'".

Option 2 has a secondary benefit worth noting: it makes the speaker explicit in the displayed text,
which matters for a boss item whose graded token is "die" (see §3.2). The graded token and answer
key are correct either way; this is a labelling fix, not a content one. **Item 11 is not eligible
for ingestion until relabelled and re-run through verbatim QA.**

### Finding B — quote-punctuation conventions (items 1 and 7). **For the verbatim-QA pass.**

Two items normalise quotation punctuation in ways the ingestion pipeline must not inherit:

- **Item 1 (Lev 1:2).** WEB prints `"Speak to the children of Israel, and tell them, 'When anyone of
  you offers...'` — outer **double**, inner **single**, and *no closing quote*, because the divine
  speech continues into verse 3. The brief inverts the nesting (outer single, inner double) and adds
  a closing quote pair. Same cosmetic class already recorded for Lev 19:2 in
  `docs/qa/leviticus-verbatim-qa.md` note 2 and for Gen 1:5 in `docs/reviews/genesis-easy-review.md`
  §5.1. Words identical; flag so the stored text carries WEB's own nesting.
- **Item 7 (Lev 25:9).** Neither live source prints an opening quote mark at the start of 25:9
  ("Then you shall sound the loud trumpet..."); the brief wraps it in `'...'`. Same cosmetic class.

Neither is a review defect. Both belong in `docs/qa/leviticus-hard-verbatim-qa.md`.

### Finding C — item 4 (Lev 19:11): the three-clause printing is real. **Confirmed, no fix required.**

The brief's note is accurate and worth recording as verified rather than asserted. ebible.org prints
Lev 19:11 as three separate quoted units:

> " 'You shall not steal.
> " 'You shall not lie.
> " 'You shall not deceive one another.

BibleGateway's WEB renders the same three clauses run together on one line. Since the two live
sources themselves differ on the line treatment while agreeing word-for-word, the brief's decision to
combine them for display is defensible and correctly flagged for ingestion. **No change required** —
but the QA pass should record which of the two renderings is stored, so the choice is deliberate.

### Finding D — carried-forward note on boss item 10 (Lev 10:3).

`docs/qa/leviticus-verbatim-qa.md` note 1 already records that Lev 10:3 continues "Aaron held his
peace." after the portion quoted, and that the quotation is unlabelled as a trim. That text is reused
unchanged here, so the same note applies to this tier. Not re-opened (settled ground), but since
Finding A is applying the trim-label convention to item 11 anyway, applying it to item 10 at the same
time is cheap and consistent. Recorded, not required.

## 2. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

Checked every item against the question: *does this require the player to affirm anything beyond
narrative fact or direct verse text?*

| Item | Format | Graded token | In-bounds basis | Result |
|---|---|---|---|---|
| 1 Lev 1:2 | recall | "flock" | §2 direct verse recall | Pass |
| 2 Lev 16:34 | recall | "everlasting" | §2 direct verse recall | Pass — with recommendation, §3.5 |
| 3 Lev 16:17 | recall | "assembly" | §2 direct verse recall | Pass |
| 4 Lev 19:11 | recall | "another" | §2 direct verse recall | Pass |
| 5 Lev 19:14 | recall | "blind" | §2 direct verse recall | Pass — with recommendation, §3.4 |
| 6 Lev 19:32 | recall | "elderly" | §2 direct verse recall | Pass — minor note, §4.1 |
| 7 Lev 25:9 | recall | "loud" | §2 direct verse recall | Pass |
| 8 Lev 25:23 | recall | "mine" | §2 direct verse recall | Pass — see §3.3 |
| 9 Lev 17:11 | recall (boss) | "life" | §2 direct verse recall | Pass — unchanged from approved `medium` |
| 10 Lev 10:1-3 | recall (boss) | "glorified" | §2 direct verse recall | Pass — restriction honoured, see below |
| 11 Lev 16:2 | recall (boss) | "die" | §2 direct verse recall | Pass on doctrine; **fails on text labelling** (Finding A); see §3.1–3.2 |

**No item asks for doctrinal interpretation, a denominational position, a historicity/scientific
framing claim, or a moral judgment.** All five §3 prohibitions are clear on the content axis; the
only §3 finding is the trim-labelling issue in Finding A.

**The tier's format choice materially reduces risk.** All 11 items are typed recall on a verbatim
WEB token. There is no multiple choice anywhere in this brief, which eliminates the entire class of
failure found at Gen 8:11 in the Genesis easy pilot — an unanchored MC stem with a second defensible
answer. A typed blank on a word displayed in its own verse cannot smuggle in an interpretive
distractor set. I checked each blank for a second textually-correct filler and found none.

### Lev 10:1-3 restriction — explicitly confirmed compliant

The review request asked me to confirm the boss item reusing Lev 10:1-3 stays inside the existing
recall-only restriction. It does, on both halves of the rule:

- **Format.** Item 10 is a fill-in-the-blank recall item (blank on "glorified"). It is not
  multiple-choice and is not open-ended "evaluate this". **No MC format sneaks in** — and, as noted
  above, there is no multiple-choice item anywhere in this brief at all, so the restriction cannot
  be violated by any item in this tier.
- **Pairing.** 10:1-2 and 10:3 are presented together in a single block, so the deaths are never
  shown without the text's own stated reason attached. The blank falls in 10:3 ("...I will be
  ___"), which further guarantees 10:3 is displayed.

This is stricter compliance than the rule requires. No change.

## 3. Contested-Territory Cross-Check

### 3.1 Lev 16:2 — "the mercy seat" (*kapporet*). **Claim confirmed — and it is stronger than the brief states. Bounding holds.**

The drafter's claim is real, live, and cross-tradition. It is also **understated**: the divergence is
not only interpretive (what the object signifies) but **translational** — WEB's own phrase "the mercy
seat" is a rendering that two mainstream traditions' standard translations do not use.

- **Jewish (Sefaria / Revised JPS 2023)** renders Lev 16:2: "Tell your brother Aaron that he is not
  to come at will into the Shrine behind the curtain, **in front of the cover that is upon the ark**,
  lest he die; for I appear in the cloud **over the cover**." No "mercy seat"; the object is simply
  "the cover".
  [Sefaria, Leviticus 16:2](https://www.sefaria.org/api/texts/Leviticus.16.2?context=0)
- **Catholic (USCCB / NABRE)** renders it "in front of **the cover on the ark** ... for I reveal
  myself in a cloud above **the ark's cover**", with a footnote that says outright: "**the meaning of
  *kappōret* is not certain.** It may be connected with the verb *kipper* 'to atone, purge'" — and
  the same footnote separately notes that "the Letter to the Hebrews makes use of the imagery of the
  Day of Atonement ... to explain Jesus' sacrifice."
  [bible.usccb.org/bible/leviticus/16](https://bible.usccb.org/bible/leviticus/16)
- **Classic Protestant commentators (Bible Hub aggregation, Lev 16:2)** are themselves spread out:
  Gill reads it as "a type of heaven for its holiness"; Keil & Delitzsch as where "Jehovah manifested
  His essential presence"; the Cambridge Bible describes it flatly as "a solid gold plate" with no
  typology at all.
  [biblehub.com/commentaries/leviticus/16-2.htm](https://biblehub.com/commentaries/leviticus/16-2.htm)
- **Lexical (Blue Letter Bible, H3727 *kapōreṯ*)** confirms the LXX renders it *hilastērion*, and
  that KJV translates it "mercy seat" 26 times — i.e. "mercy seat" is a translation tradition, not a
  neutral description.
  [blueletterbible.org/lexicon/h3727](https://www.blueletterbible.org/lexicon/h3727/kjv/wlc/0-1/)
- **The Romans 3:25 *hilastērion* debate the drafter cited is genuinely live and unresolved among
  commentators**, not a settled point one side merely disputes: Bengel reads it as an allusion to the
  OT mercy seat; Meyer argues the context requires "atoning sacrifice"; the Expositor's Greek
  Testament declines to commit, preferring general "propitiatory power"; Vincent's Word Studies
  explicitly challenges the mercy-seat view and rejects the placating-anger sense in favour of
  dealing with sin itself.
  [biblehub.com/commentaries/romans/3-25.htm](https://biblehub.com/commentaries/romans/3-25.htm);
  [Blue Letter Bible, G2435 *hilastērion*](https://www.blueletterbible.org/lexicon/g2435/kjv/tr/0-1/)
  (2 NT occurrences, translated "propitiation" at Rom 3:25 and "mercyseat" at Heb 9:5 — the same
  Greek word, two different English words, in the same English translation).

**Why the bounding holds, not merely sounds plausible:** the graded token in item 11 is **"die"**,
not "mercy seat". And "lest he die" is rendered *identically* — same three words, same order — in
WEB, in Revised JPS, and in NABRE, i.e. by the three traditions that disagree about *kapporet*. A
player typing "die" affirms nothing any of them would dispute. This is the same structural test that
made Gen 1:26 ("image") and Gen 22:13 ("a ram") hold: the graded word is text the disagreeing
traditions render the same way.

**Recommendation 1 (strengthening; adopt the drafter's rule, and extend it).** The drafter's proposed
rule — no challenge may ask what the mercy seat signifies — is correct but insufficient, because it
governs only *question topics*, not *blank placement*. Extend it to: **"mercy seat" may never itself
be the blanked token, in any tier**, and the phrase is display-only. This matters more here than the
equivalent rule did at Gen 1:26: the phrase appears **twice** in item 11's displayed string, and
"before the mercy ___" is exactly the blank a future authoring pass would find attractive. Because
WEB's own wording here is a contested rendering, grading it would make the answer key depend on a
translation choice, which is the failure mode `CONTENT_STYLE_GUIDE.md` §3 exists to prevent.

**Recommendation 2 (contested item the brief did not flag): the "cloud" clause.** Item 11 also
displays "for I will appear in the cloud on the mercy seat", and *that clause is separately
disputed*. Bible Hub records Ellicott noting a Pharisee/Sadducee dispute over whether the cloud is
the incense smoke screening the deity or God's own glory cloud, and Keil **explicitly rejecting** the
incense reading in favour of "the cloud of divine glory"
([biblehub.com/commentaries/leviticus/16-2.htm](https://biblehub.com/commentaries/leviticus/16-2.htm)).
Rashi, meanwhile, gives a halakhic reading in which entry is permitted only on Yom Kippur
**accompanied by the cloud of incense**
([Sefaria, Rashi on Leviticus 16:2](https://www.sefaria.org/api/texts/Rashi_on_Leviticus.16.2?context=0)).
That is a direct Jewish/Protestant divergence on a clause this brief displays. The current item is
safe — the blank is on "die", elsewhere in the verse — but add a Contested Territory bullet
recording it, with the rule: **the "cloud" clause is display-only; no challenge may grade what the
cloud is or ask a player to identify it.** Same pattern as the Gen 1:2 *ruach elohim* note.

### 3.2 Lev 16:2 — "lest he die". **Claim confirmed. Bounding holds; drafter's proposed rule needs one addition.**

The drafter's claim that this sits in the Nadab-and-Abihu sensitivity family is confirmed by the
sources themselves, not merely by textual adjacency:

- **Rashi on Lev 16:2** links the two directly: the warning follows the deaths of Aaron's sons, and
  "if he comes into the Holy of Holies at any time other than Yom Kippur he will die."
  [Sefaria, Rashi on Leviticus 16:2](https://www.sefaria.org/api/texts/Rashi_on_Leviticus.16.2?context=0)
- **Lev 16:1** itself, on both live WEB sources, reads "Yahweh spoke to Moses after the death of the
  two sons of Aaron, when they came near before Yahweh, and died" — the framing the drafter cites is
  in the text.
  [BibleGateway WEB, Lev 16:1-2](https://www.biblegateway.com/passage/?search=Leviticus+16%3A1-2%3BLeviticus+16%3A17%3BLeviticus+16%3A34&version=WEB)
- **Classic Protestant commentators** all agree death is the stated consequence but **diverge on
  why**: Benson attributes it to "his presumption"; Keil & Delitzsch add a theological gloss about
  sinful humanity facing a consuming fire that the priest's own sanctification could not cancel;
  Matthew Henry pivots to the argument that repeated atonements proved sacrifice could not
  permanently cleanse, foreshadowing Christ.
  [biblehub.com/commentaries/leviticus/16-2.htm](https://biblehub.com/commentaries/leviticus/16-2.htm)

That is precisely the shape that makes narrative-only bounding the right instrument: **unanimity on
what the text states, real divergence on what explains it.** The item grades the stated fact and
never the explanation. **Bounding holds.**

**Recommendation 3 (required addition to the drafter's proposed rule).** The drafter proposes
mirroring the Lev 10:1-3 bounding, but the rule as worded only forbids asking a player to *evaluate
or justify* the consequence. The Lev 10:1-3 rule has **two** limbs, and the second — recall-only
format, never multiple-choice — is the one that actually prevents the shock-value standalone item.
As worded, the drafter's rule would not block a future MC item of the form "What would happen if
Aaron entered the Most Holy Place at the wrong time? → he would die", which asks nothing evaluative
but is exactly what the Lev 10 rule was written to stop. **Add the format limb: challenges built
from Lev 16:2 are restricted to recall/fill-in-blank format, never multiple-choice or open-ended.**
Item 11 already complies, so this costs nothing now and closes the gap for later passes.

**Child-safety / §5 guardrail check.** I considered whether a graded token of "die" in a
general-audience Bible game intersects `GEN2REV_MASTER_PROMPT.md` §5's child-safety guardrail in a
way I should escalate. My assessment is that it does not, for three reasons: (a) §5's child-safety
guardrail is written about **data collection** in child-directed flows, not content tone, and Open
Decision #6 locks the MVP to the single general-audience "Disciple" tier rather than the "Seeker"
child tier; (b) the already-approved `medium` and `easy` tiers display materially more graphic text
from Lev 10:1-2 (fire devouring Nadab and Abihu) under an approved review; (c) the token is verbatim
scripture displayed in its own legal-instructional context, not narration this brief adds. Recorded
so the judgement is visible rather than silent. Applying Finding A option 2 (restoring "and Yahweh
said to Moses") slightly improves the framing at no cost, which is why it is worth preferring if the
content team is indifferent.

### 3.3 Lev 25:23 — "the land is mine". **Claim confirmed, and the modern dimension is sharper than the brief states. Bounding holds.**

The classic commentary tradition is convergent here; the **contemporary** use of this specific verse
is not. Both halves matter.

- **Jewish (Sefaria / Revised JPS 2023)**: "But the land must not be sold beyond reclaim, **for the
  land is Mine**; you are but strangers resident with Me."
  [Sefaria, Leviticus 25:23](https://www.sefaria.org/api/texts/Leviticus.25.23?context=0)
- **Rashi on Lev 25:23** reads it narrowly and economically — an admonition against begrudging the
  Jubilee return: "Your eye shall not be evil towards it ... for it is not yours." No territorial
  argument at all.
  [Sefaria, Rashi on Leviticus 25:23](https://www.sefaria.org/api/texts/Rashi_on_Leviticus.25.23?context=0)
- **Classic Protestant commentators (Bible Hub, Lev 25:23)** converge on divine proprietorship and
  stewardship (Gill: the land was "peculiarly his"; Keil-Delitzsch: Israelites were "strangers and
  sojourners" rather than absolute owners; MacLaren universalises it — "we are but stewards, or
  trustees"). Notably, **none of the aggregated commentators connects the verse to any modern
  territorial dispute.**
  [biblehub.com/commentaries/leviticus/25-23.htm](https://biblehub.com/commentaries/leviticus/25-23.htm)
- **But the verse is actively contested in present-day political theology**, and by both sides.
  Simon J. Joseph, "'The Land Is Mine' (Leviticus 25:23): Reimagining the Jubilee in the Context of
  the Palestinian-Israeli Conflict," *Biblical Theology Bulletin* (2020), documents Israel's 2017–18
  Jubilee-year commemorations invoking the tradition to assert historical claims, alongside readings
  that take the same principle to require recognition of Palestinian displacement — the article's own
  conclusion is that the tradition has "the capacity to serve opposing ideological purposes."
  [journals.sagepub.com/doi/10.1177/0146107920958985](https://journals.sagepub.com/doi/10.1177/0146107920958985)
  Critiques of Christian Zionism cite this exact verse for the conditionality of tenure (e.g. Stephen
  Sizer, "An Alternative Theology of the Holy Land",
  [churchsociety.org](https://www.churchsociety.org/wp-content/uploads/2021/05/Cman_113_2_Sizer.pdf);
  [America Magazine](https://www.americamagazine.org/short-take/2026/02/10/christian-zionism-holy-land/)),
  and it is invoked from within Jewish discussion in the same argumentative space
  ([Times of Israel blogs](https://blogs.timesofisrael.com/the-land-of-israel-doesnt-belong-to-any-of-us/)).

So the drafter's proposed rule is **confirmed necessary — more necessary than the brief realised.**
The brief frames this as merely "the same family as" the Gen 12:1 / Ex 3:7-8 land-promise language,
which is a live *interpretive* dispute; this verse is additionally a live *political* one, currently
deployed on opposing sides.

**Why the bounding nevertheless holds:** the graded token is **"mine"**, and every source consulted —
WEB, Revised JPS, Rashi, the classic Protestant commentators, and *both* sides of the contemporary
argument — agrees the text says the land is God's. That proposition is literally the shared premise
the modern dispute *starts from*; the disagreement is entirely about what follows from it. A player
typing "mine" affirms nothing contested. **No change to item 8's content.**

**Recommendation 4 (adopt the drafter's rule, and widen its scope).** Adopt the proposed rule as
written, and extend it beyond this single verse: **no challenge item, and no world flavour text,
world description, or map/UI label in Leviticus's world, may identify, bound, name, or connect "the
land" to any present-day territory, state, or political claim.** Widen it to cover the whole Jubilee
passage — **Lev 25:9 (item 7) and Lev 25:10** as well as 25:23 — because the modern argument turns
specifically on Jubilee-as-restoration, which is what item 7's trumpet verse proclaims. Confining the
rule to 25:23 alone would leave the adjacent Jubilee verses uncovered while addressing the least
exposed part of the passage.

### 3.4 Lev 19:14 — contested item the brief did NOT flag. **Recommendation 5.**

The brief states that items 1-7 are "plain narrative/legal instruction with no live cross-tradition
disagreement found in a preliminary check." That is not correct for **Lev 19:14** (item 5), which
carries a well-documented literal-vs-figurative divergence:

- **Jewish (Rashi on Lev 19:14)** reads "stumbling block before the blind" **metaphorically**: "Give
  not a person who is 'blind' in a matter an advice which is improper for him," illustrated with a
  deceptive-advice example, and grounds the clause "you shall fear your God" in the fact that only
  God knows the adviser's true intent.
  [Sefaria, Rashi on Leviticus 19:14](https://www.sefaria.org/api/texts/Rashi_on_Leviticus.19.14?context=0)
- **Christian commentators (Bible Hub, Lev 19:14)** are split on exactly this: Barnes and the Pulpit
  Commentary read it literally, as protection of those "unable to right or defend themselves";
  Ellicott states that "according to the interpretation which obtained in the time of Christ, this is
  to be understood figuratively ... it forbids imposition upon the ignorant, and misdirecting those
  who seek advice"; Gill records Jarchi and Ben Gersom taking the figurative view.
  [biblehub.com/commentaries/leviticus/19-14.htm](https://biblehub.com/commentaries/leviticus/19-14.htm)

**The item is safe as written.** The graded token is "blind" — the literal word every tradition
prints, and the disagreement is about *what the word refers to*, not what the word is. But per
`CONTENT_STYLE_GUIDE.md` §4, this is exactly the kind of ground that must be flagged deliberately
rather than surface after ingestion. **Fix: add a Lev 19:14 bullet to Contested Territory** recording
the two sources above, with the rule: **no challenge may ask who "the deaf" or "the blind" refers to,
or what conduct the command forbids — only the verbatim wording.** A question like "what does
Leviticus 19:14 forbid?" would sit directly on the divergence.

### 3.5 Lev 16:34 — "everlasting" as the graded token. **Recommendation 6 (note only).**

The brief treats Lev 16:34 as free, settled content because `medium` already vetted its *text*. Its
text is settled and QA-passed. But this is the first tier to make **"everlasting" itself the answer
key** — `easy` blanks the neutral "once in the year" instead — and that word is the precise hinge
between the Jewish reading of *chuqqat olam* as a standing statute and the Christian typological
reading of the Day of Atonement as fulfilled. The USCCB footnote I fetched for §3.1 states the
Christian side of this plainly: "the Letter to the Hebrews makes use of the imagery of the Day of
Atonement (in Hebrew *Yom Kippur*) to explain Jesus' sacrifice"
([bible.usccb.org/bible/leviticus/16](https://bible.usccb.org/bible/leviticus/16)).

**Nothing is violated.** The `medium` review's Day-of-Atonement bounding already forbids "an
assessment of whether the ritual is superseded, fulfilled, or still efficacious"
(`docs/reviews/leviticus-review.md` §3), and typing a word the text prints affirms nothing about
whether the statute still binds. **No change to item 2's content.** But the brief should *say* it
noticed, rather than route 16:34 through as unexamined free content — add a line to Contested
Territory confirming the inherited Day-of-Atonement rule expressly covers the new blank position.

### 3.6 Inherited bounding — spot-checked, no change

- **Sacrifice/atonement theology (items 1, 9 — Lev 1:2, 17:11).** Item 1 grades "flock", a livestock
  category; item 9 is an unchanged `medium` reuse. Neither asserts what sacrifice means or points to.
  Existing bounding holds.
- **Nadab and Abihu (item 10).** Format and pairing rules both honoured, see §2. No change.
- **Jubilee historicity (items 7, 8).** Both grade what the text legislates ("loud", "mine"), never
  whether or how often the Jubilee was observed. Existing bounding holds.
- **Excluded chapters.** Independently verified: **no verse from Leviticus 11, 18, or 20 appears
  anywhere in this brief.** Every cited verse is from Lev 1, 10, 16, 17, 19, or 25. Acceptance
  criterion confirmed.
- **The divine name "Yahweh".** Displayed in items 1, 5, 6, 9, 10. Inherited, settled ground per
  Open Decision #1 (WEB fixed as MVP translation) and already carried by the approved `medium` brief.
  Recorded for the trail only; no action.

## 4. Minor Findings (non-blocking)

**4.1 — Item 6 (Lev 19:32): WEB-specific answer key.** The blank is "elderly", and WEB's "the
elderly" is a modern rendering where KJV and much memorised English read "the old man". A player
drawing on another translation types a defensible word and is marked wrong. This is a
difficulty/UX matter rather than a style-guide one, but since this is a *typed-recall* tier the cost
is real. Recommend the challenge stem visibly cite "Leviticus 19:32 (WEB)" so the expected wording is
signalled, and/or that the ingestion answer key record "elderly" as the sole accepted token
deliberately. Same class as the Gen 12:1 "Leave your country" / "Get out of your country" wording
note in `docs/reviews/genesis-easy-review.md`.

**4.2 — Boss-item difficulty weighting.** `docs/content/leviticus.md` specifies the boss battle as a
mixed-format sequence weighted toward level 3-5 items. All three boss items here are level-1 recall
and there is no sequence item in the tier. For a hard tier this is a defensible design choice (typed
recall on obscure tokens is genuinely harder than MC sequencing) and it is outside my remit — noting
only so it reads as deliberate rather than an oversight, the same way `docs/reviews/genesis-easy-review.md`
§5.4 recorded the inverse case.

**4.3 — Item 2's provenance claim is accurate.** The brief says Lev 16:34 is "free/unused in
`medium`". Verified against `docs/content/leviticus.md`: 16:34 is listed as a challenge-ready verse
but never becomes a standalone `medium` item. It *is* used by `docs/content/leviticus-easy.md`
(item 3, MC on "once in the year"), and this brief correctly notes it uses a different blank.

**4.4 — Passage traceability.** Verified: all 11 items map to the 5 approved pivotal passages —
Sacrifice (1, 9), Nadab and Abihu (10), Day of Atonement (2, 3, 11), Holiness Code (4, 5, 6),
Jubilee (7, 8). No new passage introduced, consistent with `docs/CANON_STRUCTURE.md` §2 (Leviticus,
world 3, Law group).

## 5. Verdict

**`approved-with-changes`.**

**Blocking (must be applied before ingestion):**

1. **Boss item 11 (Lev 16:2)** — label the quotation as a trim, or restore "and Yahweh said to
   Moses," per Finding A; then re-run verbatim QA on the corrected item.

**Recommended (apply with the fix above; none blocks on its own):**

2. **Boss item 11 (Lev 16:2)** — extend the drafter's mercy-seat rule: "mercy seat" may never be the
   blanked token in any tier; display-only (§3.1, Recommendation 1).
3. **Boss item 11 (Lev 16:2)** — add the previously-unflagged "cloud" clause to Contested Territory
   (Rashi's incense reading vs. Keil's explicit rejection of it) with a display-only rule
   (§3.1, Recommendation 2).
4. **Boss item 11 (Lev 16:2)** — add the missing format limb to the "lest he die" rule: recall-only,
   never multiple-choice, mirroring **both** limbs of the Lev 10:1-3 restriction rather than one
   (§3.2, Recommendation 3).
5. **Item 8 (Lev 25:23)** — adopt the drafter's land rule and widen it to cover Lev 25:9 and 25:10
   and all world flavour/UI text, not just this verse (§3.3, Recommendation 4).
6. **Item 5 (Lev 19:14)** — add the previously-unflagged literal-vs-figurative divergence to
   Contested Territory with a "wording only, never referent" rule (§3.4, Recommendation 5).
7. **Item 2 (Lev 16:34)** — record that the new "everlasting" blank position is expressly covered by
   the inherited Day-of-Atonement bounding (§3.5, Recommendation 6).
8. **Items 1, 7 and 10** — quote-punctuation and trim-label conventions for the QA pass (Findings B
   and D); **item 6** — WEB-specific answer key note (§4.1).

**Not escalated.** All three contested items the drafter flagged were checked against real, live
sources representing genuinely different traditions — Jewish (Sefaria: Revised JPS text and Rashi on
Lev 16:2, 19:14, 25:23), Catholic (USCCB/NABRE text and footnotes on Leviticus 16), classic
Protestant (Bible Hub aggregations on Lev 16:2, 19:14, 25:23 and Rom 3:25), lexical (Blue Letter
Bible H3727, G2435), and contemporary academic/political-theological literature on Lev 25:23. In all
three cases the graded token turned out to be text the disagreeing traditions render **identically**
("die" — WEB/JPS/NABRE all read "lest he die"; "mine" — the shared premise of both sides of the land
argument), which is what makes the narrative-only bounding hold rather than merely sound plausible.
No graded item requires a denominational position. Two of the drafter's three proposed rules are
adopted with strengthenings; the third ("lest he die") needs the format limb added, which is a
concrete fix rather than an unresolved disagreement.

The one judgement call I made without escalating is recorded openly in §3.2 (child-safety check on
the graded token "die"), so it can be revisited rather than being invisible.

**Residual risk stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer originally scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in
`MEMORY.md`, 2026-08-08; formalised as Open Decision #7b). A human specialist may weigh the *kapporet*
translation question or the Lev 25:23 contemporary-politics exposure differently than I have. Nothing
here met the escalation bar. **Note for the record:** Open Decision #7 is now resolved — Kachi Okere
is the named human backstop for escalated items — so the "escalation has nowhere to land" limitation
recorded in earlier reviews no longer applies. No escalation is outstanding from this review.

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3 (`docs/qa/leviticus-hard-verbatim-qa.md`), covering all 8 newly-fetched
verses and specifically re-checking the corrected item 11 plus the quote-nesting items in Finding B.
That is a distinct check from this theological/neutrality review and still must run before ingestion
per `BACKEND_REQUIREMENTS.md` §4. Logging this review in `docs/CONTENT_REVIEW_LOG.md` is the calling
session's task, not this reviewer's.

---

### Sources cited in this review

Live World English Bible text:
- https://ebible.org/web/LEV01.htm
- https://ebible.org/web/LEV16.htm
- https://ebible.org/web/LEV19.htm
- https://ebible.org/web/LEV25.htm
- https://www.biblegateway.com/passage/?search=Leviticus+16%3A1-2%3BLeviticus+16%3A17%3BLeviticus+16%3A34&version=WEB
- https://www.biblegateway.com/passage/?search=Leviticus+1%3A2%3BLeviticus+19%3A11%3BLeviticus+19%3A14%3BLeviticus+19%3A32%3BLeviticus+25%3A9%3BLeviticus+25%3A23&version=WEB
- https://biblehub.com/web/leviticus/16.htm

Jewish tradition (Sefaria):
- https://www.sefaria.org/api/texts/Leviticus.16.2?context=0
- https://www.sefaria.org/api/texts/Leviticus.25.23?context=0
- https://www.sefaria.org/api/texts/Rashi_on_Leviticus.16.2?context=0
- https://www.sefaria.org/api/texts/Rashi_on_Leviticus.19.14?context=0
- https://www.sefaria.org/api/texts/Rashi_on_Leviticus.25.23?context=0

Catholic:
- https://bible.usccb.org/bible/leviticus/16

Classic cross-tradition Christian commentary (Bible Hub aggregations):
- https://biblehub.com/commentaries/leviticus/16-2.htm
- https://biblehub.com/commentaries/leviticus/19-14.htm
- https://biblehub.com/commentaries/leviticus/25-23.htm
- https://biblehub.com/commentaries/romans/3-25.htm

Lexical:
- https://www.blueletterbible.org/lexicon/h3727/kjv/wlc/0-1/
- https://www.blueletterbible.org/lexicon/g2435/kjv/tr/0-1/

Contemporary land-theology debate (Lev 25:23):
- https://journals.sagepub.com/doi/10.1177/0146107920958985
- https://www.churchsociety.org/wp-content/uploads/2021/05/Cman_113_2_Sizer.pdf
- https://www.americamagazine.org/short-take/2026/02/10/christian-zionism-holy-land/
- https://blogs.timesofisrael.com/the-land-of-israel-doesnt-belong-to-any-of-us/

Sources attempted but unavailable (recorded for honesty, not relied on):
- https://bible.usccb.org/bible/romans/3 — HTTP 403; the Rom 3:25 *hilastērion* divergence was
  instead established from Bible Hub's commentary aggregation and Blue Letter Bible's G2435 entry.
- https://enduringword.com/bible-commentary/leviticus-25/ — HTTP 403; the evangelical side of the
  Lev 25:23 discussion is represented instead by the Bible Hub aggregation (Gill, Keil-Delitzsch,
  MacLaren) and the Christian Zionism literature cited above.
