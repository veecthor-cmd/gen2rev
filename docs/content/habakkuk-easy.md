# Content Brief — Habakkuk, Easy Tier (World 35)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/habakkuk-easy-review.md`. No changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — this brief's verse text was drawn from a fresh **draft pull** against two live WEB
sources (ebible.org and biblegateway.com), not the dedicated character-for-character QA check.
Theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table. No `docs/ingest/*.sql` file has been written or modified for
this tier — that is separate, later work, out of scope for this task.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.
All verse text re-fetched live from [ebible.org](https://ebible.org/web/HAB01.htm) and
[biblegateway.com](https://www.biblegateway.com/passage/?search=Habakkuk+1-3&version=WEB)
(`version=WEB`) on 2026-09-03; both sources matched character-for-character with each other and
with the already-approved `docs/content/habakkuk.md` text.

---

## Design intent for this tier

Per the difficulty-tier design established in `docs/content/genesis-easy.md`: this tier draws the
most iconic, broadly-recognizable facts from Habakkuk's 4 pivotal passages and favors
multiple-choice recognition over typed recall, so a first-time or younger player can succeed
without prior Bible knowledge. It does **not** simplify or paraphrase verse text — the style
guide's "verbatim WEB text only" rule applies identically at every tier. Every item below skews
toward **`difficulty_rank` 1**.

## Pivotal Passages — reused from `docs/content/habakkuk.md`, no new scenes

Same 4 passages, unchanged: **1. Habakkuk 1:2-4** (the prophet's complaint), **2. Habakkuk 2:1-4**
("the righteous will live by his faith"), **3. Habakkuk 2:14** (the earth filled with Yahweh's
glory), **4. Habakkuk 3:17-19** (rejoicing despite total loss). Habakkuk 1:5-11 and 1:12-17
(Chaldean detail beyond the complaint itself) remain excluded from challenge-ready content, as at
`medium`. Because every verse within these 4 passages was already turned into a `medium`-tier
challenge item (see `docs/ingest/habakkuk-zephaniah-haggai.sql`), the items below reuse the same
already-approved verse text but build genuinely new challenge items from it — new question stems,
new graded facts, and/or new formats (MC where `medium` used recall, or vice versa) — rather than
recycling `medium`'s exact items. Two boss items are exact reuses of already-reviewed `medium` boss
content, following the same precedent set in `docs/content/genesis-easy.md` §"Boss," to keep the
boss battle's most dramatic beats consistent across tiers.

## Challenge Items (8: 6 regular + 2 boss)

### Regular (6)

1. **Hab 1:2** (WEB, already-approved verse, new format): "Yahweh, how long will I cry, and you
   will not hear? I cry out to you 'Violence!' and will you not save?" — MC: "In his opening
   complaint, what does Habakkuk cry out to Yahweh?" Options: "Violence!" / "Mercy!" / "Help!" /
   "Peace!" Correct: "Violence!" *(difficulty_rank 1. Medium's item on this verse blanked "hear";
   this grades a different word entirely — the exclamation itself.)*
2. **Hab 2:1** (WEB, already-approved verse, new stem): "I will stand at my watch and set myself on
   the ramparts, and will look out to see what he will say to me, and what I will answer concerning
   my complaint." — MC: "What does Habakkuk say he will do at his watch, on the ramparts?" Options:
   look out to see what Yahweh will answer / offer a sacrifice / gather the elders / write a letter
   to Jerusalem. Correct: look out to see what Yahweh will answer. *(difficulty_rank 1. Medium's MC
   on this verse asked *where* Habakkuk would stand; this asks *what* he says he'll do there — a
   different graded fact, still narrative-only.)*
3. **Hab 2:4** (WEB, already-approved verse, new format — the book's best-known line): "Behold, his
   soul is puffed up. It is not upright in him, but the righteous will live by his faith." — MC:
   "According to Habakkuk 2:4, the righteous will live by what?" Options: faith / works / the law /
   sacrifice. Correct: faith. *(difficulty_rank 1. Medium's item on this verse was typed recall;
   this is the same verse in MC format. Grades only the WEB text's own word "faith" — see Contested
   Territory below; the item never asks what "faith" means or implies about doctrine.)*
4. **Hab 2:14**: "For the earth will be filled with the knowledge of Yahweh's glory, as the waters
   cover the sea." — MC: "According to Habakkuk 2:14, what will the earth be filled with?" Options:
   the knowledge of Yahweh's glory / silver and gold / trees and rivers / armies and horses.
   Correct: the knowledge of Yahweh's glory. *(difficulty_rank 1. Medium's item on this verse was
   typed recall; this is MC.)*
5. **Hab 3:17**: "For even though the fig tree doesn't flourish, nor fruit be in the vines, the
   labor of the olive fails, the fields yield no food, the flocks are cut off from the fold, and
   there is no herd in the stalls," — MC: "According to Habakkuk 3:17, which of these does Habakkuk
   say may fail?" Options: the fig tree / the sun / the moon / the stars. Correct: the fig tree.
   *(difficulty_rank 1. Medium's MC on this verse used a "which is NOT listed" format with
   silver/gold as the odd one out — a level-5 item; this is a simpler positive-identification
   format suited to a first-time player.)*
6. **Hab 3:18** (iconic capstone line): "yet I will rejoice in Yahweh. I will be joyful in the God
   of my salvation!" — MC: "Even if everything fails, what does Habakkuk say he will do?" Options:
   rejoice in Yahweh / give up / move away / build a shrine. Correct: rejoice in Yahweh.
   *(difficulty_rank 1. Medium's item on this verse was typed recall; this is MC.)*

### Boss (2)

7. **Boss recall — reused verbatim from `medium`**: Hab 2:4, "Behold, his soul is puffed up. It is
   not upright in him, but the righteous will live by his ___." → **faith**. *(difficulty_rank 1,
   unchanged from medium — already the tier's natural anchor line.)*
8. **Boss sequence — reused verbatim from `medium`**: order the 4 pivotal passages as they appear in
   the book (the prophet's complaint [1:2-4] → Yahweh's answer, "the righteous will live by his
   faith" [2:1-4] → the earth filled with the knowledge of Yahweh's glory [2:14] → rejoicing despite
   total loss [3:17-19]).

## Contested Territory

Everything already flagged in `docs/content/habakkuk.md` applies unchanged and is reconfirmed here
against the items actually used in this tier:

- **Habakkuk 2:4, "the righteous will live by his faith" (items 3 and 7).** The bounding from
  `docs/content/habakkuk.md` and `docs/reviews/habakkuk-review.md` §3.1 holds unchanged: both items
  grade only the WEB text's own word "faith," never what "faith" means, whether it implies belief
  alone or faithful conduct (*emunah*), or the Reformation doctrine of *sola fide*. Neither item
  asks a player to interpret the word — item 3 is multiple-choice on the verse's own stated word,
  item 7 is a verbatim recall of the same word, both narrative-textual only.
- **Habakkuk's dialogue with Yahweh (item 1, drawing on 1:2-4).** The theodicy bounding from
  `docs/content/habakkuk.md` and `docs/reviews/habakkuk-review.md` §3.2 holds unchanged: item 1
  grades only what Habakkuk is quoted as crying out ("Violence!"), a narrative/textual fact, never
  why Yahweh permits injustice or whether the complaint is justified.
- **No new contested ground.** Items 2, 4, 5, 6, and boss item 8 draw on Hab 2:1, 2:14, and 3:17-18,
  already confirmed in `docs/reviews/habakkuk-review.md` §3.3 to carry no live cross-tradition
  dispute. No item in this brief touches Habakkuk 1:5-11 or 1:12-17, which remain outside
  challenge-ready scope as at `medium`.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, no
      changes required, see `docs/reviews/habakkuk-easy-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off and from this brief's own live draft-pull, both required
      before ingestion)
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages; no new
      scenes added
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No challenge item built from Habakkuk 2:4 asserts a specific doctrine of justification
