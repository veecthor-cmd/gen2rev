# Content Brief — Genesis, Easy Tier (World 1)

Status: **`approved-with-changes`** — theological review complete, see
`docs/reviews/genesis-easy-review.md`. All six required/recommended fixes (ambiguous MC stem,
untrimmed-quote labelling, scene-scope correction, a reference typo, two forward-looking format
restrictions, and inlined verbatim text) are applied below.

**Verbatim-text QA: `pass`** (2026-08-18, see `docs/qa/genesis-easy-verbatim-qa.md`) — all 4
newly-introduced/corrected verses independently re-checked against a source not used during
drafting; no discrepancies found. Both required gates are now clear. **Eligible for ingestion.**

This is the **pilot** for Gen2Rev's difficulty-mode content pipeline (per Kachi's 2026-08-18
decision to build genuinely new content per tier, not just reuse `medium` filtered by
`difficulty_rank`). It reuses the same 5 pivotal scenes already approved in
`docs/content/genesis.md` (no new scenes), so the existing Contested Territory analysis for those
scenes still applies.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.
All verse text fetched fresh from ebible.org on 2026-08-18.

---

## Design intent for this tier

Per Kachi: "easy... real simple." This tier draws the most iconic, broadly-recognizable facts from
each of Genesis's 5 scenes and favors multiple-choice recognition over typed recall, so a first-time
or younger player can succeed without prior Bible knowledge. It does **not** simplify or paraphrase
verse text — the style guide's "verbatim WEB text only" rule applies identically at every tier.

## Pivotal Scenes — reused from `docs/content/genesis.md`, no new scenes added

