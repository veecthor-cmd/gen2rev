# Content Brief — Psalms, Easy Tier (World 19)

Status: **approved** — self-run theological review complete, see
`docs/reviews/psalms-easy-review.md` (no changes required).

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has not
run — theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql` file has
been written for this tier — out of scope for this task.

Scaling the difficulty-mode pipeline piloted on Genesis (`docs/content/genesis-easy.md`,
`docs/content/genesis-hard.md`) and continued on Leviticus (`docs/content/leviticus-easy.md`,
`docs/content/leviticus-hard.md`) to Psalms. Reuses the same 6 pivotal psalms already approved in
`docs/content/psalms.md` (no new psalms), so the existing Contested Territory analysis for those
psalms (`docs/reviews/psalms-review.md`) still applies and is carried forward below. **Per that
brief, imprecatory psalms, Psalms 22 and 110, and Psalm 51:5 remain excluded entirely — that scope
decision is not reopened here and is independently re-confirmed absent from this brief.**

> **Verbatim-text caveat:** every verse used below is quoted verbatim from `docs/content/psalms.md`,
> which the medium-tier review already cross-checked against two live WEB sources (ebible.org and
> biblegateway.com) with no mismatches found (`docs/reviews/psalms-review.md` §1). **No new verse
> text was fetched for this tier** — every item reuses already-approved verse text in a new challenge
> format. This is still not a substitute for the independent character-for-character QA check
> required by `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table until that separate
> verbatim QA pass has run.**

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per the Genesis pilot's design rule: "easy... real simple." This tier draws the most iconic,
broadly-recognizable facts from each of the 6 pivotal psalms and favors multiple-choice recognition
over typed recall, so a first-time or younger player can succeed without prior Bible knowledge. It
does **not** simplify or paraphrase verse text — verbatim WEB text only, at every tier. Psalms is
non-narrative — as `docs/content/psalms.md` already establishes, this brief works from **pivotal
whole psalms**, not scenes; that shape difference is carried forward unchanged, not reopened.

## Pivotal Psalms — reused from `docs/content/psalms.md`, no new psalms added

Same 6 psalms: Psalm 1 (The Two Ways), Psalm 23 (The Shepherd Psalm), Psalm 51:1-2, 10, 17 (David's
Repentance), Psalm 100 (A Psalm of Thanksgiving), Psalm 121 (The Lord as Keeper), Psalm 150 (Closing
Doxology).

## Challenge Items (15: 12 regular + 3 boss)

Matches `medium`'s own ingested shape — verified directly against `docs/ingest/job-psalms.sql`, which
shows Psalms' `medium` tier ingesting 15 challenge rows, 3 of them `is_boss_item = true`.

### Regular (12)

1. **Ps 1:1** (WEB, already-approved verse, new format): "Blessed is the man who doesn't walk in the
   counsel of the wicked, nor stand on the path of sinners, nor sit in the seat of scoffers;" — MC:
   "According to Psalm 1:1, whose counsel does the blessed man not walk in?" Options: the wicked /
   the priests / the elders / the poor. Correct: the wicked.
2. **Ps 1:3** (WEB, already-approved verse, new format): "He will be like a tree planted by the
   streams of water, that produces its fruit in its season, whose leaf also does not wither.
   Whatever he does shall prosper." — MC: "According to Psalm 1:3, the righteous person is compared
   to what?" Options: a tree planted by streams of water / a mountain / a lamp / a shield. Correct: a
   tree planted by streams of water.
3. **Ps 23:1** (WEB, already-approved verse, new format): "Yahweh is my shepherd; I shall lack
   nothing." — MC: "According to Psalm 23:1, what does the psalmist call Yahweh?" Options: my
   shepherd / my king / my rock / my father. Correct: my shepherd.
4. **Ps 23, superscription** (WEB, already-approved, new format): "A Psalm by David." — MC: "Per its
   own superscription, who is traditionally credited as the author of Psalm 23?" Options: David /
   Solomon / Moses / Asaph. Correct: David.
5. **Ps 23:2** (WEB, already-approved verse, new format): "He makes me lie down in green pastures. He
   leads me beside still waters." — MC: "According to Psalm 23:2, where does Yahweh make the
   psalmist lie down?" Options: green pastures / a mountain top / a desert / a garden. Correct: green
   pastures.
6. **Ps 51:10** (WEB, already-approved verse, format reused from `medium`): "Create in me a clean
   heart, O God. Renew a right spirit within me." — recall: "Create in me a clean ___, O God." →
   **heart**.
7. **Ps 51, superscription** (WEB, already-approved, new format — see Contested Territory below, same
   bounding as `medium`): "For the Chief Musician. A Psalm by David, when Nathan the prophet came to
   him, after he had gone in to Bathsheba." — MC: "Per Psalm 51's own superscription, which prophet
   came to David?" Options: Nathan / Samuel / Elijah / Gad. Correct: Nathan.
8. **Ps 100:1** (WEB, already-approved verse, new format): "Shout for joy to Yahweh, all you lands!"
   — MC: "Psalm 100 opens with a call to do what?" Options: Shout for joy to Yahweh / Sit in silence
   / Weep before Yahweh / Build an altar. Correct: Shout for joy to Yahweh.
9. **Ps 100:3** (WEB, already-approved verse, new format): "Know that Yahweh, he is God. It is he who
   has made us, and we are his. We are his people, and the sheep of his pasture." — MC: "According to
   Psalm 100:3, whose people are we called?" Options: his (Yahweh's) people / the king's people / the
   priest's people / no one's. Correct: his people.
