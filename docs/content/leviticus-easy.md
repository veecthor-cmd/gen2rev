# Content Brief — Leviticus, Easy Tier (World 3)

Status: **approved-with-changes** — theological review complete, see
`docs/reviews/leviticus-easy-review.md`. All required fixes applied below.

**Verbatim-text QA: `pass`** (see `docs/qa/leviticus-easy-verbatim-qa.md`) — every verse
independently re-checked against `https://ebible.org/web/` (not `engwebp/`, which renders the divine
name "the LORD" instead of "Yahweh" — per review §1.2). The acceptance-criteria claim that verbatim
QA was "not required" is dropped per review §6.7(b) — it is cheap and it caught real findings. Both
required gates are now clear. **Eligible for ingestion.**

Scaling the difficulty-mode pipeline piloted on Genesis (`docs/content/genesis-easy.md`,
`docs/content/genesis-hard.md`) and continued on Exodus (`docs/content/exodus-easy.md`,
`docs/content/exodus-hard.md`) to Leviticus. Reuses the same 5 pivotal passages already approved in
`docs/content/leviticus.md` (no new passages), so the existing Contested Territory analysis for
those passages (`docs/reviews/leviticus-review.md`) still applies and is carried forward below.
**Per this assignment's brief, Leviticus 11 (dietary law) and Leviticus 18/20 (sexual-purity
legislation) remain excluded entirely from MVP content, confirmed sound by the medium review — that
scope decision is not reopened here.** Review §2 independently re-confirmed this exclusion, checking
distractors and boss labels individually, not just graded verses: **no verse, clause, or distractor
from Leviticus 11, 18 or 20 appears anywhere in this brief.**

**On the brief's central claim that reusing already-approved verse text in new formats introduces no
new contested ground: review §7 found this holds doctrinally but not structurally — format is not
neutral. Two format changes (Lev 25:10 recall→MC, Lev 10:1's new blank position) interact with
existing bounding in ways the original draft did not anticipate; both are fixed or bounded below.**

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.
Items below are either (a) already-approved verse text quoted verbatim in `docs/content/leviticus.md`
and reused as-is without refetching, including two "challenge-ready verses" listed there but never
turned into a standalone `medium` item (Lev 16:34 and Lev 19:2 — free, already-approved content), or
(b) exact verbatim reuse of `medium`'s own boss items. **No new verse text was fetched for this
tier** — noted explicitly per-item below.

---

## Design intent for this tier

Per the Genesis pilot's design rule: "easy... real simple." This tier draws the most iconic,
broadly-recognizable facts from each of Leviticus's 5 pivotal passages and favors multiple-choice
recognition over typed recall, so a first-time or younger player can succeed without prior Bible
knowledge. It does **not** simplify or paraphrase verse text — verbatim WEB text only, at every
tier. Leviticus is law/ritual-heavy rather than narrative, so — as `docs/content/leviticus.md`
already establishes — this brief works from **pivotal passages**, not scenes; that shape difference
is carried forward unchanged, not reopened.

## Pivotal Passages — reused from `docs/content/leviticus.md`, no new passages added

Same 5 passages: The Purpose of Sacrifice (Leviticus 1, 17), Nadab and Abihu (Leviticus 10), The Day
of Atonement (Leviticus 16), The Holiness Code (Leviticus 19), The Year of Jubilee (Leviticus 25).

## Challenge Items (11: 8 regular + 3 boss)

Matches `medium`'s own shape — `docs/content/leviticus.md` itself states counts only informally (the
difficulty-ladder table gives one *example* per format level, not a full item list), so the actual
ingested shape was verified directly against `docs/ingest/exodus-leviticus.sql`, which shows
Leviticus's `medium` tier ingesting 11 challenge rows, 3 of them `is_boss_item = true` — checked
directly rather than assumed.

### Regular (8)

1. **Lev 1:3-4** (WEB, already-approved verse, new format): "'If his offering is a burnt offering
   from the herd, he shall offer a male without defect. He shall offer it at the door of the Tent of
   Meeting, that he may be accepted before Yahweh. He shall lay his hand on the head of the burnt
   offering, and it shall be accepted for him to make atonement for him.'" — MC: "According to
   Leviticus 1:3-4, what did the worshiper do to the burnt offering before it was accepted?"
   Options: lay his hand on its head / pour oil on it / cut off its horns / carry it around the
   altar seven times. Correct: lay his hand on its head.
