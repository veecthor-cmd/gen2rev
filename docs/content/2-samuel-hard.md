# Content Brief — 2 Samuel, Hard Tier (World 10)

Status: **approved-with-changes** — theological review complete, see
`docs/reviews/2-samuel-hard-review.md`. All four required fixes applied below. None of them changes
any challenge item's verse selection, displayed text, or answer key — all are corrections to the
brief's Contested Territory reasoning and forward-looking rules.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/2-samuel-hard-verbatim-qa.md`) — all six
newly-introduced verses (5:10, 5:12, 6:17, 7:9, 15:30, 18:9) independently re-checked against a live
WEB source, with particular attention to 7:9's cross-edition variance ("on the earth" vs "in the
earth" — see review Finding A/Required Change 4) and 18:9's exact wording ("his head," not "his
hair" — see review §4.2/Required Change 1); no discrepancies found. **Eligible for ingestion.**

> **Verbatim-text caveat:** the verse text below was retrieved via an automated web-fetch pass
> against ebible.org (WEB) on 2026-08-19. Verses already quoted verbatim in the already-approved
> `docs/content/2-samuel.md` are reused as-is, unaltered, from that already-QA'd source (per this
> assignment's instructions — no need to refetch). Every genuinely new verse introduced by this
> brief (5:10, 5:12, 6:17, 7:9, 15:30, 18:9) was fetched fresh from `https://ebible.org/web/2SA05.htm`,
> `2SA06.htm`, `2SA07.htm`, `2SA15.htm`, and `2SA18.htm` respectively, each pulled together with its
> surrounding verses so the verse boundary could be checked, per the lesson recorded in
> `docs/reviews/genesis-hard-review.md` Finding A (a prior tier-authoring pass spliced two adjacent
> verses together under the wrong citation). **Edition note, added per review Required Change 4
> [required]:** item 4 (2 Sam 7:9) is a genuine cross-edition variance, not a drafting error —
> `ebible.org/web/` and `ebible.org/engwebp/` both read "...the great ones who are **on** the
> earth," while BibleGateway's `version=WEB` and BibleHub's WEB read "...**in** the earth."
> `ebible.org` is authoritative for this project and this brief matches it; the graded token ("name")
> is identical either way, but no future item may grade the preposition in this clause, and the
> verbatim-QA pass must check against `ebible.org`, not silently "correct" the text to a different
> edition.

Second half of 2 Samuel's difficulty-mode pass (see `docs/content/2-samuel-easy.md` for the tier's
shared design rationale and the item/boss-count reconciliation note). Reuses the same 5 pivotal
scenes already approved in `docs/content/2-samuel.md` — no new scenes — but selects less commonly
memorized, more precise verses and skews toward typed recall over multiple choice.

**Non-negotiable, human-escalated bounding, applied identically and without exception:** per Kachi
Okere's 2026-08-08 resolution of the escalation in `docs/reviews/2-samuel-review.md` (addendum),
Scene 4 (Nathan confronts David / the Bathsheba turning point) stays limited to **2 Samuel 12:1,
12:7, and 12:13 only. Nothing from 2 Samuel chapter 11 itself is challenge-ready in this brief, in
any format, no exceptions.** No item below draws on chapter 11 or on any 2 Samuel 12 verse outside
{12:1, 12:7, 12:13}. **Re-confirmed by theological review §0, checked first and item-by-item before
anything else: zero chapter-11 verses appear as challenge selections anywhere in this brief, and
every chapter-12 selection (12:1, 12:7, 12:13) falls inside the human-approved set.** 2 Samuel 7:13
and 7:16 (the Davidic covenant) inherit the existing structural rule from
`docs/content/2-samuel.md`/`docs/reviews/2-samuel-review.md`: recall/fill-in-blank format
only, never multiple choice — this tier touches 7:16, and honors that rule below.

Translation: World English Bible (WEB) throughout. All new verse text fetched fresh from ebible.org
on 2026-08-19.

---

## Design intent for this tier

Per Kachi's "hard... needs very deep scripture knowledge" framing (see
`docs/content/genesis-hard.md`). This tier draws on verses that are narratively or theologically
significant but less likely to be immediately recognized — exact phrasing, secondary detail, and
precise wording — and requires typed recall (no multiple-choice scaffolding) for every regular and
boss item in this brief. It stays inside the same guardrails as every other tier: verbatim WEB text
only, narrative fact only, no doctrinal position required.