10. **Ps 121:1-2** (WEB, already-approved verse, new format): "I will lift up my eyes to the hills.
    Where does my help come from? My help comes from Yahweh, who made heaven and earth." — MC:
    "According to Psalm 121, where does the psalmist's help come from?" Options: Yahweh, who made
    heaven and earth / the hills themselves / the king / the priests. Correct: Yahweh, who made
    heaven and earth.
11. **Ps 121:4** (WEB, already-approved verse, new format — `medium` used this verse as recall; this
    tier reuses it as MC): "Behold, he who keeps Israel will neither slumber nor sleep." — MC:
    "According to Psalm 121:4, what will the keeper of Israel never do?" Options: slumber nor sleep /
    eat nor drink / speak nor sing / rest nor gather. Correct: slumber nor sleep.
12. **Ps 150:3** (WEB, already-approved verse, new format): "Praise him with the sounding of the
    trumpet! Praise him with harp and lyre!" — MC: "Which instrument is named first in Psalm 150:3?"
    Options: trumpet / cymbals / flute / tambourine. Correct: trumpet.

### Boss (3)

13. **Ps 100:5** (WEB, already-approved verse, new format): "For Yahweh is good. His loving kindness
    endures forever, his faithfulness to all generations." — MC: "According to Psalm 100:5, what does
    the text say endures forever?" Options: his loving kindness / his temple / his throne / his
    covenant. Correct: his loving kindness.
14. **Boss sequence — new**: order Psalm 150's instrument list as it appears (same content `medium`'s
    ladder-level-3 example already used, formatted here as the boss item rather than an example):
    "Praise him with the sounding of the trumpet! Praise him with harp and lyre!" → "Praise him with
    tambourine and dancing! Praise him with stringed instruments and flute!" → "Praise him with loud
    cymbals! Praise him with resounding cymbals!"
15. **Ps 150:6** (WEB, already-approved verse, new format — `medium` used this verse as recall; this
    tier reuses it as MC): "Let everything that has breath praise Yah! Praise Yah!" — MC: "According
    to Psalm 150:6, what does the text call on everything that has breath to do?" Options: praise Yah
    / build an altar / offer sacrifice / keep silence. Correct: praise Yah.

*(No item in this brief introduces a verse beyond what `docs/content/psalms.md` already lists as
challenge-ready — every item is either an exact reuse of a `medium` item's verse in a new question
format, or a new question built from a verse the medium brief already quotes but never turned into a
standalone item. This keeps the tier's review surface at zero new verse-text risk, the same choice
Leviticus's easy tier made for the same reason.)*

## Contested Territory

Everything already flagged in `docs/content/psalms.md`/`docs/reviews/psalms-review.md` applies
unchanged: psalm superscriptions' historicity/authorship (items 4, 7), psalm/chapter numbering across
traditions, Psalm 23:6's "dwell...forever" (not used in this tier at all), Psalm 51:5's deliberate
exclusion, Psalm 51's superscription and the 2 Samuel 11 tie-in (item 7), Psalm 1:5's "judgment" (not
used in this tier), Psalm 150 and instrumental worship (items 12, 14, 15), and the deliberate
exclusion of imprecatory psalms and Psalms 22/110 — **confirmed again: no verse from any of those
psalms appears anywhere in this brief.**

**Format-change check for this tier:** four items (6, 8, 10, 12) keep `medium`'s exact format
(recall or MC unchanged); the remainder (1-5, 7, 9, 11, 13, 15) convert a `medium` recall item into
MC, or build a new MC/sequence question from a verse `medium` quoted but never used standalone.
Checked each individually, per the Leviticus easy-tier review's finding that format is not neutral:

- **Item 7 (Ps 51 superscription → MC "which prophet")** carries the same narrative-only bounding
  `medium` already applied: the item tests only that the text names Nathan, never anything about 2
  Samuel 11's events or David's conduct. Converting to MC does not change what's graded — "which
  prophet" has one textually correct answer regardless of format, and no distractor (Samuel, Elijah,
  Gad) is a defensible alternate reading of this specific text.
- **Item 4 (Ps 23 superscription → MC "who is credited as author")** stays on the superscription's
  historicity bounding already established in `medium`: the item asks what the heading states, not
  whether the heading is historically reliable. MC format does not change this — "David" is what the
  text prints, and no distractor is defensible as what the text prints.
- **Items 11 and 15 (recall → MC)** — both keep the same graded fact `medium`'s recall format graded
  (that the keeper "will neither slumber nor sleep"; that "everything that has breath" is called to
  "praise Yah"). No new interpretive content is introduced by the format change in either case.
- **No format change in this brief crosses into new contested ground.** Unlike Leviticus's easy tier
  (which found two items where a format change did cross a line, e.g. Lev 25:10's recall→MC risking a
  legislation-vs-event framing shift), no item here changes *what* is graded when it changes *how* it
  is graded — every MC's correct option and every distractor were checked individually against the
  verse text itself, and none open a live interpretive question `medium` didn't already bound.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, see
      `docs/reviews/psalms-easy-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 6 pivotal psalms above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No imprecatory psalm, and no Psalm 22/110 or Psalm 51:5 item, appears anywhere in this brief
- [x] No new verse text introduced — every item reuses already-approved `docs/content/psalms.md`
      verse text in a new format