2. **Lev 10:1-3** (WEB, already-approved verse text, new blank position — recall-only format and
   the 10:1-2/10:3 pairing are both inherited unchanged, see Contested Territory below. *Note per
   review §6.7(a): this item deliberately moves Lev 10:1-3 out of `medium`'s boss set into a
   lower-stakes regular slot — a safety improvement, not a defect, made explicit here so it reads as
   intentional. Template corrected per review §6.2 — required fix: the full 10:1-3 block must be the
   displayed/ingested template with the blank embedded inside it, matching `medium`'s convention, not
   a standalone fragment — otherwise the pairing rule that keeps 10:1-2 and 10:3 together is satisfied
   only in this document and not in the artefact a player actually sees.*) — recall, full 10:1-3
   block displayed with the blank falling in 10:1: "Nadab and Abihu, the sons of Aaron, each took his
   censer, and put fire in it, and laid incense on it, and offered ___ fire before Yahweh, which he
   had not commanded them. Fire came out from before Yahweh, and devoured them, and they died before
   Yahweh. Then Moses said to Aaron, 'This is what Yahweh spoke of, saying, "I will show myself holy
   to those who come near me, and before all the people I will be glorified."'" → **strange**.
3. **Lev 16:34** (WEB, already-approved verse, listed in `docs/content/leviticus.md`'s
   challenge-ready verses but never turned into a standalone `medium` item — free content): "'This
   shall be an everlasting statute for you, to make atonement for the children of Israel once in the
   year because of all their sins.' It was done as Yahweh commanded Moses." — MC: "According to
   Leviticus 16:34, how often was this atonement to be made for the people?" Options: once in the
   year / once a month / every day / once in a lifetime. Correct: once in the year.