Same 5 scenes: Creation (Gen 1), The Fall (Gen 3), The Flood (Gen 6-9), Abraham's Call and the
Binding of Isaac (Gen 12, 15, 22), Joseph Sold and Reconciled (Gen 37, 45, 50). *(Corrected per
review §6.3 — an earlier draft of this brief listed "Gen 12, 15, 17, 22," silently exceeding the
approved medium brief's "Gen 12, 15, 22." No item below draws on Genesis 17; the scene list now
matches what's actually used.)*

## Challenge Items (10: 7 regular + 3 boss)

### Regular (7)

1. **Gen 1:1** (WEB, already-approved verse, new format): "In the beginning, God created the
   heavens and the earth." — MC: "Who created the heavens and the earth?" Options: God / Moses /
   Adam / Abraham. Correct: God.
2. **Gen 1:5** (WEB, new): "God called the light "day", and the darkness he called "night". There
   was evening and there was morning, the first day." — MC: "What did God call the light?"
   Options: Day / Night / Morning / Heaven. Correct: Day. *(WEB prints the inner quotes as double
   quotes around "day"/"night" — noted for ingestion, which must store WEB's actual quote marks,
   not the single quotes this brief uses to nest the verse inside its own quoted block.)*
3. **Gen 3:6** (WEB, already-approved verse, listed in the original medium brief but never used
   there — full verse: "When the woman saw that the tree was good for food, and that it was a
   delight to the eyes, and that the tree was to be desired to make one wise, she took some of its
   fruit, and ate.") — recall: "she took some of its ___, and ate" → **fruit**.
4. **Gen 8:11** (WEB, new; trimmed for challenge use — full verse: "The dove came back to him at
   evening and, behold, in her mouth was a freshly plucked olive leaf. So Noah knew that the waters
   were abated from the earth."): "The dove came back to him at evening and, behold, in her mouth
   was a freshly plucked olive leaf." — MC: **"According to Genesis 8:11, what did the dove bring
   back to Noah?"** Options: a freshly plucked olive leaf / a fish / a twig / nothing. Correct: a
   freshly plucked olive leaf. *(Stem now anchored to the specific verse — see Contested Territory
   below on why the unanchored original stem was a real answer-key defect, not just an imprecision:
   Genesis 8 records three dove-sendings, 8:9's dove returns with nothing and 8:12's doesn't return
   at all, so "nothing" was a defensible answer to the old, unanchored question.)*
5. **Gen 12:1** (WEB, new): "Now Yahweh said to Abram, 'Leave your country, and your relatives, and
   your father's house, and go to the land that I will show you.'" — MC: "What did God tell Abram
   to do?" Options: Leave his country for a land God would show him / Build an altar / Offer a
   sacrifice / Return to Egypt. Correct: Leave his country for a land God would show him. *(Grades
   only what Abram was told to do — never where he was when he was told it; see Contested Territory
   below.)*
6. **Gen 22:13** (WEB, new): "Abraham lifted up his eyes, and looked, and saw that behind him was a
   ram caught in the thicket by his horns. Abraham went and took the ram, and offered him up for a
   burnt offering instead of his son." — MC: "What did Abraham find caught in the thicket?"
   Options: a ram / a lamb / a dove / a goat. Correct: a ram. *(Narrative-fact only — what was
   found and used — no "why" framing, per the existing Gen 22 bounding below. Grades only what was
   found — never where; see Contested Territory below.)*
7. **Gen 45:4** (WEB, already-approved verse text, reused, new question angle): "He said, 'I am
   Joseph, your brother, whom you sold into Egypt.'" — MC: "Who does Joseph reveal himself to be,
   to his brothers?" Options: their brother, whom they sold into Egypt / Pharaoh's servant / a
   stranger / the king. Correct: their brother, whom they sold into Egypt.

### Boss (3)

8. **Gen 1:31** (WEB, already-approved verse, listed in the original medium brief but never used
   there — full verse: "God saw everything that he had made, and, behold, it was very good. There
   was evening and there was morning, a sixth day.") — recall: "God saw everything that he had
   made, and, behold, it was very ___." → **good**.
9. **Boss sequence — reused verbatim from `medium`**: Joseph's story in order — "Jacob gives Joseph
   a tunic of many colors; his brothers grow jealous" (Gen 37:3-4) → "Joseph's brothers sell him to
   traders bound for Egypt" (Gen 37:3-4) → "Joseph rises to power in Egypt under Pharaoh" (implied
   by Gen 45:4-5) → "Joseph reveals himself to his brothers and forgives them" (Gen 45:4-5, 50:20).
10. **Boss MC — reused verbatim from `medium`**: Gen 3:23-24, "Therefore Yahweh God sent him out
    from the garden of Eden, to till the ground from which he was taken. So he drove out the man;
    and he placed cherubim at the east of the garden of Eden, and a flaming sword which turned
    every way, to guard the way to the tree of life." — "According to Genesis 3:23-24, what did
    God place at the entrance of Eden after sending the man out?" → cherubim and a flaming sword.

*(Items 9-10 are exact reuses of already-reviewed `medium` boss items — deliberately, to keep the
boss battle's most dramatic beats consistent across tiers while item 8 still adds one genuinely new
piece of content. This keeps new-verse review scope tight for the pilot without making the tier
feel like a re-skin.)*

## Contested Territory

Everything already flagged in `docs/content/genesis.md` applies unchanged (creation-days debate,
Flood scope, Genesis 22 sacrifice/testing theology, Genesis 3:15 and 1:27 recall-only rules — those
two verses aren't used in this tier at all, so the restriction isn't engaged here, but remains
binding if a future revision adds them back).

**New for this tier — reviewed against live cross-tradition sources in
`docs/reviews/genesis-easy-review.md` §4, bounding confirmed to hold in every case:**

- **Genesis 22:13** (item 6) stays strictly on *what was found and what it was used for* — never
  *why God tested Abraham* or *whether the substitution was necessary*. Confirmed against
  Protestant (typology of Christ), Jewish (Sefaria/Rashi — the ram prepared from Creation, entangled
  by Satan, substitution read through Abraham's prayer), Catholic (USCCB/NABRE — test-of-Abraham
  framing), and Orthodox (OCA — Lamb-of-God typology) sources: all four traditions disagree
  substantially about the ram's *significance* while agreeing completely that it was a ram — the
  graded answer depends on none of the disputed material. **Structural rule: no challenge may grade
  *where* the ram was** — the Hebrew's אַחַר ("behind," which WEB follows) vs. אֶחָד ("one," which
  the LXX/Samaritan/Syriac support and NABRE's "a single ram" follows) is a live manuscript
  variant, not a settled reading.
- **Genesis 12:1** (item 5) grades only *what* Abram was told to do, never *where* he was when the
  call came. Checked against Bible Hub's aggregated classic commentators: unanimous on the command
  itself (sever ties to country/kindred/father's house, go to an unnamed land), but genuinely
  divided on **whether the call happened in Ur or in Haran** (Jamieson-Fausset-Brown and
  Keil-Delitzsch argue Ur, citing Acts 7:2; Gill and the Pulpit Commentary argue Haran or a repeated
  call). **Structural rule: no challenge may grade where Abram was when he received this call.**
  The covenant-interpretation dispute the style guide names (§3) attaches to the *promises* in
  12:2-3, already bounded narrative-only at `medium` — not to the command in 12:1 this item grades.
- **No new contested ground otherwise** — every other new verse (1:5, 3:6, 8:11, 1:31) is plain
  narrative description with no live cross-tradition disagreement found.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required/
      recommended fixes applied above (see `docs/reviews/genesis-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/genesis-easy-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding
