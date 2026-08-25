# Content Brief — Joshua, Easy Tier (World 6)

Status: **approved-with-changes** — theological review complete, see
`docs/reviews/joshua-easy-review.md`. All required fixes (Findings A-D) applied below. **Item 10's
`escalate-to-human` finding is now resolved** — see the addendum at the bottom of the review file and
the note at item 10 below. Kachi Okere, as the named human theological reviewer for this book
(2026-08-08 sign-off), chose the review's preferred resolution: the blanked token moves from "Gaza" to
"Gibeon" (2026-08-22). All 10 items are now `approved-with-changes` and eligible for ingestion.

**Verbatim-text QA: `pass` for all 10 items** (items 1-9: 2026-08-20; item 10: 2026-08-22, after the
blank moved to "Gibeon") — see `docs/qa/joshua-easy-verbatim-qa.md`. Every piece of text changed while
applying Findings A-D, plus item 10's new blank, was independently re-verified against BibleGateway
(WEB); no discrepancies found.

> **Verbatim-text note:** every verse used in this brief reuses text already fetched fresh from
> ebible.org and verified (single- or dual-source, per verse) in the approved medium brief
> `docs/content/joshua.md` and its review `docs/reviews/joshua-review.md` §1. **No new verse text is
> introduced anywhere in this brief** — every quotation below is copied verbatim from that
> already-approved source, per the explicit exception for reusing already-verified text. Per
> `QA_REQUIREMENTS.md` §3, independent verbatim QA is still required before ingestion regardless.

Part of scaling the difficulty-mode pipeline piloted on Genesis (`docs/content/genesis-easy.md`,
`docs/content/genesis-hard.md`) to Joshua, Judges, and Ruth. Reuses the same 5 pivotal scenes already
approved in `docs/content/joshua.md` — **no new scenes** — so the existing Contested Territory
analysis for those scenes applies unchanged, including the **permanent exclusion of the
ḥerem/destruction-clause verses (Joshua 6:17, 6:21, 10:40)**, confirmed by Kachi Okere as the named
human theological reviewer on 2026-08-08. That exclusion is treated as absolute and non-negotiable
in this brief — none of the items below touch that text, directly or by proximity.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per Kachi's "easy... real simple" design direction (established for the Genesis pilot). This tier
draws the most iconic, broadly-recognizable facts from Joshua's 5 approved scenes and favors
multiple-choice recognition over typed recall, so a first-time player with no Bible background can
succeed. Given Joshua's especially sensitive Contested Territory (see `docs/content/joshua.md`'s
ḥerem material), this tier deliberately draws **only** on verse text already quoted verbatim and
reviewed in the medium brief — introducing zero new verses keeps this tier's incremental review risk
at zero for the book's most sensitive scenes.

## Pivotal Scenes — reused from `docs/content/joshua.md`, no new scenes added

Same 5 scenes: Crossing the Jordan (Joshua 3-4), Rahab and the Spies (Joshua 2), The Fall of Jericho
(Joshua 6), The Conquest Campaigns (Joshua 10-11, geographic/summary verses only), Dividing the Land
(Joshua 14, 21:43-45).

## Challenge Items (10: 7 regular + 3 boss)

### Regular (7)

1. **Josh 2:1** (WEB, already-approved verse, trimmed, new format): "Joshua the son of Nun secretly
   sent two men out of Shittim as spies, saying, 'Go, view the land, including Jericho.'..." *(Fix per
   review Finding A: the verse continues "They went and came into the house of a prostitute whose name
   was Rahab, and slept there" — the brief now marks the trim with a trailing ellipsis rather than
   presenting the quoted portion as the whole verse.)* — MC: "What did Joshua tell the two spies to
   do?" Options: View the land, including Jericho / Attack the king of Jericho / Bring back gold from
   Jericho / Meet with Rahab in secret. Correct: View the land, including Jericho.
