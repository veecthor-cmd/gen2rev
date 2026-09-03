# Content Brief — Nahum, Easy Tier (World 34)

Status: **`approved`** — theological self-review complete, see `docs/reviews/nahum-easy-review.md`.
No structural changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4).

Reuses the same 3 pivotal passages already approved in `docs/content/nahum.md` (no new passages), so
the existing Contested Territory analysis — including the permanent exclusion of chapters 2-3's
graphic imagery — still applies unchanged, reconfirmed below.

> **Verbatim-text caveat:** verse text below was retrieved via a fresh web-fetch pull against
> [ebible.org](https://ebible.org/web/) (full chapters 1 and 3, `version=WEB`), cross-checked
> against [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) for every verse used in
> this brief — an improvement on `docs/content/nahum.md`'s own single-source rows for 1:2-3 and 3:19
> (see `docs/reviews/nahum-review.md` §1), both of which are double-sourced here. This is not yet the
> independent character-for-character QA check required by `QA_REQUIREMENTS.md` §3. **Do not ingest
> into the `challenge` table (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has
> run**, even after theological sign-off.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**This is a deliberately thin brief**, matching `docs/content/nahum.md`'s own scope (a very short,
3-chapter book) and this project's precedent for the Minor Prophets.

---

## Design intent for this tier

This tier draws the most iconic, broadly-recognizable facts from each of Nahum's 3 passages and
favors multiple-choice recognition over typed recall. It does **not** simplify or paraphrase verse
text — verbatim WEB text only, same as every other tier. `difficulty_rank` skews to 1 throughout.

## Pivotal Passages — reused from `docs/content/nahum.md`, no new passages added

Same 3 passages: Nahum 1:2-3, 1:7 (Yahweh's Character: Just and Good), Nahum 1:15 (Good News for
Judah), Nahum 3 handled at the narrative-summary level with only 3:19 challenge-ready (The Certainty
of Nineveh's Fall). **Nahum 2-3's graphic destruction imagery (including 3:3-6 and 3:10) remains
excluded entirely — only 3:19 is used from chapter 3, and no verse from chapter 2 appears anywhere in
this brief.**

## Challenge Items (8: 6 regular + 2 boss)

### Regular (6)

1. **Nahum 1:7** (WEB, already-approved verse, new format — the passage's most iconic line): "Yahweh
   is good, a stronghold in the day of trouble; and he knows those who take refuge in him." — MC:
   "According to Nahum 1:7, what is Yahweh described as being 'in the day of trouble'?" Options: a
   stronghold / a warrior / a judge / a shepherd. Correct: a stronghold.
2. **Nahum 1:3** (WEB, already-approved verse — trimmed identically to `docs/content/nahum.md`'s own
   trim, new format): "Yahweh is slow to anger, and great in power, and will by no means leave the
   guilty unpunished." *(verse continues into storm-theophany imagery outside this passage's "just
   and good" framing, per the medium brief's own trim — not quoted or tested here either)* — MC:
   "According to Nahum 1:3, how is Yahweh described in relation to anger?" Options: slow to anger /
   quick to anger / never angry / always angry. Correct: slow to anger.
3. **Nahum 1:15** (WEB, already-approved verse, new format): "Behold, on the mountains the feet of
   him who brings good news, who publishes peace!..." — MC: "According to Nahum 1:15, what does the
   messenger on the mountains bring?" Options: good news and peace / silver and gold / a warning of
   defeat / a written law. Correct: good news and peace.
4. **Nahum 1:15** (WEB, already-approved verse, new format, different clause): "...Keep your feasts,
   Judah! Perform your vows, for the wicked one will no more pass through you. He is utterly cut
   off." — MC: "According to Nahum 1:15, who is told to 'keep your feasts' and 'perform your vows'?"
   Options: Judah / Nineveh / Israel / Egypt. Correct: Judah.
5. **Nahum 3:19** (WEB, already-approved verse, new format): "There is no healing your wound, for
   your injury is fatal...." — MC: "According to Nahum 3:19, what does the text say about Nineveh's
   wound?" Options: There is no healing it / It will heal quickly / It is only a scratch / It will
   heal in forty days. Correct: there is no healing it.
6. **Narrative-summary item — new, mirrors `docs/content/nahum.md`'s own narrative-summary handling
   of chapter 3** (no verse quoted, per the same child-safety bounding the medium brief already
   applies to this chapter): MC: "What does the book of Nahum say will ultimately happen to
   Nineveh?" Options: It will fall / It will repent and be spared / It will conquer Judah / It will
   be rebuilt stronger. Correct: it will fall.

### Boss (2)

7. **Nahum 1:2** (WEB, already-approved verse — trimmed identically to `docs/content/nahum.md`'s own
   trim, new format): "Yahweh is a jealous God and avenges. Yahweh avenges and is full of wrath."
   *(verse continues with additional vengeance language, omitted here per the medium brief's own
   trim — not quoted or tested)* — MC: "According to Nahum 1:2, what kind of God does the text call
   Yahweh?" Options: a jealous God / a distant God / a forgetful God / a silent God. Correct: a
   jealous God.
8. **Boss sequence — new item, iconic passage order**: Order the three pivotal passages as they
   appear in the book: "Yahweh's character: slow to anger, yet just — and a stronghold for those who
   take refuge in him" (ch. 1) → "Good news and peace for Judah" (1:15) → "The certainty of
   Nineveh's fall" (ch. 3).

## Contested Territory

Everything already flagged in `docs/content/nahum.md` applies unchanged. Reconfirmed against this
tier's specific items:

- **Graphic destruction imagery (Nahum 2-3) remains fully excluded.** No item in this brief quotes
  or requires recall of 3:3 (corpse imagery), 3:4-6 (the "prostitute" shaming metaphor), 3:10
  (children "dashed in pieces"), or any of chapter 2's battle imagery (2:3, 2:10, 2:12) — confirmed
  by direct check against the item list above. Item 6 handles chapter 3's outcome at the same
  narrative-summary level the medium brief uses, without quoting any graphic verse. The only chapter
  3 verse quoted anywhere in this brief is 3:19, which states the outcome's certainty without
  graphic description. Bounding holds, unchanged from `docs/reviews/nahum-review.md` §3.1.
- **Yahweh's "vengeance" (1:2) alongside "goodness" (1:7)** (items 1, 2, 7): no item requires
  reconciling the two — each is tested purely as narrative/textual fact from its own verse. Bounding
  holds.
- **Nahum's relationship to Jonah:** no item in this brief references Jonah or asks a player to
  reconcile Nahum's judgment oracle with Jonah's account of Nineveh's earlier repentance — this
  brief's items, like the medium tier's, stay entirely within Nahum's own text. Bounding holds.
- No new contested ground introduced by this tier's items — every verse used (1:2, 1:3, 1:7, 1:15,
  3:19) is drawn from the same three passages already cleared in `docs/reviews/nahum-review.md` §3,
  reused here at a different (easier) format only.

## Acceptance Criteria for This Brief

- [x] Reviewed by theological self-review (agent procedure, self-applied) — `approved`, no
      structural changes required (see `docs/reviews/nahum-easy-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3 —
      not yet run, blocks ingestion
- [x] Every challenge item traceable to one of the 3 already-approved pivotal passages
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding
- [x] No graphic destruction verse from Nahum 2-3 appears as challenge-ready text in this brief
