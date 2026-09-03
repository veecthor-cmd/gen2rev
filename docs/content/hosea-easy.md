# Content Brief — Hosea, Easy Tier (World 28)

Status: **`approved-with-changes`** — theological self-review complete, see
`docs/reviews/hosea-easy-review.md`. The one required fix (a boss-item bounding tightening) is
already applied below.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run. Verse text below was retrieved via a **draft pull** from a live source
([ebible.org](https://ebible.org/web/)) on 2026-09-03, cross-checked against a second live source
(biblegateway.com, `version=WEB`) only for the items flagged below — this is not yet the
independent character-for-character QA check `QA_REQUIREMENTS.md` §3 requires, and matches this
assignment's explicit instruction that a draft pull is sufficient at this stage. **Do not ingest
into the `challenge` table until that separate verbatim QA pass has run**, on top of the medium
tier's own still-outstanding QA pass.

This tier reuses the same 7 pivotal passages already approved in `docs/content/hosea.md` — **no new
scenes**. Per this assignment's instructions, several new challenge items below draw on verses
within those already-approved passages that the medium brief didn't itself quote (e.g. Hosea 1:3,
1:5, 2:16) — this is drawing new content from the same already-vetted scene, not adding a new
scene, consistent with the Genesis pilot's precedent (`docs/content/genesis-easy.md`).

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per Kachi: "easy... real simple." This tier draws the most iconic, broadly-recognizable facts from
each of Hosea's 7 pivotal passages and favors multiple-choice recognition over typed recall so a
first-time player can succeed without prior Bible knowledge. It does **not** simplify or paraphrase
verse text — verbatim WEB text only, identical rule at every tier. Difficulty skews to rank 1
throughout.

**This tier does not loosen any of medium's format restrictions.** Hosea 1:2, 1:10, 3:1, 3:5, and
6:1-3 remain recall-only, never multiple-choice, at this tier exactly as at medium — see Contested
Territory below for confirmation each restriction still holds and is still engaged correctly.

## Pivotal Passages — reused from `docs/content/hosea.md`, no new scenes added

Same 7: Hosea's Marriage Commanded and the Symbolic Children (1:2-9); The Wilderness Allurement and
the Betrothal Promise (2:14-20); Hosea Buys Back His Wife (3:1-5); The Indictment: "No Knowledge of
God in the Land" (4:1-6); "I Desire Mercy, Not Sacrifice" (6:1-6); Divine Compassion: "How Can I
Give You Up, Ephraim?" (11:1-9); The Promise of Healing (14:1-9).

## Challenge Items (12: 8 regular + 4 boss)

### Regular (8, all multiple-choice, difficulty_rank 1)

1. **Hosea 1:3** (WEB, new verse within Passage 1): "So he went and took Gomer the daughter of
   Diblaim; and she conceived, and bore him a son." — MC: "According to Hosea 1:3, what was the
   name of the woman Hosea married?" Options: Gomer / Ruth / Rahab / Tamar. Correct: Gomer.
2. **Hosea 1:4** (WEB, already-approved verse, new question angle): "Yahweh said to him, 'Call his
   name Jezreel, for yet a little while, and I will avenge the blood of Jezreel on the house of
   Jehu, and will cause the kingdom of the house of Israel to cease.'" — MC: "According to Hosea
   1:4, what name did Yahweh tell Hosea to give his first son?" Options: Jezreel / Lo-Ruhamah /
   Lo-Ammi / Ephraim. Correct: Jezreel.
3. **Hosea 2:16** (WEB, already-approved verse, new question angle): "'It will be in that day,'
   says Yahweh, 'that you will call me "my husband," and no longer call me "my master."'" — MC:
   "According to Hosea 2:16, what does Yahweh say Israel will call him, instead of 'my master'?"
   Options: my husband / my king / my father / my shepherd. Correct: my husband.
4. **Hosea 3:2** (WEB, already-approved verse, new question angle): "So I bought her for myself for
   fifteen pieces of silver and a homer and a half of barley." — MC: "According to Hosea 3:2, what
   price did Hosea pay to buy back his wife?" Options: fifteen pieces of silver and a homer and a
   half of barley / thirty pieces of silver / a field / nothing. Correct: fifteen pieces of silver
   and a homer and a half of barley. *(Tests only the text's own stated detail — narrative fact, not
   the episode's symbolic meaning, same bounding as medium's own Level 5 ladder example.)*
5. **Hosea 4:2** (WEB, new verse within Passage 4): "There is cursing, lying, murder, stealing, and
   committing adultery; they break boundaries, and bloodshed causes bloodshed." — MC: "According to
   Hosea 4:2, which of these does the text list?" Options: murder / dancing / fasting / building
   altars. Correct: murder.
6. **Hosea 6:6** (WEB, already-approved verse, new question angle, the book's most iconic line):
   "For I desire mercy, and not sacrifice; and the knowledge of God more than burnt offerings." —
   MC: "According to Hosea 6:6, what does Yahweh say he desires instead of sacrifice?" Options:
   mercy / silver / obedience / incense. Correct: mercy.
7. **Hosea 11:1** (WEB, already-approved verse): "When Israel was a child, then I loved him, and
   called my son out of Egypt." — MC: "According to Hosea 11:1, who did Yahweh call 'my son,' called
   out of Egypt?" Options: Israel / Moses / David / Isaac. Correct: Israel. *(Bounded per the
   structural rule below — this item tests only "who is called God's son in this verse, in its own
   context," and no option references Jesus, the New Testament, or fulfillment; see Contested
   Territory.)*
8. **Hosea 11:8** (WEB, already-approved verse, new question angle, iconic): "How can I give you
   up, Ephraim? How can I hand you over, Israel? How can I make you like Admah? How can I make you
   like Zeboiim? My heart is turned within me, my compassion is aroused." — MC: "According to Hosea
   11:8, what does Yahweh ask about Ephraim?" Options: "How can I give you up?" / "How can I forget
   you?" / "How can I bless you?" / "How can I save you?" Correct: "How can I give you up?"

### Boss (4)

9. **Hosea 1:2** (WEB, already-approved verse, restricted format carried forward): "When Yahweh
   spoke at first by Hosea, Yahweh said to Hosea, 'Go, take for yourself a wife of prostitution and
   children of unfaithfulness; for the land commits great adultery, forsaking Yahweh.'" — recall:
   "Go, take for yourself a wife of ___, and children of unfaithfulness" → **prostitution**.
10. **Hosea 1:10** (WEB, already-approved verse, restricted format carried forward, different blank
    than medium): "Yet the number of the children of Israel will be as the sand of the sea, which
    can't be measured or counted; and it will come to pass that, in the place where it was said to
    them, 'You are not my people,' they will be called 'sons of the living God.'" — recall: "...in
    the place where it was said to them, 'You are not my people,' they will be called 'sons of the
    living ___.'" → **God**.
11. **Hosea 3:5** (WEB, already-approved verse, restricted format carried forward): "Afterward the
    children of Israel shall return and seek Yahweh their God, and David their king, and shall come
    with trembling to Yahweh and to his blessings in the last days." — recall: "...and seek Yahweh
    their God, and ___ their king..." → **David**.
12. **Hosea 6:1-3** (WEB, already-approved block, restricted format carried forward): "Come! Let's
    return to Yahweh; for he has torn us to pieces, and he will heal us; he has injured us, and he
    will bind up our wounds. After two days he will revive us. On the third day he will raise us up,
    and we will live before him. Let's acknowledge Yahweh. Let's press on to know Yahweh. As surely
    as the sun rises, Yahweh will appear. He will come to us like the rain, like the spring rain that
    waters the earth." — recall: "Come! Let's return to Yahweh; for he has torn us to pieces, and he
    will ___ us" → **heal**. *(Blank deliberately kept away from the "third day" clause itself — see
    Contested Territory below and the original brief's own hedge on this point.)*

## Contested Territory

Everything already flagged in `docs/content/hosea.md` applies unchanged, including the central
marriage-narrative sensitivity handled at narrative-fact level only throughout this brief.

**New for this tier — reviewed in `docs/reviews/hosea-easy-review.md`, every restriction confirmed
still engaged and still sufficient:**

- **Items 9-12 above (Hosea 1:2, 1:10, 3:5, 6:1-3) carry forward the medium brief's structural
  rule unchanged: recall/fill-in-blank format only, never multiple-choice.** No item in this brief
  uses any of these four verses in a multiple-choice format. This tier does not attempt a
  fill-in-blank item on Hosea 3:1 (the second marriage command) — not because the restriction
  wouldn't hold, but because 1:2 already carries the marriage-narrative-sensitivity bounding at this
  tier and a second nearly-identical item wasn't judged to add enough new content to be worth the
  extra review surface; the restriction on 3:1 itself remains fully in force per the medium brief
  and is exercised again in the hard tier below.
- **Item 12 (Hosea 6:1-3)** is deliberately blanked on "heal" — the passage's own language of Israel's
  collective healing — rather than on "third," the specific word this book's medium review found to
  carry genuine, live cross-tradition resurrection/messianic-timeline weight (§3.5 of
  `docs/reviews/hosea-review.md`). **Structural rule, tightened at this tier's review and now
  binding on this brief: the graded/blanked token in any Hosea 6:1-3 recall item may never be "third"
  or "day"** — a stricter, more specific version of the medium brief's format restriction, matching
  how Genesis's hard-tier review handled the equivalent "us"/"our" exclusion for Genesis 1:26. See
  `docs/reviews/hosea-easy-review.md` §3 for the required-fix note this applied.
- **Item 7 (Hosea 11:1)** is multiple-choice, which the medium brief's structural rule for this verse
  permits as long as no option references Jesus, the New Testament, or fulfillment. Confirmed: this
  item's four options (Israel / Moses / David / Isaac) are all Old-Testament figures or the nation
  itself, and the question asks only who is called "my son" in this verse's own context. No option
  or stem language references Matthew 2:15 or any NT event.
- **No new contested ground otherwise** — 1:3, 1:4, 2:16, 3:2, 4:2, 6:6, and 11:8 are plain
  narrative description or already-cleared iconic lines with no live cross-tradition disagreement
  found, per the medium review's own scope (§3.6, 3.7) and this tier's independent re-check.

## Acceptance Criteria for This Brief

- [x] Reviewed by the self-run `theological-reviewer` procedure — `approved-with-changes`, one
      required fix applied (see `docs/reviews/hosea-easy-review.md`)
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
- [x] Every challenge item traceable to one of the 7 already-approved pivotal passages
- [x] Hosea 1:2, 1:10, 3:5, and 6:1-3 restricted to recall-only format, never multiple-choice
- [x] Hosea 6:1-3's graded token is never "third" or "day"
- [x] Hosea 11:1's multiple-choice item names no NT figure, event, or fulfillment claim in any option
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding
- [x] The marriage narrative is handled at narrative-fact level only — no graphic detail, no
      romanticizing or salacious framing
