# Content Brief — Proverbs, Easy Tier (World 20)

Status: **approved** — self-run theological review complete, see
`docs/reviews/proverbs-easy-review.md` (no changes required).

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has not
run — theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql` file has
been written for this tier — out of scope for this task.

Scaling the difficulty-mode pipeline (Genesis, Leviticus, Psalms) to Proverbs. Reuses the same 5
pivotal thematic clusters already approved in `docs/content/proverbs.md` (no new clusters), so the
existing Contested Territory analysis for those clusters (`docs/reviews/proverbs-review.md`) still
applies and is carried forward below, **including the two structural format rules that brief's own
review added — Proverbs 22:6 restricted to recall/attribution format only, and the Proverbs 31:10-31
cluster restricted to recall of the poem's own wording only. Both rules are honored unchanged in this
tier's items.**

> **Verbatim-text caveat:** every verse used below is quoted verbatim from `docs/content/proverbs.md`,
> which the medium-tier review already checked against live WEB sources (two-sourced for the three
> most pivotal verses; single-sourced, flagged for QA §3, for the rest — `docs/reviews/proverbs-review.md`
> §1). **No new verse text was fetched for this tier** — every item reuses already-approved verse
> text in a new challenge format. This is still not a substitute for the independent
> character-for-character QA check required by `QA_REQUIREMENTS.md` §3. **Do not ingest into the
> `challenge` table until that separate verbatim QA pass has run.**

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per the Genesis pilot's design rule: "easy... real simple." This tier draws the most iconic,
broadly-recognizable facts from each of Proverbs' 5 pivotal thematic clusters and favors
multiple-choice recognition over typed recall, so a first-time or younger player can succeed without
prior Bible knowledge. It does **not** simplify or paraphrase verse text — verbatim WEB text only, at
every tier. As `docs/content/proverbs.md` already establishes, Proverbs is non-narrative, so this
brief works from **pivotal thematic clusters**, not scenes, and "sequence" items order clusters or a
single proverb's parallelism rather than plot events — that shape difference is carried forward
unchanged, not reopened.

## Pivotal Thematic Clusters — reused from `docs/content/proverbs.md`, no new clusters added

Same 5 clusters: The Beginning and Value of Wisdom (Proverbs 1, 3), Guard Your Heart, Walk the Right
Path (Proverbs 4), Well-Known Wisdom Sayings (Proverbs 15-17, 27), Instruction for the Young: "Train
Up a Child" (Proverbs 22), The Virtuous Woman (Proverbs 31).

## Challenge Items (13: 10 regular + 3 boss)

Matches `medium`'s own ingested shape — verified directly against
`docs/ingest/proverbs-ecclesiastes-song-of-solomon.sql`, which shows Proverbs' `medium` tier ingesting
13 challenge rows, 3 of them `is_boss_item = true`.

### Regular (10)

1. **Prov 3:5** (WEB, already-approved verse, new format): "Trust in Yahweh with all your heart, and
   don't lean on your own understanding. In all your ways acknowledge him, and he will make your
   paths straight." — MC: "According to Proverbs 3:5, in what does the text say to trust?" Options:
   Yahweh / your own understanding / riches / the king. Correct: Yahweh.
2. **Prov 1:7** (WEB, already-approved verse, new format): "The fear of Yahweh is the beginning of
   knowledge, but the foolish despise wisdom and instruction." — MC: "According to Proverbs 1:7, what
   is the beginning of knowledge?" Options: the fear of Yahweh / wealth / education / age. Correct:
   the fear of Yahweh.
3. **Prov 22:6** (WEB, already-approved verse, attribution-matching MC format — per the inherited
   structural rule, never an application-framed format): "Train up a child in the way he should go,
   and when he is old he will not depart from it." — MC: "Which verse says 'Train up a child in the
   way he should go'?" Options: Proverbs 22:6 / Proverbs 3:5 / Proverbs 1:7 / Proverbs 31:10. Correct:
   Proverbs 22:6.
4. **Prov 16:18** (WEB, already-approved verse, new format — `medium` used this verse as a sequence
   item): "Pride goes before destruction, and an arrogant spirit before a fall." — MC: "According to
   Proverbs 16:18, what goes before destruction?" Options: Pride / Wisdom / Humility / Patience.
   Correct: Pride.
5. **Prov 17:17** (WEB, already-approved verse, new format): "A friend loves at all times; and a
   brother is born for adversity." — MC: "According to Proverbs 17:17, when is a brother born?"
   Options: for adversity / for celebration / for wealth / for war. Correct: for adversity.
6. **Prov 27:17** (WEB, already-approved verse, new format — `medium` used this verse as
   attribution-matching MC; this tier asks the content directly): "Iron sharpens iron; so a man
   sharpens his friend's countenance." — MC: "According to Proverbs 27:17, what does iron do to
   iron?" Options: sharpens it / breaks it / melts it / bends it. Correct: sharpens it.
7. **Prov 31:30** (WEB, already-approved verse, new format — per the inherited structural rule, recall
   of the poem's own wording only): "Charm is deceitful, and beauty is vain; but a woman who fears
   Yahweh, she shall be praised." — MC: "According to Proverbs 31:30, what does the text call vain?"
   Options: beauty / wealth / wisdom / strength. Correct: beauty.
8. **Prov 3:13** (WEB, already-approved verse, new format): "Happy is the man who finds wisdom, the
   man who gets understanding." — MC: "According to Proverbs 3:13, what is the man called who finds
   wisdom?" Options: Happy / Rich / Powerful / Famous. Correct: Happy.
9. **Prov 4:23** (WEB, already-approved verse, new format — `medium` used this verse as recall): "Keep
   your heart with all diligence, for out of it is the wellspring of life." — MC: "According to
   Proverbs 4:23, what are you told to keep with all diligence?" Options: your heart / your money /
   your land / your name. Correct: your heart.
10. **Prov 4:18** (WEB, already-approved verse, new format — `medium` used this verse's MC with a
    different stem): "But the path of the righteous is like the dawning light that shines more and
    more until the perfect day." — MC: "According to Proverbs 4:18, the path of the righteous is
    compared to what?" Options: the dawning light / a river / a tree / a lamp. Correct: the dawning
    light.

### Boss (3)

11. **Prov 15:1** (WEB, already-approved verse, format reused from `medium`): "A gentle answer turns
    away wrath, but a harsh word stirs up anger." — recall: "A gentle answer turns away ___, but a
    harsh word stirs up anger." → **wrath**.
12. **Boss sequence — reused verbatim from `medium`**: order these three quotations as they occur in
    the book — Proverbs 1:7 ("The fear of Yahweh is the beginning of knowledge...") → Proverbs 3:5-6
    ("Trust in Yahweh with all your heart...") → Proverbs 22:6 ("Train up a child in the way he
    should go...").
13. **Prov 22:1** (WEB, already-approved verse, new format — `medium` used this verse as recall): "A
    good name is more desirable than great riches, and loving favor is better than silver and gold."
    — MC: "According to Proverbs 22:1, what is more desirable than great riches?" Options: A good name
    / Long life / Many children / Land. Correct: A good name.

*(No item in this brief introduces a verse beyond what `docs/content/proverbs.md` already lists as
challenge-ready — every item is either an exact reuse of a `medium` item's verse in a new question
format, or a new question built from an already-approved verse. This keeps the tier's review surface
at zero new verse-text risk.)*

## Contested Territory

Everything already flagged in `docs/content/proverbs.md`/`docs/reviews/proverbs-review.md` applies
unchanged: Proverbs as promise vs. general wisdom (item 3, Prov 22:6), the virtuous-woman poem as a
gender-role prescription (item 7, Prov 31:30), the Solomon/multiple-author question, and "fear of
Yahweh" (items 1, 2) — plus the two structural format rules that review added.

**Format-change check for this tier**, per the Leviticus easy-tier precedent that format is not
neutral — checked every item individually:

- **Item 3 (Prov 22:6 → attribution-matching MC)** complies with the inherited structural rule by
  construction: the stem asks *which verse* contains the quotation, never an application-style "what
  will happen if" question. All four options are book references, not outcome claims, so no option
  could be read as a promise/guarantee framing regardless of which is picked.
- **Item 7 (Prov 31:30 → MC "what does the text call vain")** stays on the poem's own wording per the
  inherited rule: the stem asks what the text calls beauty, not whether beauty is actually vain or
  what a woman should value. No option evaluates or prescribes; all four are plain nouns the player
  either recognizes as the verse's word or doesn't.
- **Items 4, 6, 9, 10, 13 (recall/attribution → MC, or MC with a new stem)** — checked individually;
  each keeps the same graded fact `medium` already graded (what goes before destruction; what iron
  does to iron; what to keep with all diligence; what the righteous path is compared to; what is more
  desirable than riches). No format change introduces a new interpretive question.
- **No format change in this brief crosses into new contested ground.**

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, see
      `docs/reviews/proverbs-easy-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 5 pivotal clusters above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      recall-only bounding
- [x] Proverbs 22:6 and the Proverbs 31:10-31 cluster confirmed compliant with the inherited
      structural format rules
- [x] No new verse text introduced — every item reuses already-approved `docs/content/proverbs.md`
      verse text in a new format
