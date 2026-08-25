# Theological Review — 1 Samuel, Hard Tier (World 9)

Reviewer: `theological-reviewer` agent, run 2026-08-20.
Brief reviewed: `docs/content/1-samuel-hard.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` (§2 History group,
§4 Samuel/Kings/Chronicles differentiation), `docs/content/1-samuel.md` (approved `medium` tier —
its verse text and Contested Territory bounding treated as settled ground),
`docs/reviews/1-samuel-review.md`, `docs/content/1-samuel-easy.md`, and the two Genesis pilot
reviews (`docs/reviews/genesis-easy-review.md`, `docs/reviews/genesis-hard-review.md`) for the
defect patterns this pass was asked to look for.

**Verdict: `approved-with-changes`.** One blocking text-integrity defect (item 4, 1 Sam 16:1 — an
unlabelled truncation presented as a complete verse, with a fabricated closing quotation mark),
three required smaller fixes, and three recommendations. Every contested item the brief flagged was
checked against live sources from genuinely different traditions and **all three boundings hold**.
The chapter-15 zero-footprint exclusion and the 18:1/18:3 recall-only rule are both **confirmed
intact**. Not escalated overall — but see §6.2, one narrow decision I am deliberately handing up.

---

## 1. Verse-Text Verification

Every challenge-ready verse newly introduced by this brief was checked character-by-character
against live World English Bible sources. Verses reused verbatim from the already-approved and
already-reviewed `medium` brief were spot-checked, not re-litigated.

| Item | Verse | Sources checked | Result |
|---|---|---|---|
| 1 | 1 Sam 3:1 | [ebible.org WEB](https://ebible.org/web/1SA03.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1%3B1+Samuel+3%3A19%3B1+Samuel+10%3A24%3B1+Samuel+16%3A1%3B1+Samuel+16%3A12%3B1+Samuel+24%3A11&version=WEB) | **Match**, full verse, verbatim |
| 2 | 1 Sam 3:19 | [ebible.org WEB](https://ebible.org/web/1SA03.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1%3B1+Samuel+3%3A19%3B1+Samuel+10%3A24%3B1+Samuel+16%3A1%3B1+Samuel+16%3A12%3B1+Samuel+24%3A11&version=WEB) | **Match**, full verse, verbatim |
| 3 | 1 Sam 10:24 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1%3B1+Samuel+3%3A19%3B1+Samuel+10%3A24%3B1+Samuel+16%3A1%3B1+Samuel+16%3A12%3B1+Samuel+24%3A11&version=WEB) | **Match**, full verse (quote-nesting note, §5.1) |
| 4 | 1 Sam 16:1 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1%3B1+Samuel+3%3A19%3B1+Samuel+10%3A24%3B1+Samuel+16%3A1%3B1+Samuel+16%3A12%3B1+Samuel+24%3A11&version=WEB), [ebible.org WEB](https://ebible.org/web/1SA16.htm) | **DEFECT — unlabelled truncation + fabricated closing quote mark. See Finding A.** |
| 5 | 1 Sam 16:12 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1%3B1+Samuel+3%3A19%3B1+Samuel+10%3A24%3B1+Samuel+16%3A1%3B1+Samuel+16%3A12%3B1+Samuel+24%3A11&version=WEB), [ebible.org WEB](https://ebible.org/web/1SA16.htm) | **Match**, full verse, verbatim |
| 6 | 1 Sam 17:4 | [ebible.org WEB](https://ebible.org/web/1SA17.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+17%3A4%3B1+Samuel+17%3A40%3B1+Samuel+17%3A47&version=WEB) | Boundary **confirmed**; trim is labelled but repunctuated — see Finding B |
| 7 | 1 Sam 17:40 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+17%3A4%3B1+Samuel+17%3A40%3B1+Samuel+17%3A47&version=WEB) | Boundary **confirmed**; quoted text verbatim, continuation stated correctly |
| 8 | 1 Sam 24:11 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1%3B1+Samuel+3%3A19%3B1+Samuel+10%3A24%3B1+Samuel+16%3A1%3B1+Samuel+16%3A12%3B1+Samuel+24%3A11&version=WEB) | **Match**, full verse, verbatim |
| 9 | Boss sequence (16:13, 17:49-50, 18:1/3, 24:6) | Reused verbatim from approved `medium`; 16:13, 18:1, 18:3 spot-checked ([BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+24%3A17%3B1+Samuel+16%3A13%3B1+Samuel+18%3A1%3B1+Samuel+18%3A3&version=WEB), [ebible.org WEB](https://ebible.org/web/1SA16.htm)) | No text changed; no defect found |
| 10 | 1 Sam 24:17 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+24%3A17%3B1+Samuel+16%3A13%3B1+Samuel+18%3A1%3B1+Samuel+18%3A3&version=WEB) | **Match** — verbatim, unchanged from `medium` |
| 11 | 1 Sam 17:47 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Samuel+17%3A4%3B1+Samuel+17%3A40%3B1+Samuel+17%3A47&version=WEB) | Boundary **confirmed**; trim is a true verbatim substring ending at the verse's own end — the brief's best-executed trim |

