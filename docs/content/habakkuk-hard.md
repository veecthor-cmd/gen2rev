# Content Brief — Habakkuk, Hard Tier (World 35)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/habakkuk-hard-review.md`. No changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — this brief's verse text was drawn from a fresh **draft pull** against two live WEB
sources (ebible.org and biblegateway.com), not the dedicated character-for-character QA check.
Theological approval and verbatim-text QA are two distinct checks, both required before this
content reaches the `challenge` table. No `docs/ingest/*.sql` file has been written or modified for
this tier — that is separate, later work, out of scope for this task.

Translation: World English Bible (WEB) throughout. All verse text re-fetched live from
[ebible.org](https://ebible.org/web/HAB01.htm) and
[biblegateway.com](https://www.biblegateway.com/passage/?search=Habakkuk+1-3&version=WEB)
(`version=WEB`) on 2026-09-03; both sources matched character-for-character with each other and
with the already-approved `docs/content/habakkuk.md` text.

---

## Design intent for this tier

This tier requires typed recall (no multiple-choice scaffolding) wherever the format allows,
selecting precise clauses and secondary details less likely to be immediately, casually recognized
than the book's single most iconic line (2:4). It stays inside the same guardrails as every other
tier: verbatim WEB text only, narrative fact only, no doctrinal position required. Every regular
item below skews toward **`difficulty_rank` 5**.

## Pivotal Passages — reused from `docs/content/habakkuk.md`, no new scenes

Same 4 passages as `medium` and `easy`, unchanged: **1. Habakkuk 1:2-4**, **2. Habakkuk 2:1-4**,
**3. Habakkuk 2:14**, **4. Habakkuk 3:17-19**. As with the easy tier, every verse within these 4
passages already has a `medium`-tier challenge item built from it, so the items below are new
challenge items built from the same already-approved verse text — each blanking a different word
or clause than `medium` used on that same verse, and favoring typed recall over multiple choice
throughout (including on Hab 2:3, which `medium` tested as MC — here it's recall). Two boss items
are exact reuses of already-reviewed `medium` boss content, per the same precedent set in
`docs/content/genesis-hard.md`.

## Challenge Items (9: 7 regular + 2 boss)

### Regular (7)

1. **Hab 1:2**: "Yahweh, how long will I cry, and you will not hear? I cry out to you 'Violence!'
   and will you not save?" — recall: "I cry out to you '___!' and will you not save?" → **Violence**.
   *(difficulty_rank 5. Medium blanked "hear"; this blanks the exclamation itself, a more precise
   recall target.)*
2. **Hab 1:3** (WEB, trimmed — full verse continues "...before me. There is strife, and contention
   rises up.", per the same trim already labeled in `docs/content/habakkuk.md`): "Why do you show me
   iniquity, and look at perversity? For destruction and violence are before me." — recall: "Why do
   you show me iniquity, and look at ___?" → **perversity**.
   *(difficulty_rank 5. Medium blanked "iniquity"; this blanks the second, less commonly recalled
   word in the same pairing.)*
3. **Hab 1:4**: "Therefore the law is paralyzed, and justice never prevails; for the wicked surround
   the righteous; therefore justice comes out perverted." — recall: "...for the wicked surround the
   ___; therefore justice comes out perverted." → **righteous**. *(difficulty_rank 5. Medium blanked
   "paralyzed," the verse's opening word; this blanks a clause deeper into the verse.)*
4. **Hab 2:2**: "Yahweh answered me, 'Write the vision, and make it plain on tablets, that he who
   runs may read it.'" — recall: "Yahweh answered me, 'Write the ___, and make it plain on tablets,
   that he who runs may read it.'" → **vision**. *(difficulty_rank 5. Medium blanked "tablets";
   this blanks the verse's central noun, "vision," instead.)*
5. **Hab 2:3**: "For the vision is yet for the appointed time, and it hurries toward the end, and
   won't prove false. Though it takes time, wait for it, because it will surely come. It won't
   delay." — recall: "For the vision is yet for the ___ time, and it hurries toward the end, and
   won't prove false." → **appointed**. *(difficulty_rank 5. Medium tested this verse as
   multiple-choice; this is the same verse in typed-recall format, on a precise adjective a player
   is unlikely to have memorized exactly.)*
6. **Hab 2:14**: "For the earth will be filled with the knowledge of Yahweh's glory, as the waters
   cover the sea." — recall: "For the earth will be ___ with the knowledge of Yahweh's glory, as the
   waters cover the sea." → **filled**. *(difficulty_rank 5. Medium blanked "glory," the verse's
   most memorable word; this blanks the verb instead.)*
7. **Hab 3:19** (WEB, trimmed — full verse continues "...in high places. For the music director, on
   my stringed instruments.", per the same trim already labeled in `docs/content/habakkuk.md`):
   "Yahweh, the Lord, is my strength. He makes my feet like deer's feet, and enables me to go in high
   places." — recall: "Yahweh, the Lord, is my strength. He makes my feet like
   ___ feet, and enables me to go in high places." → **deer's**. *(difficulty_rank 5. Medium blanked
   "strength," the verse's opening noun; this blanks a more precise, secondary image later in the
   same verse.)*

### Boss (2)

8. **Boss recall — reused verbatim from `medium`**: Hab 2:4, "Behold, his soul is puffed up. It is
   not upright in him, but the righteous will live by his ___." → **faith**.
9. **Boss sequence — reused verbatim from `medium`**: given three quotations (Hab 1:2, 2:4, 3:18),
   place them in the order they occur in the book and match each to its reference.

## Contested Territory

Everything already flagged in `docs/content/habakkuk.md` applies unchanged and is reconfirmed here
against the items actually used in this tier:

- **Habakkuk 2:4, "the righteous will live by his faith" (boss item 8).** The bounding from
  `docs/content/habakkuk.md` and `docs/reviews/habakkuk-review.md` §3.1 holds unchanged — this is a
  verbatim reuse of an already-reviewed item, still recall-only on the WEB text's own word "faith,"
  never on what the word means or the doctrine built on it.
- **Habakkuk's dialogue with Yahweh (items 1-3, drawing on 1:2-4).** The theodicy bounding from
  `docs/content/habakkuk.md` and `docs/reviews/habakkuk-review.md` §3.2 holds unchanged: each item
  grades only a single word from the prophet's own stated complaint (the exclamation "Violence,"
  "perversity," "righteous"), never why Yahweh permits injustice or whether the complaint is
  justified. Precision of recall does not increase doctrinal exposure here — the graded tokens
  remain plain narrative/textual words throughout, not interpretive claims.
- **No new contested ground.** Items 4-7 and boss item 9 draw on Hab 2:2, 2:3, 2:14, 3:19, and 1:2/
  2:4/3:18, already confirmed in `docs/reviews/habakkuk-review.md` §3.3 to carry no live
  cross-tradition dispute. No item in this brief touches Habakkuk 1:5-11 or 1:12-17, which remain
  outside challenge-ready scope as at `medium`.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`, no
      changes required, see `docs/reviews/habakkuk-hard-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off and from this brief's own live draft-pull, both required
      before ingestion)
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages; no new
      scenes added
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No challenge item built from Habakkuk 2:4 asserts a specific doctrine of justification
