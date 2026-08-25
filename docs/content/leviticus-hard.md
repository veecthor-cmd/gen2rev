# Content Brief — Leviticus, Hard Tier (World 3)

Status: **approved-with-changes** — theological review complete, see
`docs/reviews/leviticus-hard-review.md`. The blocking fix (boss item 11's unlabelled trim) is applied
below, along with recommended strengthenings.

**Verbatim-text QA: `pass`** (see `docs/qa/leviticus-hard-verbatim-qa.md`) — all 8 newly-fetched
verses re-checked, with particular attention to boss item 11's corrected text and the quote-nesting
items flagged in the review's Finding B. Both required gates are now clear. **Eligible for
ingestion.**

Second half of the Leviticus tier-scaling pass (see `docs/content/leviticus-easy.md` for the shared
design rationale). Reuses the same 5 pivotal passages already approved in `docs/content/leviticus.md`
— no new passages — but selects less commonly memorized, more precise verses and skews toward typed
recall over multiple choice. **Per this assignment's brief, Leviticus 11 (dietary law) and Leviticus
18/20 (sexual-purity legislation) remain excluded entirely from MVP content, confirmed sound by the
medium review — that scope decision is not reopened here.** Review independently re-confirmed: **no
verse from Leviticus 11, 18, or 20 appears anywhere in this brief** (review §3.6).

Translation: World English Bible (WEB) throughout. **Every verse newly introduced by this tier
(regular items 1, 3-8, plus boss item 11 — 8 verses total) was fetched fresh from ebible.org on
2026-08-19** — none of these verses appear in `docs/content/leviticus.md`'s "Challenge-ready verses"
lists, so none of them carry prior verbatim-QA coverage. Regular item 2 (Lev 16:34) reuses text
`medium` already quoted verbatim but never used as a standalone item ("free" content, no fresh fetch
needed). Boss items 9-10 are exact reuses from `medium` and carry that brief's existing (partial)
verification.

---

## Design intent for this tier

Per the Genesis pilot's design rule: "hard... needs very deep scripture knowledge." This tier draws
on verses that are theologically or narratively significant but less likely to be immediately
recognized — precise procedural detail, secondary ethical instructions, exact phrasing — and requires
typed recall (no multiple-choice scaffolding) wherever the format allows. Same guardrails as every
other tier: verbatim WEB text only, narrative/legal fact only, no doctrinal position required. As in
`easy`, this brief works from Leviticus's already-established **pivotal passages**, not scenes — that
structural difference from Genesis/Exodus is carried forward unchanged.

## Pivotal Passages — reused from `docs/content/leviticus.md`, no new passages added

Same 5 passages as `medium` and `easy`: The Purpose of Sacrifice (Leviticus 1, 17), Nadab and Abihu
(Leviticus 10), The Day of Atonement (Leviticus 16), The Holiness Code (Leviticus 19), The Year of
Jubilee (Leviticus 25).

## Challenge Items (11: 8 regular + 3 boss)

Matches `medium`'s own shape (11 items, 3 boss — verified against `docs/ingest/exodus-leviticus.sql`,
same as `easy`, since `docs/content/leviticus.md` itself states counts only informally via its
difficulty-ladder examples, not a full item list).

### Regular (8)

1. **Lev 1:2** (WEB, new — fetched fresh 2026-08-19): "'Speak to the children of Israel, and tell
   them, "When anyone of you offers an offering to Yahweh, you shall offer your offering of the
   livestock, from the herd and from the flock."'" — recall: "...you shall offer your offering of
   the livestock, from the herd and from the ___." → **flock**. *(Ingestion note per review Finding
   B: WEB itself prints this as outer double quote, inner single quote, with no closing quote mark —
   the divine speech continues into v3. This brief's outer-single/inner-double nesting with a closing
   pair is the project's own established quoting convention for briefs, not WEB's actual punctuation;
   words are identical either way. Same cosmetic class already recorded for Lev 19:2 in
   `docs/qa/leviticus-verbatim-qa.md` and Gen 1:5 in `docs/reviews/genesis-easy-review.md` §5.1 —
   ingestion must store WEB's own nesting, not the brief's.)*
