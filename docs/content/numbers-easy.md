# Content Brief — Numbers, Easy Tier (World 4)

Status: **approved-with-changes** — theological review complete, see
docs/reviews/numbers-easy-review.md. All required fixes applied below.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/numbers-easy-verbatim-qa.md`) — the text
changed while applying the review's fixes was independently re-checked against BibleGateway
(`version=WEB`); no discrepancies found. Both required gates are now clear. **Eligible for
ingestion.**

> **Verbatim-text caveat:** every newly-introduced verse below was retrieved via a live WebFetch
> call against ebible.org (WEB) on 2026-08-18. Verses already quoted verbatim in the approved
> `docs/content/numbers.md` medium brief are reused as-is, without refetching, per this task's
> instructions — those verses already cleared theological review and are only being given a new
> question format or a different blank here. Theological review and the independent verbatim-text QA
> pass required by `QA_REQUIREMENTS.md` §3 are both now complete (see the Status line above) —
> eligible for ingestion.

This scales the difficulty-mode pipeline piloted on Genesis (see `docs/content/genesis-easy.md`,
`docs/reviews/genesis-easy-review.md`) to Numbers. It reuses the same 5 pivotal scenes already
approved in `docs/content/numbers.md` — no new scenes — so the existing Contested Territory analysis
for those scenes still applies, with additions noted below.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per the difficulty-mode pattern established on Genesis: "easy... real simple." This tier draws the
most iconic, broadly-recognizable facts from Numbers's 5 scenes and favors multiple-choice
recognition over typed recall wherever the scene's format rules allow, so a first-time or younger
player can succeed without prior Bible knowledge. It does **not** simplify or paraphrase verse text —
the style guide's "verbatim WEB text only" rule applies identically at every tier. Two scenes (Korah's
rebellion, the bronze serpent) and one verse (Numbers 23:19) carry structural format restrictions
inherited from `docs/reviews/numbers-review.md` — no multiple choice is used for those items below,
even where the easy-tier default would otherwise favor it.

## Pivotal Scenes — reused from `docs/content/numbers.md`, no new scenes added

Same 5 scenes: The Census and the Camp Set in Order (Numbers 1–2, 10), The Twelve Spies and Israel's
Refusal (Numbers 13–14), Korah's Rebellion (Numbers 16), The Bronze Serpent (Numbers 21), Balaam and
His Donkey (Numbers 22–24). Numbers 25 (Baal Peor) remains excluded, per `docs/content/numbers.md`'s
explicit exclusion — no item below touches it.

## Challenge Items (12: 8 regular + 4 boss)

Matches the medium brief's own shape — `docs/content/numbers.md` ingests as exactly 12 challenge
rows with 4 marked `is_boss_item` (see `docs/ingest/numbers-deuteronomy.sql`).

### Regular (8)

1. **Num 1:1-3** (WEB, already-approved verse, new format): "Yahweh spoke to Moses in the
   wilderness of Sinai, in the Tent of Meeting, on the first day of the second month, in the second
   year after they had come out of the land of Egypt, saying, 'Take a census of all the congregation
   of the children of Israel, by their families, by their fathers' houses, according to the number
   of the names, every male, one by one, from twenty years old and upward, all who are able to go
   out to war in Israel. You and Aaron shall count them by their divisions.'" — MC: "According to
   Numbers 1:1-3, what did Yahweh command Moses and Aaron to do?" Options: Take a census of all the
   fighting-age men of Israel / Build the Tent of Meeting / Cross the Jordan River / Offer a burnt
   offering. Correct: Take a census of all the fighting-age men of Israel.
2. **Num 2:1-2** (WEB, already-approved verse, new format): "Yahweh spoke to Moses and to Aaron,
   saying, 'The children of Israel shall encamp every man by his own standard, with the banners of
   their fathers' houses. They shall encamp around the Tent of Meeting at a distance from it.'" —
   MC: "According to Numbers 2:1-2, how did Yahweh tell each Israelite to camp?" Options: Every man
   by his own standard, with his father's house's banner / In one single unmarked camp / Scattered
   at random through the wilderness / Only the priests could camp near the Tent of Meeting. Correct:
   Every man by his own standard, with his father's house's banner.
3. **Num 13:27-28** (WEB, already-approved verse, new format; WEB, trimmed — v27 opens "They told
   him, and said,"): "...We came to the land where you sent us. Surely it flows with milk and honey,
   and this is its fruit. However, the people who dwell in the land are strong, and the cities are
   fortified and very large. Moreover, we saw the children of Anak there." — MC: "According to the
   spies' report in Numbers 13:27-28, what did the land flow
   with?" Options: Milk and honey / Wine and oil / Gold and silver / Bread and water. Correct: Milk
   and honey.
4. **Num 14:24** (WEB, new — free content: listed in `docs/content/numbers.md`'s Challenge-ready
   verses for this scene but never turned into a standalone medium item): "But my servant Caleb,
   because he had another spirit with him, and has followed me fully, him I will bring into the land
   into which he went. His offspring shall possess it." — MC: "According to Numbers 14:24, which of
   the twelve spies did Yahweh promise to bring into the land?" Options: Caleb / Aaron / Korah /
   Balaam. Correct: Caleb. *(Fixed per review §6.1: the original "Joshua" distractor was a genuinely
   correct answer under the stem's wider frame — Num 14:30 and 14:38 both name Joshua alongside
   Caleb as spared to enter the land. "Aaron" is clean: Num 20:12 bars him from entering.)*
5. **Num 16:1-3** (WEB, already-approved verse, new blank; WEB, trimmed — matches the "(WEB,
   trimmed)" tag `docs/content/numbers.md` already uses for this same quotation) — recall only, per
   the inherited Korah-rebellion format restriction (no multiple choice at all for this scene, not
   just no "why" phrasing — see `docs/content/numbers.md` Contested Territory): "...They assembled themselves
   together against Moses and against Aaron, and said to them, 'You take too much on yourself, since
   all the congregation are holy, everyone of them, and Yahweh is among them! Why do you lift
   yourselves up above Yahweh's ___?'" → **assembly**.
6. **Num 21:8-9** (WEB, already-approved verse, new blank; WEB, trimmed — v9 continues "If a serpent
   had bitten any man, when he looked at the serpent of bronze, he lived.") — recall only, per the
   inherited bronze-serpent format restriction (same rule as item 5): "Yahweh said to Moses, 'Make a
   venomous snake, and set it on a pole. It shall happen that everyone who is bitten, when he sees
   it, shall live.' Moses made a serpent of ___, and set it on the pole..." → **bronze**.
7. **Num 22:27-28** (WEB, already-approved verse, new format): "The donkey saw Yahweh's angel, and
   she lay down under Balaam. Balaam's anger burned, and he struck the donkey with his staff. Yahweh
   opened the mouth of the donkey, and she said to Balaam, 'What have I done to you, that you have
   struck me these three times?'" — MC: "According to Numbers 22:27-28, what did Yahweh do so the
   donkey could speak to Balaam?" Options: Opened the donkey's mouth / Gave the donkey wings / Turned
   the donkey invisible / Sent an angel to speak for the donkey. Correct: Opened the donkey's mouth.
8. **Num 13:33** (WEB, new): "There we saw the Nephilim, the sons of Anak, who come from the
   Nephilim. We were in our own sight as grasshoppers, and so we were in their sight." — MC:
   "According to Numbers 13:33, how did the spies describe themselves next to the people they saw in
   the land?" Options: Like grasshoppers / Like giants / Like ants / Like eagles. Correct: Like
   grasshoppers. *(Grades only the spies' self-description — never who or what the Nephilim were;
   see Contested Territory below.)*

### Boss (4)

9. **Boss sequence — reused verbatim from `medium`**: Korah's rebellion and its aftermath in order —
   Numbers 16:1-3 (Korah's challenge to Moses and Aaron's authority) → Numbers 16:31-32 (the ground
   opens and swallows Korah's household) → Numbers 26:11 (the text later notes the sons of Korah did
   not die).
10. **Boss sequence — reused verbatim from `medium`**: the Balaam-and-donkey episode's climax in
    order — Numbers 22:27-28 (the donkey speaks and rebukes Balaam) → Numbers 22:31 (Yahweh opens
    Balaam's eyes to see the angel).
11. **Num 23:19** (WEB, already-approved verse, new blank) — recall only, per the inherited
    structural rule (this verse may be used only in recall/fill-in-blank format, never multiple
    choice): "God is not a man, that he should lie, nor a son of man, that he should repent. Has he
    said, and he won't do it? Or has he spoken, and he won't make it ___?" → **good**.
12. **Num 10:35** (WEB, new; full verse restored per review §6.3 — the brief previously quoted only
    the speech, omitting the narrative frame the stem depends on): "When the ark went forward, Moses
    said, 'Rise up, Yahweh, and let your enemies be scattered! Let those who hate you flee before
    you!'" — MC: "According to Numbers 10:35, what did Moses say whenever the ark went forward?"
    Options: "Rise up, Yahweh, and let your enemies be scattered!" / "Stop and make camp." / "Turn
    back to the wilderness." / "Sound the trumpets and rest here." Correct: "Rise up, Yahweh, and
    let your enemies be scattered!" *(Distractors fixed per review §6.4: the original "Be strong and
    courageous!" and "The Lord is my shepherd." were quoted strings from other scripture passages
    rendered in a non-WEB translation — replaced with clearly non-scriptural options.)*

*(Items 9-10 are exact reuses of already-reviewed `medium` boss items — deliberately, to keep the
boss battle's most dramatic beats consistent across tiers and bound new-verse review risk. Item 11
reuses an already-approved verse in a new format — zero incremental text risk, same principle as
items 1-3, 5-7. Item 12 is this tier's only genuinely new boss verse.)*

## Contested Territory

Everything already flagged in `docs/content/numbers.md` applies unchanged: Numbers 25 (Baal Peor)
remains excluded entirely; the Korah-household nuance (16:31-32 vs. 26:11, items 5 and 9 above); the
bronze serpent's later status (item 6); Balaam's overall characterization (items 7, 10, 11 — fixed
per review §6.5; the original text mis-cited item 12, which is Num 10:35 and has no Balaam content);
the divine-judgment/violence bounding for the Korah and bronze-serpent scenes (items 5, 6, 9, applying
the inherited "no MC, recall/fill-in-blank/sequence only" rule); and the Numbers 23:19
immutability/repentance tension (item 11, applying the inherited "recall-only, never MC" rule).

**New for this tier — flagged for the theological reviewer, not resolved here:**

- **Numbers 13:33** (item 8) displays the word "Nephilim." Genesis 6:4 and later Second Temple
  literature associate "Nephilim" with a genuinely disputed identity — read by some interpreters
  (ancient and modern, both Jewish and Christian) as offspring of "sons of God" in a supernatural
  sense, and by others as simply "mighty men" or notably large/powerful people, with no consensus.
  This project's OT-only MVP scope doesn't need to adjudicate that question, and the graded item
  doesn't touch it — it only tests the spies' stated self-perception ("grasshoppers"). **Structural
  rule (strengthened per review §7.1): (a) "Nephilim" may never be the blanked/typed token, nor an
  answer option, nor a distractor, in any item, in any tier; (b) no item may grade whether the
  spies' report was accurate — commentators split on this too (some read it straight, others call
  it exaggerated or false), and that is contested ground distinct from the Nephilim's identity;
  (c) the verse is display-only around the "grasshoppers" clause, which is the only token ever
  graded.**
- **Numbers 10:35** (item 12), "Rise up, Yahweh, and let your enemies be scattered," is narrated
  speech invoking Yahweh against Israel's enemies during the march from Sinai. No new doctrinal
  content beyond what's already covered by the inherited "divine judgment/violence generally"
  bounding in `docs/content/numbers.md` — the item grades only the quoted words themselves
  (narrative fact: what Moses said), not a claim about the enemies or the outcome. **Forward-looking
  guard added per review §7.2: Num 10:35-36 is bracketed by inverted nun marks in the Masoretic
  text and treated in rabbinic tradition as parenthetical/displaced, and its meaning is read
  variously (literal battle-prayer / spiritualized / messianic / Jewish liturgical). No challenge
  item in any tier may grade the placement, position, or narrative order of Num 10:35-36 (these
  verses must not appear in a sequence-ordering item about the march from Sinai), and no item may
  ask who "your enemies" are or what the prayer accomplished.**
- **No other new contested ground** — items 1, 2, 3, 4, 7, 9, 10, 11 are plain narrative description
  or exact/near-exact reuse of already-bounded `medium` text.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required fixes
      applied above (see `docs/reviews/numbers-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/numbers-easy-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without an explicit, proposed bounding
      (pending reviewer confirmation)
- [x] Korah-rebellion and bronze-serpent scenes use only recall/fill-in-blank/sequence format, no
      multiple choice (items 5, 6, 9)
- [x] Numbers 23:19 used only in recall/fill-in-blank format (item 11)
- [x] Numbers 25 (Baal Peor) not touched by any item