2. **Josh 2:21** (WEB, already-approved verse, new format): "She said, 'Let it be as you have said.'
   She sent them away, and they departed. Then she tied the scarlet line in the window." — MC: "What
   did Rahab tie in her window as a sign?" Options: a scarlet line / a white flag / a blue cord / a
   bundle of straw. Correct: a scarlet line.
3. **Josh 3:16-17** (WEB, already-approved verse, new format; *citation narrowed from "3:15-17" to
   "3:16-17" per review Finding F — the quoted text is entirely from 3:16-17, 3:15 (the priests' feet
   dipping in the water) is omitted*): "...the waters which came down from
   above stood, and rose up in one heap a great way off, at Adam, the city that is beside Zarethan...
   Then the people passed over near Jericho. The priests who bore the ark of Yahweh's covenant stood
   firm on dry ground in the middle of the Jordan; and all Israel crossed over on dry ground, until
   all the nation had passed completely over the Jordan." — MC: "How did Israel cross the Jordan
   River?" Options: On dry ground, because the waters stood in a heap / By boat, one tribe at a time
   / By swimming across / They did not cross the Jordan. Correct: On dry ground, because the waters
   stood in a heap.
4. **Josh 4:6-7** (WEB, already-approved verse, new format): "...that this may be a sign among you,
   that when your children ask in the future, saying, What do you mean by these stones? then you
   shall tell them, Because the waters of the Jordan were cut off before the ark of Yahweh's
   covenant. When it crossed over the Jordan, the waters of the Jordan were cut off. These stones
   shall be for a memorial to the children of Israel forever." — MC: "What were the stones set up at
   the Jordan to help future generations remember?" *(Fix per review Finding C, secondary note: stem
   no longer says "twelve," since that number appears in 4:8/4:20, not in the displayed 4:6-7 text.)*
   Options: That the waters of the Jordan were cut off before the ark of Yahweh's covenant / A battle
   Israel won at Jericho / The Ten Commandments / Moses' death. **Correct: That the waters of the
   Jordan were cut off before the ark of Yahweh's covenant.** *(Fix per review Finding C, primary: the
   answer key now states the verbatim option string, matching every other item in the brief, rather
   than the unmatched paraphrase "the Jordan crossing.")*
5. **Josh 6:20** (WEB, already-approved verse, new format): "So the people shouted and the priests
   blew the trumpets. When the people heard the sound of the trumpet, the people shouted with a great
   shout, and the wall fell down flat, so that the people went up into the city, every man straight
   in front of him, and they took the city." — MC: "What happened when the people shouted and the
   priests blew the trumpets at Jericho?" Options: The wall fell down flat / The city gates opened
   peacefully / Nothing happened / The people were struck silent. Correct: The wall fell down flat.
