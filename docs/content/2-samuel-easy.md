# Content Brief — 2 Samuel, Easy Tier (World 10)

Status: **approved-with-changes** — theological review complete, see
`docs/reviews/2-samuel-easy-review.md`. All required fixes applied below.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/2-samuel-easy-verbatim-qa.md`) — all
newly-introduced/corrected text independently re-checked against a live WEB source, prioritizing the
five verses (5:3, 6:12, 6:15, 7:12, 15:6) that had never been through a verbatim-QA pass before this
tier promoted them to displayed challenge text, per review Finding 6.1/7.4; no discrepancies found.
**Eligible for ingestion.**

This scales the Genesis difficulty-mode pilot (see `docs/content/genesis-easy.md` for the tier's
shared design rationale) to 2 Samuel. It reuses the same 5 pivotal scenes already approved in
`docs/content/2-samuel.md` (no new scenes), so the existing Contested Territory analysis for those
scenes still applies and is inherited below, not re-litigated from scratch. *(Per review Finding
7.4 [recommended], applied here: five of this tier's verses — 5:3, 6:12, 6:15, 7:12, 15:6 — were
listed in the approved medium brief but never built into a medium item, so they have no ingested row
and had never been through `QA_REQUIREMENTS.md` §3 verbatim QA before this tier. "Already approved"
in the medium brief's verse list is not the same claim as "already verbatim-QA'd" — the review noted
this reasoning is exactly what let item 3's truncated quote through — and the step-6 QA pass below
treats all five as first-time text rather than settled text.)*

**Non-negotiable, human-escalated bounding, applied identically and without exception:** per Kachi
Okere's 2026-08-08 resolution of the escalation in `docs/reviews/2-samuel-review.md` (addendum),
Scene 4 (Nathan confronts David / the Bathsheba turning point) stays limited to **2 Samuel 12:1,
12:7, and 12:13 only. Nothing from 2 Samuel chapter 11 itself is challenge-ready in this brief, in
any format.** No item below draws on chapter 11 or on any 2 Samuel 12 verse outside {12:1, 12:7,
12:13}. **Re-confirmed by theological review §1/§8, checked item-by-item rather than trusting this
brief's own checkboxes: zero chapter-11 verses appear as challenge selections anywhere in this
brief, and chapter-12 selections are the strict subset {12:1, 12:7}.** 2 Samuel 7:13 and 7:16 (the
Davidic covenant) inherit the existing structural rule from
`docs/content/2-samuel.md`/`docs/reviews/2-samuel-review.md`: recall/fill-in-blank format only,
never multiple choice — honored below wherever those verses are touched.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per Kachi's "easy... real simple" framing (see `docs/content/genesis-easy.md`). This tier draws the
most iconic, broadly-recognizable facts from each of 2 Samuel's 5 scenes and favors multiple-choice
recognition over typed recall, so a first-time or younger player can succeed without prior Bible
knowledge. It does not simplify or paraphrase verse text — the style guide's "verbatim WEB text
only" rule applies identically at every tier. The two items drawn from 2 Samuel 7 are the sole
exception to the MC-favoring design intent: 7:13 stays recall-only per the inherited structural rule
above, so it is formatted as fill-in-the-blank rather than multiple choice, consistent with how
`docs/content/genesis-hard.md` handled its own recall-only exception (Gen 1:26) inside an otherwise
different-leaning tier.

## Pivotal Scenes — reused from `docs/content/2-samuel.md`, no new scenes added

Same 5 scenes: David Becomes King Over All Israel (2 Sam 5), The Ark Brought to Jerusalem (2 Sam 6),
The Davidic Covenant (2 Sam 7), Nathan Confronts David; David's Confession (2 Sam 12 — **bounded to
12:1, 12:7, 12:13 only, per the human-escalated decision above; chapter 11 is never challenge-ready
content**), Absalom's Rebellion (2 Sam 15, 18).

## Design note on item/boss count and verse sourcing

`docs/content/2-samuel.md`'s ingested item set (`docs/ingest/1-2-samuel.sql`) is confirmed directly
against the SQL: **12 items total, 4 of them boss items** (sort_order 6, 9, 10, 12 carry
`is_boss_item = true`) — i.e. 8 regular + 4 boss, not the 3-boss pattern the Genesis/1 Samuel tiers
matched. This brief matches that 12/4 split exactly. Because the general instruction for this pass
("reuse 2 of medium's boss items verbatim; make 1 boss item genuinely new") was calibrated to books
whose medium tier carries 3 boss items, applying it literally here would produce only 3 boss items —
one short of the required 4. Resolved by reusing **3** of medium's 4 boss items verbatim (still
satisfying "at least 2 reused") and adding exactly 1 new boss item, hitting 4/4 while keeping the
"exactly one genuinely new boss item" instruction intact. Flagged here rather than silently
adjusted.

Separately: `docs/content/2-samuel.md` lists 15 challenge-ready verses across its 5 scenes (3 per
scene) but only 10 were turned into standalone medium items; five are free, already-approved content
never used: **5:3, 6:12, 6:15, 7:12, 15:6.** This brief uses all five (see items 1, 3, 5, 8, and boss
item 12 below), which — combined with reusing the already-used verses under new question angles —
means every item in this tier is built from already-approved, already-quoted text. No new verse
required a fresh WebFetch pass for this file.

## Challenge Items (12: 8 regular + 4 boss)

### Regular (8)

1. **2 Sam 5:3** (WEB, already-approved verse, listed in the medium brief but never used
   standalone there — free content): "So all the elders of Israel came to the king to Hebron, and
   King David made a covenant with them in Hebron before Yahweh; and they anointed David king over
   Israel." — MC: "According to 2 Samuel 5:3, what did the elders of Israel do with David at
   Hebron?" Options: made a covenant with him and anointed him king over Israel / declared war on
   him / sent him into exile / rejected his kingship. Correct: made a covenant with him and anointed
   him king over Israel.
2. **2 Sam 5:4** (WEB, already-approved verse, new format): "David was thirty years old when he
   began to reign, and he reigned forty years." — MC: "According to 2 Samuel 5:4, how long did
   David reign as king?" Options: forty years / thirty years / twenty years / seventeen years.
   Correct: forty years.
3. **2 Sam 6:12** (WEB, trimmed for challenge use — full verse: "King David was told, 'Yahweh has
   blessed the house of Obed-Edom, and all that belongs to him, because of God's ark.' So David went
   and brought up God's ark from the house of Obed-Edom into David's city with joy."): "So David
   went and brought up God's ark from the house of Obed-Edom into David's city with joy." — MC:
   "According to 2 Samuel 6:12, how did David bring up God's ark into David's city?" Options: with
   joy / with weeping / in secret / with fear. Correct: with joy. *(Fixed per review Finding A
   [required]: the original draft presented this second-sentence trim as if it were the whole verse,
   with no "trimmed" label — the same defect class as Gen 8:11 in
   `docs/reviews/genesis-easy-review.md` §6.2, and one the theological review noted this project
   already has a labelling convention for (`docs/content/2-samuel-hard.md` item 8) that this brief
   simply didn't use. The full verse is now stated alongside per that convention. Answer key
   unaffected — "with joy" was always in the retained clause. This same truncated text also sits in
   `docs/content/2-samuel.md`'s Scene 2 verse list; the review recommends that file be flagged for
   the same correction, though editing it is out of scope for this pass.)*
4. **2 Sam 6:14** (WEB, already-approved verse, new format): "David danced before Yahweh with all
   his might; and David was clothed in a linen ephod." — MC: "According to 2 Samuel 6:14, what was
   David wearing as he danced before Yahweh?" Options: a linen ephod / royal robes / armor / a
   crown. Correct: a linen ephod.
5. **2 Sam 7:12** (WEB, already-approved verse, listed in the medium brief but never used
   standalone there — free content): "When your days are fulfilled and you sleep with your fathers,
   I will set up your offspring after you, who will proceed out of your body, and I will establish
   his kingdom." — MC: "According to 2 Samuel 7:12, what did Yahweh promise to set up after David's
   own days were fulfilled?" Options: David's own offspring, to establish his kingdom / a new
   prophet / a foreign ruler / the ark's guardian. Correct: David's own offspring, to establish his
   kingdom. *(Grades only the promise's stated recipient and action — never whose ultimate
   fulfillment "his kingdom" refers to; see Contested Territory below on why this stays clear of the
   7:13/7:16 messianic-reading restriction.)*
6. **2 Sam 7:13** (WEB, already-approved verse, same recall format as `medium` — required by the
   inherited structural rule): "He will build a house for my name, and I will establish the throne
   of his kingdom forever." — recall: "He will build a house for my name, and I will establish the
   throne of his ___ forever." → **kingdom**. *(Recall-only, never multiple choice — inherited
   restriction, see Contested Territory below.)*
7. **2 Sam 12:1** (WEB, already-approved verse, new format): "Yahweh sent Nathan to David. He came
   to him, and said to him, 'There were two men in one city: the one rich, and the other poor.'" —
   MC: "According to 2 Samuel 12:1, how does Nathan's parable to David begin — what two men were in
   one city?" Options: two men in one city, one rich and one poor / a lost sheep and its shepherd /
   a vineyard and its workers / a king and his army. Correct: two men in one city, one rich and one
   poor. *(Stem re-anchored per review Finding 7.3 [required, trivial]: the original stem, "what did
   Nathan's parable to David describe?", gestured at the parable's full run (12:1-4), when only
   12:1 is challenge-ready under the human-escalated bounding above. The answer key was never
   ambiguous — "a lost sheep and its shepherd" is wrong on both counts — so this was not a bounding
   violation, but within a scene governed by a hard, human-signed constraint, a stem should reference
   only bounded text. Uses only 12:1's own text; does not touch chapter 11.)*
8. **2 Sam 15:6** (WEB, already-approved verse, listed in the medium brief but never used
   standalone there — free content): "Absalom did this sort of thing to all Israel who came to the
   king for judgment. So Absalom stole the hearts of the men of Israel." — MC: "According to 2
   Samuel 15:6, what does the text say Absalom did to the men of Israel?" Options: stole their
   hearts / gave them gifts / threatened them / ignored them. Correct: stole their hearts.

### Boss (4)

9. **Boss — reused verbatim from `medium`**: 2 Sam 12:7, "Nathan said to David, 'You are the man!
   This is what Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered
   you out of the hand of Saul.'" — recall: "Nathan said to David, 'You are the ___! This is what
   Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered you out of the
   hand of Saul.'" → **man**.
10. **Boss sequence — reused verbatim from `medium`**: David is anointed king over all Israel at
    Hebron (2 Sam 5) → the ark is brought up to Jerusalem with celebration (2 Sam 6) → Yahweh gives
    David the covenant promise through Nathan (2 Sam 7) → Nathan confronts David, and David confesses
    (2 Sam 12) → Absalom rebels against his father (2 Sam 15-18).
11. **Boss — adapted from `medium`** (same verse, blank, and answer; a shortened display template
    with a leading ellipsis rather than medium's full-verse recall prompt — see review Finding 7.7):
    2 Sam 18:33, "The king was much moved, and went up to the room over the gate and wept. As he
    went, he said, 'My son Absalom! My son, my son Absalom! I wish I had died instead of you,
    Absalom, my son, my son!'" — recall: "...I wish I had died instead of you, Absalom, my son, my
    ___!" → **son**. *(Label corrected per review Finding 7.7 [recommended]: this brief's prompt
    template is shorter than medium's ingested full-verse version — same verse, same blank, same
    answer, so `CONTENT_STYLE_GUIDE.md` §5 is satisfied, but "verbatim" overstated it.)*
12. **2 Sam 6:15** (WEB, already-approved verse, listed in the medium brief but never used
    standalone there — free content; new boss item): "So David and all the house of Israel brought
    up Yahweh's ark with shouting and with the sound of the trumpet." — MC: "According to 2 Samuel
    6:15, besides shouting, how did David and the house of Israel bring up Yahweh's ark?" Options:
    with the sound of the trumpet / with a chariot procession / in complete silence / with a
    military parade. Correct: with the sound of the trumpet.

*(Items 9-10 are exact reuses of already-reviewed `medium` boss items, confirmed directly against
`docs/ingest/1-2-samuel.sql`; item 11 adapts a third reused `medium` boss item with a shortened
display template (per Finding 7.7) — extended to a third reused item here specifically to match 2
Samuel medium's 4-boss count (see Design Note above) — while item 12 still adds one genuinely new
piece of content, following the same pattern as `docs/content/genesis-easy.md` and
`docs/content/1-samuel-easy.md`. **Ingest note (Finding 7.6, recommended):** when this tier is
ingested, item 10's reused `verse_ref` should be narrowed from medium's
`'2 Samuel 5:1-4; 6:12-15; 7:12-16; 12:1-13; 15:1-18:33'` to the bounded references (e.g.
`2 Samuel 5; 6; 7; 12:1,7,13; 15-18`), so no row in this book's audit trail cites a chapter-12 range
wider than the escalated decision allows. No displayed text changes; this is an ingestion-time
metadata note only.)*

## Contested Territory

Everything already flagged in `docs/content/2-samuel.md` and resolved in
`docs/reviews/2-samuel-review.md` (including its addendum) applies unchanged and is restated, not
loosened:

- **2 Samuel 11-12, Bathsheba/Uriah/Nathan — human-escalated bounding, applied identically.** Per
  Kachi Okere's 2026-08-08 sign-off, challenge-ready content from this scene is limited to **2
  Samuel 12:1, 12:7, and 12:13 only**. This brief selects two of those three (12:1 as a regular item,
  12:7 reused verbatim as a boss item) and **draws on no other verse from chapter 12, and on no
  verse from chapter 11 at all**, anywhere in this file. This bounding is treated as closed, not
  reopened: no new sourcing or re-argument is offered here, per the assignment's explicit
  instruction.
- **2 Samuel 7, the Davidic covenant — messianic reading.** Inherited restriction: 7:13 and 7:16 may
  only be used in recall/fill-in-blank format, never multiple choice, so no item can be built whose
  correct answer requires siding with the Christian messianic-fulfillment reading over the Jewish
  dynastic-promise reading (or vice versa). Item 6 (7:13) honors this — recall-only, blank on
  "kingdom," never reframed as "who does 'his kingdom' refer to." **New for this tier:** item 5 uses
  2 Samuel 7:12, the verse immediately preceding 7:13, in multiple-choice format. Checked against
  the existing bounding: 7:12's own content is "I will set up your offspring after you... and I will
  establish his kingdom" — narratively identical in kind to 7:13's promise, but the graded question
  asks only *what Yahweh promised to do* (set up an offspring, establish a kingdom), never *whose*
  ultimate kingdom "his kingdom" turns out to be. **Theological review §5.2 checked this more
  deeply than the original draft did and found the dispute is directly attached to 7:12's own
  clause, not merely adjacent to it** — Bible Hub's aggregation shows Ellicott and the Pulpit
  Commentary reading "Solomon" against Barnes (citing Peter's apostolic authority) and Matthew Henry
  reading Christ directly off "proceed out of your body... establish... forever," while Revised JPS
  renders the same clause as a plain dynastic promise with no Christological layer. The item still
  passes: the graded proposition (Yahweh promised to set up an offspring from David's own body and
  establish that offspring's kingdom) is text every disagreeing tradition renders alike, and 7:12's
  MC distractors ("a new prophet," "a foreign ruler," "the ark's guardian") are narratively absurd
  rather than theologically live alternatives, so none smuggles in a competing fulfillment reading.
  **Structural rule, reworded per review Finding 7.2 [required] to close three gaps the original
  wording left open** — it constrains the correct answer and the whole option set, not just the
  distractors; it is format-agnostic rather than MC-only (this book's already-ingested item set has
  a third format, sequence-with-attribution, that the old wording didn't cover); and it drops the
  word "ultimately," which would otherwise have permitted a "who, proximately?" item:

  > No challenge item drawn from 2 Samuel 7:12 may have a person or figure as its correct answer, as
  > any option, or as a matching/attribution target — in multiple-choice, recall, sequence,
  > matching, or any future format. The graded content must be the promised **action** as the verse
  > words it (an offspring set up from David's body; a kingdom established). No item may ask who the
  > "offspring" or "his kingdom" refers to, proximately or ultimately.

  *(Relocation note: the review also asks that this finalized rule be written into
  `docs/content/2-samuel.md`'s own Contested Territory section, since that is the canonical home of
  this book's structural rules and where a future tier's drafter — the hard-tier brief did not carry
  this rule at all — would read it from. That relocation is **not** applied in this pass, since this
  assignment's scope excludes editing already-approved medium-tier files; flagged here as an open
  follow-up rather than silently done or silently dropped.)*
- **2 Samuel 18:33 / 19:1 versification (item 11).** **Added per review Finding 7.5 [recommended].**
  In Masoretic/Hebrew versification this verse is numbered 2 Samuel 19:1, not 18:33 (confirmed
  against Revised JPS via Sefaria: "The king was shaken. He went up to the upper chamber of the
  gateway and wept..."). The brief's citation is correct for WEB, and the item is inherited from an
  already-approved, already-ingested `medium` row, so no text changes. **No challenge item in any
  tier should grade the verse *number* itself for this passage** (e.g. "in which verse does David
  weep for Absalom?") — grading the words, which is what item 11 does, is fine.
- **2 Samuel 6, the ark narrative — Uzzah's death (still not selected as challenge content).** This
  tier adds items from 6:12 and 6:15 (both already-approved, already-quoted verses) alongside the
  existing 6:14 item. All three stay within the ark's arrival-and-celebration bounding already
  established at `medium`; none touches 6:6-7 (Uzzah), which remains excluded from this tier exactly
  as it is from `medium`.
- **No new contested ground otherwise** — 5:3, 5:4, 7:12 (per above), 12:1, and 15:6 are all plain
  narrative description or in-text direct quotation with no live cross-tradition disagreement found,
  consistent with the theological reviewer's existing findings on these same verses/scenes.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required fixes
      applied above (see `docs/reviews/2-samuel-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/2-samuel-easy-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, stated bounding
- [x] No challenge item selects any verse from 2 Samuel chapter 11
- [x] No challenge item selects any 2 Samuel chapter 12 verse outside {12:1, 12:7, 12:13}
- [x] 2 Samuel 7:13 used in recall format only, never multiple choice
- [x] Item/boss count matches `docs/content/2-samuel.md` exactly (12 total, 4 boss)
