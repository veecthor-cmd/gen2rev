# Verbatim-Text QA — 2 Samuel, Easy Tier (World 10)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every piece of text changed while
applying the required/recommended fixes from `docs/reviews/2-samuel-easy-review.md`
(`approved-with-changes`) to `docs/content/2-samuel-easy.md`, run 2026-08-20, prioritizing the five
verses (5:3, 6:12, 6:15, 7:12, 15:6) the review's Finding 6.1 identified as never having been through
a verbatim-QA pass before this tier promoted them to displayed challenge text.

**Result: `pass`.** All text-bearing fixes independently re-verified against live WEB sources with
zero discrepancies. The chapter-11 exclusion and the {12:1, 12:7, 12:13} chapter-12 bounding were
both re-confirmed by direct re-read of every item as part of this pass, not assumed from the review.

## Verses independently re-checked (text changed by this pass)

| Item | Verse | What changed | Source | Result |
|---|---|---|---|---|
| 3 | 2 Sam 6:12 (full verse) | Required fix: restored the omitted first sentence and added the `(WEB, trimmed)` label, so the full verse is now stated alongside the displayed trim | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Samuel+6%3A12-15&version=WEB) (ebible.org's own page for this verse independently confirmed truncated at the same point the brief's original quote began — the same fetch artifact the theological review recorded at §3, Finding A) | **Match, full verse confirmed.** "King David was told, 'Yahweh has blessed the house of Obed-Edom, and all that belongs to him, because of God's ark.' So David went and brought up God's ark from the house of Obed-Edom into David's city with joy." The brief's restated full verse is an exact match; the displayed/graded trim (second sentence) is a verbatim substring. Answer "with joy" reconfirmed correct. |
| 7 | 2 Sam 12:1 | Stem re-anchored to 12:1's own content; verse text itself unchanged | [ebible.org WEB 2SA12](https://ebible.org/web/2SA12.htm) | **Match.** "Yahweh sent Nathan to David. He came to him, and said to him, 'There were two men in one city: the one rich, and the other poor.'" Identical to the brief's quoted text. Confirms the re-anchored stem draws only on this verse's own content, not on 12:2-4 (the rest of the parable), consistent with the human-escalated {12:1, 12:7, 12:13} bounding. |
| 11 | 2 Sam 18:33 | Label corrected from "reused verbatim" to "adapted" (shortened display template); verse text, blank, and answer unchanged | [ebible.org WEB 2SA18](https://ebible.org/web/2SA18.htm) | **Match.** "The king was much moved, and went up to the room over the gate and wept. As he went, he said, 'My son Absalom! My son, my son Absalom! I wish I had died instead of you, Absalom, my son, my son!'" Confirms the shortened ellipsis-led prompt is a verbatim-correct substring; no text integrity issue, consistent with the review's finding that this was a labelling accuracy point only. |

## Chapter-11 / chapter-12 bounding re-confirmed (non-negotiable constraint)

Every item in the corrected brief was re-enumerated by verse selection during this pass:

| Item | Verse selected | Chapter |
|---|---|---|
| 1 | 5:3 | 5 |
| 2 | 5:4 | 5 |
| 3 | 6:12 | 6 |
| 4 | 6:14 | 6 |
| 5 | 7:12 | 7 |
| 6 | 7:13 | 7 |
| 7 | 12:1 | 12 |
| 8 | 15:6 | 15 |
| 9 (boss) | 12:7 | 12 |
| 10 (boss) | scene-sequence beats only, no verse text displayed | — |
| 11 (boss) | 18:33 | 18 |
| 12 (boss) | 6:15 | 6 |

**Zero chapter-11 verses appear as a challenge selection anywhere in the corrected brief.** Chapter
11 appears only in bounding/exclusion prose. Chapter-12 selections are the strict subset {12:1,
12:7} — inside the human-approved {12:1, 12:7, 12:13} set, per Kachi Okere's 2026-08-08 sign-off.

## Not re-litigated (verse text unchanged by this pass)

Items 1, 2, 4, 5, 6, 8, 9, 10, 12 — no scripture text was altered for these items during this pass;
they were already independently re-checked against live WEB sources in
`docs/reviews/2-samuel-easy-review.md` §2, with matches confirmed there (including the five
first-time verses 5:3, 6:15, 7:12, 15:6, which — apart from 6:12's fix above — required no text
correction, only the theological review's own first-time verification, already recorded).

## Conclusion

**`pass`.** Item 3's restored full verse (the required, blocking fix) is independently re-verified as
verbatim-correct, closing the one character-level integrity defect the review found. Items 7 and 11's
label/stem corrections are confirmed not to have altered any underlying scripture text. The
chapter-11 exclusion holds absolutely and the chapter-12 bounding stays inside the human-approved
set, both re-confirmed item-by-item as part of this pass rather than taken on the brief's or the
review's word. `docs/content/2-samuel-easy.md` is eligible for ingestion.
