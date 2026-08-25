# Theological Review — Deuteronomy, Easy Tier (World 5)

Reviewer: `theological-reviewer` agent, run 2026-08-19.
Brief reviewed: `docs/content/deuteronomy-easy.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` (§2 Law group, §3
Deuteronomy-gap resolution / bridge-to-Joshua rationale).
Prior tiers treated as settled ground where text is reused: `docs/content/deuteronomy.md`
(`approved-with-changes`) and `docs/reviews/deuteronomy-review.md`.
Precedent for the failure modes searched for: `docs/reviews/genesis-easy-review.md` (unanchored MC
stem producing a second defensible answer; unlabelled partial verse presented as the whole verse)
and `docs/reviews/genesis-hard-review.md` (composite quotation spliced across a verse boundary).

**Verdict: `approved-with-changes`.** Two required text fixes (§6.1, §6.2), five recommended
strengthenings. All three inherited structural rules from the `medium` tier hold. Deuteronomy 28 is
confirmed absent from every item. The brief's flagged Deut 31:2-3 item is **safe as graded**, but
the brief's stated *reason* it is safe is factually wrong and must be corrected — see §4.1. Not
escalated.

---

## 1. Verse-Text Verification

Every one of the 12 items' verse text was checked live, including the eight the brief describes as
"already-approved verse, reused" — the `genesis-hard` review's Finding A exists precisely because
re-cutting an approved block without re-checking the verse boundary is how errors enter, so
"already approved at medium" was not accepted as a reason to skip verification here.

