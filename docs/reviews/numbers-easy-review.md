# Theological Review — Numbers, Easy Tier (World 4)

Reviewer: `theological-reviewer` agent, run 2026-08-19.
Brief reviewed: `docs/content/numbers-easy.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` (§2, Law group —
Numbers is world 4 of the full Pentateuch), `docs/content/numbers.md` (approved `medium` tier; its
verse text and Contested Territory bounding treated as settled ground per the review request) and
`docs/reviews/numbers-review.md` (source of the three inherited structural format rules).
Failure patterns deliberately hunted for, per the Genesis pilot reviews
(`docs/reviews/genesis-easy-review.md`, `docs/reviews/genesis-hard-review.md`): answer-key ambiguity
from an under-anchored MC stem; citation errors splicing or trimming verses inside a quotation;
contested-territory items the drafter didn't flag.

**Verdict: `approved-with-changes`.** Every verse text the brief asserts is verbatim-correct against
live WEB sources — no mismatch, no splice, no invented text. All three inherited structural rules
hold and Numbers 25 is absent. Five required fixes (§6) and six recommendations (§7); one is a real
answer-key ambiguity of the same class as the Genesis-easy Gen 8:11 defect. Not escalated.

---

## 1. Verse-Text Verification

Every challenge-ready verse in the brief was fetched live. New verses were checked against **two**
independent WEB sources; verses reused from the approved `medium` brief were re-fetched anyway
(cheap, and the Genesis-hard review showed that re-cutting a blank out of previously-approved text
is exactly where verse boundaries get broken).

