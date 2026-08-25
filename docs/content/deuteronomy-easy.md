# Content Brief — Deuteronomy, Easy Tier (World 5)

Status: **approved-with-changes** — theological review complete, see
docs/reviews/deuteronomy-easy-review.md. All required fixes applied below.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/deuteronomy-easy-verbatim-qa.md`) — the text
changed while applying the review's fixes was independently re-checked against BibleGateway
(`version=WEB`); no discrepancies found. Both required gates are now clear. **Eligible for
ingestion.**

> **Verbatim-text caveat:** every newly-introduced verse below was retrieved via a live WebFetch
> call against ebible.org (WEB) on 2026-08-19. Verses already quoted verbatim in the approved
> `docs/content/deuteronomy.md` medium brief are reused as-is, without refetching, per this task's
> instructions — those verses already cleared theological review and are only being given a new
> question format or a different blank here. Theological review and the independent verbatim-text QA
> pass required by `QA_REQUIREMENTS.md` §3 are both now complete (see the Status line above) —
> eligible for ingestion.

This scales the difficulty-mode pipeline piloted on Genesis (see `docs/content/genesis-easy.md`,
`docs/reviews/genesis-easy-review.md`) and already applied to Numbers (`docs/content/
numbers-easy.md`) to Deuteronomy. It reuses the same 5 pivotal scenes already approved in
`docs/content/deuteronomy.md` — no new scenes — so the existing Contested Territory analysis for
those scenes still applies, with additions noted below. **Deuteronomy 28's graphic curse-list
content remains excluded entirely — no item below touches it.**

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per the difficulty-mode pattern established on Genesis: "easy... real simple." This tier draws the
most iconic, broadly-recognizable facts from Deuteronomy's 5 scenes and favors multiple-choice
recognition over typed recall wherever the scene's format rules allow, so a first-time or younger
player can succeed without prior Bible knowledge. It does **not** simplify or paraphrase verse text —
the style guide's "verbatim WEB text only" rule applies identically at every tier. One inherited
structural format restriction from `docs/reviews/deuteronomy-review.md` carries forward: Deuteronomy
30:19-20 may be used only in recall/fill-in-blank or sequence format, never multiple choice — this
brief's one item drawing on that verse (boss item, below) respects it. The book's other inherited
rule — Ten Commandments referenced by chapter:verse only, never by ordinal commandment number —
applies to every item touching Deuteronomy 5.

## Pivotal Scenes — reused from `docs/content/deuteronomy.md`, no new scenes added

Same 5 scenes: The Ten Commandments Restated (Deuteronomy 5), The Shema (Deuteronomy 6:4-9), The
Covenant Renewed: Blessing, Curse, and "Choose Life" (Deuteronomy 11, 27-28, 30), Moses Commissions
Joshua (Deuteronomy 31:1-8), The Death of Moses on Mount Nebo (Deuteronomy 34). Deuteronomy 28's
graphic curse-list content remains excluded, per `docs/content/deuteronomy.md`'s explicit exclusion —
no item below touches it.

## Challenge Items (12: 8 regular + 4 boss)

Matches the medium brief's own shape — `docs/content/deuteronomy.md` ingests as exactly 12 challenge
rows with 4 marked `is_boss_item` (see `docs/ingest/numbers-deuteronomy.sql`).

### Regular (8)

1. **Deut 5:6-7** (WEB, already-approved verse, new format): "I am Yahweh your God, who brought you
   out of the land of Egypt, out of the house of bondage. You shall have no other gods before me." —
   MC: "According to Deuteronomy 5:6-7, what does Yahweh say Israel shall have none of, before him?"
   Options: Other gods / Other kings / Other prophets / Other laws. Correct: Other gods.
2. **Deut 5:16** (WEB, already-approved verse, new format): "Honor your father and your mother, as
   Yahweh your God commanded you, that your days may be long and that it may go well with you in the
   land which Yahweh your God gives you." — MC: "What does Deuteronomy 5:16 command?" Options:
   Honor your father and your mother / Observe the Sabbath day, to keep it holy / You shall not give
   false testimony against your neighbor / You shall not covet your neighbor's wife. Correct: Honor
   your father and your mother. *(Referenced by chapter:verse only, per the book's inherited
   numbering rule — see Contested Territory below. Distractors reworded per review §6.5 to WEB
   Deuteronomy 5's own wording — the original distractors used KJV/Exodus phrasing ("Remember the
   Sabbath day," "Do not bear false witness," "Do not covet your neighbor's house") found nowhere in
   WEB Deuteronomy 5.)*
3. **Deut 6:6-7** (WEB, already-approved verse, new format): "These words, which I command you
   today, shall be on your heart; and you shall teach them diligently to your children, and shall
   talk of them when you sit in your house, and when you walk by the way, and when you lie down, and
   when you rise up." — MC: "According to Deuteronomy 6:6-7, where does Moses say these words shall
   be?" Options: On your heart / Written on stone tablets only / In the ark of the covenant only /
   In the Tent of Meeting only. Correct: On your heart.
4. **Deut 11:26-28** (WEB, already-approved verse, new format): "Behold, I set before you today a
   blessing and a curse: the blessing, if you listen to the commandments of Yahweh your God, which I
   command you today; and the curse, if you do not listen to the commandments of Yahweh your God,
   but turn away out of the way which I command you today, to go after other gods which you have not
   known." — MC: "According to Deuteronomy 11:26-28, what did Moses set before the people?" Options:
   A blessing and a curse / A song and a prayer / A census and a map / A feast and a fast. Correct:
   A blessing and a curse.
5. **Deut 31:2-3** (WEB, new — free content: listed in `docs/content/deuteronomy.md`'s
   challenge-ready verses for this scene but never turned into a standalone medium item; WEB,
   trimmed per review §6.3 — v2 opens "He said to them," before "I am one hundred twenty years old
   today"): "...I am one hundred twenty years old today. I can no more go out and come in. Yahweh
   has said to me, 'You shall not go over this Jordan.' Yahweh your God himself will go over before
   you. He will destroy these nations from before you, and you shall dispossess them. Joshua will go
   over before you, as Yahweh has spoken." — MC: "According to Deuteronomy 31:2-3, how old did Moses
   say he was?" Options: 120 years old / 80 years old / 100 years old / 40 years old. Correct: 120
   years old. *(Grades only Moses's stated age and the plain fact he would not cross the Jordan —
   never why; see Contested Territory below.)*
6. **Deut 31:7-8** (WEB, already-approved verse, new format/angle — different question than
   `medium`'s): "Moses called to Joshua, and said to him in the sight of all Israel, 'Be strong and
   courageous, for you shall go with this people into the land which Yahweh has sworn to their
   fathers to give them; and you shall cause them to inherit it. Yahweh himself is who goes before
   you. He will be with you. He will not fail you nor forsake you. Don't be afraid. Don't be
   discouraged.'" — MC: "According to Deuteronomy 31:7-8, who did Moses call to speak to in the
   sight of all Israel?" Options: Joshua / Aaron / Caleb / Eleazar. Correct: Joshua.
7. **Deut 34:4-5** (WEB, already-approved verse, new format): "Yahweh said to him, 'This is the land
   which I swore to Abraham, to Isaac, and to Jacob, saying, "I will give it to your offspring." I
   have caused you to see it with your eyes, but you shall not go over there.' So Moses the servant
   of Yahweh died there in the land of Moab, according to Yahweh's word." — MC: "According to
   Deuteronomy 34:4-5, what did Yahweh show Moses?" Options: The land he swore to Abraham, Isaac, and
   Jacob / The city of Jerusalem / The Ark of the Covenant / The tablets of the Law. Correct: The
   land he swore to Abraham, Isaac, and Jacob. *(Stem tightened per review §6.6 — dropped "from the
   mountain," since 34:4-5, the cited text, never mentions a mountain; that detail is in 34:1.)*
8. **Deut 34:7** (WEB, already-approved verse, listed in the original medium brief, reused with a
   new format — recall instead of `medium`'s MC): "Moses was one hundred twenty years old when he
   died. His eye was not dim, nor his strength gone." — recall: "Moses was one hundred twenty years
   old when he died. His eye was not dim, nor his strength ___." → **gone**.

### Boss (4)

9. **Deut 6:4-5** — reused verbatim from `medium`: "Hear, Israel: Yahweh is our God. Yahweh is one.
   You shall love Yahweh your God with all your heart, with all your soul, and with all your might."
   — recall: "Hear, Israel: Yahweh is our God. Yahweh is one. You shall love Yahweh your God with
   all your heart, with all your soul, and with all your ___." → **might**.
10. **Deut 34:10** (fixed per review §6.2 required fix — WEB ends v10 with a comma, not a period; the
    sentence runs on through vv.11-12. This error was inherited from `docs/content/deuteronomy.md`,
    which has the same period; that is a `medium`-tier defect outside this brief's scope to fix, but
    the review requires this tier's copy to carry the correct punctuation): "Since then, there has
    not arisen a prophet in Israel like Moses, whom Yahweh knew face to face," — recall: "Since then,
    there has not arisen a ___ in Israel like Moses, whom Yahweh knew face to face," → **prophet**.
11. **Deut 30:19-20** (WEB, already-approved verse, new blank — different from `medium`'s blank
    "life") — recall only, per the inherited structural rule (never multiple choice): "I call heaven
    and earth to witness against you today that I have set before you life and death, the blessing
    and the curse. Therefore choose life, that you may live, you and your descendants, to love
    Yahweh your God, to obey his voice, and to cling to him; for he is your life, and the length of
    your days, that you may dwell in the land which Yahweh swore to your fathers, to Abraham, to
    Isaac, and to Jacob, to give them." — "Therefore choose life, that you may live, you and your
    ___, to love Yahweh your God, to obey his voice, and to cling to him." → **descendants**.
12. **Deut 34:1** (WEB, new; full verse restored per review §6.1 required fix — the draft previously
    ended at "...opposite Jericho," omitting the clause that actually supports the stem's "to see the
    promised land" framing): "Moses went up from the plains of Moab to Mount Nebo, to the top of
    Pisgah, that is opposite Jericho. Yahweh showed him all the land of Gilead to Dan," — MC:
    "According to Deuteronomy 34:1, where did Moses go up to see the promised land?" Options: Mount
    Nebo / Mount Sinai / Mount Carmel / Mount Horeb. Correct: Mount Nebo.

*(Items 9-10 are exact reuses of already-reviewed `medium` boss items — deliberately, to keep the
boss battle's two most central passages (the Shema; the book's closing line about Moses) consistent
across tiers, the same principle `docs/content/genesis-easy.md`/`genesis-hard.md` applied to the
Joseph sequence. Item 11 reuses an already-approved verse in a new blank — zero incremental text
risk, same principle as items 1-4, 6-7. Item 12 is this tier's only genuinely new boss verse, and
gives the Mount Nebo death scene its own iconic, easy-tier-appropriate fact for the capstone battle.)*

## Contested Territory

Everything already flagged in `docs/content/deuteronomy.md` applies unchanged: the Ten Commandments
numbering difference (items 1, 2 — referenced by chapter:verse only, never by ordinal number, per the
book's structural rule); Deuteronomy 28's graphic curse-list content (excluded entirely, not touched
by any item); the Shema's later liturgical role (item 3 — scoped to recall/narrative-fact only, no
question about liturgical use or NT citation); the choose-life/free-will framing and Deuteronomy
30:19-20's inherited "recall/fill-in-blank/sequence only, never multiple choice" rule (item 11,
applied); violent-conquest language adjacent to the Joshua-commissioning scene (item 6 — stays on the
succession/encouragement content in 31:7-8, avoids the destruction-of-nations clauses in the
surrounding verses, same as `medium`). Moses' unmarked grave (34:6) is not used by any item in this
tier — no engagement.

**New for this tier — flagged for the theological reviewer, not resolved here:**

- **Deuteronomy 31:2-3** (item 5), "I am one hundred twenty years old today. I can no more go out
  and come in. Yahweh has said to me, 'You shall not go over this Jordan.'" *(Rationale corrected
  per review §6.4 — the earlier claim that "the reason… is given elsewhere, in Numbers 20, outside
  this book's scope" is factually wrong: Deuteronomy states its own reason, twice, at **Deut 1:37
  and 3:26** ("Yahweh was angry with me because of you, and didn't listen to me"), which differs in
  emphasis from Numbers 20:12's framing. The tension is internal to Deuteronomy, not safely
  quarantined in another book.)* The item is nonetheless safe: every tradition checked (Jewish/
  Rashi, classic Christian commentators, contemporary evangelical) agrees Moses said he was 120, and
  nothing in the dispute over *why* he was barred touches that number. **Structural rule: no item in
  any tier may grade *why* Moses was barred from crossing the Jordan** — readings genuinely diverge
  across traditions (Rashi: failure of belief plus public desecration of the Name; evangelical
  readings: struck rather than spoke, took credit, and — distinctively Christian — broke a
  rock-as-Christ typology; classic commentators: dual causation with the people).
  *(Additionally, per review §6.3(b): the claim that destruction-of-nations clauses are "avoided as
  quotable text" is corrected — item 5 quotes Deut 31:3 in full, including "He will destroy these
  nations from before you, and you shall dispossess them." The clauses actually avoided are 31:4-5
  (Sihon and Og); 31:3's summary clause is displayed but never graded. No item in this brief grades
  or asks about the conquest.)*
- **Deuteronomy 31:2, "I can no more go out and come in."** *(New guard added per review §6.4.)*
  Display-only; never a graded token, never an MC subject. Rashi reads it as "I am not permitted"
  (authority transfer / wellsprings of wisdom stopped, Sotah 13b); classic Christian commentators
  (Barnes, Gill, Henry, Pulpit, Keil-Delitzsch) read it as inability to discharge the office of
  leader. Both traditions agree it is **not** a statement of physical frailty — which is the reading
  a beginner is most likely to form, especially since item 8 (three items later) has the player type
  "gone" into "nor his strength ___." Neither reading is ever asked of a player.
- **Deuteronomy 5 verse numbering.** *(New guard added per review §6.4.)* The Revised JPS footnote at
  Deut 5:6 states tradition varies as to both the division of the commandments and the numbering of
  the verses in vv. 6–18. The chapter:verse mitigation therefore neutralises the *commandment*-
  numbering dispute (its intended job) but is not a universally-shared *locator* for this chapter.
  **Rule: items on Deut 5 must always display the WEB verse text alongside the reference, never the
  reference alone.** Items 1 and 2 already do this.
- **Deuteronomy 34:1** (item 12), "Moses went up from the plains of Moab to Mount Nebo, to the top of
  Pisgah, that is opposite Jericho." Plain geographic/narrative fact, no cross-tradition dispute
  identified — flagging only for completeness since it's new text.
- **No other new contested ground** — items 1, 2, 3, 4, 6, 7, 8, 9, 10, 11 are plain narrative
  description or exact/near-exact reuse of already-bounded `medium` text.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required fixes
      applied above (see `docs/reviews/deuteronomy-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/deuteronomy-easy-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without an explicit, proposed bounding
      (pending reviewer confirmation)
- [x] Deuteronomy 30:19-20 used only in recall format, no multiple choice (item 11)
- [x] Ten Commandments referenced by chapter:verse only, never by ordinal number (items 1, 2)
- [x] Deuteronomy 28's graphic curse-list content not touched by any item
