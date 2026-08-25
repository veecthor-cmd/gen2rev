# Content Brief — Exodus, Easy Tier (World 2)

Status: **approved-with-changes** — theological review complete, see
`docs/reviews/exodus-easy-review.md`. All required fixes applied below.

**Verbatim-text QA: `pass`** (see `docs/qa/exodus-easy-verbatim-qa.md`) — the review's §5.1 finding
that this tier does carry new player-facing strings/answer-key tokens (items 2, 4, 7, 12) was
correct; the acceptance-criteria claim that verbatim QA could be skipped is struck (§6.6). All
independently re-checked, zero discrepancies. Both required gates are now clear. **Eligible for
ingestion.**

Scaling the difficulty-mode pipeline piloted on Genesis (`docs/content/genesis-easy.md`,
`docs/content/genesis-hard.md`) to Exodus. Reuses the same 5 pivotal scenes already approved in
`docs/content/exodus.md` (no new scenes), so the existing Contested Territory analysis for those
scenes (`docs/reviews/exodus-review.md`) still applies and is carried forward below.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.
Every verse below was either (a) already quoted verbatim in the approved `docs/content/exodus.md`
medium brief and reused as-is without refetching, or (b) trimmed/re-cut further than `medium` for
this tier. **Review §5.1 found the brief's original claim that "no new verses were fetched" was not
accurate** — items 2, 4 and 7 carry new trims, a re-cut answer-key token, and abbreviated distractor
strings respectively, relative to `medium`. Canonical verification source for this book and QA pass:
`https://ebible.org/web/` (not `ebible.org/engwebp/`, which renders the divine name "the LORD" instead
of "Yahweh" — per review §1.1).

---

## Design intent for this tier

Per the Genesis pilot's design rule: "easy... real simple." This tier draws the most iconic,
broadly-recognizable facts from each of Exodus's 5 scenes and favors multiple-choice recognition
over typed recall, so a first-time or younger player can succeed without prior Bible knowledge. It
does **not** simplify or paraphrase verse text — verbatim WEB text only, at every tier.

## Pivotal Scenes — reused from `docs/content/exodus.md`, no new scenes added

Same 5 scenes: Moses' Call at the Burning Bush (Exodus 3), The Plagues and the Passover
(Exodus 7-12), The Crossing of the Red Sea (Exodus 14), Sinai: Covenant and the Ten Commandments
(Exodus 19-20), The Golden Calf (Exodus 32).

## Challenge Items (12: 8 regular + 4 boss)

Matches `medium`'s own shape — `docs/ingest/exodus-leviticus.sql` shows Exodus's medium tier
ingesting 12 challenge rows, 4 of them `is_boss_item = true` — verified directly against that file
rather than assumed.

### Regular (8)

1. **Ex 3:5** (WEB, already-approved verse, new format): "He said, 'Don't come close. Take off your
   sandals, for the place you are standing on is holy ground.'" — MC: "What did God tell Moses to
   take off at the burning bush?" Options: his sandals / his cloak / his staff / his ring. Correct:
   his sandals.
