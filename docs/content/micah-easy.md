# Content Brief — Micah, Easy Tier (World 33)

Status: **`approved`** — theological self-review complete, see `docs/reviews/micah-easy-review.md`.
No structural changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4).

Reuses the same 4 pivotal passages already approved in `docs/content/micah.md` (no new passages), so
the existing Contested Territory analysis — including the full exclusion of Micah 5:1-5 — still
applies unchanged, reconfirmed below.

> **Verbatim-text caveat:** verse text below was retrieved via a fresh web-fetch pull against
> [ebible.org](https://ebible.org/web/) (full chapters 1, 4, 6, 7, `version=WEB`), cross-checked
> against [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) for every verse used in
> this brief — an improvement on `docs/content/micah.md`'s own single-source rows for 6:6-7 and
> 7:18-20 (see `docs/reviews/micah-review.md` §1), both of which are double-sourced here. This is
> not yet the independent character-for-character QA check required by `QA_REQUIREMENTS.md` §3.
> **Do not ingest into the `challenge` table (`BACKEND_REQUIREMENTS.md` §4) until that separate
> verbatim QA pass has run**, even after theological sign-off.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

This tier draws the most iconic, broadly-recognizable facts from each of Micah's 4 passages and
favors multiple-choice recognition over typed recall. It does **not** simplify or paraphrase verse
text — verbatim WEB text only, same as every other tier. `difficulty_rank` skews to 1 throughout.

## Pivotal Passages — reused from `docs/content/micah.md`, no new passages added

Same 4 passages: Micah 1:2-4 (Yahweh Comes in Judgment), Micah 4:1-4 (Swords into Plowshares), Micah
6:6-8 (What Does Yahweh Require?), Micah 7:18-20 ("Who Is a God Like You?"). **Micah 5:1-5 remains
excluded entirely — no verse from Micah 5 appears anywhere in this brief.**

## Challenge Items (11: 10 regular + 1 boss)

### Regular (10)

1. **Micah 1:2** (WEB, already-approved verse, new format): "Hear, you peoples, all of you! Listen,
   O earth, and all that is therein. Let the Lord Yahweh be witness against you, the Lord from his
   holy temple." — MC: "According to Micah 1:2, who does the prophet call on to listen — 'Hear, you
   ___, all of you'?" Options: peoples / kings / priests / elders. Correct: peoples.
2. **Micah 1:4** (WEB, already-approved verse, new format): "The mountains melt under him, and the
   valleys split apart like wax before the fire, like waters that are poured down a steep place." —
   MC: "According to Micah 1:4, what happens to the mountains when Yahweh comes down?" Options: They
   melt like wax / They shake and crumble / They turn to dust / They sink into the sea. Correct: they
   melt like wax.
3. **Micah 4:3** (WEB, already-approved verse, new format — the book's most iconic image): "They
   will beat their swords into plowshares, and their spears into pruning hooks. Nation will not lift
   up sword against nation, neither will they learn war any more." — MC: "According to Micah 4:3,
   what will the nations beat their swords into?" Options: plowshares / shields / tools / chains.
   Correct: plowshares.
4. **Micah 4:4** (WEB, already-approved verse, new format): "But every man will sit under his vine
   and under his fig tree. No one will make them afraid, for the mouth of Yahweh of Armies has
   spoken." — MC: "According to Micah 4:4, what two things will every man sit under, safe and
   unafraid?" Options: his vine and his fig tree / a great oak tree / his own roof / a tent. Correct:
   his vine and his fig tree.
5. **Micah 4:2** (WEB, already-approved verse, new format): "...For the law will go out of Zion, and
   Yahweh's word from Jerusalem..." — MC: "According to Micah 4:2, where will 'the law' go out
   from?" Options: Zion / Bethlehem / Samaria / Babylon. Correct: Zion.
6. **Micah 6:8** (WEB, already-approved verse, new format — the book's best-known verse): "He has
   shown you, O man, what is good. What does Yahweh require of you, but to act justly, to love
   mercy, and to walk humbly with your God?" — MC: "According to Micah 6:8, what three things does
   Yahweh require?" Options: To act justly, love mercy, and walk humbly with God / To fast, pray,
   and give alms / To offer sacrifices, keep the Sabbath, and tithe / To build the temple, keep the
   law, and honor the king. Correct: to act justly, love mercy, and walk humbly with God.
7. **Micah 6:8** (WEB, already-approved verse, recall — iconic, single-word blank): same verse as
   item 6 — recall: "...to act justly, to love mercy, and to walk humbly with your ___." → **God**.
8. **Micah 6:6** (WEB, already-approved verse, new format): "How shall I come before Yahweh, and bow
   myself before the exalted God? Shall I come before him with burnt offerings, with calves a year
   old?" — MC: "According to Micah 6:6, what does the prophet ask if he should bring before Yahweh?"
   Options: burnt offerings / silver and gold / a written law / his firstborn son. Correct: burnt
   offerings.
9. **Micah 7:18** (WEB, already-approved verse, new format — the book's closing question): "Who is a
   God like you, who pardons iniquity, and passes over the disobedience of the remnant of his
   heritage? He doesn't retain his anger forever, because he delights in loving kindness." — MC:
   "According to Micah 7:18, what question does the prophet ask about God?" Options: "Who is a God
   like you, who pardons iniquity?" / "Who can stand before his anger?" / "Why do the nations rage?"
   / "How long, O Lord?" Correct: "Who is a God like you, who pardons iniquity?"
10. **Micah 7:19** (WEB, already-approved verse, new format): "He will again have compassion on us.
    He will tread our iniquities under foot. You will cast all their sins into the depths of the
    sea." — MC: "According to Micah 7:19, where does God cast our sins?" Options: into the depths
    of the sea / into the wilderness / into the fire / into the dust. Correct: into the depths of
    the sea.

### Boss (1)

11. **Boss sequence — new item, iconic passage order**: Order the four pivotal passages as they
    appear in the book: "Yahweh comes down in judgment, and the mountains melt" (ch. 1) → "Nations
    stream to Zion and beat their swords into plowshares" (ch. 4) → "Yahweh asks what he truly
    requires: justice, mercy, and humility" (ch. 6) → "The prophet praises the God who pardons and
    casts sin into the sea" (ch. 7).

## Contested Territory

Everything already flagged in `docs/content/micah.md` applies unchanged. Reconfirmed against this
tier's specific items:

- **Micah 5:1-5 remains excluded entirely.** No item in this brief uses any verse from Micah 5 —
  confirmed by direct check against the item list above (only chapters 1, 4, 6, and 7 appear). The
  full-unit exclusion reasoning in `docs/content/micah.md` (the Bethlehem-ruler oracle's wording is
  itself the contested Matthew 2:6 identity-claim, not separable context around it) applies without
  modification, since this tier introduces no new verses from that chapter or adjacent ones.
- **Micah 4:1-4's relationship to Isaiah 2:2-4** (item 3, 4, 5): this tier's items cite the passage
  purely as Micah's own text, by its own reference, exactly as the medium tier does — no claim of
  priority or borrowing is made or implied by any MC option. Bounding holds.
- **Micah 6:6-8's sacrifice language** (items 6, 7, 8): items test only the text's own stated
  question and answer (what would satisfy Yahweh; the answer given in 6:8) — no item asserts a
  theological position on what sacrifice accomplishes. Bounding holds, same as medium tier.
- No new contested ground introduced by this tier's items — every verse used (1:2, 1:4, 4:2, 4:3,
  4:4, 6:6, 6:8, 7:18, 7:19) is drawn from the same four passages already cleared in
  `docs/reviews/micah-review.md` §3, reused here at a different (easier) format only.

## Acceptance Criteria for This Brief

- [x] Reviewed by theological self-review (agent procedure, self-applied) — `approved`, no
      structural changes required (see `docs/reviews/micah-easy-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3 —
      not yet run, blocks ingestion
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding
- [x] No verse from Micah 5 appears anywhere in this brief
