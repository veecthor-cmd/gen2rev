# Content Brief — Jonah, Hard Tier (World 32)

Status: **`approved`** — theological self-review complete, see `docs/reviews/jonah-hard-review.md`.
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

This tier draws on verses that are narratively significant but less likely to be immediately
recognized — secondary details and precise phrasing — and requires typed recall (no
multiple-choice scaffolding) throughout. It stays inside the same guardrails as every other tier:
verbatim WEB text only, narrative fact only, no doctrinal position required. `difficulty_rank` skews
to 5 throughout.

## Pivotal Scenes — reused from `docs/content/jonah.md`, no new scenes added

Same 5 scenes as `medium` and `easy`: The Call and the Flight (Jonah 1:1-3), The Storm and the
Sailors (Jonah 1:4-16), The Fish and Jonah's Prayer (Jonah 1:17-2:10), The Call Renewed and Nineveh's
Repentance (Jonah 3), Jonah's Anger and the Plant (Jonah 4).

## Challenge Items (11: 8 regular + 3 boss)

### Regular (8)

1. **Jonah 1:9** (WEB, already-approved verse, new blank): "He said to them, 'I am a Hebrew, and I
   fear Yahweh, the God of heaven, who has made the sea and the dry land.'" — recall: "He said to
   them, 'I am a ___, and I fear Yahweh, the God of heaven, who has made the sea and the dry land.'"
   → **Hebrew**.
2. **Jonah 1:6** (WEB, new; narrated within the already-approved Storm scene): "So the ship master
   came to him, and said to him, 'What do you mean, sleeper? Arise, call on your God! Maybe your God
   will notice us, so that we won't perish.'" — recall: "So the ship master came to him, and said to
   him, 'What do you mean, ___? Arise, call on your God!'" → **sleeper**.
3. **Jonah 2:6** (WEB, new; narrated within the already-approved Fish/Prayer scene): "I went down to
   the bottoms of the mountains. The earth barred me in forever; yet you have brought my life up
   from the pit, Yahweh my God." — recall: "I went down to the bottoms of the ___. The earth barred
   me in forever; yet you have brought my life up from the pit, Yahweh my God." → **mountains**.
4. **Jonah 2:4** (WEB, new): "I said, 'I have been banished from your sight; yet I will look again
   toward your holy temple.'" — recall: "I said, 'I have been banished from your sight; yet I will
   look again toward your holy ___.'" → **temple**.
5. **Jonah 3:3** (WEB, new): "So Jonah arose, and went to Nineveh, according to Yahweh's word. Now
   Nineveh was an exceedingly great city, three days' journey across." — recall: "Now Nineveh was an
   exceedingly great city, three days' ___ across." → **journey**.
6. **Jonah 3:9** (WEB, new — the Ninevite king's own proclamation, not a narrator's claim about
   God): "Who knows whether God will not turn and relent, and turn away from his fierce anger, so
   that we might not perish?" — recall: "Who knows whether God will not turn and relent, and turn
   away from his fierce anger, so that we might not ___?" → **perish**. *(Grades the king's own
   quoted hope, not a narrator's or the text's own claim about whether/how God relents — see
   Contested Territory below.)*
7. **Jonah 4:2** (WEB, already-approved verse, new blank — precise clause): "...for I knew that you
   are a gracious God and merciful, slow to anger, and abundant in loving kindness, and you relent
   of doing harm." — recall: "...for I knew that you are a gracious God and merciful, slow to anger,
   and abundant in loving ___." → **kindness**.
8. **Jonah 4:3** (WEB, new): "Therefore now, Yahweh, take, I beg you, my life from me, for it is
   better for me to die than to live." — recall: "Therefore now, Yahweh, take, I beg you, my life
   from me, for it is better for me to ___ than to live." → **die**. *(Narrative fact only — Jonah's
   own stated wish, quoted — parallel in kind to the already-reviewed 4:9 "I am right to be angry,
   even to death"; no item built on this asks why Jonah felt this way or whether it was justified.)*

### Boss (3)

9. **Jonah 1:12** (WEB, already-approved verse, new blank): "He said to them, 'Take me up, and throw
   me into the sea. Then the sea will be calm for you; for I know that because of me this great
   storm is on you.'" — recall: "...for I know that because of me this great ___ is on you." →
   **storm**.
10. **Boss sequence + attribution — new item, same format as medium's Level 4**: Given three
    quotations (Jonah 1:9, "I am a Hebrew, and I fear Yahweh..."; Jonah 3:9, "Who knows whether God
    will not turn and relent..."; Jonah 4:3, "it is better for me to die than to live"), place them
    in the order they occur in the book and match each to its reference.
11. **Jonah 4:10-11** (WEB, already-approved verse, new blank) — boss capstone, recall format:
    "Yahweh said, 'You have been concerned for the vine, for which you have not labored, neither
    made it grow; which came up in a night and perished in a night. Shouldn't I be concerned for
    Nineveh, that great city, in which are more than one hundred twenty thousand persons who can't
    discern between their right hand and their left hand, and also many animals?'" — recall: "...in
    which are more than one hundred twenty thousand persons who can't discern between their right
    hand and their left hand, and also many ___?" → **animals**. *(Same closing-question capstone
    role as medium and easy tiers, now typed recall — presents the text's own question verbatim,
    supplies no invented resolution; see Contested Territory below.)*

## Contested Territory

Everything already flagged in `docs/content/jonah.md` applies unchanged (fish historicity, the
"sign of Jonah" NT typology exclusion, Nineveh's repentance vs. its later history in Nahum, God
"relenting," and Jonah's anger/the book's unresolved ending). Reconfirmed against this tier's
specific items:

- **Item 6 (Jonah 3:9, "perish")** grades only the wording of the Ninevite king's own quoted
  proclamation ("Who knows whether God will not turn and relent...") — this is narrative fact (what
  the king said, per the text), not a claim the brief itself makes about whether or how God relents.
  This is a new verse relative to the medium/easy tiers, but the same divine-relenting bounding
  already reviewed in `docs/reviews/jonah-review.md` (classical anthropomorphic reading vs. open
  theism) applies without modification: no item asks *why* or *how* God relented, or requires
  affirming either reading. Bounding holds.
- **Item 7 (Jonah 4:2, "kindness")** grades only the wording of Jonah's own quoted description of
  God's character — no item asks a player to affirm or explain the theology of divine mercy/wrath,
  only to recall the text's wording. Bounding holds.
- **Item 8 (Jonah 4:3, "die")** and **item 11 (Jonah 4:10-11, "animals")** stay strictly on
  narrated fact and the text's own closing question — no item asks whether Jonah's despair or anger
  was justified, and no item supplies an answer to Yahweh's question that the book itself withholds.
  Moral-judgment and unresolved-ending bounding holds.
- No new contested ground introduced by this tier's items — every other new verse (1:6, 1:9, 2:4,
  2:6, 3:3, 4:2) is plain narrative description already covered by the medium-tier review's sourcing,
  reused here at a different (harder, recall-only) format only.
- No New Testament "sign of Jonah" material is referenced anywhere in this brief.

## Acceptance Criteria for This Brief

- [x] Reviewed by theological self-review (agent procedure, self-applied) — `approved`, no
      structural changes required (see `docs/reviews/jonah-hard-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3 —
      not yet run, blocks ingestion
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding
- [x] No New Testament "sign of Jonah" material referenced, per this expansion's OT-only scope