| Item | Verse | Sources checked | Result |
|---|---|---|---|
| 1 | Num 1:1-3 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+1%3A1-3%3BNumbers+2%3A1-2%3BNumbers+22%3A27-28&version=WEB) | **Match**, verbatim, full quoted block |
| 2 | Num 2:1-2 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+1%3A1-3%3BNumbers+2%3A1-2%3BNumbers+22%3A27-28&version=WEB) | **Match**, verbatim, full quoted block |
| 3 | Num 13:27-28 | [ebible.org WEB NUM13](https://ebible.org/engwebp/NUM13.htm) | **Match** on the quoted words. Quote is a **trim** — v27 opens "They told him, and said, 'We came to the land…'"; the brief starts at "We came". Inherited from `medium`; see §7.4 |
| 4 | Num 14:24 | [ebible.org WEB NUM14](https://ebible.org/engwebp/NUM14.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+10%3A33-36%3BNumbers+13%3A33%3BNumbers+14%3A24&version=WEB) | **Match**, verbatim, full verse. (Answer-key problem is separate — §6.1) |
| 5 | Num 16:1-3 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+16%3A1-3%3BNumbers+21%3A8-9%3BNumbers+23%3A19&version=WEB) | **Match.** Blank `assembly` is correct and is the verse's own word. Leading ellipsis correctly elides vv.1-2 |
| 6 | Num 21:8-9 | [ebible.org WEB NUM21](https://ebible.org/web/NUM21.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+16%3A1-3%3BNumbers+21%3A8-9%3BNumbers+23%3A19&version=WEB) | **Match** on the quoted words. Blank `bronze` correct. Quote is an **unlabelled trim** — §6.2 |
| 7 | Num 22:27-28 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+1%3A1-3%3BNumbers+2%3A1-2%3BNumbers+22%3A27-28&version=WEB) | **Match**, verbatim, full quoted block |
| 8 | Num 13:33 | [ebible.org WEB NUM13](https://ebible.org/engwebp/NUM13.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+10%3A33-36%3BNumbers+13%3A33%3BNumbers+14%3A24&version=WEB) | **Match**, verbatim, full verse |
| 11 | Num 23:19 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+16%3A1-3%3BNumbers+21%3A8-9%3BNumbers+23%3A19&version=WEB) | **Match.** Blank `good` is the verse's final word |
| 12 | Num 10:35 | [ebible.org WEB NUM10](https://ebible.org/web/NUM10.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+10%3A33-36%3BNumbers+13%3A33%3BNumbers+14%3A24&version=WEB) | **Match** on the quoted words. Quote is an **unlabelled trim** (omits "When the ark went forward, Moses said,") — §6.3 |
| 9, 10 | Num 16:31-32, 26:11, 22:31 | Reused verbatim from approved `medium`; 16:1-3 and 22:27-28 legs re-verified above | Not re-litigated per review scope; no text changed |

**No character-level mismatch was found anywhere.** In particular, no splice of the Genesis-hard
Gen 9:13 kind: item 5's blank sits inside v3, item 6's inside v9, item 11's inside v19 — each blank
is within a single verse's boundary, verified against the numbered text.

### Finding — a live verification trap the QA pass must know about

**ebible.org serves more than one WEB edition, and they differ on the divine name.** My fetch of
`https://ebible.org/engwebp/NUM10.htm` returned Num 10:35 as *"Rise up, **LORD**, and let your
enemies be scattered!"*. `https://ebible.org/web/NUM10.htm` and BibleGateway `version=WEB` both
return *"Rise up, **Yahweh**, …"*, which is what the brief (and the whole `medium` brief) uses. The
brief is **correct**; the `engwebp` path is a different edition. This matters because
`docs/reviews/genesis-hard-review.md` cited `engwebp` URLs as its source of record. Recorded as
§7.5 so the verbatim-QA pass doesn't chase a phantom mismatch — or worse, "correct" the text to
`LORD`.

## 2. Style-Guide Compliance — §2 In-Bounds / §3 Out-of-Bounds

For each item: *does this require the player to affirm anything beyond narrative fact or direct
verse text?*

| Item | Format | In-bounds basis (§2) | Result |
|---|---|---|---|
| 1 Num 1:1-3 | MC | Narrative fact — what was commanded | Pass. Grades the census order, not its purpose or theology of the count |
| 2 Num 2:1-2 | MC | Narrative fact / setting | Pass. Grades camp arrangement as the text states it |
| 3 Num 13:27-28 | MC | Direct quotation attributed in-text | Pass. "Milk and honey" is the spies' own reported words |
| 4 Num 14:24 | MC | Character identification | Doctrinally clear; **factually ambiguous stem** — §6.1 |
| 5 Num 16:1-3 | Fill-in-blank | Direct verse recall | Pass. Format-restricted scene, correctly handled — §3.1 |
| 6 Num 21:8-9 | Fill-in-blank | Direct verse recall | Pass. Format-restricted scene, correctly handled — §3.1 |
| 7 Num 22:27-28 | MC | Narrative fact | Pass. "What did Yahweh do", never "why" |
| 8 Num 13:33 | MC | Direct quotation attributed in-text | Pass, with the Nephilim bounding strengthened — §4.1 |
| 9 Korah sequence | Sequence | Sequencing | Pass — unchanged from approved `medium` |
| 10 Balaam sequence | Sequence | Sequencing | Pass — unchanged from approved `medium` |
| 11 Num 23:19 | Fill-in-blank | Direct verse recall | Pass. Recall-only rule honoured — §3.1 |
| 12 Num 10:35 | MC | Direct quotation attributed in-text | Pass on substance; distractor + trim fixes — §6.3, §6.4 |

**None of §3's five prohibitions is engaged by a graded item.** No doctrinal interpretation, no
denominational position, no historicity/scientific framing, no moral judgment. The brief makes no
dating or historicity claim (it inherits `medium`'s explicit disclaimer).

Worth stating positively, because the easy tier's bias toward multiple choice is where risk would
enter: **every MC key in this brief is either a word the text supplies outright (Caleb, milk and
honey, grasshoppers, "opened the donkey's mouth") or a plain restatement of an imperative the text
gives (take a census; camp by standard).** No key requires knowing anything the displayed verse
doesn't say.

## 3. Inherited Structural Rules — Confirmed Not Violated

### 3.1 The three rules from `docs/reviews/numbers-review.md`

1. **Korah's rebellion and the bronze serpent — permitted formats are recall, fill-in-blank and
   sequence-ordering only; no "why"-phrased MC.** Items 5 and 6 are fill-in-blank; item 9 is a
   sequence. **No multiple-choice item is built from either scene.** The easy brief reads the
   inherited rule *more* strictly than `medium` states it (it treats the scenes as barred from MC
   entirely, not merely from "why"-phrasing) and says so explicitly. That over-compliance is
   correct and should stay — it is the safer reading of the same rule.
   - One edge case checked: item 4 uses "Korah" as a *distractor* in an MC item drawn from Numbers
     14. That does not build a challenge from the Korah scene — nothing about Korah is graded, and
     the name functions only as a wrong option. Permissible. It is being removed anyway under
     §6.1's fix, which moots it.
2. **Numbers 23:19 — recall/fill-in-blank only, never MC.** Item 11 is fill-in-blank on the word
   "good". Honoured. No item anywhere asks what the verse implies about God's nature.
3. **Numbers 25 (Baal Peor) excluded entirely.** Verified by full-text search of the brief: the
   string "25" occurs only in the two sentences that *state the exclusion* (brief lines 37 and 124)
   and in the acceptance-criteria checkbox. No item cites Numbers 25; no Peor, Phinehas, plague,
   Midianite, or intermarriage content appears anywhere in the brief. **Confirmed clean.**
   Numbers 31:16 (the other Balaam-Peor link `medium` flagged as out of scope) is likewise absent.

### 3.2 Scene scope

All 12 items trace to the 5 approved pivotal scenes — Census/Camp (1, 2, 12), Spies (3, 4, 8),
Korah (5, 9), Bronze Serpent (6), Balaam (7, 10, 11). No new scene is introduced, and the brief
does not silently widen a scene's chapter range — the Genesis-easy "Gen 17" scope-creep defect
(`genesis-easy-review.md` §6.3) has **no analogue here**; the chapter ranges are copied exactly from
`medium`. Item 12 (Num 10:35) sits inside scene 1's stated range "(Numbers 1–2, 10)", and item 9's
use of Numbers 26:11 is inherited verbatim from the approved `medium` Korah scene.

## 4. Contested-Territory Cross-Check

Everything the `medium` brief flagged was already cross-checked in `docs/reviews/numbers-review.md`
(Korah's household, the bronze serpent's status, Balaam's characterization, divine judgment,
Num 23:19) and none of those bounds is loosened here — the easy tier uses *less* of that material
than `medium` did, in more restrictive formats. This review therefore concentrates on the two items
the brief flags as new, plus an independent sweep for anything it missed.

### 4.1 Numbers 13:33 — "Nephilim" (item 8). Dispute confirmed real; bounding holds; rule needs strengthening.

The brief's claim that the identity of the Nephilim is genuinely, cross-traditionally disputed is
**accurate — I confirmed it rather than taking it on the brief's word**, across three traditions:

- **Jewish (Sefaria / Rashi on Numbers 13:33)** — Rashi identifies the Nephilim as descended from
  **Shemhazai and Azael, "who fell from heaven in the generation of Enosh"** — i.e. an explicitly
  supernatural, fallen-angelic origin. On the grasshoppers he reports the giants saying "There are
  ants in the vineyards that look like human beings."
  [sefaria.org/api/texts/Rashi_on_Numbers.13.33](https://www.sefaria.org/api/texts/Rashi_on_Numbers.13.33?context=0)
- **Classic Christian commentators (Bible Hub aggregation, Num 13:33)** — divided among themselves
  and largely *deflationary*: Cambridge calls the derivation and meaning "obscure" and the figures
  "a relic of primitive mythology"; Pulpit and Keil-Delitzsch read "primaeval tyrants" from Gen 6:4;
  Pulpit goes further — "There is no certainty that the Nephilim had been giants, and no likelihood
  whatever that the Beni-Anak had any real connection with them."
  [biblehub.com/commentaries/numbers/13-33.htm](https://biblehub.com/commentaries/numbers/13-33.htm)
- **Contemporary evangelical (GotQuestions)** — lists three competing views (angel-human offspring;
  demonic possession of human fathers; ordinary but exceptionally large humans) and concludes "It is
  best to not be dogmatic on an issue about which the Bible says so little."
  [gotquestions.org/Nephilim.html](https://www.gotquestions.org/Nephilim.html)

So a question of the shape "who were the Nephilim?" would be squarely out-of-bounds under §3
(denominational/doctrinal position). The brief is right to pre-empt it.

**Why the bounding holds, concretely:** the graded token is "grasshoppers", and that word is
identical across the traditions that disagree about everything else in the verse. Revised JPS (2023)
renders v33 "we looked like **grasshoppers** to ourselves, and so we must have looked to them"
([Sefaria, Numbers 13:33](https://www.sefaria.org/api/texts/Numbers.13.33?context=0)); WEB renders
"We were in our own sight as **grasshoppers**". Both transliterate "Nephilim" rather than translating
it, so even the displayed text takes no position. A player answering "grasshoppers" affirms nothing
a Jewish, Catholic, Orthodox or Protestant reader would dispute.

**But the brief's proposed rule is one clause short**, and the Bible Hub sweep shows why. The
commentators don't only disagree about *who* the Nephilim were — several treat the spies' report
itself as false or hyperbolic (Pulpit: "thoroughly false in effect"; Gill: "an hyperbolical
exaggeration"; Cambridge: the spies "may have used the name to heighten the effect"). So the
*accuracy* of the report is itself contested ground, distinct from the Nephilim's identity. The
current item is safe because it grades the spies' **self-description** ("how did the spies describe
themselves"), not the report's truth — but the structural rule as drafted only bars questions about
Nephilim identity. See §7.1.

### 4.2 Numbers 10:35 (item 12) — checked independently; the brief under-describes what's here.

The brief flags this verse only as "narrated speech invoking Yahweh against Israel's enemies" and
proposes no restriction. Its assessment of the **graded item** is correct, but two things it didn't
find are worth recording:

- **Interpretation of the verse genuinely diverges**, in a way that would matter if any future item
  moved past "what did Moses say". Bible Hub's aggregation on Num 10:35 shows readings running from
  a literal battle-prayer, to MacLaren's spiritualized application in which the "enemies" are
  Christian spiritual obstacles, to Gill's messianic reading of the prayer as anticipating "the
  essential Word of God, the Messiah".
  [biblehub.com/commentaries/numbers/10-35.htm](https://biblehub.com/commentaries/numbers/10-35.htm)
  In Jewish practice the verse is not primarily a war-text at all — it is liturgical, recited when
  the Torah scroll is taken from the ark.
- **The verse carries a real scribal/textual peculiarity.** Numbers 10:35-36 is bracketed in the
  Masoretic text by **inverted nun marks** (Sefaria's Miqra-according-to-the-Masorah text shows the
  inverted nun ׆ at this verse:
  [sefaria.org/api/texts/Numbers.10.35](https://www.sefaria.org/api/texts/Numbers.10.35?context=0)),
  which Keil-Delitzsch note are "sanctioned by the Masorah" and mark the passage as parenthetical —
  some treating them as *signa parentheseos*, others ascribing "mystical meaning". Rabbinic
  tradition treats these two verses as displaced from their proper place.

**Neither affects item 12**, which grades only *which quoted words Moses said* — and those words are
rendered equivalently everywhere (WEB "Rise up, Yahweh, and let your enemies be scattered!"; Revised
JPS "Advance, O ETERNAL One! May Your enemies be scattered"). The differences are in the divine-name
convention and in what the words are taken to *mean*, neither of which the item grades. **Bounding
holds.** But a forward-looking guard is warranted so no future tier builds a sequencing or
"where does this belong in the march?" item on a passage whose placement is a known scribal
question — see §7.2.

### 4.3 Divine name "Yahweh" — inherited, settled, no action

Items 1, 2, 5, 6, 7 and 12 display WEB's "Yahweh". This is a real cross-tradition sensitivity
(Jewish practice avoids vocalizing the Tetragrammaton — Sefaria's JPS renders it "the ETERNAL One";
the Catholic Church's 2008 directive bars its liturgical use), but it is **settled ground**: WEB is
fixed by Open Decision #1 and the approved `medium` brief already displays it throughout. Recorded
for the audit trail only, exactly as `genesis-easy-review.md` §4.5 did. No re-litigation.

Item 12 is the one place where a player must *select* a string containing "Yahweh" as the correct
answer. That is selecting what the text says, not affirming a pronunciation practice — still
in-bounds. Noted because it is the first time the name appears inside an answer key rather than only
in displayed text.

### 4.4 Items with no new contested ground — spot-checked, agreed

- **Items 1, 2 (census, camp order).** Administrative narrative; commentary divergence on the census
  numbers' magnitude exists but neither item grades a number. Clear.
- **Item 3 (milk and honey).** The spies' own words, uncontested phrasing.
- **Item 7 (the donkey speaks).** Grades what Yahweh did per the verse. `medium`'s Balaam bounding
  covers it; no item touches Balaam's moral character.
- **Items 9, 10.** Exact reuses of already-approved `medium` boss items. The 16:31-32 + 26:11 pairing
  that `medium` deliberately built (so no item asserts that Korah's sons died) is preserved intact in
  item 9. Good — that pairing is load-bearing and it survived the port.

## 5. Paraphrase-Presented-as-Quotation Check (§3, final bullet)

No invented or reworded scripture is presented as verse text. Every string framed as a verse was
matched to live WEB text in §1.

Three sub-findings, all fixable:

- **Items 6 and 12 present a partial verse as the verse**, unlabelled. Same integrity concern as
  Genesis-easy's Gen 8:11 finding (`genesis-easy-review.md` §6.2). The words shown are verbatim, so
  this is a labelling fix, not a text fix — §6.2, §6.3.
- **Item 12's distractors are quoted strings that are near-quotations of other scripture in a
  non-WEB rendering.** "The Lord is my shepherd." is Psalm 23:1, which WEB renders "Yahweh is my
  shepherd"; "Be strong and courageous!" approximates Joshua 1:9 — and Joshua *is* in MVP scope
  (world 6). Presenting quoted scripture to a player in a rendering that isn't the project's
  translation is precisely what §5 exists to prevent, even in a wrong answer — §6.4.
- **Item 1's and item 2's answer options are restatements, not quotations**, and are correctly *not*
  in quotation marks ("fighting-age men" for "from twenty years old and upward, all who are able to
  go out to war"). Correct handling; no change.

## 6. Required Changes

**6.1 — Item 4 (Num 14:24): remove the "Joshua" distractor. [required]**
The stem is "According to Numbers 14:24, **which of the twelve spies** did Yahweh promise to bring
into the land?" with options Caleb / Joshua / Korah / Balaam. The reference anchor is good — v24
names only Caleb, so the key is defensible — but the stem's own phrase "which of the twelve spies"
widens the frame past that one verse, and inside that wider frame **Joshua is a genuinely correct
answer**. Verified live:
- **Num 14:30** — "…except Caleb the son of Jephunneh, **and Joshua the son of Nun**."
- **Num 14:38** — "But **Joshua the son of Nun** and Caleb the son of Jephunneh remained alive of
  those men who went to spy out the land."
  ([ebible.org NUM14](https://ebible.org/engwebp/NUM14.htm))

This is the same class of defect as the Genesis-easy Gen 8:11 answer key, and worse in one respect:
there the distractor was true of a *different* dove-sending; here the distractor is true of the same
promise, six verses later, and a player who knows the story well is *more* likely to get it wrong.
On an easy tier aimed at first-time players that is an unacceptable trap.
**Fix:** replace "Joshua" with a name the text does not associate with entering the land — "Aaron"
is clean (Num 20:12 bars him). Optionally also narrow the stem to "which servant" instead of "which
of the twelve spies". Do **not** solve it by leaving Joshua in and adding "and Joshua" to the key —
that would misreport what v24 says.

**6.2 — Item 6 (Num 21:8-9): label the quotation as trimmed. [required]**
The displayed text stops at "Moses made a serpent of ___, and set it on the pole." Verse 9 continues:
"If a serpent had bitten any man, when he looked at the serpent of bronze, he lived."
([ebible.org NUM21](https://ebible.org/web/NUM21.htm)). The trim is *correct design* — the omitted
clause contains the answer "bronze" twice and would give the blank away — but it must be marked.
**Fix:** tag "(WEB, trimmed)" per the convention `docs/content/numbers.md` already uses for
Num 16:1-3, and add a trailing ellipsis, so no partial verse reaches a player as the whole verse.

**6.3 — Item 12 (Num 10:35): label the quotation as trimmed. [required]**
The full verse is "When the ark went forward, Moses said, 'Rise up, Yahweh, and let your enemies be
scattered! Let those who hate you flee before you!'"
([ebible.org NUM10](https://ebible.org/web/NUM10.htm)). The brief quotes only the speech, while the
stem ("what did Moses say **whenever** the ark went forward?") depends on the narrative frame that
was cut. **Fix:** either display the full verse, or tag "(WEB, trimmed — direct speech only)".
Also note the stem's "whenever" is a paraphrase of WEB's "When"; that is fine in a stem, but the
word must not migrate into any displayed verse text.

**6.4 — Item 12: replace the two scripture-derived distractors. [required]**
"The Lord is my shepherd." and "Be strong and courageous!" are quoted strings from other biblical
passages rendered in a translation that is not this project's. **Fix:** either render them in WEB
form, or (preferred) replace them with clearly non-scriptural options, so the game never displays a
quoted scripture string in a non-WEB rendering. This keeps §5's "reference + translation + verbatim
text" discipline intact for every quoted string on screen, not just the correct one.

**6.5 — Contested Territory: fix the item cross-reference. [required]**
Brief line 126 reads "Balaam's overall characterization (items 7, 10, **12**)". Item 12 is
Numbers 10:35 and has no Balaam content; the Balaam-oracle item is **11** (Num 23:19). This sentence
is the load-bearing statement that `medium`'s inherited bounding remains in force for the right
items, so the reference must be right — same class as the Genesis-easy §6.5 typo.
**Fix:** "(items 7, 10, 11)".

## 7. Recommended Changes

**7.1 — Strengthen the proposed Nephilim rule (item 8).**
The brief's rule — "no challenge item may ask what or who the Nephilim were, or imply an answer about
their origin" — is right but incomplete against what the sources in §4.1 actually show. Extend it to:
(a) **"Nephilim" may never be the blanked/typed token, nor an answer option, nor a distractor**;
(b) **no item may grade whether the spies' report was accurate** — Pulpit calls it "thoroughly false
in effect", Gill "an hyperbolical exaggeration", while other commentators read it straight, so
accuracy is contested ground distinct from identity; (c) the verse is display-only around the
"grasshoppers" clause, which is the sole graded token. Same instrument already approved for
Gen 1:26/1:27/3:15 and for Num 23:19.

**7.2 — Add a forward-looking guard for Num 10:35-36 (item 12).**
Record in Contested Territory that Num 10:35-36 is bracketed by inverted nun marks in the Masoretic
text and treated in rabbinic tradition as parenthetical/displaced (§4.2 sources), and add the rule:
**no challenge item may grade the placement, position or narrative order of Num 10:35-36**, and these
verses must not appear in a sequence-ordering item about the march from Sinai. Grading *what Moses
said* is fine and is what item 12 does. Also record that the verse's *meaning* is read variously
(literal battle-prayer / spiritualized / messianic / Jewish liturgical), so no item may ask who "your
enemies" are or what the prayer accomplished.

**7.3 — Restore the "(WEB, trimmed)" tag on item 5 (Num 16:1-3).**
The leading ellipsis is present and correct, but `medium` tagged this same trimmed quotation
"(WEB, trimmed)" and the easy brief re-tags it "(already-approved verse, new blank)". Keep both
facts; the trim label is what the ingestion citation check reads.

**7.4 — Same for item 3 (Num 13:27-28).** The quote omits v27's opening "They told him, and said,".
This trim is inherited unchanged from the approved `medium` brief, so it is not a new defect — but
while items 5, 6 and 12 are being re-labelled, make this one consistent too (leading ellipsis).

**7.5 — QA note: pin the ebible.org edition.**
Per the finding in §1, `https://ebible.org/engwebp/…` and `https://ebible.org/web/…` differ on the
divine name ("LORD" vs "Yahweh"). `docs/qa/numbers-easy-verbatim-qa.md` must use
`https://ebible.org/web/NUMxx.htm` and/or BibleGateway `version=WEB`, and should record this so no
future pass "corrects" Yahweh→LORD against the wrong edition. Worth back-noting on the Genesis
reviews, which cited `engwebp` URLs.

**7.6 — Minor, no action required: item 2's fourth distractor.**
"Only the priests could camp near the Tent of Meeting" is safely false as written, but it sits next
to a true fact stated elsewhere in the same book: Num 1:50-53 has the Levites "encamp around the
Tabernacle of the Testimony", and Num 3:38 places Moses, Aaron and his sons east of it
([BibleGateway WEB](https://www.biblegateway.com/passage/?search=Numbers+1%3A50-53%3BNumbers+3%3A38&version=WEB)).
The word "only" is what makes it clearly wrong, and the stem is reference-anchored to 2:1-2, so the
key is unambiguous. Flagging for playtesting awareness only.

## 8. Verdict

**`approved-with-changes`.**

**Blocking (apply before ingestion):** §6.1 (Num 14:24 "Joshua" distractor), §6.2 (Num 21:8-9 trim
label), §6.3 (Num 10:35 trim label), §6.4 (Num 10:35 distractor renderings), §6.5 (Contested
Territory cross-reference). None requires removing a challenge item or a scene; §6.1 is a factual
answer-key defect, §6.2–6.4 are text-integrity labelling, §6.5 is a reference correction.

**Recommended:** §7.1–7.6, of which §7.1 and §7.2 are the substantive ones — both add structural
rules so a future authoring pass can't cross ground this review confirmed is genuinely contested.

**The three inherited structural rules all hold**, and the brief applies the Korah/bronze-serpent
restriction more strictly than `medium` states it. **Numbers 25 is absent from the brief entirely**,
verified by full-text search, and its exclusion is stated rather than silent.

**Not escalated.** Both contested items the brief flagged, plus the two I checked independently,
were verified against live sources representing genuinely different traditions — Jewish
(Sefaria/Rashi/Revised JPS), classic Protestant (Bible Hub aggregation), contemporary evangelical
(GotQuestions). In every case the graded token turned out to be a word those disagreeing traditions
render identically ("grasshoppers"; the words of Moses' prayer), which is what makes the
narrative-only bounding hold rather than merely sound plausible. No graded item requires a
denominational position, and nothing here intersects the child-safety guardrails in
`GEN2REV_MASTER_PROMPT.md` §5 beyond the divine-judgment material already bounded and approved at
`medium` — which this tier uses *less* of, in more restrictive formats.

**Residual risk stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in `MEMORY.md`,
2026-08-08; Open Decision #7 still has no named human reviewer). Nothing here met the escalation
bar, but a human specialist might weigh the Nephilim display question differently — the word appears
on screen even though it is never graded — and the master prompt's residual-risk note remains live.

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3 (`docs/qa/numbers-easy-verbatim-qa.md`), which must re-check items 6 and 12
after their trims are labelled, item 4 after its distractor changes, and must use the pinned
ebible.org edition per §7.5. `docs/CONTENT_REVIEW_LOG.md` is updated by the calling session, not by
this reviewer.

---

### Sources cited in this review

**WEB verse text**
- https://ebible.org/web/NUM10.htm
- https://ebible.org/web/NUM21.htm
- https://ebible.org/engwebp/NUM13.htm
- https://ebible.org/engwebp/NUM14.htm
- https://www.biblegateway.com/passage/?search=Numbers+1%3A1-3%3BNumbers+2%3A1-2%3BNumbers+22%3A27-28&version=WEB
- https://www.biblegateway.com/passage/?search=Numbers+10%3A33-36%3BNumbers+13%3A33%3BNumbers+14%3A24&version=WEB
- https://www.biblegateway.com/passage/?search=Numbers+16%3A1-3%3BNumbers+21%3A8-9%3BNumbers+23%3A19&version=WEB
- https://www.biblegateway.com/passage/?search=Numbers+1%3A50-53%3BNumbers+3%3A38&version=WEB

**Cross-tradition sources**
- https://www.sefaria.org/api/texts/Numbers.13.33?context=0 (Revised JPS 2023 + Hebrew)
- https://www.sefaria.org/api/texts/Rashi_on_Numbers.13.33?context=0
- https://www.sefaria.org/api/texts/Numbers.10.35?context=0 (Revised JPS 2023 + Masoretic inverted nun)
- https://biblehub.com/commentaries/numbers/13-33.htm
- https://biblehub.com/commentaries/numbers/10-35.htm
- https://www.gotquestions.org/Nephilim.html