## Pivotal Scenes — reused from `docs/content/2-samuel.md`, no new scenes added

Same 5 scenes as `medium` and `easy`: David Becomes King Over All Israel (2 Sam 5), The Ark Brought
to Jerusalem (2 Sam 6), The Davidic Covenant (2 Sam 7), Nathan Confronts David; David's Confession
(2 Sam 12 — **bounded to 12:1, 12:7, 12:13 only, per the human-escalated decision above; chapter 11
is never challenge-ready content, in this tier or any other**), Absalom's Rebellion (2 Sam 15, 18).

## Design note on item/boss count

Matches `docs/content/2-samuel.md`'s confirmed 12-item / 4-boss split exactly (see
`docs/content/2-samuel-easy.md`'s Design Note for how the SQL was checked and for the reasoning
behind reusing 3 — not 2 — of medium's boss items verbatim here, to reconcile the general "reuse 2,
add 1 new" instruction with 2 Samuel medium's non-standard 4-boss count).

## Challenge Items (12: 8 regular + 4 boss)

### Regular (8)

1. **2 Sam 5:10** (WEB, new): "David grew greater and greater, for Yahweh, the God of Armies, was
   with him." — recall: "David grew greater and greater, for Yahweh, the God of ___, was with him."
   → **Armies**.
2. **2 Sam 5:12** (WEB, new): "David perceived that Yahweh had established him king over Israel, and
   that he had exalted his kingdom for his people Israel's sake." — recall: "David perceived that
   Yahweh had ___ him king over Israel, and that he had exalted his kingdom for his people Israel's
   sake." → **established**. *(Narrative fact — David's own stated perception, as the text narrates
   it — not a claim the brief itself makes about divine kingship; see Contested Territory below.)*
3. **2 Sam 6:17** (WEB, new): "They brought in Yahweh's ark, and set it in its place in the middle of
   the tent that David had pitched for it; and David offered burnt offerings and peace offerings
   before Yahweh." — recall: "They brought in Yahweh's ark, and set it in its place in the middle of
   the tent that David had pitched for it; and David offered burnt offerings and peace offerings
   before ___." → **Yahweh**. *(Blank falls on the recipient, not on any sacrificial term — see
   Contested Territory below on why this stays clear of the style guide's sacrifice/atonement
   caution.)*
4. **2 Sam 7:9** (WEB, new): "I have been with you wherever you went, and have cut off all your
   enemies from before you. I will make you a great name, like the name of the great ones who are on
   the earth." — recall: "...I will make you a great ___, like the name of the great ones who are on
   the earth." → **name**. *(A different clause of Yahweh's Nathan-oracle than the disputed
   "throne"/"kingdom forever" wording — see Contested Territory below on why this doesn't extend the
   7:13/7:16 messianic-reading restriction.)*
5. **2 Sam 7:16** (WEB, already-approved verse, new blank — required to stay recall-only per the
   inherited structural rule): "Your house and your kingdom will be made sure forever before you.
   Your throne will be established forever." — recall: "Your house and your kingdom will be made
   ___ forever before you. Your throne will be established forever." → **sure**. *(Recall-only,
   never multiple choice — same inherited restriction as `medium`'s and `easy`'s 7:13 item; this
   item blanks a different word than either of those, but the restriction is unchanged.)*
6. **2 Sam 12:1** (WEB, already-approved verse, new blank): "Yahweh sent Nathan to David. He came to
   him, and said to him, 'There were two men in one city: the one rich, and the other poor.'" —
   recall: "...'There were two men in one city: the one ___, and the other poor.'" → **rich**.
