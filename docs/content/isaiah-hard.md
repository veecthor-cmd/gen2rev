# Content Brief — Isaiah, Hard Tier (World 23)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/isaiah-hard-review.md` (no changes required).

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has not
run — theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql` file has
been written for this tier — out of scope for this task.

Second half of the Isaiah tier-scaling pass (see `docs/content/isaiah-easy.md` for the shared design
rationale). Reuses the same 8 pivotal passages already approved in `docs/content/isaiah.md` — no new
passages — but selects less commonly memorized, more precise clauses and skews toward typed recall
over multiple choice. **Per that brief, Isaiah 7:14, 9:6-7, and all of Isaiah 53 remain excluded
entirely — that scope decision is not reopened here and is independently re-confirmed absent from this
brief.**

> **Verbatim-text caveat:** every verse used below is quoted verbatim from `docs/content/isaiah.md`,
> which the medium-tier review already cross-checked against two live WEB sources (ebible.org and
> BibleGateway, `version=WEB`) with no mismatches (`docs/reviews/isaiah-review.md` §1). **No new verse
> text (i.e. no verse outside the already-approved 8 passages) is introduced by this tier** — every
> item draws on text already quoted in full in `docs/content/isaiah.md`, including several verses
> (Isa 1:16, 2:2-3, 6:2, 6:4-5, 12:3-5, 38:1, 40:29-30, 55:7, 55:9) that the medium brief quotes in
> full but never turned into a standalone challenge item. As an extra draft-pull check for this pass,
> every passage used below was re-fetched fresh from both ebible.org and biblegateway.com
> (`version=WEB`) on 2026-09-03 and matched character-for-character against the already-approved text
> — see `docs/reviews/isaiah-hard-review.md` §1 for the full source table. This is still not a
> substitute for the independent character-for-character QA check required by `QA_REQUIREMENTS.md`
> §3. **Do not ingest into the `challenge` table until that separate verbatim QA pass has run.**

Translation: World English Bible (WEB) throughout.

---

## Design intent for this tier

Per Kachi: "hard... needs very deep scripture knowledge." This tier draws on clauses that are
theologically or narratively significant but less likely to be immediately recognized — secondary
details and precise phrasing within the same 8 already-approved passages — and requires typed recall
(no multiple-choice scaffolding) wherever the format allows. It stays inside the same guardrails as
every other tier: verbatim WEB text only, narrative fact only, no doctrinal position required. All
items in this brief are **difficulty_rank 5** — this tier skews to the ceiling of the ladder
throughout, mirroring every prior hard-tier brief in this project.

## Pivotal Passages — reused from `docs/content/isaiah.md`, no new passages added

Same 8 passages as `medium` and `easy`: Isaiah 1:16-18, Isaiah 2:2-4, Isaiah 6:1-8, Isaiah 12:2-6,
Isaiah 38:1-6, Isaiah 40:28-31, Isaiah 41:10, Isaiah 55:6-9. **Isaiah 7:14, 9:6-7, and all of Isaiah
53 remain excluded, unchanged from `medium` and `easy`** — no verse from any of those three appears
anywhere in this brief.

## Challenge Items (12: 9 regular + 3 boss)

### Regular (9)

1. **Isa 1:16** (WEB, already-approved verse, new blank — `medium` blanked "fatherless" from the
   combined 1:16-17 block; this item targets a clause from v.16 alone): "Wash yourselves. Make
   yourself clean. Put away the evil of your doings from before my eyes. Cease to do evil." — recall:
   "Put away the evil of your doings from before my ___." → **eyes**.
2. **Isa 2:3** (WEB, already-approved verse, new content — not used as a standalone item in `medium`,
   which only drew on v.4's "plowshares" from this passage): "Many peoples shall go and say, 'Come,
   let's go up to the mountain of Yahweh, to the house of the God of Jacob; and he will teach us of
   his ways, and we will walk in his paths.' For the law shall go out of Zion, and Yahweh's word from
   Jerusalem." — recall: "For the law shall go out of ___, and Yahweh's word from Jerusalem." →
   **Zion**. *(Purely geographic narrative fact — see Contested Territory below on why this is
   distinct from the "latter days" timing dispute.)*
3. **Isa 6:4** (WEB, already-approved verse, new content — not used as a standalone item in `medium`):
   "The foundations of the thresholds shook at the voice of him who called, and the house was filled
   with smoke." — recall: "The foundations of the thresholds shook at the voice of him who called, and
   the house was filled with ___." → **smoke**.
4. **Isa 6:5** (WEB, already-approved verse, new content — not used as a standalone item in `medium`):
   "Then I said, 'Woe is me! For I am undone, because I am a man of unclean lips and I live among a
   people of unclean lips, for my eyes have seen the King, Yahweh of Armies!'" — recall: "...because I
   am a man of unclean ___ and I live among a people of unclean lips..." → **lips**. *(Grades Isaiah's
   self-description only — never the identity of "the King, Yahweh of Armies" he says he has seen; see
   Contested Territory below.)*
5. **Isa 12:4** (WEB, already-approved verse, new content — not used as a standalone item in
   `medium`): "In that day you will say, 'Give thanks to Yahweh! Call on his name! Declare his doings
   among the peoples! Proclaim that his name is exalted!'" — recall: "Declare his doings among the
   peoples! Proclaim that his name is ___!" → **exalted**.
6. **Isa 38:1** (WEB, already-approved verse, new content — not used as a standalone item in
   `medium`): "In those days Hezekiah was sick and near death. Isaiah the prophet, the son of Amoz,
   came to him, and said to him, 'Yahweh says, "Set your house in order, for you will die, and not
   live."'" — recall: "'Yahweh says, "Set your house in ___, for you will die, and not live."'" →
   **order**.
7. **Isa 40:29** (WEB, already-approved verse, new content — not used as a standalone item in
   `medium`, which only drew on v.28's "weary" and v.31's "eagles" from this passage): "He gives power
   to the weak. He increases the strength of him who has no might." — recall: "He gives power to the
   ___. He increases the strength of him who has no might." → **weak**.
8. **Isa 41:10** (WEB, already-approved verse, new blank — `medium` blanked "righteousness" from this
   verse's closing clause; this item targets an earlier clause): "Don't you be afraid, for I am with
   you. Don't be dismayed, for I am your God. I will strengthen you. Yes, I will help you. Yes, I will
   uphold you with the right hand of my righteousness." — recall: "Don't be ___, for I am your God." →
   **dismayed**.
9. **Isa 55:7** (WEB, already-approved verse, new content — not used as a standalone item in
   `medium`, which only drew on v.8's "Yours" from this passage): "Let the wicked forsake his way, and
   the unrighteous man his thoughts. Let him return to Yahweh, and he will have mercy on him, to our
   God, for he will freely pardon." — recall: "Let him return to Yahweh, and he will have mercy on
   him, to our God, for he will freely ___." → **pardon**.

### Boss (3)

10. **Isa 6:2** (WEB, already-approved verse, new content — not used as a standalone item in
    `medium`): "Above him stood the seraphim. Each one had six wings. With two he covered his face.
    With two he covered his feet. With two he flew." — recall: "Above him stood the seraphim. Each one
    had ___ wings." → **six**.
11. **Boss sequence — new, extends `medium`'s 3-quotation sequence to 4 quotations for hard-tier
    precision, adding one more passage and requiring exact chapter-order placement**: put these four
    quotations in the order they occur across the book of Isaiah — "They shall beat their swords into
    plowshares, and their spears into pruning hooks." (Isa 2:4) → "Here I am. Send me!" (Isa 6:8) →
    "They will mount up with wings like eagles." (Isa 40:31) → "For my thoughts are not your thoughts,
    and your ways are not my ways," (Isa 55:8).
12. **Isa 55:9** (WEB, already-approved verse, new content — not used as a standalone item in
    `medium`): "For as the heavens are higher than the earth, so are my ways higher than your ways,
    and my thoughts than your thoughts." — recall: "For as the heavens are higher than the earth, so
    are my ways ___ than your ways, and my thoughts than your thoughts." → **higher**.

*(No item in this brief introduces a verse beyond what `docs/content/isaiah.md` already quotes in
full. Every item either targets a new blank within a verse `medium` already used [1:16, 6:5's earlier
clause, 41:10's earlier clause], or builds a new recall item from a verse `medium` quotes in full but
never turned into a standalone item [2:3, 6:2, 6:4, 12:4, 38:1, 40:29, 55:7, 55:9]. This keeps the
tier's new-verse-text review surface at zero, the same choice Psalms' hard tier made wherever
possible, while still reaching genuinely less-iconic, more-precise material across every passage.)*

## Contested Territory

Everything already flagged in `docs/content/isaiah.md`/`docs/reviews/isaiah-review.md` applies
unchanged, and is independently reconfirmed below rather than merely carried forward by assertion.

**Deliberate exclusions — reconfirmed absent:**

- **Isaiah 7:14, 9:6-7, and all of Isaiah 53 remain excluded entirely.** No verse from any of these
  three appears anywhere in this brief — confirmed by direct check against every reference cited
  above (all eight are Isa 1, 2, 6, 12, 38, 40, 41, and 55; none is Isa 7, 9, or 53).

**New for this tier — checked against the same bounding `medium` already established, plus one
item-specific check:**

- **Isaiah 2:3 (item 2), "the law shall go out of Zion."** This is a different clause than the "latter
  days"/"mountain of Yahweh's house" language in v.2 that carries the confirmed timing/referent
  dispute (Jewish tradition: still-future messianic age; Christian tradition: inaugurated at Christ's
  first coming, sometimes reading "the mountain" as the Church) — `docs/reviews/isaiah-review.md`
  §3.4. Theological review (`docs/reviews/isaiah-hard-review.md` §3.2) additionally found that classic
  Christian commentary reads "the law" itself as gospel doctrine fulfilled through apostolic preaching
  from Jerusalem, where a Jewish reading takes it as Torah instruction — a real, narrower disagreement
  about *what* "the law" is, distinct from the wider timing/referent dispute. Both traditions agree
  Zion/Jerusalem is named as the point of origin. **Structural rule, sharpened by this tier's review:
  no challenge built from Isaiah 2:2-4 may ask when "the latter days" occur, what "the mountain of
  Yahweh's house" refers to, or what "the law" refers to** — item 2 complies, grading only the printed
  place-name "Zion," never what "the law" is.
- **Isaiah 6:5 (item 4), "a man of unclean lips."** Grades Isaiah's own self-description only. Does
  not touch the confirmed 6:1 identity question (whether "the King, Yahweh of Armies" Isaiah says he
  has seen carries the Christological weight John 12:41 gives it in Christian tradition, versus a
  direct, unidentified theophany in Jewish tradition — `docs/reviews/isaiah-review.md` §3.5) — the
  blank never falls on "the King, Yahweh of Armies," only on Isaiah's own "unclean lips." **Same
  bounding `medium` already applied to this passage; no new restriction needed.**
- **Isaiah 38:1 (item 6).** Grades only what Isaiah tells Hezekiah in the text's own words — stays
  inside Isaiah 38's own wording, makes no comparison to or claim about the parallel accounts in 2
  Kings 20 or 2 Chronicles 32 (the scope-only bounding `medium` already applied to this passage as a
  whole, per `docs/reviews/isaiah-review.md` §3.6).
- **Isaiah 12:4, 40:29, 55:7, 55:9 (items 5, 7, 9, 12) and the boss sequence (item 11).** No item makes
  or implies any claim about single vs. composite ("Second Isaiah") authorship of chapters 12, 40, or
  55; every item cites its passage simply as "Isaiah," book-chapter-verse, matching `medium`'s
  no-authorship-claim framing (`docs/reviews/isaiah-review.md` §3.7).
- **Isaiah 55:7, "he will freely pardon" (item 9).** Checked independently, including the JPS Tanakh's
  translation of the same verse ("who freely forgives") via Sefaria — substantively the same promise
  as WEB's wording, no cross-tradition divergence found. This states a text-internal outcome ("Yahweh
  will have mercy... he will freely pardon") in the same register as the already-approved and
  already-bounded "low doctrinal risk, near-universal use" framing `medium` applied to Isaiah 55:6-9
  as a whole. It does not require a player to affirm any doctrine of atonement or forgiveness, only
  that the text states Yahweh "will freely pardon." No new restriction needed.
- **No other new contested ground identified.** Independent review found no cross-tradition
  disagreement attaching to any of the remaining newly-isolated clauses (1:16's "eyes," 6:2's "six
  wings," 6:4's "smoke," 40:29's "weak," 55:9's "higher") beyond what `medium`'s review already
  catalogued for these passages as a whole.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, see
      `docs/reviews/isaiah-hard-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 8 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No verse from Isaiah 7:14, 9:6-7, or 53 appears anywhere in this brief
- [x] No new verse text introduced — every item reuses already-approved `docs/content/isaiah.md`
      verse text (several verses quoted in full there but not previously used standalone)