2. **Lev 16:34** (WEB, already-approved verse, free/unused in `medium`, reused as-is, different blank
   than `easy`'s MC item — recall format): "'This shall be an everlasting statute for you, to make
   atonement for the children of Israel once in the year because of all their sins.' It was done as
   Yahweh commanded Moses." — recall: "'This shall be an ___ statute for you, to make atonement for
   the children of Israel once in the year because of all their sins.' It was done as Yahweh
   commanded Moses." → **everlasting**. *(Recorded per review §3.5/Rec 6: this is the first tier to
   make "everlasting" itself the answer key — `easy` blanks the neutral "once in the year" instead —
   and "everlasting" is the precise hinge between the Jewish reading of the statute as standing and
   the Christian typological reading of the Day of Atonement as fulfilled. Nothing is violated: the
   inherited Day-of-Atonement bounding in `docs/reviews/leviticus-review.md` §3 already forbids
   grading whether the ritual is superseded, fulfilled, or still efficacious, and typing a word the
   text prints affirms nothing about whether the statute still binds. This note exists so the new
   blank position is recorded as expressly covered by that inherited rule, not routed through as
   unexamined free content.)*
3. **Lev 16:17** (WEB, new — fetched fresh 2026-08-19): "No one shall be in the Tent of Meeting when
   he enters to make atonement in the Holy Place, until he comes out, and has made atonement for
   himself and for his household, and for all the assembly of Israel." — recall: "...and has made
   atonement for himself and for his household, and for all the ___ of Israel." → **assembly**.
4. **Lev 19:11** (WEB, new — fetched fresh 2026-08-19; WEB prints this verse as three short clauses,
   each opening with its own nested quotation mark, since they continue the extended divine speech
   begun earlier in the chapter — combined here for verbatim display, noted for ingestion): "'You
   shall not steal. You shall not lie. You shall not deceive one another.'" — recall: "'You shall not
   steal. You shall not lie. You shall not deceive one ___.'" → **another**.
5. **Lev 19:14** (WEB, new — fetched fresh 2026-08-19): "'You shall not curse the deaf, nor put a
   stumbling block before the blind; but you shall fear your God. I am Yahweh.'" — recall: "'You
   shall not curse the deaf, nor put a stumbling block before the ___; but you shall fear your God. I
   am Yahweh.'" → **blind**. *(Contested-ground flag added per review §3.4/Rec 5 — the original draft
   did not flag this verse; see Contested Territory below.)*
6. **Lev 19:32** (WEB, new — fetched fresh 2026-08-19): "'You shall rise up before the gray head and
   honor the face of the elderly; and you shall fear your God. I am Yahweh.'" — recall: "'You shall
   rise up before the gray head and honor the face of the ___; and you shall fear your God. I am
   Yahweh.'" → **elderly**. *(Current WEB reads "the elderly"; this is worth noting the same way the
   Genesis easy review flagged an older-vs-current WEB wording difference at Gen 12:1 — confirmed
   against a fresh 2026-08-19 fetch rather than assumed from memory. Per review §4.1: WEB's "the
   elderly" is a modern rendering where KJV and much memorized English read "the old man" — a player
   drawing on another translation could type a defensible word and be marked wrong. The stem should
   visibly cite "Leviticus 19:32 (WEB)" so the expected wording is signaled, and the ingestion answer
   key should record "elderly" as the sole accepted token deliberately, not by oversight.)*
7. **Lev 25:9** (WEB, new — fetched fresh 2026-08-19): "'Then you shall sound the loud trumpet on the
   tenth day of the seventh month. On the Day of Atonement you shall sound the trumpet throughout all
   your land.'" — recall: "'Then you shall sound the ___ trumpet on the tenth day of the seventh
   month. On the Day of Atonement you shall sound the trumpet throughout all your land.'" → **loud**.
   *(Ties the Day of Atonement and Jubilee passages together — the trumpet that proclaims Jubilee is
   sounded specifically on the Day of Atonement. Ingestion note per review Finding B: neither live
   source prints an opening quote mark at the start of 25:9; this brief's leading single quote is the
   project's own bracketing convention, not WEB's own punctuation — words are identical either way.
   Land-rule scope widened per §3.3/Rec 4 — see Contested Territory below.)*
