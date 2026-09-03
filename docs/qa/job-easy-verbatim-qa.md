# Verbatim-Text QA — Job, Easy Tier (World 18)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/job-easy.md`, run 2026-09-03, after theological review
(`docs/reviews/job-easy-review.md`, `approved-with-changes`).

**Independent source used:** [Bible Hub](https://biblehub.com) (WEB) — not previously cited for any
item in this brief's review (which used ebible.org + biblegateway.com throughout).

**Priority item checked first, per instructions: Job 1:8.** The theological review flagged a
character-level discrepancy between ebible.org ("no one like him **on** the earth") and
biblegateway.com ("no one like him **in** the earth"), resolved provisionally in the brief by
matching the already-shipped medium-tier reading ("in the earth"), and explicitly asked this QA pass
to adjudicate with a third source.

**Job 1:8 adjudication:** fetched Bible Hub's chapter page (`biblehub.com/web/job/1.htm`) and its
dedicated verse page (`biblehub.com/job/1-8.htm`) independently — both return: *"Yahweh said to
Satan, 'Have you considered my servant, Job? For there is no one like him **in** the earth, a
blameless and an upright man, one who fears God, and turns away from evil.'"* Bible Hub agrees with
biblegateway.com's "in the earth," not ebible.org's "on the earth." **Verdict: the brief's current
wording ("in the earth") is confirmed correct** by a 2-out-of-3 majority among independent live WEB
sources (biblegateway.com + Bible Hub vs. ebible.org alone), and is also consistent with the
already-shipped medium-tier citation. **No change needed to `docs/content/job-easy.md` on this
item** — the existing "in the earth" wording is retained and its status upgraded from "provisionally
matched to medium tier" to "independently confirmed as the correct reading."

**Result: `pass`.** No discrepancies found on any item, including the flagged Job 1:8.

## Verses checked

| Item | Verse | Brief's text | Bible Hub (WEB) | Result |
|---|---|---|---|---|
| 1 | Job 1:1 | "There was a man in the land of Uz, whose name was Job." (labeled trim) | Full verse identical up to the trim point | **Match.** |
| 2 | Job 38:31 | "'Can you bind the cluster of the Pleiades, or loosen the cords of Orion?'" | Identical | **Match.** |
| 3 | Job 1:8 | "Yahweh said to Satan, 'Have you considered my servant, Job? For there is no one like him in the earth, a blameless and an upright man, one who fears God, and turns away from evil.'" | Identical | **Match — see adjudication above.** |
| 4 | Job 2:9 | "Then his wife said to him, 'Do you still maintain your integrity? Renounce God, and die.'" | Identical | **Match.** |
| 5 | Job 42:6 | "Therefore I abhor myself, and repent in dust and ___." (blank = ashes) | "Therefore I abhor myself, and repent in dust and **ashes**." | **Match.** |
| 6 | Job 38:4 | "'Where were you when I laid the foundations of the earth?'" (labeled trim) | Full verse: "Where were you when I laid the foundations of the earth? Declare, if you have understanding." — trim matches | **Match.** |
| 7 | Job 39:19 | "'Have you given the horse might? Have you clothed his neck with a quivering mane?'" | Identical | **Match.** |
| 8 | Job 19:25 | "But as for me, I know that my ___ lives. In the end, he will stand upon the earth." (blank = Redeemer) | "But as for me, I know that my **Redeemer** lives. In the end, he will stand upon the earth." | **Match.** |
| 10 | Job 42:10 | "Yahweh restored Job's prosperity when he prayed for his friends. Yahweh gave Job twice as much as he had before." | Identical | **Match.** |

Item 9 (boss sequence, ordering the narrative beats) contains no direct scripture quotation — not
applicable to verbatim-text QA.

## Conclusion

**`pass`.** Zero discrepancies across all 9 quoted verses, including the specifically-flagged Job 1:8
item, which is now independently confirmed correct as written ("in the earth") against a third live
WEB source (Bible Hub), agreeing with biblegateway.com over ebible.org. `docs/content/job-easy.md`
is eligible for ingestion with no changes required.