2. **Ex 3:7-8** (WEB, trimmed; corrected per review §6.3 — the prior draft dropped the opening
   "Yahweh said," with no leading ellipsis and stopped at "milk and honey" with no trailing ellipsis
   though v8 continues; both restored below): "Yahweh said, 'I have surely seen the affliction of my
   people who are in Egypt, and have heard their cry because of their taskmasters, for I know their
   sorrows. I have come down to deliver them out of the hand of the Egyptians, and to bring them up
   out of that land to a good and large land, to a land flowing with milk and honey...'" — MC:
   "According to Exodus 3:7-8, what did God say he had come down to do?" Options: deliver his people
   out of the hand of the Egyptians / punish Moses / build a temple / crown a new king. Correct:
   deliver his people out of the hand of the Egyptians. *(See Contested Territory below on the "land
   flowing with milk and honey" phrase.)*
3. **Ex 12:12-13** (WEB, already-approved verse, new format): "'For I will go through the land of
   Egypt in that night, and will strike all the firstborn in the land of Egypt, both man and animal.
   I will execute judgments against all the gods of Egypt. I am Yahweh. The blood shall be to you for
   a token on the houses where you are. When I see the blood, I will pass over you, and no plague
   will be on you to destroy you when I strike the land of Egypt.'" — MC: "According to Exodus
   12:13, what would happen when God saw the blood on the houses?" Options: he would pass over them
   / he would send another plague / he would take the firstborn anyway / he would ignore the sign.
   Correct: he would pass over them.
4. **Ex 12:29-30** (WEB, already-approved verse; blank position corrected per review §6.2 — restored
   to `medium`'s "firstborn", not the graphic "dead" the prior draft silently substituted) — recall:
   "At midnight, Yahweh struck all the ___ in the land of Egypt, from the firstborn of Pharaoh who
   sat on his throne to the firstborn of the captive who was in the dungeon, and all the firstborn of
   livestock. Pharaoh rose up in the night, he, and all his servants, and all the Egyptians; and there
   was a great cry in Egypt, for there was not a house where there was not one dead." → **firstborn**.
   *(Structural rule inherited unchanged from `docs/content/exodus.md`'s Contested Territory: this
   verse may only be used in recall/fill-in-blank or strict sequence-order format — never multiple-
   choice or "describe what happened" — and must not be the first item a player sees in this scene's
   set, and should be sequenced after the Passover-institution material. Both conditions are
   satisfied: this item is recall-only, and it is sequenced after item 3, the Passover-institution
   verse, not before it.)*
5. **Ex 14:30-31** (WEB, trimmed exactly as in `medium`, already-approved — used only inside a
   sequence item there, never as its own item — free content): "Thus Yahweh saved Israel that day
   out of the hand of the Egyptians... Israel saw the great work which Yahweh did to the Egyptians,
   and the people feared Yahweh; and they believed in Yahweh and in his servant Moses." — MC: "How
   did the Israelites respond after seeing what Yahweh did to the Egyptians?" Options: they believed
   in Yahweh and in his servant Moses / they returned to Egypt / they built an altar to the sea /
   they complained to Aaron. Correct: they believed in Yahweh and in his servant Moses.
6. **Ex 19:5-6** (WEB, trimmed; corrected per review §6.3 — v6 continues past "a holy nation." with
   no trailing ellipsis in the prior draft; added below): "'Now therefore, if you will indeed obey my
   voice and keep my covenant, then you shall be my own possession from among all peoples; for all
   the earth is mine; and you shall be to me a kingdom of priests and a holy nation...'" — MC:
   "According to Exodus 19:5-6, what did God say Israel would be to him if they kept the covenant?"
   Options: his own possession, a kingdom of priests and a holy nation / a tribe of judges / a nation
   of prophets / nothing different. Correct: his own possession, a kingdom of priests and a holy
   nation. *(Distractor "a tribe of judges" replaces the prior draft's "a nation of kings" per review
   §6.4 — Rashi reads Ex 19:6's "priests" as princes/leaders, making "a nation of kings" a distractor
   that resonates with a live lexical reading rather than being plainly wrong; the replacement carries
   no such resonance. See Contested Territory below.)*
7. **Ex 20:12-15** (WEB, already-approved verse; stem corrected per review §6.1 — required fix):
   "'Honor your father and your mother, that your days may be long in the land which Yahweh your God
   gives you. You shall not murder. You shall not commit adultery. You shall not steal.'" — MC:
   "Which of these instructions is given in the verses shown?" Options: Honor your father and your
   mother / Remember the Sabbath day / You shall not covet / You shall make no idols. Correct: Honor
   your father and your mother. *(Stem no longer names "Exodus 20:12-15" as the range to check
   against — it anchors the player to the displayed WEB text itself. The prior stem, "Which of these
   instructions appears in Exodus 20:12-15?", has a second textually-defensible answer under Jewish/
   Masoretic versification, where "You shall not covet" falls at Exodus 20:14 — inside the cited
   range (Sefaria; tanach.us). That silently required the Christian versification to be the only
   correct one, which is a `CONTENT_STYLE_GUIDE.md` §3 denominational-positions concern as well as an
   accuracy one. The reworded stem is tradition-neutral: the player answers from the text shown, not
   from a versification scheme. No commandment is numbered in the question or options, per the
   inherited numbering-neutrality rule below. **Note for the calling session:** this same defect
   exists in already-approved `medium` content — `docs/ingest/exodus-leviticus.sql` sort_order 10 —
   and needs the identical fix carried back to `docs/content/exodus.md` and
   `docs/reviews/exodus-review.md`; out of scope for this brief but flagged so it isn't lost.)*
8. **Ex 32:1** (WEB, trimmed; corrected per review §6.3 — the prior draft began mid-verse at "The
   people gathered themselves together," with the article capitalized and no leading ellipsis, though
   the verse actually opens "When the people saw that Moses delayed coming down from the mountain,
   the people gathered..."; leading ellipsis added below): "...the people gathered themselves together
   to Aaron, and said to him, 'Come, make us gods, which shall go before us; for as for this Moses,
   the man who brought us up out of the land of Egypt, we don't know what has become of him.'" — MC:
   "What did the people ask Aaron to make?" Options: gods to go before them / a new law / a tabernacle
   / sandals. Correct: gods to go before them. *(Narrative fact only — what was asked and by whom —
   no evaluation of Aaron's later culpability; same bounding as `medium`.)*

### Boss (4)

9. **Boss MC — reused verbatim from `medium`**: "According to Exodus 14:21, what did Yahweh use to
   divide the sea?" (Ex 14:21-22) → a strong east wind.
10. **Boss sequence — reused verbatim from `medium`**: the three Sinai quotations in order —
    "I AM WHO I AM" (Ex 3:14) → "All that Yahweh has spoken we will do" (Ex 19:8) → "I am Yahweh your
    God... You shall have no other gods before me" (Ex 20:2-3).
11. **Boss recall — reused verbatim from `medium`**: "As soon as he came near to the camp, he saw
    the calf and the dancing. Then Moses' anger grew hot, and he threw the ___ out of his hands, and
    broke them beneath the mountain..." (Ex 32:19-20) → **tablets**.
12. **Boss MC — new**: Ex 32:31-32 (WEB, already-approved verse, trimmed exactly as in `medium`,
    never used as its own item there — free content): "Moses returned to Yahweh, and said, 'Oh, this
    people have sinned a great sin, and have made themselves gods of gold. Yet now, if you will,
    forgive their sin—and if not, please blot me out of your book which you have written.'" — MC:
    "What did Moses ask God to do if he would not forgive the people's sin?" Options: blot me out of
    your book which you have written / punish Aaron instead of me / destroy the calf without me /
    give the people up entirely. Correct: blot me out of your book which you have written. *(See
    Contested Territory below.)*

*(Items 9-11 are exact reuses of already-reviewed `medium` boss items — three of the four, not two,
since Exodus's medium tier has 4 boss items rather than Genesis's 3; this keeps the new-tier boss
count matched to `medium`'s own shape (see item-count note above) while item 12 still adds one
genuinely new piece of content, the same ratio-of-new-content the Genesis pilot established.)*

## Contested Territory

Everything already flagged in `docs/content/exodus.md`/`docs/reviews/exodus-review.md` applies
unchanged: the tenth-plague format/sequencing restriction (honored above, item 4), the hardening-of-
Pharaoh's-heart exclusion (no hardening verse — Ex 4:21, 7:3, 8:15, 8:32, 9:12, 9:34, 10:1, 10:20,
10:27, 11:10, 14:4, 14:8, 14:17 — appears anywhere in this brief), the divine-name handling
("Yahweh" displayed per WEB convention, inherited note stands, no action needed), the
Ten-Commandments-numbering neutrality rule (no item numbers a commandment), and the golden-calf/
Aaron-culpability bounding (item 8 tests only what was asked, never an evaluation of Aaron).

**New for this tier — not previously checked against live cross-tradition sources, flagged for the
theological reviewer with a proposed structural rule each:**

- **Ex 3:7-8** (item 2), "a land flowing with milk and honey." This is a land-promise phrase in the
  same family as the Abrahamic land promises already bounded narrative-only in the Genesis reviews
  (Gen 12:1). No challenge here asks *what land* or implies a modern geopolitical claim — the item
  grades only *what God said he came down to do* (deliver the people). **Structural rule, confirmed
  and strengthened per review §4.2/§6.5:** no challenge built from this verse may ask a player to
  identify or bound the promised land, or connect it to any present-day territorial claim. **Added
  clause:** the peoples-list clause of v8 ("to the place of the Canaanite, the Hittite, the Amorite,
  the Perizzite, the Hivite, and the Jebusite") — display-only if ever shown, not currently displayed
  in this item — is never a graded token and never an MC subject; that clause, not "milk and honey,"
  is where a territorial-scope item would actually get built.
- **Ex 19:5-6** (item 6), "a kingdom of priests and a holy nation." This phrase is picked up in
  1 Peter 2:9 and applied there to the Church, which sits near a live cross-tradition question about
  covenant continuity/discontinuity (who this description now applies to) — a question this brief
  has not needed to consider before, since `medium` used this verse only as a fill-in-blank on the
  word "nation," never as a framed MC question about Israel's identity. Review §4.3 confirmed this is
  **two genuine divergences**: (a) whether the description transfers to the Church (classic Christian
  commentary, unanimous on the transfer, divided on whether "kingdom" is spiritual or entails actual
  rule), and (b) what *kohanim* ("priests") means in this verse at all — Rashi reads it as
  princes/leaders, not priestly office, citing 2 Samuel 8:18. **Structural rule, confirmed and
  strengthened per review §4.3/§6.5:** the item grades only the narrative fact of what God said
  Israel would become if the covenant were kept — never a question about whether/how that description
  transfers to any other group, **and no challenge may ask what "priests" means in this verse or ask
  a player to choose between renderings of *kohanim***. As written, the MC options above ("a kingdom
  of priests and a holy nation," "a tribe of judges," "a nation of prophets," "nothing different") are
  plain wrong-answer narrative distractors, not competing theological claims — confirmed by the
  reviewer, with the former "a nation of kings" distractor swapped out (§6.4) because it resonated
  with Rashi's princes/leaders reading rather than being plainly wrong.
- **Ex 32:31-32** (item 12), "blot me out of your book which you have written." "The book" evokes the
  Book of Life imagery elsewhere in scripture (e.g. Psalm 69:28, Revelation 3:5, 20:12), which
  carries its own cross-tradition theological weight (eternal security, the nature of the book
  itself). Review §4.4 confirmed a real divergence (Benson/Matthew Henry read Moses as meaning simply
  "let me die"; Pulpit Commentary/Keil & Delitzsch extend the book to eternal life), converging only
  on Moses' intent, not on what the book is. The item as written grades only *what Moses asked* — a
  direct quotation, narrative fact — never what the book is or what being "blotted out" would mean
  theologically. **Structural rule, confirmed per review §4.4:** no challenge built from this verse
  may ask about the nature or meaning of "the book," only what Moses said he would prefer if God did
  not forgive the people.
- **No other new contested ground** — items 1, 3, 4 (format already bounded), 5, 7, 8, 9, 10, 11 are
  either unchanged reuses of already-bounded `medium` content or plain narrative description with no
  live cross-tradition disagreement found in a preliminary check. All three proposed rules above were
  checked against real cross-tradition sources by the theological reviewer and confirmed to hold
  (`docs/reviews/exodus-easy-review.md` §4.2–§4.4).

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, required fixes (§6.1,
      §6.2) and recommended strengthenings (§6.3–§6.6) applied above (see
      `docs/reviews/exodus-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/exodus-easy-verbatim-qa.md`. **The prior claim that this was "not required for this
      tier" was incorrect and is struck per review §5.1/§6.6** — items 2, 4, 7 and 12 carried new
      trims, a re-cut answer-key token, and abbreviated distractor strings relative to `medium`, and
      all needed independent verification.
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding — all
      three flagged items confirmed and strengthened per review §4.2–§4.4/§6.5