6. **Josh 6:25** (WEB, already-approved verse, new format): "But Rahab the prostitute, her father's
   household, and all that she had, Joshua saved alive. She lives in the middle of Israel to this
   day, because she hid the messengers whom Joshua sent to spy out Jericho." — MC: **"According to
   Joshua 6:25, whom did Joshua save alive?"** *(Fix per review Finding B, part 1: stem re-anchored to
   the verse's own language, removing the unanchored-stem ambiguity class.)* Options: Rahab and her
   father's household / The king of Jericho / All the city's soldiers / **The two spies' own
   families**. *(Fix per review Finding B, part 2: the distractor "No one was spared" is replaced —
   that distractor required the player to reason about the fate of the rest of Jericho's population,
   which is Joshua 6:21's content, the permanently excluded verse, reached by inference rather than
   quotation. The replacement distractor carries no claim about the population's fate.)* Correct: Rahab
   and her father's household.
7. **Josh 14:10-12** (WEB, already-approved verse, new format): "...Now, behold, I am eighty-five
   years old, today. As yet I am as strong today as I was in the day that Moses sent me... Now
   therefore give me this hill country, of which Yahweh spoke in that day..." *(Casing corrected per
   review Finding H: both live sources capitalize "Now" — it opens the second sentence of 14:10; the
   prior draft's lower-case "now" was a one-character deviation inherited from the medium brief.)* —
   MC: "How old was Caleb when he asked Joshua for the hill country?" Options: eighty-five years old /
   forty years old / one hundred years old / twenty years old. Correct: eighty-five years old.

### Boss (3)

8. **Boss sequence — new** (card labels — narrative summary, not verse quotation; *fix per review
   Finding E: quotation marks and per-card verse citations removed so these summaries cannot be
   mistaken for scripture*): Order the entry-into-Canaan story (Josh 2:1; 3:16-17; 4:6-7; 6:20):
   Joshua sends two spies to Jericho → Israel crosses the Jordan on dry ground → stones are set up as
   a memorial → Israel marches around Jericho and the wall falls.
9. **Boss recall — new**: **Josh 21:43-45** (WEB, already-approved verse): "So Yahweh gave to Israel
   all the land which he swore to give to their fathers. They possessed it, and lived in it. Yahweh
   gave them rest all around, according to all that he swore to their fathers. Not a man of all their
   enemies stood before them. Yahweh delivered all their enemies into their hand. Nothing failed of
   any good thing which Yahweh had spoken to the house of Israel. All came to pass." — recall: "So
   Yahweh gave to Israel all the ___ which he swore to give to their fathers." → **land**. *(Recall
   format only, per the existing structural rule below — never multiple-choice.)*
10. **Boss recall — genuinely new item — escalation resolved 2026-08-22**: **Josh 10:41-42**
    (WEB, already-approved verse, the only two verses approved for Scene 4): "Joshua struck them from
    Kadesh Barnea even to Gaza, and all the country of Goshen, even to Gibeon. Joshua took all these
    kings and their land at one time because Yahweh, the God of Israel, fought for Israel." — recall:
    "Joshua struck them from Kadesh Barnea even to Gaza, and all the country of Goshen, even to
    ___." → **Gibeon**. *(Recall format only, per the existing structural rule below — this is Scene
    4's first appearance as a standalone challenge item at any tier.)*

    > **Escalation resolved 2026-08-22.** The review's verdict was `escalate-to-human`, narrowly and
    > only for this item's graded token — the original draft blanked "Gaza," a place name the review
    > found is actively invoked in present-day political debate, immediately after the permanently
    > excluded 10:40. Kachi Okere, the named human theological reviewer who set this book's bounding
    > on 2026-08-08, chose the review's **preferred option**: move the blank to "Gibeon" instead — same
    > verse, same recall format, same difficulty class, politically inert, and distinct from
    > `joshua-hard.md`'s item 10 (which blanks "Goshen," also from 10:41). See the addendum at the
    > bottom of `docs/reviews/joshua-easy-review.md` for the full record of this decision.

