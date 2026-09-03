# Content Brief — Jonah, Easy Tier (World 32)

Status: **`approved`** — theological self-review complete, see `docs/reviews/jonah-easy-review.md`.
No structural changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4).

Reuses the same 5 pivotal scenes already approved in `docs/content/jonah.md` (no new scenes), so the
existing Contested Territory analysis for those scenes still applies — reconfirmed below.

> **Verbatim-text caveat:** verse text below was retrieved via an automated web-fetch pull against
> [ebible.org](https://ebible.org/web/) (full chapters 1-4, `version=WEB`), the same source already
> used to double-source the whole book in `docs/content/jonah.md`; every verse used in this brief was
> part of that existing full-chapter double-sourced text (ebible.org + biblegateway.com), so no verse
> here is single-source. This is not yet the independent character-for-character QA check required by
> `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table
> (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**, even after
> theological sign-off.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per the difficulty-mode pilot design (`docs/content/genesis-easy.md`): this tier draws the most
iconic, broadly-recognizable facts from each of Jonah's 5 scenes and favors multiple-choice
recognition over typed recall, so a first-time or younger player can succeed without prior Bible
knowledge. It does **not** simplify or paraphrase verse text — the style guide's "verbatim WEB text
only" rule applies identically at every tier. `difficulty_rank` skews to 1 throughout.

## Pivotal Scenes — reused from `docs/content/jonah.md`, no new scenes added

Same 5 scenes: The Call and the Flight (Jonah 1:1-3), The Storm and the Sailors (Jonah 1:4-16), The
Fish and Jonah's Prayer (Jonah 1:17-2:10), The Call Renewed and Nineveh's Repentance (Jonah 3),
Jonah's Anger and the Plant (Jonah 4).

## Challenge Items (11: 8 regular + 3 boss)

### Regular (8)

1. **Jonah 1:2** (WEB, already-approved verse, new format): "Arise, go to Nineveh, that great city,
   and preach against it, for their wickedness has come up before me." — MC: "According to Jonah
   1:2, what city did God tell Jonah to go to?" Options: Nineveh / Tarshish / Joppa / Jerusalem.
   Correct: Nineveh.
2. **Jonah 1:3** (WEB, already-approved verse, new format): "But Jonah rose up to flee to Tarshish
   from the presence of Yahweh. He went down to Joppa, and found a ship going to Tarshish..." — MC:
   "Where did Jonah try to sail to, instead of going to Nineveh?" Options: Tarshish / Egypt /
   Babylon / Damascus. Correct: Tarshish.
3. **Jonah 1:7** (WEB, new): "They all said to each other, 'Come! Let's cast lots, that we may know
   who is responsible for this evil that is on us.' So they cast lots, and the lot fell on Jonah." —
   MC: "What did the sailors do to figure out who was responsible for the storm?" Options: cast lots
   / prayed to Yahweh / asked the ship's captain / read the stars. Correct: cast lots.
4. **Jonah 1:17** (WEB, already-approved verse, recall — iconic, single-word blank): "Yahweh
   prepared a huge fish to swallow up Jonah, and Jonah was in the belly of the fish three days and
   three nights." — recall: "Yahweh prepared a huge ___ to swallow up Jonah." → **fish**.
5. **Jonah 2:10** (WEB, already-approved verse, new format): "Then Yahweh spoke to the fish, and it
   vomited out Jonah on the dry land." — MC: "How did Jonah get out of the fish?" Options: The fish
   vomited him onto dry land / He cut his way out / The fish died / Sailors rescued him. Correct:
   the fish vomited him onto dry land.
6. **Jonah 3:4** (WEB, already-approved verse, new format): "Jonah began to enter into the city a
   day's journey, and he cried out, and said, 'In forty days, Nineveh will be overthrown!'" — MC:
   "How many days did Jonah say Nineveh had, before it would be overthrown?" Options: forty / seven
   / three / a hundred. Correct: forty.
7. **Jonah 3:5** (WEB, already-approved verse, new format): "The people of Nineveh believed God; and
   they proclaimed a fast and put on sackcloth, from their greatest even to their least." — MC:
   "What did the people of Nineveh do after Jonah's warning?" Options: Believed God, fasted, and put
   on sackcloth / Ignored him and carried on as before / Drove him out of the city / Attacked him.
   Correct: believed God, fasted, and put on sackcloth.
8. **Jonah 4:6** (WEB, already-approved verse, new format): "Yahweh God prepared a vine and made it
   to come up over Jonah, that it might be a shade over his head to deliver him from his
   discomfort." — MC: "What did God provide to give Jonah shade?" Options: a vine / a tree / a tent
   / a rock. Correct: a vine.

### Boss (3)

9. **Jonah 1:12** (WEB, already-approved verse, new format): "He said to them, 'Take me up, and
   throw me into the sea. Then the sea will be calm for you; for I know that because of me this
   great storm is on you.'" — MC: "What did Jonah tell the sailors to do, to calm the storm?"
   Options: Throw him into the sea / Turn the ship around / Pray to his God / Throw the cargo
   overboard. Correct: throw him into the sea.
10. **Boss sequence — new item, iconic story beats**: Order the story: "God calls Jonah to Nineveh"
    (1:2) → "Jonah flees toward Tarshish instead" (1:3) → "A storm hits the ship, and the sailors
    cast lots" (1:4-7) → "Jonah is thrown into the sea and swallowed by a fish" (1:15-17) → "Nineveh
    hears Jonah's warning and repents" (3:4-5) → "Jonah sits outside the city, angry, under a vine"
    (4:1-6).
11. **Jonah 4:11** (WEB, already-approved verse, new format) — boss capstone: "Shouldn't I be
    concerned for Nineveh, that great city, in which are more than one hundred twenty thousand
    persons who can't discern between their right hand and their left hand, and also many animals?"
    — MC: "According to Jonah 4:11, what was Yahweh concerned about, more than Jonah's plant?"
    Options: The great city of Nineveh and its many people / The sailors on the ship / The fish that
    swallowed Jonah / Jonah's own health. Correct: the great city of Nineveh and its many people.
    *(Same closing-question capstone role as the medium-tier boss item, in MC format appropriate to
    this tier — presents the text's own question and its own terms, no invented resolution; see
    Contested Territory below.)*

## Contested Territory

Everything already flagged in `docs/content/jonah.md` applies unchanged (fish historicity, the
"sign of Jonah" NT typology exclusion, Nineveh's repentance vs. its later history in Nahum, God
"relenting," and Jonah's anger/the book's unresolved ending). Reconfirmed against this tier's
specific items:

- **Item 4 (Jonah 1:17, "fish")** and **item 5 (Jonah 2:10)** test only the narrated fact (a huge
  fish swallowed Jonah; the fish later vomited him onto dry land) — no item asks whether the event is
  historical, symbolic, or literary. Fish-historicity bounding holds.
- **Item 6 (Jonah 3:4)** and **item 7 (Jonah 3:5)** test only what the text narrates (Jonah's
  forty-day proclamation; Nineveh's stated response) — no item asks a player to reconcile this with
  Nahum's later material or judge the repentance's sincerity/durability. Nineveh/Nahum bounding
  holds.
- **Item 11 (Jonah 4:11, boss capstone)** presents Yahweh's closing question in MC form using only
  the text's own wording and options drawn from within the scene (Nineveh vs. three plainly-wrong
  distractors) — it does not supply the answer Jonah himself never gives, and does not ask a player
  to judge whether Jonah's anger was justified. Moral-judgment and unresolved-ending bounding holds.
- No new contested ground introduced by this tier's items — every other new verse (1:2, 1:3, 1:7,
  1:12, 3:4, 3:5, 4:6) is plain narrative description already covered by the medium-tier review's
  sourcing, reused here at a different (easier) format only.
- No New Testament "sign of Jonah" material is referenced anywhere in this brief.

## Acceptance Criteria for This Brief

- [x] Reviewed by theological self-review (agent procedure, self-applied) — `approved`, no
      structural changes required (see `docs/reviews/jonah-easy-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3 —
      not yet run, blocks ingestion
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding
- [x] No New Testament "sign of Jonah" material referenced, per this expansion's OT-only scope
