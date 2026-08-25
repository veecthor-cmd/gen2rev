# Theological Review — Exodus, Hard Tier (World 2)

Reviewer: `theological-reviewer` agent, run 2026-08-20.
Brief reviewed: `docs/content/exodus-hard.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` (§2, Law group —
Exodus as world 2), `docs/content/exodus.md` (approved `medium` tier; its verse text and Contested
Territory bounding treated as settled ground), `docs/reviews/exodus-review.md` (source of the
hardening-of-Pharaoh's-heart exclusion, the Ex 12:29-30 format/sequencing restriction and the
Decalogue numbering-neutrality rule), `docs/content/exodus-easy.md` (sibling tier, for cross-tier
consistency), and the Genesis pilot reviews `docs/reviews/genesis-hard-review.md` /
`docs/reviews/genesis-easy-review.md` (precedent for the verse-boundary and answer-key checks).

**Verdict: `approved-with-changes`.** One blocking defect: boss item 12 presents a spliced,
unmarked composite of Exodus 20:18 and 20:19 as a single continuous quotation — the exact category
of error caught as Finding A in the Genesis hard-tier review. One further required fix (item 8
needs in-text attribution to Aaron) and five recommended strengthenings. Both newly-flagged
contested items were checked against live sources from genuinely different traditions and their
narrative-only bounding **holds**. The hardening-of-Pharaoh's-heart exclusion and the Ex 12:29-30
format restriction are both **intact**. Not escalated.

---

## 1. Verse-Text Verification

Every verse the brief introduces was checked against live World English Bible text. Primary source
throughout: **ebible.org** (`/web/`). Exodus 20:8 and 20:18-19 were additionally checked against a
second independent source (**BibleGateway**, `version=WEB`) because that is where the blocking
defect sits and a single extraction could not be trusted for it.