*(Items 8-9 are shared verbatim with `docs/content/joshua-hard.md`'s boss set, keeping the boss
battle's core beats consistent across tiers, per the same design used for the Genesis pilot. Item 10
is this tier's one genuinely new boss item — a new challenge instance, not new verse text.)*

## Contested Territory

Everything already flagged in `docs/content/joshua.md` applies unchanged, in particular the ḥerem
material discussion and Kachi's 2026-08-08 sign-off. **Nothing new is introduced by this brief**: no
new verse, no new scene. The self-check below confirms this tier's items comply with the existing
structural rules rather than assuming it.

- **Ḥerem/destruction-clause verses (6:17, 6:21, 10:40) — confirmed absent.** None of the 10 items
  above quote, paraphrase, or reference this text. Scene 3 items (5, 6) use only 6:20 and 6:25, the
  same two non-excluded verses the medium brief approved. Scene 4 items (10, plus the sequence
  reference implicit in item 8 not including Scene 4 at all) use only 10:41-42.
- **Scene 4 (Conquest Campaigns) format compliance.** The existing structural rule requires any
  challenge item drawing on this scene to be "recall/fill-in-blank format only, never
  multiple-choice framed around motive or justification." Item 10 (this tier's only Scene 4 item) is
  recall/fill-in-blank, grades only the place name "Gibeon" (moved from "Gaza" per the 2026-08-22
  escalation resolution — see item 10), and makes no claim about motive or justification.
  **Compliant.**
- **Scene 5, Josh 21:43-45 format compliance.** The existing structural rule requires
  recall/fill-in-blank or narrative-sequence format only, never multiple-choice framed around any
  present-day claim. Item 9 (this tier's only 21:43-45 item) is recall/fill-in-blank, grades only the
  word "land," and makes no present-day claim. **Compliant.**
- **Rahab as "the prostitute" (Josh 2:1, 6:25).** Inherited note from the medium brief (age-appropriate
  UI/voice-over handling, not a challenge-content issue) — not re-litigated here, no new decision
  needed.
- **Joshua 21:43-45 fulfilment dispute — new bullet, added per review Finding D.** `CONTENT_STYLE_GUIDE.md`
  §3 names "covenant theology vs. dispensationalism readings" as out-of-bounds by name, and 21:43-45 is
  one of that dispute's standard battlegrounds: whether "Yahweh gave to Israel **all** the land"
  records complete, closed fulfilment of the Abrahamic land promise or a partial fulfilment awaiting
  future restoration. Classic Protestant commentators wrestle with the tension against Joshua 13:1/
  Judges 1; dispensational sources (The Master's Seminary Journal 24/1) read 21:43-45 as not marking
  completed fulfilment; covenantal/Reformed sources read it as fulfilment already accomplished; the
  Revised JPS (Sefaria) renders the verse compatibly with all of the above. Item 9's graded token
  ("land") is rendered identically across every position — the dispute attaches to the quantifier "all"
  and the verb "gave," neither of which is graded. **Structural rule: the quantifier "all" in 21:43 may
  never be the blanked token, and no item at any tier may ask whether the promise was completely
  fulfilled, or offer "all"/"part" of the land as multiple-choice options.**
- **Joshua 2:10 ḥerem-vocabulary note — added for completeness per `docs/reviews/joshua-hard-review.md`
  Finding R3, which asks that this note be carried to every Joshua brief even where the verse isn't
  used.** Joshua 2:10's second half ("...and what you did to the two kings of the Amorites... whom you
  utterly destroyed") contains ḥerem vocabulary (Revised JPS: "whom you doomed"). This brief does not
  use 2:9-11 at all (item 1 uses only 2:1, trimmed before Rahab's speech), so no item here is affected —
  but the rule binds this brief too: **that clause is never display text, never a graded token, and
  never a challenge subject at any tier.**
- **No other new contested ground.** Every item above draws on verse text already verified in
  `docs/reviews/joshua-review.md` §1; no new geography, quotation, or narrative claim beyond what
  that review already checked.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `escalate-to-human` scoped narrowly to item 10's
      graded token; items 1-9 `approved-with-changes`, all required fixes (Findings A-D) applied above
      (see `docs/reviews/joshua-easy-review.md`). **Item 10's escalation resolved 2026-08-22 by Kachi
      Okere** (blank moved to "Gibeon" — the review's preferred option). All 10 items now
      `approved-with-changes` and eligible for ingestion.
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass` for all 10
      items, see `docs/qa/joshua-easy-verbatim-qa.md`.
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No new verse text introduced — every quotation copied verbatim from `docs/content/joshua.md`
- [x] Ḥerem/destruction-clause verses (6:17, 6:21, 10:40) do not appear anywhere in this brief
      (re-confirmed after all edits above — none of the fixes touched or introduced this text)
- [x] Scene 4 and Scene 5 items comply with their existing recall-only/sequence-only structural
      rules (self-checked above; confirmed on review)