8. **Lev 25:23** (WEB, new — fetched fresh 2026-08-19): "'The land shall not be sold in perpetuity,
   for the land is mine; for you are strangers and live as foreigners with me.'" — recall: "'The land
   shall not be sold in perpetuity, for the land is ___; for you are strangers and live as foreigners
   with me.'" → **mine**. *(See Contested Territory below — rule confirmed necessary and widened per
   review §3.3/Rec 4.)*

### Boss (3)

9. **Boss recall — reused verbatim from `medium`**: Lev 17:11, "'For the life of the flesh is in the
   blood. I have given it to you on the altar to make atonement for your souls; for it is the blood
   that makes atonement by reason of the life.'" → blank on **life**.
10. **Boss recall — reused verbatim from `medium`**: Lev 10:1-3 (10:1-2 and 10:3 presented together,
    per the inherited structural rule), "Nadab and Abihu, the sons of Aaron, each took his censer,
    and put fire in it, and laid incense on it, and offered strange fire before Yahweh, which he had
    not commanded them. Fire came out from before Yahweh, and devoured them, and they died before
    Yahweh. Then Moses said to Aaron, 'This is what Yahweh spoke of, saying, "I will show myself holy
    to those who come near me, and before all the people I will be glorified."'" → blank on
    **glorified**. *(Carried-forward note per review Finding D, not re-opened: `docs/qa/leviticus-verbatim-qa.md`
    note 1 already records that Lev 10:3 continues "Aaron held his peace." after the quoted portion,
    unlabelled as a trim. Text and status unchanged from `medium`'s existing approval — recorded for
    consistency with item 11's fix below, not required to act on here.)*
11. **Boss recall — new**: Lev 16:2 (WEB, new — fetched fresh 2026-08-19; **restored to the full
    verse per review Finding A, required fix** — the prior draft opened directly at "Tell Aaron your
    brother..." with no trim label, though Lev 16:2 actually begins "Yahweh said to Moses," before
    the quoted command; both live sources agree on this. Every word the prior draft showed was
    verbatim WEB text — this was an unlabelled-trim defect, not paraphrase — but presenting part of a
    verse as *the* verse is the same content-integrity concern already ruled on at Gen 8:11. Restoring
    the full verse, per the review's stated secondary benefit, also makes the speaker explicit in the
    displayed text): "Yahweh said to Moses, 'Tell Aaron your brother not to come at just any time into
    the Most Holy Place within the veil, before the mercy seat which is on the ark; lest he die; for I
    will appear in the cloud on the mercy seat.'" — recall: "Yahweh said to Moses, 'Tell Aaron your
    brother not to come at just any time into the Most Holy Place within the veil, before the mercy
    seat which is on the ark; lest he ___; for I will appear in the cloud on the mercy seat.'" →
    **die**. *(See Contested Territory below — both the "mercy seat" and "lest he die" bounding rules
    are strengthened per review §3.1–§3.2.)*

*(Same reasoning as `easy`: items 9-10 reuse two of `medium`'s three already-reviewed boss items so
the new-verse review surface stays bounded, while item 11 adds a genuinely new challenge angle — the
instruction bounding *how* the high priest may approach, distinct from the Nadab-and-Abihu narrative
already reused.)*

## Contested Territory

Everything already flagged in `docs/content/leviticus.md`/`docs/reviews/leviticus-review.md` applies
unchanged: the theological meaning of sacrifice and atonement (Leviticus 1, 17), the Nadab and Abihu
sensitivity note and its inherited **structural rule** (Lev 10:1-3 restricted to recall/fill-in-blank
or strict sequence format only, never multiple-choice, and 10:1-2/10:3 always presented together —
honored above, boss item 10), the Day of Atonement's ongoing significance in living Judaism, the
Jubilee's historicity debate, and the deliberate exclusion of Leviticus 11 (dietary law) and
Leviticus 18/20 (sexual-purity legislation) — **confirmed again: no verse from any of those three
chapters appears anywhere in this brief.**

**New for this tier — not previously checked against live cross-tradition sources, flagged for the
theological reviewer with a proposed structural rule each:**

- **Lev 16:2** (boss item 11), "the mercy seat" (Hebrew *kapporet*). This is a real, live
  cross-tradition point, confirmed by the reviewer to be **stronger than originally described**
  (review §3.1): the divergence is not only interpretive but **translational** — Revised JPS renders
  it simply "the cover" (no "mercy seat"); the Catholic NABRE renders it "the cover on the ark" with a
  footnote stating outright that "the meaning of *kappōret* is not certain," while separately noting
  the Letter to the Hebrews' use of Day-of-Atonement imagery for Jesus' sacrifice; classic Protestant
  commentators are themselves split (Gill: "a type of heaven"; Keil & Delitzsch: where "Jehovah
  manifested His essential presence"; Cambridge Bible: flatly "a solid gold plate," no typology); and
  the Greek *hilastērion* debate at Romans 3:25 that the term feeds into is itself genuinely
  unresolved among commentators, not one side merely disputing a settled point. The item as written
  grades only the narrative-legal instruction itself (Aaron may not enter at will; doing so risks
  death; God appears there in the cloud) — never what the mercy seat represents or points to.
  **Structural rule, confirmed and strengthened per review §3.1: no challenge built from this verse
  (or any future verse naming "the mercy seat") may ask what the mercy seat signifies or represents
  theologically — only what the text instructs about approaching it. Added clause: "mercy seat" may
  never itself be the blanked token, in any tier, and the phrase is display-only.** This matters more
  here than the equivalent rule at Gen 1:26, since the phrase appears twice in item 11's displayed
  string and "before the mercy ___" is exactly the blank a future authoring pass would find
  attractive; because WEB's own wording here is itself a contested rendering, grading it would make
  the answer key depend on a translation choice. **A second, previously-unflagged clause in the same
  verse is also disputed:** "for I will appear in the cloud on the mercy seat" — Ellicott records a
  Pharisee/Sadducee dispute over whether the cloud is the incense smoke screening the deity or God's
  own glory cloud, Keil explicitly rejects the incense reading, and Rashi gives a halakhic reading
  requiring entry accompanied by the cloud of incense specifically. The item is safe as written (the
  blank is on "die," elsewhere in the verse), but per review §3.1 Recommendation 2: **the "cloud"
  clause is display-only; no challenge may grade what the cloud is or ask a player to identify it.**
- **Lev 16:2** (boss item 11), "lest he die." Confirmed by the sources themselves, not merely by
  textual adjacency (review §3.2): Rashi links the warning directly to the deaths of Aaron's sons,
  and Lev 16:1 itself frames the instruction as given "after the death of the two sons of Aaron." This
  sits in the same sensitivity family as the Nadab and Abihu restriction on Lev 10:1-3. Classic
  Protestant commentators all agree death is the stated consequence but diverge on why (presumption;
  a theological gloss about sinful humanity; a foreshadowing-of-Christ argument). The item grades only
  the plain narrative-legal fact of what the text states, never whether the consequence is
  proportionate or just. **Structural rule, confirmed and strengthened per review §3.2: no challenge
  built from this verse may ask a player to evaluate or justify the stated consequence — only what the
  text instructs, mirroring the existing Lev 10:1-3 bounding. Added clause (the rule's missing second
  limb): challenges built from Lev 16:2 are restricted to recall/fill-in-blank format, never
  multiple-choice or open-ended.** The original proposed rule forbade only evaluative framing, which
  would not have blocked a future MC item like "What would happen if Aaron entered the Most Holy Place
  at the wrong time? → he would die" — nothing evaluative, but exactly the shock-value standalone item
  the Lev 10:1-3 rule's format limb exists to prevent. Item 11 already complies with the added clause,
  so it costs nothing now and closes the gap for later passes.
- **Lev 25:23** (regular item 8), "the land is mine." This is a land-ownership/land-theology
  statement in the same family as the Abrahamic land-promise language already bounded narrative-only
  in the Genesis and Exodus reviews (Gen 12:1; Ex 3:7-8, "a land flowing with milk and honey"). Review
  §3.3 confirmed the rule is **more necessary than originally described**: beyond the classic
  commentary tradition's convergence on divine proprietorship (Jewish, Protestant sources all agree),
  this specific verse is **actively and currently contested in political theology on both sides** —
  invoked in Israel's 2017-18 Jubilee-year commemorations to assert historical claims, and equally
  invoked in critiques of Christian Zionism and in Palestinian-displacement arguments (Joseph 2020,
  *Biblical Theology Bulletin*). No challenge here asks a player to identify a specific territory or
  connect the statement to any present-day political or geopolitical claim — the item grades only the
  narrative-legal fact that the text states the land is not to be sold permanently, and every source
  on both sides of the modern dispute agrees the text says the land is God's; that is the shared
  premise the dispute starts from, not what it disagrees about. **Structural rule, confirmed and
  widened per review §3.3/Rec 4: no challenge built from this verse may ask a player to identify,
  bound, or connect "the land" to any present-day territorial or political claim. Widened scope: no
  challenge item, and no world flavour text, world description, or map/UI label in Leviticus's world,
  may identify, bound, name, or connect "the land" to any present-day territory, state, or political
  claim — extended explicitly to cover Lev 25:9 (item 7) and Lev 25:10 as well, since the modern
  argument turns specifically on Jubilee-as-restoration, which is what item 7's trumpet verse
  proclaims. Confining the rule to 25:23 alone would leave the adjacent Jubilee verses uncovered.**
- **Lev 19:14** (regular item 5), "the deaf" / "the blind." **Not flagged in the original draft;
  added per review §3.4/Rec 5.** This carries a well-documented literal-vs-figurative divergence:
  Rashi reads "stumbling block before the blind" metaphorically — "give not a person who is 'blind'
  in a matter an advice which is improper for him" — while classic Christian commentators split openly
  (Barnes and Pulpit Commentary read it literally, as protection of the physically vulnerable;
  Ellicott states the interpretation current "in the time of Christ" was figurative, forbidding
  imposition on the ignorant; Gill records the same figurative reading in Jewish sources Jarchi and
  Ben Gersom). The item is safe as written — the graded token is "blind," the literal word every
  tradition prints, and the disagreement is about what the word refers to, not what the word is.
  **Structural rule: no challenge may ask who "the deaf" or "the blind" refers to, or what conduct the
  command forbids — only the verbatim wording.** A stem like "what does Leviticus 19:14 forbid?" would
  sit directly on the divergence and must not be built.
- **No other new contested ground** — items 1-4, 6-7 (Lev 1:2; 16:34, 16:17; 19:11, 19:32; 25:9) are
  plain narrative/legal instruction with no live cross-tradition disagreement found, and boss items
  9-10 are unchanged reuses of already-bounded `medium` content. All contested items above — the three
  the brief originally flagged plus the one added per review — were checked against real, live sources
  representing genuinely different traditions and their narrative-only bounding holds in every case
  (`docs/reviews/leviticus-hard-review.md` §3.1–§3.4).

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, blocking fix (boss item
      11) and recommended strengthenings applied above (see `docs/reviews/leviticus-hard-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/leviticus-hard-verbatim-qa.md`. All 8 newly-fetched verses (items 1, 3-8, boss item 11)
      independently re-checked, with particular attention to boss item 11's corrected text and the
      quote-nesting items flagged in review Finding B; item 2 (Lev 16:34) reuses already-QA'd `medium`
      text, and boss items 9-10 carry `medium`'s existing verification.
- [x] Every challenge item traceable to one of the 5 already-approved pivotal passages
- [x] No new dietary-law (Leviticus 11) or sexual-purity-legislation (Leviticus 18, 20) verse appears
      anywhere in this brief
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding — the
      three originally-flagged items are confirmed and strengthened, and one previously-unflagged item
      (Lev 19:14) is now bounded, per review §3.1–§3.4