| Item | Verse | Live sources checked | Result |
|---|---|---|---|
| 1 | Deut 5:6-7 | [ebible.org DEU05](https://ebible.org/web/DEU05.htm) | **Match.** v6 "I am Yahweh your God, who brought you out of the land of Egypt, out of the house of bondage." + v7 "You shall have no other gods before me." Cited range `5:6-7` is correct for the joined text. |
| 2 | Deut 5:16 | [ebible.org DEU05](https://ebible.org/web/DEU05.htm) | **Match, exact, full verse.** |
| 3 | Deut 6:6-7 | [ebible.org DEU06](https://ebible.org/web/DEU06.htm) | **Match.** v6 ends "…shall be on your heart;" and v7 begins "and you shall teach them diligently…". Joined text and the `6:6-7` citation are both correct. |
| 4 | Deut 11:26-28 | [ebible.org DEU11](https://ebible.org/web/DEU11.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+31%3A2-3%3B+Deuteronomy+11%3A26-28&version=WEB) | **Match, two independent sources.** See note below — this closes an open QA flag. |
| 5 | Deut 31:2-3 | [ebible.org DEU31](https://ebible.org/web/DEU31.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+31%3A2-3%3B+Deuteronomy+11%3A26-28&version=WEB) | **Match on the quoted words**, but the quote starts mid-verse — see §6.3. |
| 6 | Deut 31:7-8 | [ebible.org DEU31](https://ebible.org/web/DEU31.htm) | **Match on words; citation range correct.** Quote-nesting differs from WEB — see §5.1. |
| 7 | Deut 34:4-5 | [ebible.org DEU34](https://ebible.org/web/DEU34.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+34&version=WEB) | **Match on words.** Nested-quotation depth differs between sources — see §5.1. |
| 8 | Deut 34:7 | [ebible.org DEU34](https://ebible.org/web/DEU34.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+34&version=WEB) | **Match, exact, full verse.** Blank answer `gone` correct. |
| 9 | Deut 6:4-5 | [ebible.org DEU06](https://ebible.org/web/DEU06.htm) | **Match, exact.** Blank answer `might` correct (final word of v5). |
| 10 | Deut 34:10 | [ebible.org DEU34](https://ebible.org/web/DEU34.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+34&version=WEB), [Bible Hub WEB](https://biblehub.com/web/deuteronomy/34.htm) | **MISMATCH — terminal punctuation. See §6.2.** Blank answer `prophet` correct. |
| 11 | Deut 30:19-20 | [ebible.org DEU30](https://ebible.org/web/DEU30.htm) | **Match.** Blank answer `descendants` correct — it is the final word of v19; v20 begins "to love Yahweh your God". |
| 12 | Deut 34:1 | [ebible.org DEU34](https://ebible.org/web/DEU34.htm), [BibleGateway WEB (34:1-3, verse-boundary check)](https://www.biblegateway.com/passage/?search=Deuteronomy+34%3A1-3&version=WEB), [Bible Hub WEB](https://biblehub.com/web/deuteronomy/34.htm) | **MISMATCH — verse presented incomplete and unlabelled. See §6.1.** |

**Incidental win — an open QA flag from the `medium` tier is now closed.** `docs/content/
deuteronomy.md` and `docs/reviews/deuteronomy-review.md` both flag Deut 11:26-28 as the one verse
confirmed against a *single* source only, requiring priority attention in verbatim QA. I fetched it
independently from BibleGateway (`version=WEB`) this pass and it matches ebible.org
character-for-character. That row now has two-source confirmation and can be de-prioritised in
`QA_REQUIREMENTS.md` §3 work.

**Methodology note worth recording.** For Deut 34:1 my Bible Hub fetch returned the verse ending at
"…that is opposite Jericho." — which, taken alone, would have confirmed the brief as correct. Two
further independent fetches (ebible.org, and a targeted BibleGateway 34:1-3 verse-boundary query)
both show verse 1 continues "Yahweh showed him all the land of Gilead to Dan,". This is the exact
same single-source truncation trap recorded in `docs/reviews/genesis-easy-review.md` §1 for Gen
8:11. **Any verse a brief introduces as new must be boundary-checked against at least two sources,
not one.**

## 2. Style-Guide Compliance — §2 In-Bounds / §3 Out-of-Bounds

The controlling question for each item: *does this require a player to affirm anything beyond
narrative fact or direct verse text?*

| Item | Format | §2 in-bounds basis | Requires anything beyond narrative fact / verse text? |
|---|---|---|---|
| 1 Deut 5:6-7 | MC | Direct quotation attributed in-text | No. Grades the phrase "other gods," which the verse states. Asks *what the text says*, not which commandment number it is — see §4.2. |
| 2 Deut 5:16 | MC | Direct verse recall | No. Distractor wording needs a fix (§6.5) but the key is unambiguous — the stem names 5:16. |
| 3 Deut 6:6-7 | MC | Direct verse recall | No. Grades "on your heart," verbatim. Stem anchored to 6:6-7, so the binding/doorposts material in 6:8-9 cannot produce a second defensible answer. |
| 4 Deut 11:26-28 | MC | Direct quotation attributed in-text | No. Grades "a blessing and a curse," verbatim. |
| 5 Deut 31:2-3 | MC | Narrative fact / attributed quotation | No. Graded token is the number 120 — see §4.1 for the full cross-tradition check. |
| 6 Deut 31:7-8 | MC | Character identification | No. "Joshua" is named outright in v7. |
| 7 Deut 34:4-5 | MC | Attributed quotation | No. Grades what Yahweh is recorded as saying. Minor stem-precision fix at §6.6. |
| 8 Deut 34:7 | Recall | Direct verse recall | No. |
| 9 Deut 6:4-5 | Recall | Direct verse recall | No — see §4.3. |
| 10 Deut 34:10 | Recall | Direct verse recall | No. |
| 11 Deut 30:19-20 | Recall | Direct verse recall | No — recall-only rule respected, see §3. |
| 12 Deut 34:1 | MC | Setting identification | No. Text fix required (§6.1); doctrinally clear. |

**All five §3 prohibitions are clear.** No item asks for doctrinal interpretation, a denominational
position, a historicity/scientific claim, a moral judgment, or presents paraphrase as quotation
(with the two labelling exceptions handled in §6.1/§6.3).

**§5 citation requirement: pass.** Every item inlines its reference, its translation (WEB) and its
verbatim text. This is a direct improvement on `genesis-easy`, whose §6.6 required exactly this fix;
the drafter carried the lesson forward.

**Answer-key ambiguity sweep (the `genesis-easy` §6.1 failure mode): pass.** Every multiple-choice
stem in this brief is anchored to an explicit chapter:verse ("According to Deuteronomy 31:2-3…",
"According to Deuteronomy 34:1…"). I specifically probed item 12, the item most exposed to this:
Deut 34:1 also names "the top of Pisgah," which would be a second correct answer to an unanchored
"where did Moses go up?" — but Pisgah is not offered as an option and the stem names the verse, so
no ambiguity survives. The "Mount Sinai" and "Mount Horeb" distractors are widely identified with
each other across traditions; since **both** are wrong this creates no key ambiguity, though see
§5.3.

## 3. Inherited Structural Rules — All Verified Held

| Inherited rule (source) | Status |
|---|---|
| **Deuteronomy 28's graphic curse-list content excluded entirely** (`docs/content/deuteronomy.md` Contested Territory; endorsed in `docs/reviews/deuteronomy-review.md` §2) | **HELD.** I checked all 12 items independently rather than relying on the brief's assertion. No item quotes, cites, paraphrases, or draws a distractor from Deuteronomy 28. The nearest approach is item 4 (Deut 11:26-28), which is the *compact framing* verse the medium brief deliberately substituted for chapter 28, and item 11 (Deut 30:19-20), likewise. Chapter 28 appears in this brief only inside a scene *title* ("Deuteronomy 11, 27-28, 30") inherited verbatim from the approved medium brief, and in the exclusion statements themselves. **Confirmed clean.** |
| **Deut 30:19-20 restricted to recall/fill-in-blank or sequence format, never multiple choice** (`docs/reviews/deuteronomy-review.md` §4 item 1) | **HELD.** Item 11 is the tier's only use and it is fill-in-blank. Note the easy brief restates the rule *more strictly* than the medium review worded it (medium: never a multiple-choice "what does this verse mean/imply about free will"; easy: never multiple choice at all). The stricter reading is the safer one and I endorse standardising on it — but the two documents should be made to say the same thing (§6.7). |
| **Ten Commandments referenced by chapter:verse only, never by ordinal commandment number** (`docs/content/deuteronomy.md` Numbering note) | **HELD** for items 1 and 2 — no item says "the first commandment," "the fifth commandment," etc. But my cross-check surfaced a limitation in this mitigation the medium review did not catch — see §4.2 and §6.4. |
| **Moses' unmarked grave (Deut 34:6) not used as challenge content** | **HELD.** No item touches v6. |
| **Destruction-of-nations clauses avoided as quotable text** (Deut 31:3-5 adjacency) | **PARTIALLY held — see §4.4.** Item 6 stays on 31:7-8 as claimed. But item 5 quotes Deut 31:3 in full, which *does* include "He will destroy these nations from before you, and you shall dispossess them." |

## 4. Contested-Territory Cross-Check

### 4.1 Deut 31:2-3 (item 5) — the item the brief flagged. Bounding holds; the brief's stated reasoning does not.

The brief asserts: *"the reason (given elsewhere, in Numbers 20, outside this book's scope) is a
passage with its own varied interpretive readings… the 'why' material isn't even present in the
quoted text."* I checked both halves of that claim.

**The "varied interpretive readings" half is correct, and the variation is genuinely
cross-tradition:**

- **Jewish (Sefaria / Rashi on Numbers 20:12)** — Moses' sin was a failure of belief, aggravated
  because it occurred publicly: "Scripture does not spare him because of the Hallaling of the
  Divine Name." Rashi ties it back to Moses' earlier private scepticism ("shall the sheep and oxen
  be slaughtered for them?"), which went unpunished *because* it was private. The decisive category
  is public desecration of the Name.
  [sefaria.org/api/texts/Rashi_on_Numbers.20.12](https://www.sefaria.org/api/texts/Rashi_on_Numbers.20.12?context=0)
- **Contemporary evangelical (GotQuestions)** — gives three reasons: striking the rock instead of
  speaking to it; taking personal credit ("Must we bring you water?"); and, third, that the rock
  is a type of Christ and striking it twice "misrepresented Christ's sacrifice." That third reason
  is an explicitly Christological typological argument with no counterpart in the Jewish reading.
  [gotquestions.org/Moses-promised-land.html](https://www.gotquestions.org/Moses-promised-land.html)
- **Classic Christian commentators (Bible Hub aggregation, Deut 3:26)** — Barnes states the tension
  outright: "the sin of the people is stated to be the ground on which Moses' prayer is denied…
  the transgression of Moses and Aaron themselves is assigned as the cause," and resolves it
  contextually. Gill grounds it in Meribah; the Pulpit Commentary cross-references Deut 1:37,
  Numbers 20:12 and Numbers 27:13-14; Ellicott shifts the emphasis to God making Moses "a sign."
  [biblehub.com/commentaries/deuteronomy/3-26.htm](https://biblehub.com/commentaries/deuteronomy/3-26.htm)

**The "outside this book's scope" half is wrong.** Deuteronomy supplies its own reason, twice, and
it is not Numbers 20's reason. WEB **Deuteronomy 3:26**: *"But Yahweh was angry with me because of
you, and didn't listen to me."* — verified live at
[ebible.org DEU03](https://ebible.org/web/DEU03.htm). Deut 1:37 makes the same attribution. So the
tension Barnes names — the people's provocation (Deuteronomy's framing) versus Moses' own
transgression (Numbers' framing) — is *internal to Deuteronomy*, not safely quarantined in another
book. The brief's safety argument rests on a premise that does not hold.

**The item is nonetheless safe, for a different and stronger reason.** The graded token is the
number **120**. Every source above, and every tradition, agrees Moses said he was one hundred twenty
years old; nothing in the dispute touches the answer key. The item's own bounding sentence ("grades
only Moses's stated age and the plain fact he would not cross the Jordan — never why") is correct as
a description of what the item does. What needs replacing is the *justification*, plus a
forward-looking rule so a later authoring pass cannot walk into Deut 1:37 / 3:26 believing the
subject is out-of-book. See §6.4.

### 4.2 Deut 5 (items 1, 2) — Ten Commandments numbering. Mitigation holds, but is narrower than the brief believes.

The underlying disagreement is confirmed real and multi-way, cross-tradition:

- **Jewish, primary-source confirmation.** The Revised JPS (2023) text of Deut 5:6 carries an
  editorial footnote stating that *"Tradition varies as to the divisions of the Commandments in
  vv. 6–18 and the numbering of the verses,"* cross-referencing Exodus 20:1. Retrieved from
  [sefaria.org/api/texts/Deuteronomy.5.6](https://www.sefaria.org/api/texts/Deuteronomy.5.6?context=0).
  Jewish numbering treats v6 ("I am the ETERNAL your God who brought you out…") as the first of the
  ten, not a preface.
- **Catholic / cross-tradition comparison.** Catholic and Lutheran traditions combine the
  "no other gods" and "no graven image" material into one commandment and split the coveting clause
  into two (ninth: neighbour's wife; tenth: neighbour's house); most Protestant traditions do the
  reverse. Sources: [Catholic Answers, "10 Commandments"](https://www.catholic.com/tract/10-commandments);
  [National Catholic Register, "Numbering the Ten Commandments"](https://www.ncregister.com/blog/friday-fast-fact-numbering-the-ten-commandments);
  [Wikipedia, "Ten Commandments in Catholic theology"](https://en.wikipedia.org/wiki/Ten_Commandments_in_Catholic_theology).
  These sources converge on the key point for our purposes: *all groups agree on what Deuteronomy 5
  says; the disagreement is entirely about which number is which.*

**So the brief's mitigation — reference by chapter:verse, never by ordinal — is the right
instrument, and items 1 and 2 comply.** Neither item's stem, key, or distractors mention an ordinal.
A player answering item 1 affirms only that the verse says "other gods"; a player answering item 2
affirms only that 5:16 says honour your father and mother. Nothing tradition-specific is graded.

**One limitation neither the brief nor the `medium` review noticed:** the JPS footnote says
tradition varies as to *the numbering of the verses*, not only the division of the commandments.
Hebrew editions of Deut 5 do not carve the Decalogue into the same verse numbers Christian editions
use. Our chapter:verse citation is therefore neutral as to *commandment* numbering but is not a
universally-shared *locator* for this specific chapter. This does not affect any answer key — WEB is
fixed as the MVP translation by Open Decision #1 and every item displays the verse text alongside
the reference — but it should be recorded rather than left as an unexamined assumption. See §6.4.

Notably, item 1 sits on Deut 5:6-7 — precisely the verse pair the traditions divide differently
(is v6 the first commandment or a preface?). It survives because it asks a content question about
v7's wording, not a division question. That is the bounding working as intended, not luck; but it is
worth recording how close the item sits to the fault line.

### 4.3 Deut 6:4-5 (item 9) — the Shema. Bounding holds.

Inherited from `medium` verbatim, and the medium review's reasoning is sound: the text is not in
dispute, and the item grades the single word "might." No question touches the Shema's liturgical use
in Jewish practice or its NT citation (Mark 12:29-30), both of which the brief correctly scopes out.
Text verified independently at [ebible.org DEU06](https://ebible.org/web/DEU06.htm). No change.

### 4.4 Deut 31:3 (item 5) — destruction-of-nations language. Newly noted; not a violation, but the brief mis-describes its own scope.

The `medium` brief's Contested Territory states that its chosen verses "keep to the
succession/encouragement content… and avoid the destruction-of-nations clauses **as quotable text**,"
and the easy brief repeats the claim. But Deut 31:3 — quoted in full by item 5, in both tiers —
contains *"He will destroy these nations from before you, and you shall dispossess them."* Verified
at [ebible.org DEU31](https://ebible.org/web/DEU31.htm) and
[BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+31%3A2-3%3B+Deuteronomy+11%3A26-28&version=WEB).

**This is an accuracy problem in the brief's self-description, not a style-guide violation.** The
verses the exclusion was actually aimed at are 31:4-5 (Sihon and Og; "you shall do to them according
to all the commandment which I have commanded you"), which no item uses. Item 5 grades only Moses'
age; nothing about conquest, ḥerem, or just-war is asked, and §4 of the style guide permits
displaying such text so long as the interpretation is not graded. But since this text *is* displayed
to a player in an **easy tier aimed at younger and first-time players**, the brief should say so
honestly rather than claim the clause is avoided. See §6.3, which fixes both this and the trim
labelling in one edit.

### 4.5 Deut 34:1 (item 12) — Mount Nebo. Confirmed uncontested for the graded fact.

The brief flags this "for completeness" as plain geography. Confirmed: the verse names both Mount
Nebo and the top of Pisgah, and the relationship between the two names (Nebo the mountain, Pisgah
the ridge or headland) is a topographical/lexical question, not a doctrinal one. No tradition
disputes that Deut 34:1 places Moses on Nebo. The graded token is safe. (The one live question here
is textual completeness, not doctrine — §6.1.)

### 4.6 "I can no more go out and come in" (Deut 31:2, displayed by item 5) — a real divergence, currently ungraded. Rule recommended.

This clause is displayed to players and is genuinely read differently across traditions:

- **Rashi** explicitly rejects a physical reading — citing Deut 34:7 ("his eye was not dim nor his
  natural force abated") — and reads *lo uchal* as **"I am not permitted,"** because authority is
  being transferred to Joshua; alternatively, that "the traditions and the well-springs of wisdom
  were stopped up for him" (Sotah 13b).
  [sefaria.org/api/texts/Rashi_on_Deuteronomy.31.2](https://www.sefaria.org/api/texts/Rashi_on_Deuteronomy.31.2?context=0)
- **Classic Christian commentators (Bible Hub, Deut 31:2)** also reject simple physical decline but
  land elsewhere: Barnes, Gill, Henry, the Pulpit Commentary and Keil-Delitzsch all read it as
  inability to *discharge the office* of leader — Gill: "could not perform his office as their
  ruler and governor… both [body and mind] being vigorous, sound, and well."
  [biblehub.com/commentaries/deuteronomy/31-2.htm](https://biblehub.com/commentaries/deuteronomy/31-2.htm)

Both traditions agree it is **not** a statement of physical frailty, and disagree about what it *is*
(prohibition/authority-transfer vs. capacity-for-office). Nothing is graded on it — item 5 grades
"120". But note the internal tension this tier creates for a player: item 5 displays "I can no more
go out and come in," while item 8, three items later, has that same player type the word "gone" into
"nor his strength ___". A beginner may reasonably infer "Moses was too frail," which is the one
reading both traditions above reject. Not a style-guide violation; a comprehension and
forward-authoring risk. See §6.4.

## 5. Minor Findings (non-blocking)

**5.1 Quote-nesting, for the verbatim-QA pass.** Two items nest quotation marks in ways that differ
from printed WEB and must be normalised at ingestion rather than stored as the brief renders them:
- **Item 6 (Deut 31:7-8).** ebible.org closes Moses' speech at the end of v7 ("…cause them to
  inherit it.'") and presents v8 outside that quotation. The brief runs 7-8 as one continuous
  quotation. The *words* are verbatim and the citation range is correct — this is not a Gen 9:13-style
  splice — but the quotation-mark placement is the brief's, not WEB's.
- **Item 7 (Deut 34:4-5).** The inner quotation depth differs between sources: ebible.org renders
  `saying, I will give it to your offspring.` while BibleGateway renders it with nested marks. The
  brief uses double quotes at the innermost level. Same pattern flagged in
  `docs/reviews/genesis-easy-review.md` §5.1. Route to `docs/qa/deuteronomy-easy-verbatim-qa.md`.

**5.2 Boss-item weighting.** Item 12 is a level-2-style recognition MC placed in the boss set, where
`docs/content/deuteronomy.md`'s difficulty ladder specifies level 3–5 weighting for the boss battle.
Appropriate for an easy tier and outside my remit — flagged only so it reads as deliberate.

**5.3 Item 12 distractor design.** "Mount Sinai" and "Mount Horeb" are widely identified as the same
mountain, and Deuteronomy itself consistently prefers "Horeb." Both are wrong, so the key is
unambiguous and this is not a defect. Noting only that a player who knows the Sinai/Horeb identity
may find the option set odd; consider swapping one for a non-synonymous mountain if playtesting shows
friction.

**5.4 Item 5 / item 8 both grade the number 120.** Item 5's key is "120 years old" (Deut 31:2) and
item 8 sits on Deut 34:7 ("one hundred twenty years old when he died"). Different graded tokens
(the number vs. the word "gone"), so not a duplicate, but the tier now leans twice on the same fact.
Design note only.

## 6. Required and Recommended Changes

**6.1 — Item 12 (Deut 34:1): the verse is incomplete and unlabelled. [REQUIRED]**
The brief presents *"Moses went up from the plains of Moab to Mount Nebo, to the top of Pisgah, that
is opposite Jericho."* tagged "(WEB, new)". Two independent sources confirm verse 1 continues:
**"Yahweh showed him all the land of Gilead to Dan,"**
([ebible.org DEU34](https://ebible.org/web/DEU34.htm);
[BibleGateway WEB 34:1-3](https://www.biblegateway.com/passage/?search=Deuteronomy+34%3A1-3&version=WEB)).
Presenting part of a verse to a player as *the* verse is the integrity concern §3's final bullet
exists to prevent, and this is a verbatim repeat of `genesis-easy` §6.2. **Preferred fix: restore
the full verse** — the omitted clause is what actually supports this item's stem ("where did Moses go
up **to see** the promised land?"), which the truncated text does not. Alternative: keep the trim and
re-tag "(WEB, trimmed)" per the medium brief's existing convention. This item is not eligible for
ingestion until fixed and re-run through verbatim QA.

**6.2 — Item 10 (Deut 34:10): terminal punctuation is wrong. [REQUIRED]**
The brief prints "…whom Yahweh knew face to face**.**" WEB ends verse 10 with a **comma** — the
sentence runs on through vv. 11-12 ("in all the signs and the wonders…"). Confirmed on three
independent sources: [ebible.org DEU34](https://ebible.org/web/DEU34.htm),
[BibleGateway WEB](https://www.biblegateway.com/passage/?search=Deuteronomy+34&version=WEB),
[Bible Hub WEB](https://biblehub.com/web/deuteronomy/34.htm). This is a character-level mismatch from
what the brief asserts is verbatim WEB text. Fix: render "…whom Yahweh knew face to face," or
"…face to face…" with an explicit trim marker. **This error is inherited from
`docs/content/deuteronomy.md`, which has the same period — flag it there too, and note that the
medium tier's pending verbatim QA has not yet caught it.** The blank ("prophet") is unaffected.

**6.3 — Item 5 (Deut 31:2-3): label the mid-verse start and correct the scope claim. [RECOMMENDED]**
Two small edits to one item:
(a) The quotation begins "I am one hundred twenty years old today," omitting WEB v2's opening
attribution "He said to them," (present in the ebible.org rendering of v2). Add a leading ellipsis or
a "(WEB, trimmed)" tag, matching the medium brief's convention.
(b) The brief's Contested Territory claims the destruction-of-nations clauses are avoided as quotable
text, but item 5 quotes Deut 31:3 including "He will destroy these nations from before you, and you
shall dispossess them" (§4.4). Correct the claim to the accurate one: the clauses *avoided* are
31:4-5 (Sihon and Og), while 31:3's summary clause is displayed but never graded. Given this is the
child-facing easy tier, also state explicitly that no item grades or asks about the conquest.

**6.4 — Contested Territory: add three forward-looking entries. [RECOMMENDED]**
In the style of the existing Deut 30:19-20 format restriction, so later authoring passes cannot cross
these unknowingly:
- **Replace the Deut 31:2-3 rationale.** Delete "the reason… given elsewhere, in Numbers 20, outside
  this book's scope." Deuteronomy states its own reason at **Deut 1:37 and 3:26** ("Yahweh was angry
  with me because of you"), which differs in emphasis from Numbers 20:12, and Barnes flags the
  tension explicitly. Replace with the accurate rule: **no item in any tier may grade *why* Moses was
  barred from crossing the Jordan** — the Meribah readings genuinely diverge across traditions
  (Rashi: failure of belief plus public desecration of the Name; evangelical readings: struck rather
  than spoke, took credit, and — distinctively Christian — broke a rock-as-Christ typology; classic
  commentators: dual causation with the people). Sources at §4.1.
- **Deut 31:2, "I can no more go out and come in."** Display-only; never a graded token, never an MC
  subject. Rashi reads it as "I am not permitted" (authority transfer / wellsprings of wisdom stopped);
  Christian commentators read it as capacity to discharge the office; both reject a physical-frailty
  reading, which is the reading a beginner is most likely to form. Sources at §4.6.
- **Deut 5 verse numbering.** Record that the Revised JPS footnote at Deut 5:6 states tradition varies
  as to *both* the division of the commandments *and* the numbering of the verses in vv. 6–18
  ([Sefaria](https://www.sefaria.org/api/texts/Deuteronomy.5.6?context=0)). The chapter:verse
  mitigation therefore neutralises the *commandment*-numbering dispute (which is what it was designed
  for, and it does that job) but is not a universally-shared locator for this chapter. Rule: items on
  Deut 5 must always display the WEB verse text alongside the reference, never the reference alone.
  Items 1 and 2 already do this; make it explicit so it stays true.

**6.5 — Item 2 (Deut 5:16): reword the distractors to WEB Deuteronomy 5 text. [RECOMMENDED]**
All three distractors use wording found nowhere in WEB Deuteronomy 5
([ebible.org DEU05](https://ebible.org/web/DEU05.htm)):
- "Remember the Sabbath day" — WEB Deut 5:12 reads **"Observe the Sabbath day, to keep it holy."**
  ("Remember" is the Exodus 20:8 wording, and the Exodus/Deuteronomy Sabbath difference is itself a
  well-known textual point.)
- "Do not bear false witness" — WEB Deut 5:20 reads **"You shall not give false testimony against
  your neighbor."**
- "Do not covet your neighbor's house" — WEB Deut 5:21 reads **"You shall not covet your neighbor's
  wife. Neither shall you desire your neighbor's house…"** Note this distractor lands exactly on the
  Catholic/Lutheran ninth-vs-tenth split described in §4.2.
None of these is a §3 violation — distractors are not framed as verse text and the key is
unambiguous — but a product whose whole premise is verbatim scripture should not show a player four
options where the correct one is verbatim and the wrong ones are half-remembered KJV/Exodus
phrasings. Reword to WEB Deuteronomy 5.

**6.6 — Item 7 (Deut 34:4-5): tighten the stem. [RECOMMENDED]**
The stem reads "what did Yahweh show Moses **from the mountain**?" — but 34:4-5, the cited text, never
mentions a mountain; 34:1 does. Drop "from the mountain," or re-cite. Trivial, but it is the same
class of stem/citation slippage that produced `genesis-easy` §6.1.

**6.7 — Reconcile the Deut 30:19-20 rule wording across documents. [RECOMMENDED]**
`docs/reviews/deuteronomy-review.md` states the restriction as "never a multiple-choice *what does
this imply about free will*" format; `docs/content/deuteronomy-easy.md` states it as "never multiple
choice" outright. Item 11 satisfies both. Standardise on the stricter (easy-tier) wording in
`docs/content/deuteronomy.md` so the rule cannot be re-litigated loosely by a later pass.

## 7. Verdict

**`approved-with-changes`.**

**Blocking (must be applied before ingestion):**
1. **§6.1 — item 12 (Deut 34:1)**: restore the full verse or label the trim.
2. **§6.2 — item 10 (Deut 34:10)**: terminal comma, not period; also fix in
   `docs/content/deuteronomy.md`.

**Recommended (none blocks on its own): §6.3, §6.4, §6.5, §6.6, §6.7.**

All three points the review request asked me to confirm check out:

- **Deuteronomy 28 is absent from every one of the 12 items** — verified item by item, not taken on
  the brief's word. Chapter 28 appears only in an inherited scene title and in the exclusion
  statements themselves.
- **Deut 30:19-20 is recall-only** (item 11) — held.
- **The Ten Commandments are cited by chapter:verse only, never by ordinal** (items 1, 2) — held,
  with the numbering-neutrality caveat at §4.2/§6.4 that neither the brief nor the medium review had
  identified.
- **Deut 31:2-3's "why" is not graded** — held. The item grades the number 120, which every tradition
  consulted agrees on. But the brief's *reason* for believing it safe ("the why lives in Numbers 20,
  outside this book") is factually wrong — Deuteronomy states its own, differently-emphasised reason
  at 1:37 and 3:26 — and must be replaced with the accurate rule at §6.4.

**Not escalated.** The one genuinely live, unresolved cross-tradition disagreement found in this
brief's territory — *why* Moses was barred from Canaan, and what "I can no more go out and come in"
means — was checked against real sources from three different traditions (Jewish/Rashi via Sefaria;
classic Christian commentators via Bible Hub; contemporary evangelical via GotQuestions) and does
**not** bear on any graded token in any of the 12 items. The graded material is a number, a place
name, and a set of verbatim words that all these traditions render identically. §6.4 exists so it
stays that way. Escalation was considered specifically because item 5 is new content sitting on a
sensitive adjacency in a *child-facing easy tier*, and because the brief's own safety argument for it
turned out to be wrong; I concluded the item survives on the corrected reasoning rather than the
brief's, which is a documentation defect, not a content one.

**Residual risk stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in `MEMORY.md`,
2026-08-08; Open Decision #7 still has no named human reviewer). Nothing here required escalation,
but a human specialist may weigh the child-facing display of Deut 31:3's conquest clause (§4.4)
differently than I have, and that judgement is the one I would most want a second opinion on.

**Outstanding, not this reviewer's job:**
- Independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
  (`docs/qa/deuteronomy-easy-verbatim-qa.md`), which must re-check items 10 and 12 after the fixes
  and normalise the quote-nesting in items 6 and 7 (§5.1).
- The Deut 34:10 punctuation error in `docs/content/deuteronomy.md` (medium tier) — outside this
  brief, but it should not be allowed to ship.
- Logging this review in `docs/CONTENT_REVIEW_LOG.md` is the calling session's task, not this
  reviewer's.

---

## Sources cited in this review

**World English Bible text**
- https://ebible.org/web/DEU03.htm
- https://ebible.org/web/DEU05.htm
- https://ebible.org/web/DEU06.htm
- https://ebible.org/web/DEU11.htm
- https://ebible.org/web/DEU30.htm
- https://ebible.org/web/DEU31.htm
- https://ebible.org/web/DEU34.htm
- https://www.biblegateway.com/passage/?search=Deuteronomy+34&version=WEB
- https://www.biblegateway.com/passage/?search=Deuteronomy+34%3A1-3&version=WEB
- https://www.biblegateway.com/passage/?search=Deuteronomy+31%3A2-3%3B+Deuteronomy+11%3A26-28&version=WEB
- https://biblehub.com/web/deuteronomy/34.htm

**Jewish tradition**
- https://www.sefaria.org/api/texts/Deuteronomy.5.6?context=0 (Revised JPS 2023 + numbering footnote)
- https://www.sefaria.org/api/texts/Rashi_on_Deuteronomy.31.2?context=0
- https://www.sefaria.org/api/texts/Rashi_on_Numbers.20.12?context=0

**Classic cross-tradition Christian commentary**
- https://biblehub.com/commentaries/deuteronomy/31-2.htm
- https://biblehub.com/commentaries/deuteronomy/3-26.htm

**Contemporary evangelical**
- https://www.gotquestions.org/Moses-promised-land.html

**Catholic / comparative numbering**
- https://www.catholic.com/tract/10-commandments
- https://www.ncregister.com/blog/friday-fast-fact-numbering-the-ten-commandments
- https://en.wikipedia.org/wiki/Ten_Commandments_in_Catholic_theology
