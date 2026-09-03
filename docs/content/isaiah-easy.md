# Content Brief — Isaiah, Easy Tier (World 23)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/isaiah-easy-review.md` (no changes required).

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has not
run — theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No `docs/ingest/*.sql` file has
been written for this tier — out of scope for this task.

Scaling the difficulty-mode pipeline (piloted on Genesis, continued on Leviticus/Numbers/Psalms/Job/
Proverbs/Ruth/Nehemiah, etc.) to Isaiah. Reuses the same 8 pivotal passages already approved in
`docs/content/isaiah.md` (no new passages), so the existing Contested Territory analysis for those
passages still applies and is carried forward below. **Per that brief, Isaiah 7:14, 9:6-7, and all of
Isaiah 53 remain excluded entirely — that scope decision is not reopened here and is independently
re-confirmed absent from this brief.**

> **Verbatim-text caveat:** every verse used below is quoted verbatim from `docs/content/isaiah.md`,
> which the medium-tier review already cross-checked against two live WEB sources (ebible.org and
> BibleGateway, `version=WEB`) with no mismatches (`docs/reviews/isaiah-review.md` §1). **No new verse
> text (i.e. no verse outside the already-approved 8 passages) is introduced by this tier** — every
> item draws on text already quoted in `docs/content/isaiah.md`. As an extra draft-pull check for this
> pass, every passage used below was re-fetched fresh from both ebible.org and biblegateway.com
> (`version=WEB`) on 2026-09-03 and matched character-for-character against the already-approved text
> — see `docs/reviews/isaiah-easy-review.md` §1 for the full source table. This is still not a
> substitute for the independent character-for-character QA check required by `QA_REQUIREMENTS.md`
> §3. **Do not ingest into the `challenge` table until that separate verbatim QA pass has run.**

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per Kachi: "easy... real simple." This tier draws the most iconic, broadly-recognizable facts from
each of Isaiah's 8 pivotal passages and favors multiple-choice recognition over typed recall, so a
first-time or younger player can succeed without prior Bible knowledge. It does **not** simplify or
paraphrase verse text — verbatim WEB text only, at every tier, same as `medium`. All items in this
brief are **difficulty_rank 1** — this tier skews to the floor of the ladder throughout, per Kachi's
"real simple" design rule and consistent with every prior easy-tier brief in this project.

## Pivotal Passages — reused from `docs/content/isaiah.md`, no new passages added