4. **Lev 16:29-30** (WEB, already-approved verse, reused, new question angle; stem reworded per
   review §6.4 to match the prescriptive-mood convention established by item 8's fix): "'It shall be
   a statute to you forever: in the seventh month, on the tenth day of the month, you shall afflict
   your souls, and shall do no kind of work, whether native-born or a stranger who lives as a
   foreigner among you; for on this day shall atonement be made for you, to cleanse you. You shall
   be clean from all your sins before Yahweh.'" — MC: "According to Leviticus 16:29-30, what does the
   text say is to happen on the Day of Atonement?" Options: atonement is to be made and the people
   are to be cleansed from their sins / a new law is to be given / a king is to be crowned / the
   tabernacle is to be rebuilt. Correct: atonement is to be made and the people are to be cleansed
   from their sins.
5. **Lev 19:2** (WEB, already-approved verse, listed in `docs/content/leviticus.md`'s
   challenge-ready verses but never turned into a standalone `medium` item — free content; stem
   re-anchored to the text per review §6.3, and distractor swapped per §5.1): "'Speak to all the
   congregation of the children of Israel, and tell them, "You shall be holy; for I, Yahweh your God,
   am holy."'" — MC: "According to Leviticus 19:2, what reason does the text give for the command to
   be holy?" Options: for I, Yahweh your God, am holy / because the priests required it / to prepare
   for battle / to inherit the land. Correct: for I, Yahweh your God, am holy. *(The prior "why"
   framing risked inviting a player toward the reading Rashi gives — "You shall be holy" pointing back
   to Leviticus 18, the chapter this project deliberately excludes on child-safety grounds — even
   though every tradition agrees the verse's own stated reason is the graded answer; re-anchoring the
   stem to "what reason does the text give" asks what the text says rather than opening a "why." The
   prior "because Moses commanded it" distractor was also swapped: Lev 19:1-2 does have Yahweh deliver
   this command through Moses, so it was closer to half-true than a distractor should be for a young
   or first-time player. See Contested Territory below.)*
6. **Lev 19:18** (WEB, already-approved verse, new format/question; distractor swapped per review
   §6.5(a)): "'You shall not take vengeance, nor bear any grudge against the children of your people;
   but you shall love your neighbor as yourself. I am Yahweh.'" — MC: "According to Leviticus 19:18,
   what does God tell the people to do instead of taking vengeance or bearing a grudge?" Options: love
   your neighbor as yourself / seek justice from the judges / bring your case before the priest / bring
   an offering. Correct: love your neighbor as yourself. *(The prior "pray for your enemy" distractor,
   Matthew 5:44, is textually unimpeachable as a wrong answer but sits on a live supersessionist
   framing risk in the commentary tradition on this verse — Jamieson-Fausset-Brown frames the Sermon
   on the Mount as refuting a "narrow" Jewish interpretation of "neighbor," a framing that only became
   a risk because this item converted a recall format into multiple choice. The in-Leviticus
   replacement removes the risk at zero cost to the answer key. See Contested Territory below.)*
7. **Lev 19:15** (WEB, already-approved verse, reused, new format — recall instead of `medium`'s
   MC): "'You shall do no injustice in judgment. You shall not be partial to the poor, nor show
   favoritism to the great; but you shall judge your neighbor in righteousness.'" — recall: "...but
   you shall judge your neighbor in ___." → **righteousness**.
8. **Lev 25:10** (WEB, already-approved verse, new question angle; stem and correct option recast in
   prescriptive mood per review §6.1 — required fix): "'You shall make the fiftieth year holy, and
   proclaim liberty throughout the land to all its inhabitants. It shall be a jubilee to you; and each
   of you shall return to his own property, and each of you shall return to his family.'" — MC:
   "According to Leviticus 25:10, what was to happen in the fiftieth year?" Options: liberty was to be
   proclaimed throughout the land, and each person was to return to his own property and family / a
   new king was to be crowned / all debts were to double / the tabernacle was to be moved. Correct:
   liberty was to be proclaimed throughout the land, and each person was to return to his own property
   and family. *(The prior "what happened"/"was proclaimed"/"returned" phrasing stated the Jubilee as
   an occurred event — crossing the inherited bounding in `docs/content/leviticus.md` that items test
   only what the text legislates, never whether or how often it was observed, since the Jubilee's
   actual practice is a live historicity question. The verse itself is legislation in the
   second-person imperative ["You shall make... and proclaim..."]; the fix keeps the stem and every
   option in that same prescriptive mood, so the correct answer also isn't identifiable by grammar
   alone. See Contested Territory below.)*

### Boss (3)

9. **Boss recall — reused verbatim from `medium`**: Lev 17:11, "'For the life of the flesh is in
   the blood. I have given it to you on the altar to make atonement for your souls; for it is the
   blood that makes atonement by reason of the life.'" → blank on **life**.
10. **Boss sequence — reused from `medium` with one label word aligned per review §6.5(b)**: the 5
    pivotal passages in order — "Instructions for sacrifice and the meaning of blood in atonement" →
    "Nadab and Abihu offer strange fire and die before Yahweh, who says through Moses that he will
    show himself holy" → "The Day of Atonement ritual for the whole people" → "The holiness code,
    including the command to love your neighbor" → "The Year of Jubilee, when land returns and debts
    are released". *(Label changed from `medium`'s "unauthorized fire" to WEB's own word "strange
    fire," since this tier is the first to make "strange" a graded token — item 2 — and the mismatch
    between the label and the graded word is newly visible to a player once that's true.)*
11. **Boss MC — new**: Lev 25:17 (WEB, already-approved verse, reused, new question angle): "'You
    shall not wrong one another, but you shall fear your God; for I am Yahweh your God.'" — MC:
    "According to Leviticus 25:17, what does God tell the people to do instead of wronging one
    another?" Options: fear your God / build an altar / go to war / offer a sacrifice. Correct: fear
    your God.

*(Items 9-10 are exact reuses of already-reviewed `medium` boss items — deliberately, to keep the
boss battle's most weighty beats consistent across tiers while item 11 still adds one genuinely new
piece of content, the same ratio the Genesis and Exodus tiers established.)*

## Contested Territory

Everything already flagged in `docs/content/leviticus.md`/`docs/reviews/leviticus-review.md` applies
unchanged: the theological meaning of sacrifice and atonement (Leviticus 1, 17), the Nadab and Abihu
sensitivity note and its inherited **structural rule** (Lev 10:1-3 restricted to recall/fill-in-blank
or strict sequence format only, never multiple-choice, and 10:1-2/10:3 always presented together —
honored above, item 2), the Day of Atonement's ongoing significance in living Judaism, the Jubilee's
historicity debate, and the deliberate exclusion of Leviticus 11 (dietary law) and Leviticus 18/20
(sexual-purity legislation) — **confirmed again: no verse from any of those three chapters appears
anywhere in this brief.**

**Review's finding on the brief's original claim (§7 of `docs/reviews/leviticus-easy-review.md`):**
reusing already-approved verse text in new formats holds doctrinally (no graded token requires a
denominational position) but not structurally — format is not neutral. Three of the eleven items
changed what they grade when they changed format; two interact with existing bounding closely enough
to need a rule (below), and one (item 8, Lev 25:10) needed a required content fix (§6.1, applied
above). **Three forward-looking structural rules, added per review §6.6, replacing the brief's
original "no new ground" claim:**

- **Lev 1:4 (item 1)** — no challenge in any tier may grade *what the laying-on of the hand
  signified*. Review §4.1 confirmed a live split among mainstream Christian commentators alone
  (Gill: transfer of sin; Barnes: identification with the victim; Ellicott: transfer of the
  offerer's feelings; Matthew Henry: willing surrender; Keil-Delitzsch: explicitly rejects
  imputation-of-sin readings), before Jewish readings are even added (Rashi bounds the burnt
  offering's atoning scope halakhically). The bounding holds because every source is unanimous about
  *what was physically done* — which is all item 1 grades; no options are textually defensible
  answers to a question anchored on Leviticus 1:3-4. Grading *what the worshiper did* remains fine
  and is what item 1 does.
- **Lev 10:1 (item 2)** — no challenge may grade *what made the fire "strange"* or what Nadab and
  Abihu's specific offence was. Review §4.2 confirmed this is genuinely disputed (fire not taken from
  the altar; wrong timing; improperly compounded incense; each taking his own censer; intoxication;
  usurping the high priest's function — commentators converge on "unauthorized" as a summary and
  diverge on the specifics). Grading the WEB text's own word, with the verse displayed, is fine and is
  what item 2 does. Also recorded: "strange" is WEB-specific — the Revised JPS (2023) reads "alien"
  ([Sefaria](https://www.sefaria.org/api/texts/Leviticus.10.1?context=0)), and this project's own boss
  label previously said "unauthorized" (now aligned to WEB's "strange," item 10 above, §6.5(b)).
- **Lev 19:2 (item 5)** — no challenge may ask *what being holy consists of* or what the command
  refers back to; items stay on the verse's own stated grounding clause ("for I, Yahweh your God, am
  holy"). This keeps Leviticus 18 — the chapter this project excludes on child-safety grounds — out of
  reach of a future authoring pass. Review §4.5 found Rashi reads "You shall be holy" as pointing back
  to the forbidden-relations material in Leviticus 18; no excluded text enters the game via item 5,
  and every tradition agrees on the verse's own reason clause, but the open-ended "why" framing was
  the one thing that could invite drift toward that ground — closed by the item 5 stem fix above
  (§6.3) and this rule together.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, required fixes (§6.1,
      §6.2) and recommended strengthenings (§6.3–§6.7) applied above (see
      `docs/reviews/leviticus-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/leviticus-easy-verbatim-qa.md`. **The prior claim that this was "not required for this
      tier" is dropped per review §6.7(b)** — verification is cheap and, when the reviewer ran it
      anyway, it caught a labelling discrepancy and an ebible.org edition trap (review §1.1–§1.2) that
      would otherwise have gone to this QA pass unflagged.
- [x] Every challenge item traceable to one of the 5 already-approved pivotal passages
- [x] No new dietary-law (Leviticus 11) or sexual-purity-legislation (Leviticus 18, 20) verse appears
      anywhere in this brief — independently re-confirmed by the reviewer, including in distractors and
      boss labels (review §2)
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding — three
      structural rules added above per review §6.6, and the two format-change crossings (items 2, 8)
      fixed per §6.1–§6.2