7. **2 Sam 12:13** (WEB, already-approved verse, new blank): "David said to Nathan, 'I have sinned
   against Yahweh.' Nathan said to David, 'Yahweh also has put away your sin. You will not die.'" —
   recall: "...'Yahweh also has put away your sin. You will not ___.'" → **die**. *(Uses only
   12:13's own text; does not touch chapter 11.)*
8. **2 Sam 15:30** (WEB, new; trimmed for challenge use — full verse: "David went up by the ascent
   of the Mount of Olives, and wept as he went up; and he had his head covered and went barefoot.
   All the people who were with him each covered his head, and they went up, weeping as they went
   up."): "David went up by the ascent of the Mount of Olives, and wept as he went up; and he had
   his head covered and went barefoot." — recall: "David went up by the ascent of the Mount of
   Olives, and wept as he went up; and he had his head covered and went ___." → **barefoot**.

### Boss (3 reused + 1 new)

9. **Boss — reused verbatim from `medium`**: 2 Sam 12:7, "Nathan said to David, 'You are the man!
   This is what Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered
   you out of the hand of Saul.'" — recall: "Nathan said to David, 'You are the ___! This is what
   Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered you out of the
   hand of Saul.'" → **man**.
10. **Boss sequence — reused verbatim from `medium`**: Given three quotations — "Behold, we are your
    bone and your flesh" (5:1), "Your throne will be established forever" (7:16), "You are the man!"
    (12:7) — place them in the order they occur in the text.
11. **Boss — reused verbatim from `medium`**: 2 Sam 18:33, "The king was much moved, and went up to
    the room over the gate and wept. As he went, he said, 'My son Absalom! My son, my son Absalom! I
    wish I had died instead of you, Absalom, my son, my son!'" — recall: "...I wish I had died
    instead of you, Absalom, my son, my ___!" → **son**.
12. **2 Sam 18:9** (WEB, new; trimmed for challenge use — full verse: "Absalom happened to meet
    David's servants. Absalom was riding on his mule, and the mule went under the thick boughs of a
    great oak; and his head caught hold of the oak, and he was hanging between the sky and earth;
    and the mule that was under him went on."): "...and his head caught hold of the oak, and he was
    hanging between the sky and earth..." — recall: "...and his head caught hold of the oak, and he
    was hanging between the sky and ___..." → **earth**. *(New boss item. Narrative fact only — the
    physical circumstance, not Absalom's death itself or any judgment on it. See Contested Territory
    below on the "head" vs. popularly-assumed "hair" note.)*

*(Same reasoning as the easy tier: items 9-11 reuse already-reviewed boss content — three, not two,
specifically to match 2 Samuel medium's 4-boss count, see Design Note above — while item 12 adds a
genuinely new challenge angle, deliberately different from the easy tier's new boss item (6:15) for
variety between tiers.)*

## Contested Territory

Everything already flagged in `docs/content/2-samuel.md` and resolved in
`docs/reviews/2-samuel-review.md` (including its addendum) applies unchanged and is restated, not
loosened:

- **2 Samuel 11-12, Bathsheba/Uriah/Nathan — human-escalated bounding, applied identically.** Per
  Kachi Okere's 2026-08-08 sign-off, challenge-ready content from this scene is limited to **2
  Samuel 12:1, 12:7, and 12:13 only**. This brief uses all three (12:1 and 12:13 as regular items
  with new blanks, 12:7 reused verbatim as a boss item) and **draws on no other verse from chapter
  12, and on no verse from chapter 11 at all**, anywhere in this file. Closed ground — no new
  sourcing or re-argument offered here, per the assignment's explicit instruction.
- **2 Samuel 7, the Davidic covenant — messianic reading.** Inherited restriction: 7:13 and 7:16 may
  only be used in recall/fill-in-blank format, never multiple choice. Item 5 (7:16, blank on "sure")
  honors this — same verse as `medium`'s own item, different blank, still recall-only. **New for
  this tier:** item 4 uses 2 Samuel 7:9, a different clause of the same Nathan oracle ("I will make
  you a great name, like the name of the great ones who are on the earth"). **Corrected per review
  Required Change 2 [required]:** the original draft's claim that 7:9 carries "no cross-tradition
  fulfillment dispute attached to it in any source consulted" does not survive checking — the Pulpit
  Commentary reads David's greatness here as "a type of Messiah's reign," and Matthew Henry's Concise
  frames the whole oracle block 7:4–17 (which contains v9) as relating to Christ, against Revised
  JPS's plain "great renown" with no throne/dynasty language. The accurate position: the disputed
  layer is what the promise *typifies*, not what the clause *says* — both traditions agree on the
  narrative content, which is why grading "name" remains safe and item 4 is unaffected. **Structural
  rule, extended per Required Change 2 to match how 7:12 was handled at the easy tier rather than
  declaring 7:9 clear ground:**

  > 2 Samuel 7:9 is challenge-ready in recall/fill-in-blank format only, never multiple choice, and
  > no item may ask what David's "great name" ultimately refers to or points toward.

  This is a rule addition, not a loosening, and does not change item 4 as written.
- **2 Samuel 6:17, "David offered burnt offerings and peace offerings."** New for this tier. The
  style guide (`docs/CONTENT_STYLE_GUIDE.md` §3) names "specific soteriological framing of
  sacrifice/atonement language" as out-of-bounds. Checked: this item does not require the player to
  affirm anything about what the offerings *mean* — it narrates only that David made them, before
  Yahweh, after the ark was set in place. This is the same category of item as the already-approved
  Genesis 22:13, which displays "burnt offering" as narrative fact without grading atonement theology
  (`docs/reviews/genesis-easy-review.md` §4.1). The blank falls on "Yahweh" (the recipient), never on
  "burnt offerings" or "peace offerings" themselves. **Structural rule (confirmed, and needed for a
  stronger reason than originally given — per review §4.1 [recommended]):** the offering terms
  themselves are a live translation divergence, not just adjacent to atonement theology — WEB/KJV
  read "peace offerings," Revised JPS reads "offerings of well-being," and other mainstream
  renderings use "fellowship offerings" or "communion sacrifices" for the same Hebrew *shelamim*, so
  an item blanking that term would carry a defensible alternative answer from a mainstream
  translation (the Gen 8:11 answer-key-defect pattern). **No challenge built from 2 Samuel 6:17 may
  blank or otherwise grade the offering terms themselves, or ask what the offerings accomplished —
  only the narrated fact that David made them, before Yahweh, is challenge-ready.** Extended per the
  same review note: **no item may ask *who* offered the sacrifices** — commentators divide over how
  David, who held no priestly office, can be said to have "offered" them (some read it as David
  personally performing the rite, others as David commissioning it), a live interpretive question
  about the priestly/royal boundary that a "who offered the burnt offerings?" item would land on
  directly even though it doesn't touch item 3 as written (blank on "Yahweh").
- **2 Samuel 5:12, "David perceived that Yahweh had established him king."** New for this tier. This
  is David's own stated perception, in the text's own words, not an assertion this brief or the game
  makes independently. Distinguishable from a "divine right of kings" doctrinal claim because the
  item's blank falls on "established" — a narrative verb describing what David believed happened —
  and the question never asks a player to affirm that kings generally rule by divine appointment.
  **"No structural rule needed" confirmed by theological review §4.3** — Revised JPS renders the
  graded word identically ("established") and classic Protestant commentary is unanimous that the
  text frames this as David's own perception, not a general doctrine. **Optional prudential note
  (recommended):** no item may ask *why* Yahweh established or exalted David's kingdom, or
  generalize this verse to kingship-by-divine-appointment; future-proofing, not a live problem.
- **2 Samuel 18:9, Absalom caught in the oak — "head," not "hair."** New for this tier (boss item
  12). **Corrected per review Required Change 1 [required]:** the original draft attributed the
  "hair" reading to "popular retellings and artistic depictions (following Josephus, not the
  biblical text)" — that rationale is inaccurate. WEB reads "his head caught hold of the oak," and
  the Hebrew רֹאשׁוֹ (Strong's H7218) has no sense meaning "hair" — but the "hair" rendering is
  carried by *mainstream* translations across traditions: Revised JPS 2023 (Jewish, "his hair got
  caught in the terebinth"), the Catholic NABRE ("his hair caught fast in the tree"), and NIV/NLT
  (evangelical). Against: WEB, ESV, NASB, CSB, BSB, Douay-Rheims, and Brenton's Septuagint all read
  "head" — so this divides *within* traditions as well as across them, and classic commentators
  split correspondingly (Ellicott rejects the hair reading and names Josephus as its origin; Benson
  favours hair; Keil–Delitzsch say the text doesn't settle it). **Structural rule, made bidirectional
  per Required Change 1** (the original rule barred only asserting hair, which is insufficient
  because "hair" is the reading of several mainstream Bibles — an answer key of "head" with "hair" as
  a wrong-answer distractor would mark down a player reasoning from NABRE, NIV, NLT, or RJPS):

  > No challenge built from 2 Samuel 18:9 may grade, assert, or imply whether it was Absalom's *head*
  > or his *hair* that caught in the oak — in either direction. No item may state that his hair was
  > caught, and no item may use "his hair" as a distractor against a "head" answer key. WEB's own
  > wording is displayed verbatim; the graded token must fall elsewhere in the verse, as item 12's
  > "earth" does — **item 12 as written is unaffected**, since every rendering consulted (WEB, RJPS,
  > NABRE) ends on "earth."
- **2 Samuel 15:30, David's flight up the Mount of Olives.** New for this tier. Sits inside the same
  Absalom's-rebellion scene already bounded at `medium` (narrated events and grief only, never a
  causal/moral claim connecting the rebellion to Nathan's words in 12:10-12). This item narrates only
  David's own grief and posture during the flight — no causal or moral claim is made or required, and
  **item 8 as written is safe.** **The original draft's "no new rule needed" claim is corrected per
  review Required Change 3 [required]** — it does not hold: the dominant commentary reading of this
  exact verse is explicitly causal, tying David's flight directly to the Bathsheba/Uriah episode
  (Benson: David "reflecting on his own conduct in the matter of Uriah, as the cause of this
  calamity... sin alone has wrought all this"; Poole: David went barefoot "in testimony of his deep
  sorrow... for his sins, whereby he had procured this evil to himself"; Matthew Henry's Concise:
  "David's sin was ever before him"). This matters more here than elsewhere in the project: the
  medium bounding already excludes a causal/moral claim that the rebellion was divine punishment, and
  an item asking *why* David wept, covered his head, or went barefoot would not only cross that line
  — it would pull chapter 11's content back into challenge scope through the back door, which is
  precisely what Kachi's 2026-08-08 sign-off forecloses. **Structural rule, added per Required Change
  3:**

  > No challenge built from 2 Samuel 15:30 may grade *why* David wept, covered his head, or went
  > barefoot, and no item may connect the flight to the events of 2 Samuel 11–12 or frame the
  > rebellion as consequence or punishment. Only the narrated physical detail of the flight is
  > challenge-ready. This rule also protects the human-escalated chapter-11 bounding, which a
  > causal-framing item would otherwise reopen indirectly.
- **Answer-key robustness notes (recommended, non-blocking).** Item 1 (5:10) grades "Armies" — WEB's
  distinctive rendering of *tseva'ot*, where nearly every other English Bible (including Revised JPS,
  "Hosts") reads "hosts"; a player recalling the verse from another translation could type "hosts"
  and be marked wrong. Item 5 (7:16) grades "sure," which invites "secure" or "established" from the
  same cause. Both are defensible under this project's fixed-translation policy and require no
  content change, but the grader's accepted-answer handling should be a deliberate ingestion-time
  decision rather than an accident — same family as the "lamb" distractor note in
  `docs/reviews/genesis-easy-review.md` §5.2.
- **Quote-nesting and trim-marking, for the verbatim-QA pass (recommended).** ebible.org prints 7:16
  and 12:7's inner speech with WEB's own double quotes; this brief (following approved `medium`)
  nests them as single quotes for in-brief formatting. Correct brief convention, but ingestion must
  store WEB's actual quotation marks — same note as `docs/reviews/genesis-easy-review.md` §5.1. Items
  8 and 12 mark their trims with slightly different conventions (parenthetical full verse vs.
  ellipsis-in-quote); both are honest and both label the trim, so no change is required, but a future
  pass should converge on one convention for `BACKEND_REQUIREMENTS.md` §4's citation check.
- **No new contested ground otherwise** — 5:10 is plain narrative description with no live
  cross-tradition disagreement found.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all four required
      fixes applied above (see `docs/reviews/2-samuel-hard-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/2-samuel-hard-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, stated bounding
- [x] No challenge item selects any verse from 2 Samuel chapter 11
- [x] No challenge item selects any 2 Samuel chapter 12 verse outside {12:1, 12:7, 12:13}
- [x] 2 Samuel 7:16 used in recall format only, never multiple choice
- [x] Item/boss count matches `docs/content/2-samuel.md` exactly (12 total, 4 boss)
- [x] Verse boundaries for all 6 newly-introduced verses (5:10, 5:12, 6:17, 7:9, 15:30, 18:9)
      independently checked against surrounding verses at fetch time, per the lesson in
      `docs/reviews/genesis-hard-review.md` Finding A