| Item | Verse | Source(s) checked | Result |
|---|---|---|---|
| 1 | Ex 3:2 | [ebible.org EXO03](https://ebible.org/web/EXO03.htm) | **Match** — verbatim, incl. "Yahweh's angel appeared to him in a flame of fire out of the middle of a bush." and closing "…and the bush was not consumed." Graded token `consumed` correct. |
| 2 | Ex 3:11 | [ebible.org EXO03](https://ebible.org/web/EXO03.htm) | **Match** — verbatim. Graded token `Pharaoh` correct. |
| 3 | Ex 12:8 | [ebible.org EXO12](https://ebible.org/web/EXO12.htm) | **Match** — full verse, verbatim, ends "…with bitter herbs." Graded token `herbs` correct. |
| 4 | Ex 12:11 | [ebible.org EXO12](https://ebible.org/web/EXO12.htm) | **Match** — verbatim, incl. "and you shall eat it in haste: it is Yahweh's Passover." Source confirms the word is **haste**, not "hurry". Graded token `haste` correct. |
| 5 | Ex 14:19-20 | [ebible.org EXO14](https://ebible.org/web/EXO14.htm) | **Match** on both verses. Verse boundary independently confirmed — see §4. Graded token `behind` correct. Citation needs narrowing (§7.3). |
| 6 | Ex 20:8 | [ebible.org EXO20](https://ebible.org/web/EXO20.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+20%3A8%3B+Exodus+20%3A18-19&version=WEB) | **Match, two sources** — "Remember the Sabbath day, to keep it holy." Graded token `holy` correct. |
| 7 | Ex 19:16 | [ebible.org EXO19](https://ebible.org/web/EXO19.htm) | **Match** — full verse, verbatim; source confirms v16 ends on "trembled." and v17 begins "Moses led the people out of the camp to meet God…". Graded token `trembled` correct. |
| 8 | Ex 32:24 | [ebible.org EXO32](https://ebible.org/web/EXO32.htm) | **Match** — full verse verbatim; v23/v24 and v24/v25 boundaries confirmed (see §4). Graded token `calf` correct. Attribution fix required (§7.2). |
| 9 | Ex 12:29-30 (reused) | [ebible.org EXO12](https://ebible.org/web/EXO12.htm) | **Match** — spot-checked anyway. Quoted string sits wholly inside v29; trailing ellipsis correctly marks the trim. Graded token `firstborn` correct. |
| 10 | Ex 3:14; 19:8; 20:2-3 (reused) | [ebible.org EXO03](https://ebible.org/web/EXO03.htm), [ebible.org EXO19](https://ebible.org/web/EXO19.htm) | Spot-checked; Ex 19:8 confirmed verbatim ("All the people answered together, and said, 'All that Yahweh has spoken we will do.'"). Reused from approved `medium`; not re-litigated. |
| 11 | Ex 32:19-20 (reused) | [ebible.org EXO32](https://ebible.org/web/EXO32.htm) | **Match** — v19 confirmed to contain "he threw the tablets out of his hands, and broke them beneath the mountain". Graded token `tablets` correct. |
| 12 | Ex 20:18-19 | [ebible.org EXO20](https://ebible.org/web/EXO20.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+20%3A8%3B+Exodus+20%3A18-19&version=WEB) | **MISMATCH — see Finding A.** Individual verse texts are each verbatim; the *combined string the brief presents* is not. |

**Confidence caveat, stated plainly.** Every row above rests on at least one live fetch, but each
fetch passes through an automated extraction step. Rows verified against only one source (items
1–5, 7–9, 11) carry the same caveat `docs/reviews/exodus-review.md` §1 already recorded for this
book, and should be prioritised in the independent verbatim-QA pass required by
`QA_REQUIREMENTS.md` §3. During this review a second-source cross-check of items 1–5 and 7–8 was
attempted and could not be completed (the batched BibleGateway fetch failed on a service limit); I
am recording that as an incomplete check rather than implying coverage I do not have. The blocking
finding below is *not* affected — it was confirmed on two independent sources.

### Finding A — boss item 12 (Ex 20:18-19): spliced composite presented as one quotation. **Must fix.**

The brief presents item 12's text as:

> "All the people perceived the thunderings, the lightnings, the sound of the trumpet, and the
> mountain smoking. They said to Moses, 'Speak with us yourself, and we will listen; but don't let
> God speak with us, lest we die.'"

Both live sources agree the WEB verse division is:

- **Ex 20:18** — "All the people perceived the thunderings, the lightnings, the sound of the trumpet,
  and the mountain smoking. **When the people saw it, they trembled, and stayed at a distance.**"
- **Ex 20:19** — "They said to Moses, 'Speak with us yourself, and we will listen; but don't let God
  speak with us, lest we die.'"

The brief drops v18's closing sentence and butts v18's opening directly against v19's opening, with
no ellipsis and no "(trimmed)" tag — it is labelled simply "(WEB, new)". The resulting string is
continuous in the brief but **appears nowhere in the WEB**. This is the same defect class as
Finding A in `docs/reviews/genesis-hard-review.md` (Gen 9:12/9:13), reached by the same route: a
hard-tier drafter cutting a blank out of a multi-verse block without re-checking the internal verse
boundary. It violates `CONTENT_STYLE_GUIDE.md` §3 (final bullet — paraphrase/composite presented as
quotation) and §5 (verbatim text requirement).

Two mitigating facts, which are why this is `approved-with-changes` and not `rejected`: the graded
blank ("lest we ___" → **die**) sits **wholly inside v19**, so the answer key itself is sound and
unambiguous; and no words were invented or re-ordered — the defect is omission-without-marking, not
fabrication.

**Concrete fix — pick one:**

1. **Restore the omitted clause** so the quotation is the true, continuous text of vv. 18-19,
   keeping the citation "Ex 20:18-19". (Preferred — the omitted clause "they trembled, and stayed at
   a distance" is narratively apt for this item and doctrinally inert.)
2. **Re-cite the item to Ex 20:19 alone** and display only that verse, which contains the blank in
   full and stands on its own as reported speech.
3. **Keep both verses but mark the trim** in the medium brief's existing convention — an explicit
   ellipsis inside the quotation and a "(WEB, trimmed)" tag.

If option 1 is taken, note for the authoring pass that the restored clause contains the word
"trembled," which is item 7's graded answer (Ex 19:16). That is not a correctness problem — different
item, different verse — but the two should not be adjacent in a player's session.

Item 12 is **not eligible for ingestion until fixed and re-run through verbatim QA.**

## 2. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

Each item tested against: *does this require a player to affirm anything beyond narrative fact or
direct verse text?*

| Item | Graded token / task | In-bounds basis (§2) | Result |
|---|---|---|---|
| 1 Ex 3:2 | "consumed" | Direct verse recall | Pass — see §5.1 |
| 2 Ex 3:11 | "Pharaoh" | Direct quotation attributed in-text (Moses to God) | Pass — grades a proper noun the text supplies |
| 3 Ex 12:8 | "herbs" | Direct verse recall | Pass — Passover meal instruction, no ritual-theology claim graded |
| 4 Ex 12:11 | "haste" | Direct verse recall | Pass |
| 5 Ex 14:19 | "behind" | Direct verse recall / narrative fact | Pass — see §5.1 |
| 6 Ex 20:8 | "holy" | Direct verse recall | Pass — see §5.3 |
| 7 Ex 19:16 | "trembled" | Direct verse recall / narrative fact | Pass |
| 8 Ex 32:24 | "calf" | Direct quotation attributed in-text (Aaron to Moses) | Pass **on doctrine**; fails §2's *attributed* requirement as authored — see §5.2 / §7.2 |
| 9 Ex 12:29 | "firstborn" | Direct verse recall | Pass; format restriction honoured — see §6.2 |
| 10 Sinai sequence | ordering + attribution | Sequencing | Pass — unchanged reuse from approved `medium` |
| 11 Ex 32:19 | "tablets" | Direct verse recall | Pass — unchanged reuse from approved `medium` |
| 12 Ex 20:19 | "die" | Direct quotation attributed in-text (the people to Moses) | Doctrinally in-bounds; **fails on text integrity** (Finding A) |

**No item asks for doctrinal interpretation, a denominational position, a historicity/scientific
claim, or a moral judgment.** §3's five prohibitions are otherwise clear.

The tier's design choice — typed recall over multiple choice — again *reduces* doctrinal exposure
rather than increasing it, for the reason recorded in the Genesis hard-tier review: a typed blank on
a verbatim word cannot smuggle in an interpretive distractor set. This tier has no MC items at all,
so the answer-key-ambiguity defect found in the Genesis *easy* review (an unanchored MC stem with a
second defensible answer) has no surface here. I checked each blank for the analogous typed-recall
failure — a blank with more than one verbatim-defensible filler — and found none: each graded token
is the unique word occupying that slot in its verse.

One non-blocking difficulty note (not a style-guide matter): item 9's blank sits in a sentence that
goes on to say "the firstborn of Pharaoh… the firstborn of the captive… all the firstborn of
livestock," so the answer is heavily cued by its own display text. That is inherited unchanged from
approved `medium` and is a tuning question for the difficulty pass, not a review defect — flagged
only because a *hard* tier is where an over-cued blank is most conspicuous.

## 3. Hardening-of-Pharaoh's-Heart Exclusion — Audit

This was the specific risk named for this review: a hard tier reaching for "less commonly memorized"
verses in Exodus 4–14 could easily land on hardening material, which
`docs/reviews/exodus-review.md` excluded **entirely** from graded content (not merely bounded
narratively) after finding the Calvinist/Arminian and Maimonides-vs-Albo/Sforno divergences too deep
for narrative bounding.

**Result: the exclusion holds. No hardening language appears anywhere in the brief's challenge
content.** Verified two ways rather than by reading the brief's own assurance:

- **Every verse the tier actually uses was read in full from a live source** (§1). None of Ex 3:2,
  3:11, 12:8, 12:11, 14:19, 14:20, 19:16, 20:8, 20:18, 20:19, 32:24 — nor the reused 12:29-30, 3:14,
  19:8, 20:2-3, 32:19-20 — contains hardening language.
- **I asked the sources directly which verses in the risk chapters carry the motif**, rather than
  relying on the brief's list. [ebible.org EXO14](https://ebible.org/web/EXO14.htm) confirms Exodus
  14's hardening verses are **14:4, 14:8 and 14:17** — and no others.
  [ebible.org EXO12](https://ebible.org/web/EXO12.htm) confirms **no verse in chapter 12** mentions
  Pharaoh's heart being hardened.

**The one genuine proximity risk, which the brief did not flag:** item 5 draws on **Ex 14:19-20**,
which sits **two verses after 14:17** ("I myself will harden the hearts of the Egyptians") and
eleven after 14:8. The *selected text* is clean, but the margin is thin, and a runtime that renders
surrounding context — a "show the passage" affordance, a wider display window, a shared
chapter-level scripture panel — would put 14:17 in front of a player inside an item built under an
exclusion that exists precisely to keep that motif out of the experience. That is a plausible
implementation, not a hypothetical one. See §7.4 for the recommended display-scope rule.

I also checked the inverse: no item's *graded token* is a word that appears in a hardening verse in a
way that could cue one. None does.

## 4. Verse-Boundary Integrity — Audit of Every Multi-Verse Cut

Per the review request, each item cut from a multi-verse block was checked against the live verse
division, not against the brief's own rendering.

| Item | Cited as | Where the graded blank actually falls | Boundary confirmed by | Verdict |
|---|---|---|---|---|
| 5 | Ex 14:19-20 | **Entirely within v19** ("…and the pillar of cloud moved from before them, and stood ___ them") | [ebible.org EXO14](https://ebible.org/web/EXO14.htm) — v19 ends "and stood behind them."; v20 begins "It came between the camp of Egypt and the camp of Israel." | **No splice.** Quotation is honest (full text given, challenge string ellipsis-marked). Citation over-broad — narrow to Ex 14:19 (§7.3) |
| 8 | Ex 32:24 | Entirely within v24 | [ebible.org EXO32](https://ebible.org/web/EXO32.htm) — v23/v24 boundary at "…what has become of him.'" / "I said to them…"; v24/v25 boundary at "…out came this calf." / "When Moses saw that the people were out of control…" | **No splice.** Single verse, correctly bounded. Missing leading ellipsis only (§7.5) |
| 9 | Ex 12:29-30 | Entirely within v29 | [ebible.org EXO12](https://ebible.org/web/EXO12.htm) | **No splice.** Trailing ellipsis correctly marks the cut |
| 11 | Ex 32:19-20 | Entirely within v19 | [ebible.org EXO32](https://ebible.org/web/EXO32.htm) | **No splice.** Reused from approved `medium` |
| 12 | Ex 20:18-19 | Blank within v19; **displayed text spans a dropped clause of v18** | [ebible.org EXO20](https://ebible.org/web/EXO20.htm) + [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+20%3A8%3B+Exodus+20%3A18-19&version=WEB) | **DEFECT — Finding A** |

Four of five multi-verse cuts are clean; the fifth is the blocking finding. Notably, item 5 — the
one the brief itself worried about most — is the *best*-handled cut in the brief, and item 12, which
the brief did not flag at all, is the defective one.

## 5. Contested-Territory Cross-Check

### 5.1 "Yahweh's angel" (Ex 3:2) / "the angel of God" (Ex 14:19). **Disagreement is real; bounding holds.**

The brief flagged this and asked for it to be verified rather than assumed. It is a genuine, live,
cross-tradition disagreement — confirmed across four sources spanning three traditions:

- **Classic Protestant commentators (Bible Hub aggregation, Ex 3:2)** — near-unanimous that this is
  *not* a created angel. Benson and Poole: "not a created angel, but the Angel of the covenant,
  Christ"; Gill: "the eternal Word and Son of God"; Ellicott: "the Second Person of the Trinity";
  Keil-Delitzsch argue the transition from the Angel to Jehovah "proves the identity of the two";
  Pulpit Commentary concurs.
  [biblehub.com/commentaries/exodus/3-2.htm](https://biblehub.com/commentaries/exodus/3-2.htm)
- **Jewish (Sefaria — Ramban on Ex 3:2)** — explicitly the opposite, and explicitly contested
  *within* the Jewish tradition: Ramban **rejects Ibn Ezra's** identification of the angel with God,
  citing the Rabbis that the angel Michael appeared and the Divine Presence was also present —
  "representing God's presence without being identical to God."
  [Sefaria, Ramban on Exodus 3:2](https://www.sefaria.org/api/texts/Ramban_on_Exodus.3.2?context=0)
- **Jewish (Sefaria — Rashi and Ibn Ezra on Ex 3:2)** — both stay on the linguistic plane (בְּלַבַּת
  אֵשׁ as "in the heart of the fire"; the thornbush as "I will be with him in trouble," Ps 91:15) and
  neither advances a Christological reading. [Rashi](https://www.sefaria.org/api/texts/Rashi_on_Exodus.3.2?context=0),
  [Ibn Ezra](https://www.sefaria.org/api/texts/Ibn_Ezra_on_Exodus.3.2?context=0)
- **Orthodox (OrthodoxWiki, "Burning Bush")** — a third, distinct frame: the angel is the Logos, the
  "Angel of Great Counsel"; the flame is God's **uncreated energies**; and the unburnt bush
  prefigures the virgin birth — the Theotokos parallel, which is neither the Protestant
  Christophany argument nor the Jewish reading.
  [orthodoxwiki.org/Burning_Bush](https://orthodoxwiki.org/Burning_Bush)
- **Contemporary evangelical (GotQuestions)** — favours a pre-incarnate Christ ("the Son of God
  taking on temporary human form") and, notably, does not present the alternative readings as live.
  [gotquestions.org](https://www.gotquestions.org/angel-of-the-Lord.html)
- **Bible Hub on Ex 14:19** shows the same fault line recurring on the second verse, with
  commentators diverging on created-being vs. divine manifestation while agreeing entirely on the
  pillar's *movement* and protective function.
  [biblehub.com/commentaries/exodus/14-19.htm](https://biblehub.com/commentaries/exodus/14-19.htm)

So an item of the shape "who is the angel of the LORD?" would be flatly out-of-bounds under §3
(denominational position). The brief is right to pre-empt it.

**Why the bounding holds rather than merely sounds plausible.** The graded tokens are **"consumed"**
and **"behind"** — and the disagreeing traditions render exactly these words identically. The
Orthodox tradition's own name for the scene is the *Unburnt* Bush; Rashi, Ibn Ezra and Ramban all
read the bush as unconsumed while disputing the angel's status; every Protestant commentator above
takes the non-consumption as the plain narrative datum from which their argument *starts*. On Ex
14:19, Bible Hub records the commentaries as unanimous that the pillar moved from before Israel and
stood behind them — the disagreement attaches to *who* the angel is, never to *where the cloud
went*. A player typing "consumed" or "behind" affirms nothing any of these traditions would dispute.
This is the same structure that made the Gen 1:26 "image" bounding hold.

**Strengthening required (§7.4):** the brief's proposed rule — no challenge may ask what or who the
angel is — is correct but insufficient on its own. It should also state that **"Yahweh's angel" /
"the angel of God" may never be the blanked token**, and that the verse is displayed as verbatim
WEB text with no gloss, header or explanatory note. This is the identical closure applied to
Gen 1:26's "us/our" and Gen 1:2's "God's Spirit", and it forecloses a future authoring pass writing
"___'s angel appeared to him in a flame of fire" — textually valid, and precisely the wrong thing to
foreground.

### 5.2 Ex 32:24 — Aaron's account of the calf. **Bounding holds doctrinally; a factual-integrity fix is required.**

The brief was right not to assume this verse safe merely because `medium` named the passage. Checked
across traditions:

- **Classic Christian commentators (Bible Hub, Ex 32:24)** — uniformly read Aaron as evading and
  culpable, with no defender among them. Poole: Aaron "conceals his own sin" and "lays the whole
  blame upon the people"; the Pulpit Commentary calls it "not only a *suppressio veri*, but a
  *suggestio falsi*"; Keil-Delitzsch call the excuse "so contemptible that Moses did not think it
  worthy of a reply"; the Cambridge Bible notes the calf is made to come out "as it were
  spontaneously, without any cooperation on his part."
  [biblehub.com/commentaries/exodus/32-24.htm](https://biblehub.com/commentaries/exodus/32-24.htm)
- **Jewish (Sefaria — Rashi on Ex 32:24)** — markedly gentler: Rashi glosses Aaron as saying "I did
  not know that this living calf would come out," and reads his request as the bare "Who has any
  gold?" with the people volunteering unbidden — a reading that lightens rather than indicts.
  [Sefaria, Rashi on Exodus 32:24](https://www.sefaria.org/api/texts/Rashi_on_Exodus.32.24?context=0)

**There is therefore a real divergence — about Aaron's culpability.** It does not reach the graded
item: the token is **"calf"**, the object of Aaron's own reported sentence, and every source above
agrees that is the word Aaron used. Grading it requires no view on whether he was lying. The brief's
proposed rule (never whether his account is credible, evasive, or how culpable he was) is correct and
should be adopted as written.

**But a separate, non-doctrinal problem surfaced while checking this.** Item 8 as authored is a bare
fill-in-the-blank — "So they gave it to me; and I threw it into the fire, and out came this ___" —
with no stem attributing the words to Aaron. The brief's *prose note* says this is "Aaron's own
account, to Moses," but that framing exists only in the brief, not in the item a player sees. A
player encountering the item cold reads first-person text that says the calf emerged from the fire
on its own. **Ex 32:4 states the opposite as narration:** "He received what they handed him,
fashioned it with an engraving tool, and made it a molded calf"
([ebible.org EXO32](https://ebible.org/web/EXO32.htm)). Unattributed, the item teaches as narrative
fact something the same chapter contradicts four verses earlier — and it is exactly this gap that
every Christian commentator above identifies as the *lie*.

This is not a doctrinal defect; it is a §2 compliance defect. §2 permits "direct quotations
attributed in-text" — attributed being the operative word — and the fix is small. See §7.2.

### 5.3 Ex 20:8 — the Sabbath commandment and Decalogue numbering. **Inherited rule confirmed load-bearing; no change.**

The brief correctly identifies this as the first item in any tier of this book built from a
commandment other than 20:2-3 / 20:12-15, and therefore the first to actually engage the inherited
numbering-neutrality rule rather than merely restate it. The divergence is real and directly touches
this specific commandment:

- The Sabbath commandment is numbered **4th** in Jewish, Orthodox, Anglican and Reformed numbering,
  and **3rd** in Roman Catholic and Lutheran (Augustinian) numbering.
  [Wikipedia, Ten Commandments — numbering comparison table](https://en.wikipedia.org/wiki/Ten_Commandments)
- The underlying cause is the two upstream disagreements already documented in
  `docs/reviews/exodus-review.md` §3 — whether "I am Yahweh your God" is commandment 1 or a
  prologue, and whether the idol prohibition is separate from "no other gods". Corroborated by
  [Modern Reformation, "The Theology of Numbering the Ten Commandments"](https://www.modernreformation.org/resources/articles/the-theology-of-numbering-the-ten-commandments)
  and [Logos, "3 Ways to Number the Ten Commandments"](https://www.logos.com/grow/hall-number-ten-commandments/).

**Source-reliability note, recorded rather than glossed over.** Two individual pages I fetched on
this question returned *mutually contradictory* per-tradition numbers under automated extraction
(one asserting all three traditions number the Sabbath 4th, another all three 3rd) — both plainly
extraction artifacts from comparison tables. I am therefore citing the structured comparison table
and the two corroborating articles above rather than either of those readings, and flagging that per-
page extraction is unreliable for tabular content. I state this per the standing instruction not to
present my own synthesis as a source.

**The item is clear of all of it.** It names no number, displays only the verse's own wording, and
grades "holy" — a word identical across every numbering scheme, since the schemes differ on *where
the boundaries fall between commandments*, never on this commandment's text. The inherited rule did
real work here. **No change.**

Cross-tier consistency check: `docs/content/exodus-easy.md` item 7 uses "Remember the Sabbath day" as
an MC *distractor* against Ex 20:12-15, where it is correctly a wrong answer. No conflict with this
tier grading it as correct content from Ex 20:8 — different verse, different question. Worth noting
only so a future consolidation pass doesn't read it as a contradiction.

### 5.4 Items the brief declared clear — independently checked

The brief asserts items 2, 3, 4, 7 and boss 12 carry no new contested ground "in a preliminary
check." Spot-checked rather than accepted:

- **Ex 12:8, 12:11 (items 3, 4)** — Passover meal instructions. These sit near live *practice*
  differences (Jewish halakhic observance of maror, roasting, and the post-Temple discontinuation of
  the Passover sacrifice; Christian typological readings of the Passover lamb). Neither item grades
  any of it: "herbs" and "haste" are words from the instruction itself. **In-bounds; no rule
  needed.** Forward-looking note for the authoring pass: do not build an item asking what the bitter
  herbs *signify*, or connecting the Passover lamb to any later figure — that is §3 territory.
- **Ex 3:11 (item 2)** — Moses' objection. Plain reported speech; the graded token is a proper noun.
  Nothing contested. Note that this verse is in chapter 3, well clear of the 4:21 hardening verse.
- **Ex 19:16 (item 7)** — theophany description. Grades "trembled," a narrated reaction. No
  tradition disputes the description. In-bounds.
- **Ex 20:18-19 (boss 12)** — the people's request that Moses mediate. Doctrinally this is the seed
  of a mediator/priesthood theme with real downstream weight, but the item grades "die" from the
  people's own quoted words, and asks nothing about mediation. **In-bounds as written** (its problem
  is textual, §1 Finding A). Forward-looking note: no item should ask *why* the people wanted Moses
  to mediate, or what the mediation signifies.
- **The divine name.** Items 1, 4 and reused items display "Yahweh" per WEB convention. Inherited,
  settled ground (Open Decision #1; `docs/reviews/exodus-review.md` §3). Mildly relevant here: no
  item in this tier requires a player to *type* "Yahweh" — every graded token is an ordinary English
  word. That happens to satisfy the medium review's soft recommendation. No action.

## 6. Inherited Structural Rules — Compliance Audit

**6.1 Hardening exclusion** — **intact**, verified independently at §3, not taken on the brief's word.

**6.2 Ex 12:29-30 format restriction** (recall/fill-in-blank or strict sequence only; never MC or
"describe what happened") — **satisfied**. Boss item 9 is recall, reused unchanged from `medium`.

**6.3 Ex 12:29-30 sequencing clause — satisfied in substance, but the brief's compliance claim is
incomplete.** The inherited rule has *two* parts, and the brief addresses only one. It states the
restriction is "honored above, boss item 9, unchanged from `medium`'s exact form" — which covers the
format restriction but says nothing about the sequencing requirement that the verse "not be the
first item a player sees in this scene's challenge set (sequence it after the Passover-institution
verses, 12:12-14)." On the substance the tier does comply: the Passover-scene items preceding it are
items 3 (Ex 12:8) and 4 (Ex 12:11), both Passover-institution instructions, so a player's first
exposure to this beat is the meal framing rather than the death account — which is the rule's stated
purpose. But note the literal text of the inherited rule names **12:12-14** specifically, and **this
tier does not use 12:12-14 at all**. Recommendation at §7.6: state the compliance argument explicitly
in the brief rather than leaving a reader to reconstruct it, since the literal reading and the
purposive reading come apart here.

**6.4 Decalogue numbering neutrality** — **satisfied**; confirmed load-bearing at §5.3.

**6.5 Golden-calf / Aaron-culpability bounding** — **satisfied doctrinally**; extension to Ex 32:24
confirmed appropriate at §5.2, subject to the attribution fix.

**6.6 Divine-name handling** — no action, per §5.4.

**6.7 Scene traceability** (acceptance criterion 3) — **verified**, not assumed. All 12 items map to
the 5 approved pivotal scenes: burning bush (1, 2, 10), plagues/Passover (3, 4, 9), Red Sea (5),
Sinai (6, 7, 10, 12), golden calf (8, 11). No new scene is introduced, and no item strays outside
the approved chapter ranges — consistent with `docs/CANON_STRUCTURE.md` §2 (Exodus, world 2, Law
group). This is a real check worth recording: the Genesis easy-tier review caught a silent scene-
scope expansion (Gen 17 added to a scene definition) by doing exactly this comparison. Nothing
analogous here — the scene list is a verbatim restatement of `medium`'s.

## 7. Required and Recommended Changes

**7.1 — Boss item 12 (Ex 20:18-19): fix the spliced quotation. [BLOCKING]**
Per Finding A (§1). Choose option 1, 2 or 3 there; option 1 (restore v18's omitted closing clause)
is preferred. Re-run verbatim QA on the corrected item before ingestion.

**7.2 — Item 8 (Ex 32:24): attribute the quotation to Aaron in the item itself. [required]**
Add a stem that makes the reported speech explicit — e.g. "Complete Aaron's explanation to Moses:
'So they gave it to me; and I threw it into the fire, and out came this ___.'" As authored, the bare
blank presents Aaron's excuse as unattributed first-person narration that a player would reasonably
read as what happened, which Ex 32:4 contradicts. §2 permits direct quotations *attributed in-text*;
this makes the item satisfy that condition. It also, usefully, reinforces the brief's own bounding —
the item is about what Aaron *said*, which is precisely the fact that stays clear of the
culpability disagreement documented at §5.2.

**7.3 — Item 5: narrow the citation from "Ex 14:19-20" to "Ex 14:19". [recommended]**
The graded blank falls wholly inside v19 (§4). Displaying v20 as context is fine and the brief's
"full text" presentation is honest, but the item's *citation of record* — the one the ingestion
pipeline stores under `CONTENT_STYLE_GUIDE.md` §5 — should be the verse the blank is in. This is the
hygiene measure that would have prevented the Genesis Gen 9:12/9:13 error and, in a different form,
Finding A above.

**7.4 — Items 1 and 5: strengthen the angel rule. [recommended]**
Extend the brief's proposed rule to state that **"Yahweh's angel" / "the angel of God" may never be
the blanked token** in any tier, and that these verses are displayed as verbatim WEB text with no
gloss or explanatory header. Same closure as Gen 1:26 and Gen 1:2. Justification at §5.1.

**7.5 — Item 5 display-scope rule for Ex 14. [recommended — this is the one the brief missed]**
Add to Contested Territory: **no challenge item built from Exodus 14 may render surrounding chapter
context beyond the cited verse(s)**, because Ex 14:17 ("I myself will harden the hearts of the
Egyptians") sits two verses from item 5's text and is under a total exclusion from graded content.
The selected text is clean; this rule keeps a context-rendering feature in the runtime from
reintroducing excluded material through the side door. Cross-reference it from
`FRONTEND_REQUIREMENTS.md` when the scripture-display component is specified.

**7.6 — Item 8 trim convention. [recommended]**
Item 8's challenge string begins mid-verse without a leading ellipsis, where item 5 (and `medium`
throughout) uses one. Match the convention so the pipeline's citation check
(`BACKEND_REQUIREMENTS.md` §4) sees a consistent shape. Same finding as Gen 3:19 in the Genesis
hard-tier review.

**7.7 — Contested Territory: record the Ex 12:29-30 sequencing compliance argument explicitly.
[recommended]**
Per §6.3 — state that items 3 and 4 (Ex 12:8, 12:11) are the Passover-institution items preceding
boss item 9, satisfying the rule's purpose, and note that this tier does not use 12:12-14. Leaving
the literal-vs-purposive gap unstated is the kind of thing that reads as a violation to a later
reviewer who checks the rule's wording against the item list.

## 8. Verdict

**`approved-with-changes`.**

**Blocking (must be applied before ingestion):**

1. **Boss item 12 (Ex 20:18-19)** — repair the spliced composite quotation per §7.1, then re-run
   verbatim QA on the corrected item.

**Required (small, but not optional):**

2. **Item 8 (Ex 32:24)** — attribute the quotation to Aaron in the item stem (§7.2).

**Recommended (none blocks on its own):**

3. Item 5 — narrow citation to Ex 14:19 (§7.3).
4. Items 1 and 5 — extend the angel rule to bar the angel phrase as a blanked token (§7.4).
5. Exodus 14 — add the display-scope rule protecting the hardening exclusion (§7.5).
6. Item 8 — leading ellipsis for the mid-verse trim (§7.6).
7. Contested Territory — record the Ex 12:29-30 sequencing compliance argument (§7.7).

**Not escalated.** Both items the brief flagged for explicit verification were checked against real,
live sources representing genuinely different traditions — Jewish (Sefaria: Rashi, Ibn Ezra, Ramban),
classic Protestant (Bible Hub aggregations), Orthodox (OrthodoxWiki), contemporary evangelical
(GotQuestions) — and in both cases the disagreement turned out to attach to material the items never
grade, while the graded tokens are words the disagreeing traditions render identically. That is what
makes the narrative-only bounding hold rather than merely sound plausible. The one motif this book
already judged *too* deep for narrative bounding — the hardening of Pharaoh's heart — was audited
directly against the source text rather than against the brief's assurance, and is genuinely absent.
No graded item requires a denominational position.

**Residual risk, stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in `MEMORY.md`,
2026-08-08; **Open Decision #7 still names no human theological reviewer**). Nothing here required
escalation. But a human specialist might weigh the "angel of the LORD" question differently — it is
the sharpest live cross-tradition divergence this book has produced outside the hardening motif, and
this tier is the first to put those verses in front of players. The residual-risk note in the master
prompt remains live.

**Outstanding, not this reviewer's job:**

- Independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
  (`docs/qa/exodus-hard-verbatim-qa.md`). It must specifically (a) re-check corrected item 12,
  (b) re-check the internal verse boundary of every multi-verse cut per §4, and (c) prioritise the
  single-source rows flagged in §1, since the intended second-source cross-check of items 1–5 and
  7–8 could not be completed during this review.
- Logging this review in `docs/CONTENT_REVIEW_LOG.md` — the calling session's task, per the single-
  editor rule for that audit trail.

---

### Sources cited in this review

**Verse text (World English Bible)**
- https://ebible.org/web/EXO03.htm
- https://ebible.org/web/EXO12.htm
- https://ebible.org/web/EXO14.htm
- https://ebible.org/web/EXO19.htm
- https://ebible.org/web/EXO20.htm
- https://ebible.org/web/EXO32.htm
- https://www.biblegateway.com/passage/?search=Exodus+20%3A8%3B+Exodus+20%3A18-19&version=WEB

**Cross-tradition — Jewish**
- https://www.sefaria.org/api/texts/Rashi_on_Exodus.3.2?context=0
- https://www.sefaria.org/api/texts/Ibn_Ezra_on_Exodus.3.2?context=0
- https://www.sefaria.org/api/texts/Ramban_on_Exodus.3.2?context=0
- https://www.sefaria.org/api/texts/Rashi_on_Exodus.32.24?context=0

**Cross-tradition — classic Protestant commentary aggregations**
- https://biblehub.com/commentaries/exodus/3-2.htm
- https://biblehub.com/commentaries/exodus/14-19.htm
- https://biblehub.com/commentaries/exodus/32-24.htm

**Cross-tradition — Orthodox**
- https://orthodoxwiki.org/Burning_Bush

**Cross-tradition — contemporary evangelical**
- https://www.gotquestions.org/angel-of-the-Lord.html

**Decalogue numbering**
- https://en.wikipedia.org/wiki/Ten_Commandments
- https://www.modernreformation.org/resources/articles/the-theology-of-numbering-the-ten-commandments
- https://www.logos.com/grow/hall-number-ten-commandments/

**Sources attempted and unavailable** (recorded so the gap is visible rather than implied coverage):
- https://bible.usccb.org/bible/exodus/3 — HTTP 403; no Catholic primary-source check on Ex 3:2's
  "angel of the LORD" was obtained. The Catholic position is not represented directly above; the
  cross-tradition finding rests on Jewish, Protestant, Orthodox and evangelical sources.
- https://www.catholic.com/tract/the-ten-commandments — HTTP 404
- https://www.chabad.org/library/article_cdo/aid/1137168/jewish/The-Ten-Commandments.htm — HTTP 403
- https://dioceseduluth.org/news/why-are-there-two-different-ways-of-numbering-the-ten-commandments — HTTP 403
- https://www.learnreligions.com/different-versions-of-the-ten-commandments-250923 — HTTP 402
- Second-source (BibleGateway) cross-check of items 1–5, 7–8 — service limit reached; deferred to
  the verbatim-QA pass.