Same 8 passages: Isaiah 1:16-18 (Come Now, Let's Reason Together), Isaiah 2:2-4 (Swords into
Plowshares), Isaiah 6:1-8 (The Call of Isaiah), Isaiah 12:2-6 ("Behold, God Is My Salvation"), Isaiah
38:1-6 (Hezekiah's Illness and Healing), Isaiah 40:28-31 (Wings Like Eagles), Isaiah 41:10 ("Don't Be
Afraid, for I Am with You"), Isaiah 55:6-9 ("My Thoughts Are Not Your Thoughts"). **Isaiah 7:14, 9:6-7,
and all of Isaiah 53 remain excluded, unchanged from `medium`** — no verse from any of those three
appears anywhere in this brief.

## Challenge Items (12: 9 regular + 3 boss)

### Regular (9)

1. **Isa 1:18** (WEB, already-approved verse, new format): "'Come now, and let's reason together,'
   says Yahweh: 'Though your sins are as scarlet, they shall be as white as snow. Though they are red
   like crimson, they shall be as wool.'" — MC: "According to Isaiah 1:18, what does Yahweh say sins
   'as scarlet' will become?" Options: white as snow / black as coal / green as grass / gray as ash.
   Correct: white as snow.
2. **Isa 1:17** (WEB, already-approved verse, new format — `medium` blanked this same clause as recall
   inside a combined 1:16-17 block; this item isolates it as its own MC question): "Learn to do well.
   Seek justice. Relieve the oppressed. Defend the fatherless. Plead for the widow." — MC: "According
   to Isaiah 1:17, who does the text say to defend?" Options: the fatherless / the king / the priests
   / the wealthy. Correct: the fatherless.
3. **Isa 2:4** (WEB, already-approved verse, new format): "He will judge between the nations, and will
   decide concerning many peoples. They shall beat their swords into plowshares, and their spears into
   pruning hooks. Nation shall not lift up sword against nation, neither shall they learn war any
   more." — MC: "According to Isaiah 2:4, what will the nations beat their swords into?" Options:
   plowshares / shields / chariots / crowns. Correct: plowshares.
4. **Isa 6:3** (WEB, already-approved verse, new format): "One called to another, and said, 'Holy,
   holy, holy, is Yahweh of Armies! The whole earth is full of his glory!'" — MC: "What do the
   seraphim call out to one another in Isaiah 6:3?" Options: "Holy, holy, holy, is Yahweh of Armies!"
   / "Glory, glory, glory!" / "Worthy, worthy, worthy!" / "Amen, amen, amen!" Correct: "Holy, holy,
   holy, is Yahweh of Armies!"
5. **Isa 6:8** (WEB, already-approved verse, new format — `medium` blanked "Here" as recall; this item
   tests the full line as MC recognition): "I heard the Lord's voice, saying, 'Whom shall I send, and
   who will go for us?' Then I said, 'Here I am. Send me!'" — MC: "How does Isaiah respond to Yahweh's
   call, 'Whom shall I send'?" Options: "Here I am. Send me!" / "I am not worthy." / "Send my brother
   instead." / "I will pray about it." Correct: "Here I am. Send me!"
6. **Isa 12:2** (WEB, already-approved verse, new format — `medium` blanked "salvation" as recall; this
   item tests a different fact from the same verse): "Behold, God is my salvation. I will trust, and
   will not be afraid; for Yah, Yahweh, is my strength and song; and he has become my salvation." —
   MC: "According to Isaiah 12:2, what does the speaker call God?" Options: my salvation / my king /
   my rock / my shepherd. Correct: my salvation.
7. **Isa 38:1** (WEB, already-approved verse, new content — not used as a standalone item in `medium`,
   which only drew on 38:2-3 and 38:5 from this passage): "In those days Hezekiah was sick and near
   death. Isaiah the prophet, the son of Amoz, came to him, and said to him, 'Yahweh says, "Set your
   house in order, for you will die, and not live."'" — MC: "In Isaiah 38:1, who comes to tell
   Hezekiah he will die?" Options: Isaiah the prophet / Nathan the prophet / an angel / the high
   priest. Correct: Isaiah the prophet.
8. **Isa 40:31** (WEB, already-approved verse, new format — `medium` blanked "eagles" as recall; this
   item tests the same fact as MC): "but those who wait for Yahweh will renew their strength. They
   will mount up with wings like eagles. They will run, and not be weary. They will walk, and not
   faint." — MC: "According to Isaiah 40:31, those who wait for Yahweh will mount up with wings like
   what?" Options: eagles / doves / sparrows / hawks. Correct: eagles.
9. **Isa 41:10** (WEB, already-approved verse, new format — `medium` blanked "righteousness" as recall
   from the verse's closing clause; this item tests a different, more iconic clause): "Don't you be
   afraid, for I am with you. Don't be dismayed, for I am your God. I will strengthen you. Yes, I will
   help you. Yes, I will uphold you with the right hand of my righteousness." — MC: "According to
   Isaiah 41:10, what does Yahweh tell his people not to be?" Options: afraid / silent / hungry /
   alone. Correct: afraid.

### Boss (3)

10. **Isa 55:6** (WEB, already-approved verse, new format): "Seek Yahweh while he may be found. Call
    on him while he is near." — MC: "According to Isaiah 55:6, when does the text say to seek Yahweh?"
    Options: while he may be found / at the new moon / on the Sabbath only / in the morning only.
    Correct: while he may be found.
11. **Boss sequence — new, a shorter/simpler subset of `medium`'s 5-step Isaiah 6 sequence, keeping
    only the tier's most iconic beats**: order these four moments of Isaiah's call vision as they
    happen in the text — "Isaiah sees the Lord seated high on a throne" (Isa 6:1) → "The seraphim cry,
    'Holy, holy, holy, is Yahweh of Armies!'" (Isa 6:3) → "A seraph touches Isaiah's lips with a live
    coal" (Isa 6:6-7) → "Isaiah answers Yahweh's call: 'Here I am. Send me!'" (Isa 6:8). *(Drops the
    "Woe is me" confession beat `medium`'s 5-step sequence includes, keeping the tier's four most
    recognizable moments — a deliberate simplification of format/count, not of verse text.)*
12. **Isa 55:9** (WEB, already-approved verse, new format): "For as the heavens are higher than the
    earth, so are my ways higher than your ways, and my thoughts than your thoughts." — MC: "According
    to Isaiah 55:9, whose ways does the text say are higher than human ways?" Options: Yahweh's / the
    king's / the prophet's / the priest's. Correct: Yahweh's.

*(No item in this brief introduces a verse beyond what `docs/content/isaiah.md` already lists as
challenge-ready — every item is either a new question/format on a verse `medium` already used, or a
new question built from a verse the medium brief quotes in full but never turned into a standalone
item, e.g. Isa 1:17, 6:3, 6:4 [not used here], 38:1, 55:6, 55:9. This keeps the tier's new-verse-text
review surface at zero, the same choice Psalms' easy tier made for the same reason.)*

## Contested Territory

Everything already flagged in `docs/content/isaiah.md`/`docs/reviews/isaiah-review.md` applies
unchanged, and is independently reconfirmed below rather than merely carried forward by assertion.

**Deliberate exclusions — reconfirmed absent:**

- **Isaiah 7:14, 9:6-7, and all of Isaiah 53 remain excluded entirely.** No verse from any of these
  three appears anywhere in this brief — confirmed by direct check against every reference cited above
  (all eight are Isa 1, 2, 6, 12, 38, 40, 41, and 55; none is Isa 7, 9, or 53).

**Bounding checks for items built from previously-flagged passages:**

- **Isaiah 2:4 (item 3).** Stays on the same "swords into plowshares" narrative-fact clause `medium`
  already used; does not touch the "latter days" timing/referent question flagged for 2:2-4 as a
  whole (that dispute attaches to v.2's "latter days" and "the mountain of Yahweh's house," neither of
  which is quoted or graded by item 3). No change from `medium`'s bounding.
- **Isaiah 6:3, 6:8, and the boss sequence (items 4, 5, 11).** None ask who or what Isaiah saw beyond
  the text's own words — the 6:1 identity question (whether the theophany is Christologically
  significant per John 12:41, per Jewish tradition a direct theophany with no such identification)
  isn't engaged by any of these items, which grade only the seraphim's words, the coal, and Isaiah's
  response. Same bounding `medium` already established for this passage.
- **Isaiah 38:1 (item 7).** Grades only who comes to Hezekiah and what he says will happen — stays
  inside Isaiah 38's own wording, makes no comparison to or claim about the parallel accounts in 2
  Kings 20 or 2 Chronicles 32 (the scope-only bounding `medium` already applied to this passage as a
  whole).
- **Isaiah 12:2, 40:31, 41:10, 55:6, 55:9 (items 6, 8, 9, 10, 12).** All draw on chapters 12, 40, 41,
  and 55 — no item makes or implies any claim about single vs. composite ("Second Isaiah") authorship;
  every item cites its passage simply as "Isaiah," book-chapter-verse, matching `medium`'s
  no-authorship-claim framing.
- **No new contested ground identified.** Independent review found no new cross-tradition disagreement
  attaching to any clause newly isolated in this tier (1:17's "defend the fatherless," 38:1's
  narrative content, 55:6's "seek Yahweh," 55:9's "my ways are higher") beyond what `medium`'s review
  already catalogued for these passages as a whole.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, see
      `docs/reviews/isaiah-easy-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 8 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No verse from Isaiah 7:14, 9:6-7, or 53 appears anywhere in this brief
- [x] No new verse text introduced — every item reuses already-approved `docs/content/isaiah.md`
      verse text in a new format