### Finding A — item 4 (1 Sam 16:1): unlabelled truncation presented as a whole verse. **Blocking.**

The brief renders item 4 as, in full and with no "trimmed" tag:

> **1 Sam 16:1** (WEB, new): "Yahweh said to Samuel, 'How long will you mourn for Saul, since I
> have rejected him from being king over Israel?'"

Two independent live sources agree the verse does not end there. The complete WEB verse is:

> "Yahweh said to Samuel, 'How long will you mourn for Saul, since I have rejected him from being
> king over Israel? **Fill your horn with oil, and go. I will send you to Jesse the Bethlehemite,
> for I have provided a king for myself among his sons.**'"

Two things are wrong, and the second is worse than the first. (i) Roughly half the verse is missing
with no `(WEB, trimmed)` label, while items 6 and 7 in the same brief *do* carry that label — so the
brief's own convention is applied inconsistently, and a reader has no way to tell item 4 is partial.
(ii) The brief closes Yahweh's speech with `?'` — inserting a closing single quotation mark at a
point where WEB has none, because the divine speech continues for two more sentences. That closing
mark is not in the source text. Presenting a partial divine utterance as a closed, complete
quotation is precisely what `CONTENT_STYLE_GUIDE.md` §3 (final bullet) and §5 exist to prevent; it
is the same defect class as Gen 8:11 in `docs/reviews/genesis-easy-review.md` §6.2, aggravated by
the invented punctuation.

**On the drafter's acceptance-criterion claim, which I was asked to verify independently:** the
claim is *true but scoped too narrowly*. I re-checked all three named verses (17:4, 17:40, 17:47)
against a live source myself and **all three boundaries are exactly as the brief states them** —
17:4 ends at "went out."; 17:40 continues "His sling was in his hand; and he came near to the
Philistine."; 17:47 ends at "into our hand." That work was done and done correctly. But the
criterion swept only the three verses the drafter had already classified as "multi-clause," and
16:1 — the one verse in the brief that actually had a boundary defect — was never on the list,
because it had been mis-seen as a short complete verse. The lesson from
`docs/reviews/genesis-hard-review.md` Finding A therefore *recurred in this brief despite the
brief's explicit attempt to apply it*: the failure mode is not "we forgot to re-check," it is "the
re-check list was built from the same mistaken reading that caused the error."

**Concrete fix — pick one:**

1. **Preferred: keep the trim, label and mark it.** Re-tag `(WEB, trimmed)` and render as
   "Yahweh said to Samuel, 'How long will you mourn for Saul, since I have rejected him from being
   king over Israel? …'" with the full verse stated alongside, matching the convention items 6 and
   7 already use. Graded token stays **Israel**. This also keeps the "I have provided a king for
   myself among his sons" clause off the player-facing display, which is tidy given §3.2 below.
2. **Acceptable: restore the full verse text** and keep the blank on "Israel." In-bounds — the
   restored clause is display-only and never graded — but it puts divine-choice language on screen
   inside the scene flagged for election, so if this option is taken, add a display-only note in
   Contested Territory saying so.

Either way item 4 must be re-run through verbatim QA before ingestion. **This is a text-integrity
fix, not a doctrinal one** — the item's doctrinal bounding is fine (§3.2).

### Finding B — item 6 (1 Sam 17:4): trim repunctuated into a sentence WEB does not contain. **Required.**

The boundary is right and the trim is labelled — credit where due. But the brief drops the verb
"went out" and closes with a period: "…whose height was six cubits and a span." WEB reads "…whose
height was six cubits and a span went out." The trimmed string reads as a grammatically complete
sentence that appears nowhere in the source. The recall stem repeats it ("…whose height was ___
cubits and a span."). Item 11 (17:47) handles the identical situation correctly, with a leading
ellipsis and a cut that lands on the verse's real end. **Fix:** use the ellipsis convention —
"A champion out of the camp of the Philistines named Goliath of Gath, whose height was six cubits
and a span…" and stem "…whose height was ___ cubits and a span…" — per
`docs/reviews/genesis-hard-review.md` Finding D.

### Finding C — garbled internal cross-references in the brief's header. **Required.**

Two statements in the brief's own front matter refer to material that does not exist in it and
appear to be copy-paste residue from the companion 2 Samuel brief:

- Line 6: "two verses (17:4 and **2 Sam 5:20-equivalent** boundary checks…)". There is no 2 Samuel
  content in this brief and no such boundary check. The second and third re-checked verses are
  17:40 and 17:47.
- Lines 18–21: "Two items (**2 Sam-style flags below: 1 Sam 16:1/16:12 and 1 Sam 7:14-equivalent** —
  see the Davidic-covenant note in the companion 2 Samuel brief)". 1 Sam 7:14 is not used anywhere
  in this brief, and the second genuinely-flagged item is 17:4 (a manuscript-variant flag), which
  has nothing to do with the Davidic covenant.

These are load-bearing: they are the brief's own statement of *what was verified and what is
flagged*, and an auditor reading only the header would be misdirected on both counts. They also
independently corroborate why the header's self-reported verification needed the outside check the
review request asked for. **Fix:** correct both to name 17:4/17:40/17:47 and 16:1/16:12/17:4
respectively.

### Finding D — which WEB edition? **Required (a one-line disclosure, plus a QA flag).**

The brief says text was "fetched fresh from ebible.org." eBible publishes more than one WEB edition
and they differ on **every occurrence of the divine name**. My fetch of
[ebible.org/engwebp/1SA03.htm](https://ebible.org/engwebp/1SA03.htm) returned "The child Samuel
ministered to **the LORD** before Eli. **The LORD's** word was rare in those days," whereas
[ebible.org/web/1SA03.htm](https://ebible.org/web/1SA03.htm) and BibleGateway `version=WEB` both
return "**Yahweh**," which is what the brief quotes.

**The brief's text is correct** for the edition this project has used throughout (the approved
`medium` brief and `docs/reviews/1-samuel-review.md` both cite `ebible.org/web/`). No text change
needed. But "ebible.org" alone is not a sufficient citation when two editions under that domain
disagree on a word this brief prints eight times and, in item 11, makes the graded answer. **Fix:**
name the exact edition/URL in the verbatim-text caveat, and flag the edition question for
`QA_REQUIREMENTS.md` §3 so the QA pass checks against the same edition rather than picking one.

## 2. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

Each item tested against: *does this require the player to affirm anything beyond narrative fact or
direct verse text?*

| Item | Format | Graded token/task | In-bounds basis | Result |
|---|---|---|---|---|
| 1 — 3:1 | recall | "visions" | §2 direct verse recall | Pass |
| 2 — 3:19 | recall | "ground" | §2 direct verse recall | Pass |
| 3 — 10:24 | recall | "king" | §2 direct verse recall / narrative fact | Pass — see §3.1 |
| 4 — 16:1 | recall | "Israel" | §2 character/setting identification | Doctrinally **pass** (§3.2); **fails on text integrity**, Finding A |
| 5 — 16:12 | recall | "ruddy" | §2 direct verse recall | Pass — see §3.2 |
| 6 — 17:4 | recall | "six" | §2 direct verse recall | Pass — see §3.3; trim fix, Finding B |
| 7 — 17:40 | recall | "stones" | §2 narrative fact | Pass |
| 8 — 24:11 | recall | "hand" | §2 direct quotation attributed in-text | Pass — see §3.4 |
| 9 — boss sequence | sequencing | ordering four beats | §2 sequencing | Pass — verbatim reuse of approved `medium` |
| 10 — boss MC 24:17 | MC | what Saul said | §2 direct quotation attributed in-text | Pass — verbatim reuse of approved `medium`, stem correctly anchored to the reference |
| 11 — 17:47 | recall | "Yahweh" | §2 direct verse recall | Pass on §2/§3; **see §6.2**, a separate sensitivity concern |

**No item asks for a moral judgment, a historicity/scientific claim, a doctrinal interpretation, or
a denominational position.** All five §3 prohibitions are clear on content. The tier's stated shift
to typed recall genuinely reduces exposure: ten of eleven items are fill-in-blank, and a typed blank
on a verbatim word cannot smuggle in an interpretive distractor set the way a multiple-choice
option list can. The single MC item is a verbatim reuse already approved at `medium`, with a stem
anchored to its reference ("According to 1 Samuel 24:17…") — which correctly pre-empts the
unanchored-stem answer-key ambiguity found at Gen 8:11 in
`docs/reviews/genesis-easy-review.md` §6.1. **I checked every item for that specific defect and
found no unanchored stem anywhere in this brief.**

## 3. Contested-Territory Cross-Check

### 3.1 Item 3 (1 Sam 10:24, "Long live the king!") — kingship as institution. **Bounding holds.**

The disagreement is real, live, and genuinely cross-tradition — sharper than the brief states, in
fact:

- **Jewish (Sefaria / Maimonides).** *Mishneh Torah, Kings and Wars* 1:1 lists appointing a king as
  the **first of three commandments** binding on Israel on entering the land, citing Deuteronomy
  17:15 — i.e. monarchy as a *mitzvah*, an obligation, not a concession.
  [Sefaria, Mishneh Torah, Kings and Wars 1:1](https://www.sefaria.org/api/texts/Mishneh_Torah,_Kings_and_Wars.1.1?context=0)
- **Classic Protestant (Bible Hub aggregation, 1 Sam 10:24).** Matthew Henry is openly critical,
  framing the episode against Israel having "rejected your God" in demanding a king, and noting some
  "despised" the choice; Keil-Delitzsch and Gill instead emphasise Samuel establishing a
  *constitutional* monarchy with divinely-ordained limits; the Cambridge Bible reads the acclamation
  as resting on Saul's stature as a "natural qualification." The aggregation does not show them
  directly debating whether monarchy per se was sinful, but their framings diverge.
  [biblehub.com/commentaries/1_samuel/10-24.htm](https://biblehub.com/commentaries/1_samuel/10-24.htm)
- **Catholic (USCCB / NABRE, 1 Sam 10).** Treats the shout as a **standard royal-acclamation
  formula**, footnoting the parallels at 2 Sam 16:16, 1 Kgs 1:25 and 2 Kgs 11:12 — a
  form-critical/liturgical note, with no verdict on the institution's legitimacy attached to v.24.
  [bible.usccb.org/bible/1samuel/10](https://bible.usccb.org/bible/1samuel/10)

So a Maimonidean reading (commanded) and a Matthew Henry reading (a symptom of rejecting God)
really do sit on opposite sides, and a challenge item shaped "was the people's demand right?" would
be flatly out-of-bounds under §3.

**Why the bounding actually holds rather than merely sounds plausible:** the graded token is
"king," inside a narrated crowd shout. All three traditions print that clause essentially
identically — Revised JPS (2023): "And all the people acclaimed him, shouting, **'Long live the
king!'**"
([Sefaria, I Samuel 10:24](https://www.sefaria.org/api/texts/I_Samuel.10.24?context=0)); NABRE:
"Then all the people shouted out, **'Long live the king!'**" (USCCB, above); WEB: "All the people
shouted and said, **'Long live the king!'**" A player typing "king" affirms nothing a Jewish,
Catholic or Protestant reader would dispute. **The brief's proposed recall-only structural rule for
this item is the right instrument and should be adopted as written.**

### 3.2 Items 4–5 (1 Sam 16:1, 16:12) — divine election. **Bounding holds. The deferred check is now done.**

`docs/reviews/1-samuel-review.md` §3 left this one open ("recommend a dedicated source check only if
a future challenge-authoring pass tries to build an item that tests *why* God chose David"). The
brief is right that this tier is that pass, and right to force the check now. Result:

**The election framing is genuinely present in the commentary tradition at 16:1** — this is not a
phantom concern. Bible Hub's aggregation has Benson contrasting Saul as "a king of the people's
providing… the product of their sinful desires" against David as "a king of my own providing";
Jamieson-Fausset-Brown drawing the same people's-choice/God's-choice contrast; Gill saying the
choice was made "of his own good will and pleasure"; MacLaren stressing "the sovereign freedom of
His choice."
[biblehub.com/commentaries/1_samuel/16-1.htm](https://biblehub.com/commentaries/1_samuel/16-1.htm)

**Stated plainly, per this reviewer's no-synthesis rule:** I searched specifically for sources
joining a live Reformed-vs-Arminian dispute *on this text* and **did not find one**. The
sovereign-choice language above is a shared emphasis among those commentators rather than a
documented argument between traditions at 1 Sam 16:1. So the doctrinal risk here is latent — a trap
for a future item that asks *why* — rather than an active disagreement bearing on anything currently
graded. I am not asserting more than I could source.

**The graded tokens neutralise it comprehensively.** Item 4 grades **"Israel"** — a nation name,
the lowest-risk category in §2. Item 5 grades **"ruddy"** — physical description, and Revised JPS
renders the same clause "He was **ruddy-cheeked**, bright-eyed, and handsome"
([Sefaria, I Samuel 16:12](https://www.sefaria.org/api/texts/I_Samuel.16.12?context=0)), agreeing
on the graded word. Neither item asks why David was chosen over his brothers, nor characterises the
choice as predestined or contingent. **The brief's proposed structural rule for 16:1–13 is exactly
right and should be adopted as written.**

**Recommendation 1 (forward-looking guard).** The Revised JPS and WEB renderings *diverge* on the
clause immediately after the graded word — WEB "with a handsome face and good appearance" vs. JPS
"bright-eyed, and handsome." Add to Contested Territory: **no item in any tier may grade the
"handsome face"/"good appearance" wording**, since translations differ there. "Ruddy" is safe;
what follows it is not uniformly rendered.

**Could not complete:** Sefaria's API returned an empty commentary body for Rashi on I Samuel 16:12
(`/api/texts/Rashi_on_I_Samuel.16.12`), and the v3 endpoints returned version metadata without
text. A Rashi-level Jewish commentary check on "ruddy" specifically was therefore **not** performed.
Recording this rather than implying a check I did not complete. It does not change the verdict — the
JPS translation check above is sufficient for a graded token that is a physical adjective — but a
human reviewer may wish to close it.

### 3.3 Item 6 (1 Sam 17:4, "six cubits and a span") — manuscript variant. **Brief's claim verified; rule needs one extension.**

The brief's textual-criticism claim checks out against live sources and is **not** overstated:

- **Gill's Exposition**, on the Bible Hub aggregation for this verse, explicitly notes "the
  Septuagint version makes Goliath to be only four cubits and a span high, and so Josephus… that is,
  about eight feet."
  [biblehub.com/commentaries/1_samuel/17-4.htm](https://biblehub.com/commentaries/1_samuel/17-4.htm)
- Search-surfaced textual-criticism material corroborates the fuller witness list the brief gives —
  4QSamuel<sup>a</sup> (the oldest extant Hebrew manuscript of this text), Codex Vaticanus,
  Josephus, the Lucianic recension and Alexandrinus reading "four cubits and a span," against the
  MT's "six." Representative:
  [biblestudytools.com — How Tall Was Goliath?](https://www.biblestudytools.com/bible-study/topical-studies/how-tall-was-goliath.html)
  and [intertextual.bible, 1 Samuel 17:4 / LXX](https://intertextual.bible/index.php/text/1-samuel-17.4-lxx-1-samuel-17.4).
  *Disclosure: these two were surfaced via web search and read through search results rather than
  fetched individually; the Gill citation above was fetched directly and independently establishes
  the LXX/Josephus variant.*

So this is mainstream textual criticism, as the brief says, not a fringe reading — and it is the
same category as the אַחַר/אֶחָד variant flagged at Gen 22:13 in
`docs/reviews/genesis-easy-review.md` §4.1. **The item is nonetheless in-bounds**: it grades what
WEB's own text states, which §2 permits explicitly, and the brief's proposed rule (never framed as
Goliath's historically certain height; never a "four vs six cubits" choice item) is correct.

**Recommendation 2 (extend the brief's own rule — a second divergence it did not notice).** Even
*within* the MT's "six cubits and a span," the commentators do not agree what that is in modern
units: the Pulpit Commentary gives 8'5⅓", Barnes and Benson about 9'9", Gill "eleven feet four
inches, and somewhat more," and the Cambridge Bible simply brackets the range (same Bible Hub page).
So a conversion is disputed even before the variant is considered. Add to the structural rule:
**no item may grade Goliath's height in feet, metres, or any converted unit — only the text's own
"six cubits and a span."** Without this, a future authoring pass could write a perfectly
well-intentioned "how tall was Goliath?" item with an answer key that four mainstream commentators
would mark wrong.

### 3.4 Item 8 (1 Sam 24:11) — checked independently. **In-bounds; no disagreement found.**

24:11 has David asserting "there is neither evil nor disobedience in my hand… I have not sinned
against you" — a self-exculpatory moral claim, which is close enough to the §3 moral-judgment line
to warrant its own check rather than resting on the inherited 24:6/24:17 bounding. Bible Hub's
aggregation shows the commentators **unanimous**, with no substantive disagreement: Matthew Henry
on David's "good principle," Keil-Delitzsch on the "childlike reverence and affection" of the
speech, Gill and Jamieson-Fausset-Brown both reading the cut robe as a deliberate visible token that
David held Saul in his power and declined to use it.
[biblehub.com/commentaries/1_samuel/24-11.htm](https://biblehub.com/commentaries/1_samuel/24-11.htm)

The graded token is **"hand"** — the physical noun, inside David's own in-text quoted words. The
item does not ask whether David's claim was justified or whether sparing Saul was right. **The
brief's stated bounding holds; no change.**

### 3.5 Items 1, 2, 7, 11 — no contested ground found

3:1, 3:19, 17:40 and 17:47 are plain narrative description or in-text direct quotation. I found no
live cross-tradition disagreement bearing on "visions," "ground," or "stones." 17:47's *content* is
theological ("Yahweh doesn't save with sword and spear"), but the item grades a name the text
itself supplies, which §2 permits — subject to §6.2 below, which is a different kind of concern.

## 4. Constraint Compliance (the two things this review was asked to confirm)

**4.1 — Zero verses from 1 Samuel 15. CONFIRMED.** I checked every citation in the brief. No item
selects, quotes, or grades any verse from chapter 15, including 15:22 (which the approved `medium`
brief does use). Chapter 15 appears in exactly two places: the inherited scene *title* "Saul's
Disobedience and Rejection; David Anointed (1 Sam 15, 16)," carried over verbatim from the approved
`medium` brief's scene naming, and the brief's own explicit exclusion statement. Neither is a
challenge item, a verse selection, or displayed text. The hard tier therefore matches the `easy`
tier's zero-footprint standard and goes further than `medium`. **Not a violation; the exclusion
holds.**

*Incidental note, no action:* the Maimonides source consulted for §3.1 lists blotting out Amalek's
descendants as the second of the three commandments — independent confirmation that the ḥerem
material excluded from this book sits on live ground across traditions, and that the exclusion
remains well-founded rather than over-cautious.

**4.2 — The 18:1/18:3 recall-only structural rule. CONFIRMED intact, and not engaged.** Neither
verse is used as a challenge item in this tier. They appear only inside boss item 9's sequencing
task, as the beat "Jonathan makes a covenant with David (18:1,3)" — a verbatim reuse of the
already-approved `medium` boss sequence. Sequencing is in-bounds per §2, the beat describes the
relationship only in the text's own term ("makes a covenant"), and no item asks a player to
characterise what kind of relationship or love it was. **The rule is not violated.** The brief's own
statement that the rule is "not engaged — this tier doesn't use 18:1 or 18:3" is accurate as to
challenge items; strictly, 18:1/18:3 *are* referenced in the boss sequence beat, so I'd suggest
rewording that line to "not engaged as a standalone item; referenced only in the approved boss
sequence beat" for precision. Non-blocking.

## 5. Additional Observations (non-blocking)

**5.1 Quote nesting, for the verbatim-QA pass.** WEB prints the inner speech in 3:1, 10:24, 16:1,
16:12 and 24:17 with double quotes; the brief nests them as single quotes because each verse sits
inside a quoted block. Correct brief formatting, not a text error — but the ingestion pipeline must
store WEB's inner double quotes. Same note as `docs/reviews/genesis-easy-review.md` §5.1; flagging
for `docs/qa/1-samuel-hard-verbatim-qa.md`, not as a review defect.

**5.2 Acceptance-criterion wording.** The criterion "verse boundaries for items cut from
multi-clause verses (17:4, 17:40, 17:47) independently re-checked" is, as shown in Finding A, the
mechanism by which 16:1 escaped. Recommend rewording it to cover **every item whose quoted text is
shorter than the full verse, determined by comparing against the source rather than by the
drafter's impression of which verses are "multi-clause."**

**5.3 Item-count and scene traceability.** Verified: 11 items (8 regular + 3 boss), all traceable to
the 5 approved pivotal scenes — Samuel's Call (1, 2), kingship/Saul anointed (3), David anointed
(4, 5, and boss 9), Goliath (6, 7, 11, and boss 9), Jonathan/pursuit (8, boss 9, boss 10). No new
scene is introduced, consistent with `docs/CANON_STRUCTURE.md` §4's assigned emphasis for 1 Samuel
("Saul's rise and fall, David's rise") and with the World-9/World-10 split the `medium` brief set.

**5.4 Source that could not be reached.** `enduringword.com/bible-commentary/1-samuel-10/` returned
HTTP 403 on fetch, so the evangelical voice cited in `docs/reviews/1-samuel-review.md` §3 could not
be re-consulted this pass. The Bible Hub aggregation and USCCB stand in for the Protestant and
Catholic readings in §3.1; noting the gap rather than papering over it.

## 6. Verdict

**`approved-with-changes`.**

**Blocking (must be applied before ingestion):**

1. **Item 4 (1 Sam 16:1)** — fix the unlabelled truncation and the fabricated closing quotation
   mark, per Finding A (option 1 preferred). Re-run verbatim QA on the corrected item.

**Required (apply alongside the above):**

2. **Item 6 (1 Sam 17:4)** — replace the substituted period with the ellipsis convention so the
   quoted string is not a sentence WEB doesn't contain (Finding B).
3. **Header cross-references** — correct the "2 Sam 5:20-equivalent" and "1 Sam 7:14-equivalent"
   artifacts to name the verses this brief actually uses (Finding C).
4. **Verbatim-text caveat** — name the exact WEB edition/URL (`ebible.org/web/`, the "Yahweh"
   edition), since `ebible.org/engwebp/` reads "the LORD" and the brief prints the divine name eight
   times (Finding D).

**Recommended:**

5. **Contested Territory, 16:12** — add the guard that "handsome face"/"good appearance" is not a
   challenge subject (translations diverge; "ruddy" does not) — §3.2, Recommendation 1.
6. **Contested Territory, 17:4** — extend the brief's own rule: no item may grade Goliath's height
   in converted units, only "six cubits and a span" — §3.3, Recommendation 2.
7. **Acceptance criteria** — reword the boundary-check criterion per §5.2, and the 18:1/18:3 line
   per §4.2.

All three of the brief's proposed structural rules (10:24 recall-only; 16:1–13 no-why/no-criteria;
17:4 no-certain-height) are **sound as drafted and should be adopted**, with the two extensions
above.

### 6.1 Not escalated — and why

All three flagged contested items were checked against live sources representing genuinely
different traditions (Jewish: Sefaria/Revised JPS and Maimonides; Catholic: USCCB/NABRE; classic
Protestant: Bible Hub's multi-commentator aggregation; plus textual-criticism sources for the
Goliath variant). In each case the graded token turned out to be a word the disagreeing traditions
render identically — "king," "Israel," "ruddy," "hand," a number the text states outright — which is
what makes the narrative-only bounding hold rather than merely sound plausible. The blocking finding
is a text-integrity defect with a one-line fix, not a doctrinal problem.

### 6.2 One narrow item I am deliberately handing up (item 11, 17:47)

Item 11 makes **"Yahweh" the typed graded answer**. Every prior approved item in this project
*displays* the divine name as WEB renders it; none has required a player to type it as the correct
answer. That is new in this brief, and the drafter did not flag it.

Live evidence that this is a real cross-tradition sensitivity, gathered this pass rather than
recalled: Sefaria's Jewish translation of 1 Sam 10:24 returned the divine name as **"G-d"**, the
standard avoidance convention
([Sefaria, I Samuel 10:24](https://www.sefaria.org/api/texts/I_Samuel.10.24?context=0)); the
official Catholic English edition renders it **"the LORD"**, not "Yahweh"
([USCCB, 1 Samuel 10](https://bible.usccb.org/bible/1samuel/10)); and eBible's own `engwebp` WEB
edition likewise prints **"the LORD"** ([ebible.org/engwebp/1SA03.htm](https://ebible.org/engwebp/1SA03.htm)).

This is **not** a `CONTENT_STYLE_GUIDE.md` §3 violation — it is direct verse recall of WEB's own
text, squarely in-bounds under §2, and WEB is fixed by Open Decision #1. It asks no player to affirm
a doctrinal position. But asking an observant Jewish player, or a Catholic player following their
own tradition's usage, to *type* the Tetragrammaton to progress is a different act from reading it
on screen, and I do not think an AI reviewer should quietly settle that on the product's behalf.

**Clean fix available, which is why the overall verdict is not `escalate-to-human`:** move the blank
within the same verse — "…for the battle is Yahweh's, and he will give you into our ___." →
**hand**, or blank "battle." The item keeps its difficulty and its verse; the concern dissolves
entirely. **If the product owner prefers to keep "Yahweh" as the graded answer, that specific
decision should go to a human reviewer rather than being taken on this review's authority.**
Treat this as a scoped, conditional escalation on one token, not a hold on the brief.

### 6.3 Residual risk, stated plainly

This review was performed by an AI agent standing in for the named human theological reviewer
scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in `MEMORY.md`, 2026-08-08). **Open
Decision #7 still has no named human theological reviewer**, so the conditional item in §6.2 and the
uncompleted Rashi check in §3.2 currently have nowhere to land. They are recorded here so they sit
visible and unresolved rather than being silently dropped.

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/1-samuel-hard-verbatim-qa.md`), which must specifically re-check corrected item 4, the
17:4 trim, the WEB-edition question in Finding D, and the quote-nesting issue in §5.1. Logging this
review in `docs/CONTENT_REVIEW_LOG.md` is the calling session's task, not this reviewer's.

---

### Sources cited in this review

Fetched directly:

- https://ebible.org/web/1SA03.htm
- https://ebible.org/web/1SA16.htm
- https://ebible.org/web/1SA17.htm
- https://ebible.org/engwebp/1SA03.htm
- https://www.biblegateway.com/passage/?search=1+Samuel+3%3A1%3B1+Samuel+3%3A19%3B1+Samuel+10%3A24%3B1+Samuel+16%3A1%3B1+Samuel+16%3A12%3B1+Samuel+24%3A11&version=WEB
- https://www.biblegateway.com/passage/?search=1+Samuel+17%3A4%3B1+Samuel+17%3A40%3B1+Samuel+17%3A47&version=WEB
- https://www.biblegateway.com/passage/?search=1+Samuel+24%3A17%3B1+Samuel+16%3A13%3B1+Samuel+18%3A1%3B1+Samuel+18%3A3&version=WEB
- https://biblehub.com/commentaries/1_samuel/10-24.htm
- https://biblehub.com/commentaries/1_samuel/16-1.htm
- https://biblehub.com/commentaries/1_samuel/17-4.htm
- https://biblehub.com/commentaries/1_samuel/24-11.htm
- https://www.sefaria.org/api/texts/I_Samuel.10.24?context=0
- https://www.sefaria.org/api/texts/I_Samuel.16.12?context=0
- https://www.sefaria.org/api/texts/Mishneh_Torah,_Kings_and_Wars.1.1?context=0
- https://bible.usccb.org/bible/1samuel/10

Surfaced via web search, read through search results rather than fetched individually (disclosed as
such in §3.3):

- https://www.biblestudytools.com/bible-study/topical-studies/how-tall-was-goliath.html
- https://intertextual.bible/index.php/text/1-samuel-17.4-lxx-1-samuel-17.4

Attempted and unavailable (recorded for the audit trail):

- https://enduringword.com/bible-commentary/1-samuel-10/ — HTTP 403
- https://www.sefaria.org/api/texts/Rashi_on_I_Samuel.16.12?context=0 — empty commentary body
