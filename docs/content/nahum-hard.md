# Content Brief — Nahum, Hard Tier (World 34)

Status: **`approved`** — theological self-review complete, see `docs/reviews/nahum-hard-review.md`.
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

This tier draws on wording that is less commonly memorized than the passage's most-quoted lines —
precise clauses and secondary phrasing — and requires typed recall (no multiple-choice scaffolding)
throughout. It stays inside the same guardrails as every other tier: verbatim WEB text only,
narrative fact only, no doctrinal position required. `difficulty_rank` skews to 5 throughout.

## Pivotal Passages — reused from `docs/content/nahum.md`, no new passages added

Same 3 passages as `medium` and `easy`: Nahum 1:2-3, 1:7 (Yahweh's Character: Just and Good), Nahum
1:15 (Good News for Judah), Nahum 3 handled at the narrative-summary level with only 3:19
challenge-ready (The Certainty of Nineveh's Fall). **Nahum 2-3's graphic destruction imagery
(including 3:3-6 and 3:10) remains excluded entirely — only 3:19 is used from chapter 3, and no verse
from chapter 2 appears anywhere in this brief.**

## Challenge Items (8: 6 regular + 2 boss)

### Regular (6)

1. **Nahum 1:3** (WEB, already-approved verse — trimmed identically to `docs/content/nahum.md`'s own
   trim, new blank): "Yahweh is slow to anger, and great in power, and will by no means leave the
   guilty unpunished." *(verse continues into storm-theophany imagery outside this passage's
   framing, per the medium brief's own trim — not quoted or tested here either)* — recall: "Yahweh
   is slow to anger, and great in ___, and will by no means leave the guilty unpunished." → **power**.
2. **Nahum 1:7** (WEB, already-approved verse, new blank — precise clause): "Yahweh is good, a
   stronghold in the day of trouble; and he knows those who take refuge in him." — recall: "Yahweh
   is good, a stronghold in the day of trouble; and he knows those who take ___ in him." →
   **refuge**.
3. **Nahum 1:2** (WEB, already-approved verse — trimmed identically to `docs/content/nahum.md`'s own
   trim, new blank): "Yahweh is a jealous God and avenges. Yahweh avenges and is full of wrath."
   *(verse continues with additional vengeance language, omitted here per the medium brief's own
   trim — not quoted or tested)* — recall: "Yahweh is a jealous God and avenges. Yahweh avenges and
   is full of ___." → **wrath**.
4. **Nahum 1:15** (WEB, already-approved verse, new blank — less commonly memorized than the
   "good news and peace" clause): "...Keep your feasts, Judah! Perform your vows, for the wicked one
   will no more pass through you. He is utterly cut off." — recall: "...for the wicked one will no
   more pass through you. He is utterly ___." → **cut off**.
5. **Nahum 3:19** (WEB, already-approved verse, new blank — precise clause): "There is no healing
   your wound, for your injury is fatal...." — recall: "There is no healing your wound, for your
   injury is ___." → **fatal**.
6. **Nahum 3:19** (WEB, already-approved verse, new blank — different, less commonly memorized
   clause of the same verse): "...All who hear the report of you clap their hands over you, for who
   hasn't felt your endless cruelty?" — recall: "All who hear the report of you clap their hands
   over you, for who hasn't felt your endless ___?" → **cruelty**.

### Boss (2)

7. **Boss sequence + attribution — reused verbatim from `medium`**: Given three quotations (Nahum
   1:3, "Yahweh is slow to anger..."; Nahum 1:7, "Yahweh is good, a stronghold..."; Nahum 3:19,
   "There is no healing your wound..."), place them in the order they occur in the book and match
   each to its reference. *(Reused deliberately, same reasoning as the Genesis pilot: keeps this
   already-reviewed capstone sequence consistent across tiers for the book's own thin format, while
   the tier's other 7 items are all genuinely new challenge angles.)*
8. **Nahum 1:1** (WEB, already-approved verse — the book's own superscription, not previously used
   as a standalone challenge item) — boss capstone, recall format: "A revelation about Nineveh. The
   book of the vision of Nahum the Elkoshite." — recall: "A revelation about ___. The book of the
   vision of Nahum the Elkoshite." → **Nineveh**. *(Narrative fact only — the book's own stated
   subject, per its opening line; no interpretive framing added.)*

## Contested Territory

Everything already flagged in `docs/content/nahum.md` applies unchanged. Reconfirmed against this
tier's specific items:

- **Graphic destruction imagery (Nahum 2-3) remains fully excluded.** No item in this brief quotes
  or requires recall of 3:3 (corpse imagery), 3:4-6 (the "prostitute" shaming metaphor), 3:10
  (children "dashed in pieces"), or any of chapter 2's battle imagery (2:3, 2:10, 2:12) — confirmed
  by direct check against the item list above. The only chapter 3 verse quoted anywhere in this
  brief is 3:19 (items 5, 6, 7), which states the outcome's certainty without graphic description.
  Bounding holds, unchanged from `docs/reviews/nahum-review.md` §3.1.
- **Yahweh's "vengeance" (1:2) alongside "goodness" (1:7)** (items 1, 2, 3): no item requires
  reconciling the two — each is tested purely as narrative/textual fact from its own verse. Bounding
  holds.
- **Item 8 (Nahum 1:1, "Nineveh")** is the book's own superscription, stating its subject in the
  text's own words — narrative fact only, no interpretive claim about the book's purpose or genre
  added. No contested ground here.
- **Nahum's relationship to Jonah:** no item in this brief references Jonah or asks a player to
  reconcile Nahum's judgment oracle with Jonah's account of Nineveh's earlier repentance — this
  brief's items, like the medium tier's, stay entirely within Nahum's own text. Bounding holds.
- No new contested ground introduced by this tier's items — every verse used (1:1, 1:2, 1:3, 1:7,
  1:15, 3:19) is drawn from the same three passages already cleared in
  `docs/reviews/nahum-review.md` §3, reused here at a different (harder, recall-only) format only.

## Acceptance Criteria for This Brief

- [x] Reviewed by theological self-review (agent procedure, self-applied) — `approved`, no
      structural changes required (see `docs/reviews/nahum-hard-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3 —
      not yet run, blocks ingestion
- [x] Every challenge item traceable to one of the 3 already-approved pivotal passages
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding
- [x] No graphic destruction verse from Nahum 2-3 appears as challenge-ready text in this brief
