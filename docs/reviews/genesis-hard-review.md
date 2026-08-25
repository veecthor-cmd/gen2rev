# Theological Review — Genesis, Hard Tier (World 1)

Reviewer: `theological-reviewer` agent, run 2026-08-18.
Brief reviewed: `docs/content/genesis-hard.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` (§2, Law group),
`docs/content/genesis.md` (approved medium tier — its verse text and existing Contested Territory
bounding treated as settled ground per the review request), `docs/reviews/genesis-review.md`
(precedent for the recall-only structural rule).

**Verdict: `approved-with-changes`.** One item (item 8, Gen 9:13) must be fixed before ingestion —
it presents a re-ordered composite of two verses as a single quotation and cites the wrong verse.
Three smaller strengthenings are recommended. Both flagged contested items (Gen 1:26, Gen 17:5)
were checked against live cross-tradition sources and their bounding **holds**. Not escalated.

---

## 1. Verse-Text Verification

Every challenge-ready verse in the brief was checked character-for-character against **two
independent live WEB sources**: ebible.org (`engwebp`) and BibleGateway (`version=WEB`).

| Item | Verse | Sources checked | Result |
|---|---|---|---|
| 1 | Gen 1:26 | [ebible.org GEN01](https://ebible.org/engwebp/GEN01.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+1%3A2%3B+Genesis+1%3A26&version=WEB) | **Match** — verbatim, incl. "Let's make man in our image, after our likeness." |
| 2 | Gen 1:2 | [ebible.org GEN01](https://ebible.org/engwebp/GEN01.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+1%3A2%3B+Genesis+1%3A26&version=WEB) | **Match** |
| 3 | Gen 3:19 (trimmed clause) | [ebible.org GEN03](https://ebible.org/engwebp/GEN03.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+3%3A19%3B+Genesis+9%3A12-13%3B+Genesis+7%3A17%3B+Genesis+17%3A5%3B+Genesis+22%3A2%3B+Genesis+45%3A5&version=WEB) | **Match.** Full verse: "You will eat bread by the sweat of your face until you return to the ground, for you were taken out of it. For you are dust, and you shall return to dust." The brief's clause is the verbatim second sentence. (Note: this WEB reading differs from the more familiar "and to dust you shall return" of other translations — the brief is correct for WEB.) |
| 4 | Gen 7:17 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+3%3A19%3B+Genesis+9%3A12-13%3B+Genesis+7%3A17%3B+Genesis+17%3A5%3B+Genesis+22%3A2%3B+Genesis+45%3A5&version=WEB); previously verified for `medium` | **Match** — "The flood was forty days on the earth." |
| 5 | Gen 17:5 | [ebible.org GEN17](https://ebible.org/engwebp/GEN17.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+3%3A19%3B+Genesis+9%3A12-13%3B+Genesis+7%3A17%3B+Genesis+17%3A5%3B+Genesis+22%3A2%3B+Genesis+45%3A5&version=WEB) | **Match** |
| 6 | Gen 22:2 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+3%3A19%3B+Genesis+9%3A12-13%3B+Genesis+7%3A17%3B+Genesis+17%3A5%3B+Genesis+22%3A2%3B+Genesis+45%3A5&version=WEB) | **Match** — "your son, your only son, Isaac, whom you love" is a verbatim substring. |
| 7 | Gen 45:5 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+3%3A19%3B+Genesis+9%3A12-13%3B+Genesis+7%3A17%3B+Genesis+17%3A5%3B+Genesis+22%3A2%3B+Genesis+45%3A5&version=WEB) | **Match** — "for God sent me before you to preserve life." |
| 8 | Gen 9:13 | [ebible.org GEN09](https://ebible.org/engwebp/GEN09.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Genesis+3%3A19%3B+Genesis+9%3A12-13%3B+Genesis+7%3A17%3B+Genesis+17%3A5%3B+Genesis+22%3A2%3B+Genesis+45%3A5&version=WEB) | **MISMATCH — see Finding A** |
| 9–10 | Gen 37:3-4; 45:4-5; 50:20; 12:2-3; 15:6; 22:14 | Reused verbatim from `docs/content/genesis.md`, already verbatim-QA `pass` (`docs/qa/genesis-verbatim-qa.md`) | Not re-litigated per review scope; no text changed |

### Finding A — item 8 (Gen 9:13): composite quotation + wrong citation. **Must fix.**

The brief renders item 8 as:

> "I set my rainbow in the cloud, and it will be a sign of a covenant between me and the earth, for
> perpetual ___." → **generations**

Both live sources agree the WEB verse division is:

- **Gen 9:12** — "God said, 'This is the token of the covenant which I make between me and you and
  every living creature that is with you, **for perpetual generations**:"
- **Gen 9:13** — "I set my rainbow in the cloud, and it will be a sign of a covenant between me and
  the earth."

So "for perpetual generations" belongs to **verse 12**, not verse 13, and it occurs *before* the
verse-13 clause, not after it. The brief's string is a re-ordered splice of two verses presented as
one quotation — text that appears nowhere in the WEB. This violates `CONTENT_STYLE_GUIDE.md` §3
(final bullet, "paraphrase presented as quotation") and §5 (citation must carry the correct
reference and verbatim text). The brief's own justification — "the full verse was already
verbatim-QA'd for `medium`" — is precisely how this slipped through: the *medium* brief quotes
9:12-13 together and correctly, and the hard brief re-cut a blank out of that combined block
without re-checking the verse boundary.

**Concrete fix — pick one:**

1. **Re-cite to 9:12** and use its verbatim text: "This is the token of the covenant which I make
   between me and you and every living creature that is with you, for perpetual ___." →
   **generations**. (Preferred — preserves the intended answer token.)
2. **Keep 9:13** and move the blank inside it: "I set my rainbow in the cloud, and it will be a sign
   of a ___ between me and the earth." → **covenant**. (Avoid blanking "rainbow" — `medium`'s
   difficulty-ladder level-2 item already answers "rainbow" for this scene.)

Either way the item stays in-bounds doctrinally; this is a text-integrity fix, not a content one.
Item 8 is **not eligible for ingestion until fixed and re-run through verbatim QA.**

## 2. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

Checked every item against the question "does this require the player to affirm anything beyond
narrative fact or direct verse text?"

| Item | Graded token / task | In-bounds basis | Result |
|---|---|---|---|
| 1 Gen 1:26 | "image" | §2 direct verse recall | Pass (see §3.1) |
| 2 Gen 1:2 | "empty" | §2 direct verse recall | Pass, with recommendation (§3.3) |
| 3 Gen 3:19 | "dust" | §2 direct verse recall | Pass, minor note (Finding D) |
| 4 Gen 7:17 | "forty" | §2 narrative fact | Pass — tests the number the text states, not flood scope/historicity (§3 bullet 3 respected) |
| 5 Gen 17:5 | "Abraham" | §2 character identification / direct recall | Pass (see §3.2) |
| 6 Gen 22:2 | "Isaac" | §2 direct quotation attributed in-text | Pass — asks *what God said*, never *why*; matches the existing Gen 22 bounding |
| 7 Gen 45:5 | "life" | §2 direct quotation attributed in-text | Pass, minor note (Finding E) |
| 8 Gen 9:13 | "generations" | §2 direct verse recall | **Fail on text integrity** (Finding A); doctrinally in-bounds |
| 9 Boss: Joseph sequence | ordering | §2 sequencing | Pass — unchanged from approved `medium` |
| 10 Boss: Abraham quotations | ordering + attribution | §2 sequencing + attribution | Pass — unchanged from approved `medium` |

No item asks for moral judgment, historicity/scientific framing, doctrinal interpretation, or a
denominational position. The tier's shift toward typed recall actually *reduces* exposure relative
to multiple choice, since a typed blank on a verbatim word cannot smuggle in an interpretive
distractor set.

## 3. Contested-Territory Cross-Check

### 3.1 Genesis 1:26 — the plural "us/our". **Bounding confirmed sufficient.**

The disagreement the brief describes is real, live, and cross-tradition — confirmed against four
sources spanning three traditions:

- **Jewish (Sefaria / Rashi on Gen 1:26)** — Rashi reads the plural as God consulting the angels
  ("man resembles angels who might envy him, so God consulted them"), and as a lesson that "the
  greater should consult, and take permission from the smaller." No Trinitarian reading.
  [Sefaria API, Rashi on Genesis 1:26](https://www.sefaria.org/api/texts/Rashi_on_Genesis.1.26?commentary=0&context=0)
- **Catholic (USCCB / NABRE footnote, Gen 1:26)** — "in the ancient Near East, and sometimes in the
  Bible, God was imagined as presiding over an assembly of heavenly beings who deliberated and
  decided about matters on earth." i.e. the heavenly-court reading, in an official Catholic
  edition's notes. [bible.usccb.org/bible/genesis/1](https://bible.usccb.org/bible/genesis/1)
- **Classic Protestant commentators (Bible Hub aggregation, Gen 1:26)** — genuinely divided among
  themselves: Matthew Henry, Barnes and Gill read a plurality of divine persons; Poole rejects the
  plural-of-majesty explanation; the Cambridge Bible calls plural-of-majesty "tenable" and treats
  the angelic-council reading sympathetically; Keil & Delitzsch reject the angelic reading outright;
  Ellicott treats it as a developing "germ" rather than proof.
  [biblehub.com/commentaries/genesis/1-26.htm](https://biblehub.com/commentaries/genesis/1-26.htm)
- **Contemporary evangelical (GotQuestions)** — lists heavenly assembly, plural of majesty, and
  plural of deliberation, then clearly favours the Trinitarian reading.
  [gotquestions.org](https://www.gotquestions.org/let-us-make-man-in-our-image.html)

So: a multiple-choice item of the shape "who is 'us'?" would be flatly out-of-bounds under
`CONTENT_STYLE_GUIDE.md` §3 (denominational position) — the brief is right to pre-empt it.

**Why the proposed bounding actually holds, not just plausibly holds:** the graded token is
"image," and the phrase "in our image, after our likeness" is *identical across the traditions that
disagree about the pronoun*. The Revised JPS (2023) renders it "Let us make humankind in our image,
after our likeness"
([Sefaria API, Genesis 1:26](https://www.sefaria.org/api/texts/Genesis.1.26?context=0)); the Hebrew
`tselem` (H6754) is glossed "image, likeness (of resemblance)" with no tradition-specific loading
([Blue Letter Bible H6754](https://www.blueletterbible.org/lexicon/h6754/kjv/wlc/0-1/)). A player
typing "image" affirms nothing that a Jewish, Catholic, Orthodox, or Protestant reader would
dispute. The recall-only rule is the same instrument already approved for Gen 3:15 and Gen 1:27 in
`docs/reviews/genesis-review.md`, and it is at least as adequate here as it was there — arguably
more so, since 3:15's contested content is in the *clause* while 1:26's is in a pronoun the item
never grades.

**Recommendation 1 (strengthening, not a blocker):** tighten the brief's structural rule from "no
challenge may ask what 'us/our' refers to" to also state: **"us"/"our" may never themselves be the
blanked token**, and the verse must be displayed as verbatim WEB text with no gloss, header, or
explanatory note attached. This closes the one remaining opening — a future authoring pass writing
"Let's make man in ___ image" → "our", which is textually valid but needlessly foregrounds the
contested pronoun for no pedagogical gain.

### 3.2 Genesis 17:5 — the Abram→Abraham name change. **Claim confirmed; verse-5 scope does isolate it.**

The brief's claim that using only v5 keeps the item clear of the covenant-of-circumcision material
checks out on the text itself: circumcision is not introduced until **Gen 17:10** ("This is my
covenant, which you shall keep... Every male among you shall be circumcised")
([ebible.org GEN17](https://ebible.org/engwebp/GEN17.htm)). Verse 5 contains only the renaming and
its stated reason ("for I have made you the father of a multitude of nations") — five verses of
separation, no shared clause.

Cross-tradition check on how v5 itself is handled:

- **Jewish (Sefaria / Rashi on Gen 17:5)** — treats it as an onomastic/letter-level matter (the
  retained ר, the parallel with Sarai's י), not a doctrinal one.
  [Sefaria API, Rashi on Genesis 17:5](https://www.sefaria.org/api/texts/Rashi_on_Genesis.17.5?context=0)
- **Classic Christian commentators (Bible Hub, Gen 17:5)** — overwhelmingly etymological/narrative
  ("high father" → "father of a multitude"); the Cambridge Bible raises only a linguistic point
  about the derivation. Only Matthew Henry's Concise extends doctrinally ("The promised Seed was
  Christ, and Christians in him") and Gill adds a mystical gloss; notably, none of the aggregated
  commentaries invoke Romans 4 / justification / circumcision-as-covenant-sign on this verse.
  [biblehub.com/commentaries/genesis/17-5.htm](https://biblehub.com/commentaries/genesis/17-5.htm)

That is unusually convergent for Genesis 17. **The brief's claim stands.** The graded token
("Abraham") is a proper noun the text supplies outright — the lowest-risk category in §2.

**Recommendation 2 (prudential):** add to the brief's Contested Territory note that the clause
**"father of a multitude of nations" must not become a challenge subject** (i.e. no item asking who
the "nations" are or what the fatherhood consists of). That clause is the one Paul quotes in Romans
4:17, and Romans 4's faith-before-circumcision argument is live ground between Catholic and
Protestant readings. The current item doesn't go near it; the note keeps a future authoring pass
from drifting there. Also keep the existing "circumcision is never challenge-ready content"
statement explicitly in force for the easy/medium tiers too, not just this one.

### 3.3 Genesis 1:2 — additional contested item the brief did NOT flag. **Recommendation 3.**

Item 2 displays WEB's "**God's Spirit** was hovering over the surface of the waters." That rendering
of Hebrew *ruach elohim* is itself a translation choice with doctrinal weight, and mainstream
traditions render it differently:

- **Revised JPS (2023), via Sefaria** — "a **wind from God** sweeping over the water."
  [Sefaria API, Genesis 1:2](https://www.sefaria.org/api/texts/Genesis.1.2?context=0)
- **Catholic NABRE (USCCB)** — main text "a **mighty wind**," with the footnote "*A mighty wind*:
  literally, 'spirit or breath [*ruah*] of God'."
  [bible.usccb.org/bible/genesis/1](https://bible.usccb.org/bible/genesis/1)

This is exactly the kind of item `CONTENT_STYLE_GUIDE.md` §4 says must be flagged deliberately
rather than surface after ingestion. **The current item is safe as written** — the blank is on
"empty," in the preceding sentence, and "formless and empty" is uncontested (JPS: "unformed and
void"). But the brief should say so rather than not notice it.

**Fix:** add a Gen 1:2 bullet to Contested Territory recording (a) the *ruach elohim* rendering
divergence with the two sources above, and (b) the structural rule that the blank stays on the
"formless and empty" clause — the "God's Spirit" clause is display-only, never the graded token,
never a multiple-choice subject. Same pattern as 1:26/1:27/3:15.

### 3.4 Items carried over — spot-checked, no change

- **Gen 22:2 (item 6).** The graded answer "Isaac" is what the WEB text itself names; the item asks
  what God said, not why. Existing Gen 22 bounding in `docs/content/genesis.md` covers it. No change.
- **Gen 3:19 (item 3).** Sits inside the Fall's consequence material, which touches
  original-sin/ancestral-sin framings that differ between Western and Eastern traditions. The item
  grades "dust" — a word, in a clause about mortality that all traditions read as the text states.
  In-bounds; no rule needed.
- **Flood scope, creation days.** Items 2, 4 and 8 stay on narrated detail (formless/empty, forty
  days, the covenant sign) and never touch duration or scope. Existing bounding holds.

## 4. Minor Findings

- **Finding D — Gen 3:19 trim convention (item 3).** The brief presents the second sentence of the
  verse as the quoted text, labelled "trimmed to the challenge-ready clause." That is honest and the
  text is verbatim, but `docs/content/genesis.md` marks mid-verse trims with an ellipsis inside the
  quotation. Recommend matching that convention (leading ellipsis, or an explicit "display shows the
  full verse; blank falls in the second sentence") so the ingestion pipeline's citation check in
  `BACKEND_REQUIREMENTS.md` §4 sees a consistent shape.
- **Finding E — Gen 45:5 (item 7).** Grading "life" is safe. Note for future authoring passes: do
  not convert this verse into a "who sent Joseph to Egypt?" item — the answer is what the text has
  Joseph say, but framing it as a question about agency edges toward providence/sovereignty
  territory that §3 keeps out of graded content. No change to the current item.
- **Scene traceability (acceptance criterion 3).** Verified: all 10 items map to the 5 approved
  pivotal scenes — Creation (1, 2), the Fall (3), the Flood (4, 8), Abraham (5, 6, 10), Joseph
  (7, 9). No new scene introduced, consistent with `docs/CANON_STRUCTURE.md` §2 (Genesis as world 1,
  Law group).

## 5. Verdict

**`approved-with-changes`.**

**Blocking (must be applied before ingestion):**

1. **Item 8 (Gen 9:13)** — fix the composite quotation and citation per Finding A (option 1 or 2),
   then re-run verbatim QA on the corrected item.

**Recommended (apply with the fix above; none block on their own):**

2. **Item 1 (Gen 1:26)** — extend the structural rule: "us"/"our" may never be the blanked token;
   verse displayed verbatim with no gloss.
3. **Item 5 (Gen 17:5)** — add to Contested Territory: "father of a multitude of nations" is not a
   challenge subject (Romans 4 territory); circumcision stays non-challenge-ready across all tiers.
4. **Item 2 (Gen 1:2)** — add the previously-unflagged *ruach elohim* rendering divergence to
   Contested Territory with the blank-stays-on-"formless and empty" structural rule.
5. **Item 3 (Gen 3:19)** — match the medium brief's ellipsis convention for mid-verse trims.

**Not escalated.** Both items the brief flagged for explicit attention were checked against real,
live sources representing genuinely different traditions (Jewish/Sefaria-Rashi, Catholic/USCCB,
classic Protestant/Bible Hub, contemporary evangelical/GotQuestions, plus Blue Letter Bible for the
lexical question). In both cases the graded token turned out to be text that the disagreeing
traditions render identically, which is what makes the narrative-only bounding hold rather than
merely sound plausible. No graded item requires a denominational position.

**Residual risk stated plainly:** this review was performed by an AI agent standing in for the
named human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in
`MEMORY.md`, 2026-08-08; Open Decision #7 still has no named human reviewer). Nothing here required
escalation, but a human specialist may still weigh the Gen 1:26 pronoun question differently, and
the residual-risk note in the master prompt remains live.

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/genesis-hard-verbatim-qa.md`), which must specifically re-check the corrected item 8 and
the verse boundaries of any other item cut from a multi-verse block. `docs/CONTENT_REVIEW_LOG.md` is
to be updated by the calling session, not by this reviewer.

---

### Sources cited in this review

- https://ebible.org/engwebp/GEN01.htm
- https://ebible.org/engwebp/GEN03.htm
- https://ebible.org/engwebp/GEN09.htm
- https://ebible.org/engwebp/GEN17.htm
- https://www.biblegateway.com/passage/?search=Genesis+1%3A2%3B+Genesis+1%3A26&version=WEB
- https://www.biblegateway.com/passage/?search=Genesis+3%3A19%3B+Genesis+9%3A12-13%3B+Genesis+7%3A17%3B+Genesis+17%3A5%3B+Genesis+22%3A2%3B+Genesis+45%3A5&version=WEB
- https://www.sefaria.org/api/texts/Genesis.1.2?context=0
- https://www.sefaria.org/api/texts/Genesis.1.26?context=0
- https://www.sefaria.org/api/texts/Rashi_on_Genesis.1.26?commentary=0&context=0
- https://www.sefaria.org/api/texts/Rashi_on_Genesis.17.5?context=0
- https://biblehub.com/commentaries/genesis/1-26.htm
- https://biblehub.com/commentaries/genesis/17-5.htm
- https://bible.usccb.org/bible/genesis/1
- https://www.gotquestions.org/let-us-make-man-in-our-image.html
- https://www.blueletterbible.org/lexicon/h6754/kjv/wlc/0-1/
