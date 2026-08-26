# Verbatim-Text QA — Nahum (World 34)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/nahum-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/nahum.md`.

Prior sources (per brief + `docs/reviews/nahum-review.md` §1): most challenge-ready verses were
already double-sourced against ebible.org and biblegateway.com (both WEB) during authoring/review.
Two spans were flagged in the review as single-source-only (ebible.org only) and prioritized for
this pass: **Nahum 1:2-3** and **Nahum 3:19**. This pass fetched every challenge-ready verse from
a third/second independent source — Bible Hub (`biblehub.com/web/nahum/<chapter>.htm`), still WEB
translation — per `QA_REQUIREMENTS.md` §3's 100%-coverage requirement (not sampled).

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Nahum 1:2 | ebible.org only (flagged single-source) | Bible Hub (2nd source) | Match for quoted (trimmed) portion — **see correction below** |
| Nahum 1:3 | ebible.org only (flagged single-source) | Bible Hub (2nd source) | Match for quoted (trimmed) portion — **see correction below** |
| Nahum 1:7 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Nahum 1:15 | ebible.org + biblegateway.com | Bible Hub (3rd source) | Match, word-for-word |
| Nahum 3:19 | ebible.org only (flagged single-source) | Bible Hub (2nd source) | Match, word-for-word |

## Notes

1. **Nahum 1:2 and 1:3 — silent truncation found and corrected.** The brief quoted only the first
   one or two sentences of each verse:
   - v.2 as quoted: "Yahweh is a jealous God and avenges. Yahweh avenges and is full of wrath." The
     full WEB verse continues: "Yahweh takes vengeance on his adversaries, and he maintains wrath
     against his enemies." — not quoted, and the cut was not labeled as a trim.
   - v.3 as quoted: "Yahweh is slow to anger, and great in power, and will by no means leave the
     guilty unpunished." The full WEB verse continues: "Yahweh has his way in the whirlwind and in
     the storm, and the clouds are the dust of his feet." — not quoted, and the cut was not labeled
     as a trim.

   The quoted portions themselves are word-for-word accurate — this is not a wording error — but per
   `QA_REQUIREMENTS.md` §3 and this pass's instructions, an unlabeled partial-verse quote is a real
   discrepancy, not a cosmetic one. **Corrected in `docs/content/nahum.md`**: both lines now carry an
   explicit "(trimmed)" label plus an inline note naming the omitted continuation and why it's out of
   scope for this passage's framing (v.2's additional vengeance clause and v.3's shift into
   storm-theophany imagery both fall outside Passage 1's stated "just and good" pairing with v.7).
   No wording was changed — only the trim was made explicit, consistent with how this same class of
   issue was fixed elsewhere in this project (e.g. the Jonah 2:9 trim-label correction).
2. Nahum 1:7 and 1:15 are quoted in full, matching the source exactly, no trims.
3. Nahum 3:19 — the one challenge-ready verse selected from chapter 3 per this brief's
   narrative-summary handling of that chapter — matches the source exactly, in full.

## Exclusion / scope checks

Confirmed: **no graphic-imagery verse from Nahum 2-3 appears as challenge-ready text**, specifically
including 3:3-6 and 3:10 as called out in this assignment's scope note. Grepped
`docs/content/nahum.md` for all of 3:3/3:4/3:5/3:6/3:10 — every match is confined to the "Contested
Territory" section's discussion of *why* that material is excluded (plus the acceptance-criteria
checkbox), not inside any "Challenge-ready verse" block. Independently re-fetched Nahum 3 from Bible
Hub and confirmed the excluded verses do in fact contain the graphic content the brief describes:
- 3:3 — battlefield-corpse imagery ("a great heap of corpses, and there is no end of the bodies")
- 3:4-5 — sexualized-shaming metaphor ("I will lift your skirts over your face... I will show the
  nations your nakedness")
- 3:10 — violence against children ("Her young children also were dashed in pieces")

None of this text appears anywhere in the brief. The only chapter-3 content used is the
narrative-summary prose (clearly marked as summary) and the single verse 3:19, which states the
outcome's certainty without graphic description.

## Corrections made

**Two.** Nahum 1:2 and Nahum 1:3, both in `docs/content/nahum.md`: added explicit "(trimmed)"
labels and a brief inline note on each, naming the omitted verse continuation. No verse wording was
altered — the quoted text was already accurate; only the missing-trim-label issue was fixed.

## Overall verdict

**pass-with-corrections** — all challenge-ready verses in `docs/content/nahum.md` are character-for-
character accurate against source (Bible Hub as an independent second or third source, distinct from
ebible.org/biblegateway.com, per `QA_REQUIREMENTS.md` §3), including both single-source-only spans
the review flagged for priority (1:2-3, 3:19). Two unlabeled silent truncations (Nahum 1:2, 1:3) were
found and corrected with trim labels — no wording was wrong, only unmarked. The Nahum 2-3
graphic-imagery exclusion (specifically 3:3-6, 3:10) is independently confirmed complete.
