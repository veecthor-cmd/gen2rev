# Content Brief — Numbers, Hard Tier (World 4)

Status: **approved-with-changes** — theological review complete, see
docs/reviews/numbers-hard-review.md. All required fixes applied below.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/numbers-hard-verbatim-qa.md`) — per the
review's instruction, all twelve items were independently re-checked against BibleGateway
(`version=WEB`), not just the ones flagged as text changes; no discrepancies found. Both required
gates are now clear. **Eligible for ingestion.**

> **Verbatim-text caveat:** every newly-introduced verse below was intended to be retrieved via a
> live WebFetch call against ebible.org (WEB) on 2026-08-19. **That claim did not hold for item 2
> (Num 1:47), which was drafted with a KJV/ASV reading ("numbered") rather than the WEB text
> ("counted") — corrected below per review Finding A.** This caveat is restated, not removed,
> because the theological review's process note applies going forward: this claim should not be
> treated as evidence of retrieval for any single verse without independent re-checking, which is
> exactly what the verbatim-QA pass in `docs/qa/numbers-hard-verbatim-qa.md` does for all twelve
> items. Verses already quoted verbatim in the approved `docs/content/numbers.md` medium brief, or
> in `docs/content/numbers-easy.md`, are reused as-is, without refetching, per this task's
> instructions — those verses already cleared theological review and are only being given a new
> question format or a different blank here.

Second half of the Numbers difficulty-mode pass (see `docs/content/numbers-easy.md` for the tier's
shared design rationale, itself scaled from the pilot on Genesis —
`docs/content/genesis-easy.md`/`genesis-hard.md`). It reuses the same 5 pivotal scenes already
approved in `docs/content/numbers.md` — no new scenes — so the existing Contested Territory
analysis for those scenes still applies, with additions noted below. **Numbers 25 (Baal Peor)
remains excluded entirely — no item below touches it.**

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per the difficulty-mode pattern established on Genesis: "hard... needs very deep scripture
knowledge." This tier draws on verses that are significant but less commonly memorized than the
`easy` tier's iconic facts — precise phrasing, secondary narrative beats within the same 5 scenes —
and favors typed recall over multiple choice wherever the format allows. It stays inside the same
guardrails as every other tier: verbatim WEB text only, narrative fact only, no doctrinal position
required. The two inherited structural format restrictions from `docs/reviews/numbers-review.md`
apply identically here: **Korah's rebellion (Numbers 16, including its immediate aftermath) and the
bronze serpent (Numbers 21) scenes use recall/fill-in-blank/sequence format only — no multiple
choice, "why"-phrased or otherwise; Numbers 23:19 (not used in this tier's items, but the rule
remains binding) is recall-only.**

This brief was written to be complementary to, not duplicative of, `docs/content/numbers-easy.md`:
every item below either (a) draws on a verse `numbers-easy.md` never touched, (b) reuses
already-approved text with a genuinely different blank/question, or (c) picks up a verse that was
part of a `medium` sequence item's displayed text but never had its own standalone challenge — the
same "free content" principle `numbers-easy.md` applied to Numbers 14:24.

## Pivotal Scenes — reused from `docs/content/numbers.md`, no new scenes added

Same 5 scenes: The Census and the Camp Set in Order (Numbers 1–2, 10), The Twelve Spies and Israel's
Refusal (Numbers 13–14), Korah's Rebellion (Numbers 16), The Bronze Serpent (Numbers 21), Balaam and
His Donkey (Numbers 22–24). Numbers 25 (Baal Peor) remains excluded, per `docs/content/numbers.md`'s
explicit exclusion.

## Challenge Items (12: 8 regular + 4 boss)

Matches the medium brief's own shape, same as `docs/content/numbers-easy.md` — 12 rows, 4 marked
`is_boss_item` (see `docs/ingest/numbers-deuteronomy.sql`).

### Regular (8)

1. **Num 2:1-2** (WEB, already-approved verse, reused, new blank — different from `medium`'s blank
   "standard" and `easy`'s MC format): "Yahweh spoke to Moses and to Aaron, saying, 'The children of
   Israel shall encamp every man by his own standard, with the banners of their fathers' houses.
   They shall encamp around the Tent of Meeting at a distance from it.'" — recall: "They shall
   encamp around the Tent of Meeting at a ___ from it." → **distance**.
2. **Num 1:47** (WEB, new; corrected per review Finding A — the draft's "numbered" was the KJV/ASV
   reading, not WEB): "But the Levites after the tribe of their fathers were not counted among
   them." — recall: "But the Levites after the tribe of their fathers were not ___ among them." →
   **counted**. *(Cited to verse 47 alone, not the fuller 1:47-49 block, to avoid the
   verse-boundary/splice risk `docs/reviews/genesis-hard-review.md` Finding A flagged for a
   multi-verse cut — this item quotes exactly one complete, self-contained verse.)*
3. **Num 14:1-4** (WEB, already-approved verse, reused, new blank — different from `medium`'s boss
   blank "sword"): "All the congregation lifted up their voice, and cried; and the people wept that
   night. All the children of Israel murmured against Moses and against Aaron. The whole
   congregation said to them, 'We wish that we had died in the land of Egypt, or that we had died in
   this wilderness! Why does Yahweh bring us to this land, to fall by the sword? Our wives and our
   little ones will be captured or killed! Wouldn't it be better for us to return into Egypt?' They
   said to one another, 'Let's choose a leader, and let's return into Egypt.'" — recall: "We wish
   that we had died in the land of ___, or that we had died in this wilderness!" → **Egypt**.
4. **Num 14:9** (WEB, new): "Only don't rebel against Yahweh, neither fear the people of the land;
   for they are bread for us. Their defense is removed from over them, and Yahweh is with us. Don't
   fear them." — recall: "Only don't rebel against Yahweh, neither fear the people of the land; for
   they are ___ for us." → **bread**. *(Caleb and Joshua's own exhortation to the people — narrated
   speech, direct quotation attributed in-text; see Contested Territory below.)*
5. **Num 16:5** (WEB, new; WEB, trimmed per review §6 required fix — v5 continues "Even him whom he
   shall choose, he will cause to come near to him." The omitted second sentence also ends "...cause
   to come near to him," so restoring it in full would put two instances of the answer word in the
   displayed text; trim-labelling is the cleaner fix): "In the morning, Yahweh will show who are his,
   and who is holy, and will cause him to come near to him..." — recall only, per the inherited
   Korah-rebellion format restriction: "In the morning, Yahweh will show who are his, and who is
   holy, and will cause him to come ___ to him." → **near**.
6. **Num 21:6-7** (WEB, already-approved verse text, reused — listed in `docs/content/numbers.md`'s
   challenge-ready verses for this scene and displayed inside the `medium` brief's bronze-serpent
   sequence item, but never given its own standalone challenge in `medium` or `easy`) — recall only,
   per the inherited bronze-serpent format restriction: "Yahweh sent venomous snakes among the
   people, and they bit the people. Many people of Israel died. The people came to Moses, and said,
   'We have sinned, because we have spoken against Yahweh and against you. Pray to Yahweh, that he
   take away the serpents from us.' Moses prayed for the people." — "We have sinned, because we have
   spoken against Yahweh and against you. Pray to Yahweh, that he take away the ___ from us." →
   **serpents**.
7. **Num 22:38** (WEB, new; attribution restored per review §6 required fix — the draft's leading
   trim dropped the in-text speaker attribution, and the item's own justification rests on this being
   a direct quotation attributed in-text): "Balaam said to Balak, 'Behold, I have come to you. Have
   I now any power at all to speak anything? I will speak the word that God puts in my mouth.'" —
   recall: "Have I now any power at all to speak anything? I will speak the ___ that God puts in my
   mouth." → **word**. *(Balaam's own statement of prophetic constraint — stays within the existing
   "Balaam's overall characterization" bounding; makes no claim about his later characterization.)*
8. **Num 24:17** (WEB, new) — recall only, never multiple choice (see Contested Territory below):
   "I see him, but not now. I see him, but not near. A star will come out of Jacob. A scepter will
   rise out of Israel, and shall strike through the corners of Moab, and crush all the sons of
   Sheth." — "I see him, but not now. I see him, but not near. A ___ will come out of Jacob." →
   **star**.

### Boss (4)

9. **Boss sequence — reused verbatim from `medium`**: Korah's rebellion and its aftermath in order —
   Numbers 16:1-3 (Korah's challenge to Moses and Aaron's authority) → Numbers 16:31-32 (the ground
   opens and swallows Korah's household) → Numbers 26:11 (the text later notes the sons of Korah did
   not die). *(WEB text inlined per review §6 recommended fix (item 5.3/6.7 — style guide §5 requires
   reference + translation + verbatim text for any item displaying or requiring recall of text):*
   16:1-3: "Now Korah, the son of Izhar, the son of Kohath, the son of Levi, with Dathan and Abiram,
   the sons of Eliab, and On, the son of Peleth, sons of Reuben, took some men. They rose up before
   Moses, with some of the children of Israel, two hundred fifty princes of the congregation, called
   to the assembly, men of renown. They assembled themselves together against Moses and against
   Aaron, and said to them, 'You take too much on yourself, since all the congregation are holy,
   everyone of them, and Yahweh is among them! Why do you lift yourselves up above Yahweh's
   assembly?'" 16:31-32: "As he finished speaking all these words, the ground that was under them
   split apart. The earth opened its mouth and swallowed them up with their households, all of
   Korah's men, and all their goods." 26:11: "Notwithstanding, the sons of Korah didn't die."
10. **Boss sequence — reused verbatim from `medium`**: the Balaam-and-donkey episode's climax in
    order — Numbers 22:27-28 (the donkey speaks and rebukes Balaam) → Numbers 22:31 (Yahweh opens
    Balaam's eyes to see the angel). *(WEB text inlined per review §6 recommended fix:)* 22:27-28:
    "The donkey saw Yahweh's angel, and she lay down under Balaam. Balaam's anger burned, and he
    struck the donkey with his staff. Yahweh opened the mouth of the donkey, and she said to Balaam,
    'What have I done to you, that you have struck me these three times?'" 22:31: "Then Yahweh opened
    the eyes of Balaam, and he saw Yahweh's angel standing in the way, with his sword drawn in his
    hand; and he bowed his head, and fell on his face."
11. **Num 16:1-3** (WEB, already-approved verse, new blank — different from `medium`'s boss blank
    "holy" and `easy`'s regular blank "assembly") — recall only, per the inherited Korah-rebellion
    format restriction: "Now Korah, the son of Izhar, the son of Kohath, the son of Levi, with
    Dathan and Abiram, the sons of Eliab, and On, the son of Peleth, sons of Reuben, took some men.
    They rose up before Moses, with some of the children of Israel, two hundred fifty princes of the
    congregation, called to the assembly, men of renown. They assembled themselves together against
    Moses and against Aaron, and said to them, 'You take too much on yourself, since all the
    congregation are holy, everyone of them, and Yahweh is among them! Why do you lift yourselves up
    above Yahweh's assembly?'" — "They rose up before Moses, with some of the children of Israel,
    two hundred fifty ___ of the congregation, called to the assembly, men of renown." → **princes**.
12. **Num 16:46-48** (WEB, new) — recall only, per the inherited Korah-rebellion format restriction:
    "Moses said to Aaron, 'Take your censer, put fire from the altar in it, lay incense on it, carry
    it quickly to the congregation, and make atonement for them; for wrath has gone out from Yahweh!
    The plague has begun.' Aaron did as Moses said, and ran into the middle of the assembly. The
    plague had already begun among the people. He put on the incense, and made atonement for the
    people. He stood between the dead and the living; and the plague was stayed." — "He put on the
    incense, and made atonement for the people. He stood between the ___ and the living; and the
    plague was stayed." → **dead**.

*(Items 9-10 are exact reuses of already-reviewed `medium` boss items — deliberately, to keep the
boss battle's two most dramatic beats (the ground opening, the donkey speaking) consistent across
all three tiers, the same principle `docs/content/genesis-easy.md`/`genesis-hard.md` applied to the
Joseph sequence. Item 11 reuses an already-approved verse in a third distinct format/blank — zero
incremental text risk, same principle as items 1, 3, 6. Item 12 is this tier's only genuinely new
boss verse, extending the Korah scene to its immediate, related aftermath — in WEB's chapter
numbering, later in the same chapter. Reworded per review §6 recommended fix: in the Hebrew/Jewish
versification this passage is Numbers 17:11-13, a different chapter from Korah's rebellion in
Numbers 16 — the WEB citation "Numbers 16:46-48" is correct for WEB and nothing about the item
changes, but the "same chapter" framing is a WEB-numbering-specific statement, not a
universally-shared one.)*

## Contested Territory

Everything already flagged in `docs/content/numbers.md` and `docs/content/numbers-easy.md` applies
unchanged: Numbers 25 (Baal Peor) remains excluded entirely; the Korah-household nuance (16:31-32 vs.
26:11, item 9); the bronze serpent's later status (item 6); Balaam's overall characterization (items
4, 7, 10); the divine-judgment/violence bounding for the Korah and bronze-serpent scenes (items 5, 6,
9, 11, 12, applying the inherited "no MC, recall/fill-in-blank/sequence only" rule). Numbers 23:19's
"recall-only, never MC" rule is inherited but not engaged — that verse isn't used by any item in this
tier — and remains binding if a future revision adds it back.

**New for this tier — flagged for the theological reviewer, not resolved here:**

- **Numbers 24:17** (item 8), "A star will come out of Jacob. A scepter will rise out of Israel."
  This is the most theologically loaded verse in the entire Balaam cycle and a genuine, live
  cross-tradition question distinct from anything flagged in `numbers.md`: Christian tradition
  overwhelmingly reads it as a messianic prophecy pointing to Christ, and the Bar Kokhba/Akiva
  messianic application is real (Bar Koseba was called "Bar Kokhba," son of a star, precisely because
  of this reading). *(Corrected per review §6/§4.1 — the earlier draft additionally claimed "broader
  rabbinic tradition also read it messianically of a future Davidic king." Rashi, the single
  most-consulted rabbinic commentator on this verse, in fact reads it of David **historically**
  (citing 2 Samuel 8:2), not messianically, and does not mention the Messiah or Bar Kokhba at all.
  That broader claim is removed; the Bar Kokhba application stands attributed to that episode
  specifically.)* The item grades only the word "star" as it appears in the plain oracle text — never
  who or what the star or scepter refers to, never a messianic or any other identification claim.
  **Structural rule: this item is recall-only, never multiple-choice; no challenge in any tier may
  ask who or what the star/scepter refers to, or imply an answer about its identity — only the bare
  narrative fact of the oracle's own words is ever graded.** **New guard added per review §6/§4.1:
  the second half of the verse ("and shall strike through the corners of Moab, and crush all the
  sons of Sheth") is display-only — "Moab," "corners," and "Sheth" may never be blanked, graded, or
  an answer option, and no item may ask who or what the "sons of Sheth" are. Cambridge and
  Keil-Delitzsch read "sons of Sheth" as an emendation to "sons of tumult" (i.e. the Moabite warriors
  specifically) rather than the traditional Sheth-son-of-Adam reading, and the two readings disagree
  about the clause's scope (all humanity vs. one nation's warriors) — a live textual dispute distinct
  from, and in addition to, the star/scepter identity question.**
- **Numbers 16:46-48** (item 12), Aaron's intercession stopping the second plague. This sits inside
  Numbers 16:41-50, a second rebellion the day after Korah's, met with another lethal plague before
  Aaron's atonement stays it. It extends — rather than introduces new kinds of — the existing
  "divine judgment/violence generally" bounding already applied to Korah's rebellion and the bronze
  serpent in `docs/content/numbers.md`: the item grades only what Aaron did and its narrated effect
  ("he stood between the dead and the living, and the plague was stayed"), never why the plague began
  or whether the judgment was justified. The inherited Korah-rebellion structural rule (recall/
  fill-in-blank/sequence only, no "why"-phrased MC) already covers this without needing a new rule.
  **New guard added per review §6/§4.2: "atonement"/"made atonement" is display-only in this item —
  never the graded token, never a multiple-choice subject, and no item may ask what Aaron's atonement
  accomplished or how it worked. WEB's "atonement" is itself a translation choice (Revised JPS reads
  "expiation"), and this is the first time atonement vocabulary appears inside a graded item's
  displayed text in the Numbers content set.** Also noted: in Hebrew/Jewish versification this
  passage is Numbers 17:11-13, a different chapter from Korah's rebellion in Numbers 16 — see the
  item-12 note above.
- **Numbers 14:9** (item 4), "they are bread for us." Caleb and Joshua's own confidence-building
  rhetoric to the people, urging them not to fear the land's inhabitants. This is narrated speech,
  direct quotation attributed in-text — in-bounds per the style guide — and the item grades only the
  single word "bread," not any characterization of the land's inhabitants. **New guard added per
  review §6/§4.3: "bread" may only ever be graded as fill-in-the-blank against displayed WEB text —
  never as a multiple-choice option** (e.g. "what did Caleb and Joshua call the people of the land?"
  with options bread / prey / food / grasshoppers), because Revised JPS renders the same Hebrew word
  (*lachmenu*) "our prey" — the divergence lands directly on this graded word, unlike the star/dead
  tokens elsewhere in this brief where every tradition renders the word identically. The item survives
  because it is fill-in-the-blank against displayed WEB text (the player completes a sentence in
  front of them, not a translation choice), which is exactly why an MC format on this word would not.
  Also record that the clause "their defense is removed from over them" and any characterisation of
  the land's inhabitants are not challenge-ready in any tier.
- **No other new contested ground** — items 1, 2, 3, 5, 6, 7, 9, 10, 11 are plain narrative
  description or exact/near-exact reuse of already-bounded `medium`/`easy` text.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required fixes
      applied above (see `docs/reviews/numbers-hard-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/numbers-hard-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without an explicit, proposed bounding
      (pending reviewer confirmation)
- [x] Korah-rebellion and bronze-serpent scenes use only recall/fill-in-blank/sequence format, no
      multiple choice (items 5, 6, 9, 11, 12)
- [x] Numbers 24:17 used only in recall format, no multiple choice (item 8)
- [x] Numbers 25 (Baal Peor) not touched by any item
- [x] Complementary to `docs/content/numbers-easy.md` — no duplicate item/blank; `docs/content/
      numbers-easy.md` left untouched (read-only reference)
