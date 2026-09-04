# Verbatim-Text QA — Matthew (World 40)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/matthew-review.md`. Matthew is the first New Testament book to go through
this QA stage in this project (every prior QA pass in `docs/qa/` was Old Testament); this pass
follows the same 100%-coverage, no-sampling discipline established there.

QA reviewer: independent verbatim-QA pass (this session), 2026-09-04.
Brief checked: `docs/content/matthew.md`.

Per `docs/reviews/matthew-review.md` §1, every challenge-ready verse in this brief was already
cross-checked during theological review against two independent live WEB sources: ebible.org and
biblegateway.com. This pass used a source not relied on anywhere in that review chain: **Bible Hub**
(`biblehub.com/web/matthew/<chapter>.htm`, WEB translation) — the source this project has used most
often for independent verbatim QA in prior books. Every one of Matthew's 18 pivotal scenes and all
68 challenge-ready verse blocks were fetched and checked; none were sampled. Page text was pulled
directly via browser page-text extraction (not an AI-summarized fetch), consistent with this
project's established QA practice for avoiding fetch-introduced formatting artifacts.

## Verse-by-verse results

| # | Scene | Verse ref | Source | Result |
|---|---|---|---|---|
| 1 | 1 | Matt 1:1 | Bible Hub (3rd source) | Match, word-for-word |
| 2 | 1 | Matt 1:17 | Bible Hub (3rd source) | Match, word-for-word |
| 3 | 1 | Matt 1:20-21 | Bible Hub (3rd source) | Match, word-for-word |
| 4 | 1 | Matt 1:22-23 | Bible Hub (3rd source) | Match, word-for-word |
| 5 | 2 | Matt 2:1-2 | Bible Hub (3rd source) | Match, word-for-word |
| 6 | 2 | Matt 2:11 | Bible Hub (3rd source) | Match, word-for-word |
| 7 | 2 | Matt 2:13 | Bible Hub (3rd source) | Match, word-for-word |
| 8 | 2 | Matt 2:15 | Bible Hub (3rd source) | Match, word-for-word |
| 9 | 2 | Matt 2:17-18 | Bible Hub (3rd source) | Match, word-for-word |
| 10 | 2 | Matt 2:22-23 | Bible Hub (3rd source) | Match, word-for-word |
| 11 | 3 | Matt 3:1-2 | Bible Hub (3rd source) | Match, word-for-word |
| 12 | 3 | Matt 3:13-15 | Bible Hub (3rd source) | Match, word-for-word — **but see correction below (false "trimmed" label)** |
| 13 | 3 | Matt 3:16-17 | Bible Hub (3rd source) | Match, word-for-word |
| 14 | 4 | Matt 4:1-2 | Bible Hub (3rd source) | Match, word-for-word |
| 15 | 4 | Matt 4:4 | Bible Hub (3rd source) | Match, word-for-word |
| 16 | 4 | Matt 4:10 | Bible Hub (3rd source) | Match, word-for-word |
| 17 | 4 | Matt 4:11 | Bible Hub (3rd source) | Match, word-for-word |
| 18 | 5 | Matt 4:14-16 (trimmed) | Bible Hub (3rd source) | Match for quoted portion; trim correctly labeled and ellipsis-marked |
| 19 | 5 | Matt 4:18-19 | Bible Hub (3rd source) | Match, word-for-word |
| 20 | 5 | Matt 4:20 | Bible Hub (3rd source) | Match, word-for-word |
| 21 | 5 | Matt 4:23 | Bible Hub (3rd source) | Match, word-for-word |
| 22 | 6 | Matt 5:3-5 | Bible Hub (3rd source) | Match, word-for-word |
| 23 | 6 | Matt 5:6-9 | Bible Hub (3rd source) | Match, word-for-word |
| 24 | 6 | Matt 5:13 | Bible Hub (3rd source) | Match, word-for-word |
| 25 | 6 | Matt 5:14-16 (trimmed) | Bible Hub (3rd source) | Match for quoted portion; trim correctly labeled and ellipsis-marked |
| 26 | 7 | Matt 5:17 | Bible Hub (3rd source) | Match, word-for-word |
| 27 | 7 | Matt 5:21-22 (trimmed) | Bible Hub (3rd source) | Match for quoted portion; trim correctly labeled and ellipsis-marked |
| 28 | 7 | Matt 5:43-45 (trimmed) | Bible Hub (3rd source) | Match for quoted portion; trim labeled (see note on end-trim marking) |
| 29 | 8 | Matt 6:9-13 | Bible Hub (3rd source) | Match, word-for-word |
| 30 | 8 | Matt 6:26 | Bible Hub (3rd source) | Match, word-for-word |
| 31 | 8 | Matt 6:33 | Bible Hub (3rd source) | Match, word-for-word |
| 32 | 9 | Matt 7:12 | Bible Hub (3rd source) | Match, word-for-word |
| 33 | 9 | Matt 7:24-25 | Bible Hub (3rd source) | **Cross-source variant found on v.24 ("a rock" vs. "the rock") — triangulated, brief confirmed correct, see below** |
| 34 | 9 | Matt 7:28-29 | Bible Hub (3rd source) | Match, word-for-word |
| 35 | 10 | Matt 8:2-3 | Bible Hub (3rd source) | Match, word-for-word |
| 36 | 10 | Matt 8:8 | Bible Hub (3rd source) | Match, word-for-word |
| 37 | 10 | Matt 8:16-17 | Bible Hub (3rd source) | Match, word-for-word |
| 38 | 10 | Matt 9:2 | Bible Hub (3rd source) | Match, word-for-word |
| 39 | 10 | Matt 9:6 | Bible Hub (3rd source) | Match, word-for-word — **but see correction below (false "trimmed" label)** |
| 40 | 11 | Matt 10:1 | Bible Hub (3rd source) | Match, word-for-word |
| 41 | 11 | Matt 10:2-4 | Bible Hub (3rd source) | Match, word-for-word |
| 42 | 11 | Matt 10:7-8 | Bible Hub (3rd source) | Match, word-for-word |
| 43 | 12 | Matt 13:3-8 (trimmed) | Bible Hub (3rd source) | Match for quoted portion; trim correctly labeled and ellipsis-marked |
| 44 | 12 | Matt 13:31-32 | Bible Hub (3rd source) | Match, word-for-word |
| 45 | 12 | Matt 13:45-46 | Bible Hub (3rd source) | Match, word-for-word |
| 46 | 13 | Matt 16:15-16 | Bible Hub (3rd source) | Match, word-for-word |
| 47 | 13 | Matt 16:18 | Bible Hub (3rd source) | Match, word-for-word |
| 48 | 13 | Matt 16:19 | Bible Hub (3rd source) | Match, word-for-word |
| 49 | 14 | Matt 17:1-2 | Bible Hub (3rd source) | Match, word-for-word |
| 50 | 14 | Matt 17:5 | Bible Hub (3rd source) | Match, word-for-word |
| 51 | 14 | Matt 17:7-8 | Bible Hub (3rd source) | Match, word-for-word |
| 52 | 15 | Matt 18:15 | Bible Hub (3rd source) | Match, word-for-word |
| 53 | 15 | Matt 18:20 | Bible Hub (3rd source) | Match, word-for-word |
| 54 | 15 | Matt 18:21-22 | Bible Hub (3rd source) | Match, word-for-word |
| 55 | 16 | Matt 21:4-5 | Bible Hub (3rd source) | Match, word-for-word |
| 56 | 16 | Matt 21:9 | Bible Hub (3rd source) | Match, word-for-word |
| 57 | 16 | Matt 21:10-11 | Bible Hub (3rd source) | Match, word-for-word |
| 58 | 17 | Matt 26:26 | Bible Hub (3rd source) | Match, word-for-word |
| 59 | 17 | Matt 26:27-28 | Bible Hub (3rd source) | Match, word-for-word |
| 60 | 17 | Matt 26:39 | Bible Hub (3rd source) | Match, word-for-word |
| 61 | 17 | Matt 27:11 | Bible Hub (3rd source) | Match, word-for-word |
| 62 | 17 | Matt 27:45-46 | Bible Hub (3rd source) | Match, word-for-word |
| 63 | 17 | Matt 27:50-51 | Bible Hub (3rd source) | Match, word-for-word |
| 64 | 17 | Matt 27:54 | Bible Hub (3rd source) | Match, word-for-word |
| 65 | 18 | Matt 28:5-6 | Bible Hub (3rd source) | Match, word-for-word |
| 66 | 18 | Matt 28:9 | Bible Hub (3rd source) | Match, word-for-word |
| 67 | 18 | Matt 28:18-19 | Bible Hub (3rd source) | Match, word-for-word |
| 68 | 18 | Matt 28:20 | Bible Hub (3rd source) | Match, word-for-word |

**68 of 68 challenge-ready verse blocks checked — 100% coverage, no sampling**, spanning all 18
pivotal scenes.

## Discrepancy investigation: Matthew 7:24, a genuine cross-source WEB variant

Bible Hub's rendering of Matthew 7:24 reads "...I will liken him to a wise man who **built his
house on a rock**" (indefinite article), while the brief quotes "...built his house on **the
rock**" (definite article). Per this pass's instructions, a source disagreement like this is
triangulated against a third source before deciding which reading is correct, rather than editing
the brief on a single new source's say-so.

Triangulation:
- **ebible.org** (`https://ebible.org/web/MAT07.htm`), the WEB translation's primary/canonical
  publisher — v.24: "...built his house **on the rock**." Matches the brief.
- **BibleGateway** (`version=WEB`) — v.24: "...built his house **on the rock**." Matches the
  brief (and was already one of the two sources cited in `docs/reviews/matthew-review.md` §1 for
  this passage).
- **Bible Hub** — v.24: "...built his house **on a rock**." Does not match the brief.

Two independent sources, including the WEB translation's own canonical publisher, agree with the
brief's "the rock"; only Bible Hub differs. **Finding: the brief's text is correct as written.** No
edit made to `docs/content/matthew.md`. This is recorded as a genuine, resolved cross-source
variant, not a brief error — Bible Hub appears to carry a minor rendering difference from the
canonical WEB text at this specific verse (v.25's "founded on **the rock**" is identical across all
three sources, so the variant is isolated to v.24's noun phrase).

## Corrections made

**Two**, both documentation/labeling fixes — no verse wording was ever wrong in either case:

1. **Matthew 3:13-15** was tagged `(WEB, trimmed)` in the brief, but the quoted text is the complete,
   unabridged text of verses 13, 14, and 15 — nothing is omitted. This is the mirror-image of the
   Nahum QA pass's finding (an unlabeled real trim); here the label falsely claims a trim that
   didn't happen, which could mislead a future editor into assuming hidden/cut content exists.
   **Corrected in `docs/content/matthew.md`**: label changed from `(WEB, trimmed)` to `(WEB)`. No
   wording changed.
2. **Matthew 9:6** was likewise tagged `(WEB, trimmed)`, but the quoted text — "But that you may
   know that the Son of Man has authority on earth to forgive sins" — (then he said to the
   paralytic) — "Get up, and take up your mat, and go to your house." — is the complete, unabridged
   text of verse 6 (the em-dash/parenthetical rendering is a formatting choice, not an omission).
   **Corrected in `docs/content/matthew.md`**: label changed from `(WEB, trimmed)` to `(WEB)`. No
   wording changed.

No other verse in the brief carries a false "trimmed" label. The five verses that *are* genuinely
trimmed (4:14-16, 5:14-16, 5:21-22, 5:43-45, 13:3-8) were each checked against the full source text
and confirmed to have real material omitted, consistent with their labels; four of the five mark the
internal cut point with "..."; 5:43-45 discloses the trim via its `(WEB, trimmed)` label but doesn't
place an ellipsis at the exact cut point (it omits only trailing material after the last quoted
sentence). This is a minor internal-consistency note, not a discrepancy requiring a fix — the label
already discloses that the block is not the full verse range, and no wording is at risk of being
mistaken for a complete quotation of 5:45.

## Exclusion / bounding checks (independently grepped, not trusted from the brief's or review's own claim)

Per `docs/reviews/matthew-review.md` §3, three items were named as full exclusions or format
restrictions requiring independent re-confirmation:

- **Matthew 27:24-25** (Pilate's handwashing; "May his blood be on us and on our children!") —
  grepped `docs/content/matthew.md` for `27:24`, `27:25`, `blood be on us`, `washed his hands`, and
  `I am innocent of the blood`. All matches are confined to the narrative-note under Scene 17 (line
  418) and the Contested Territory §8 discussion of *why* the verse is excluded (lines 615-628) —
  none appear inside a "Challenge-ready verses" bullet. **Confirmed: 27:24-25 is not challenge-ready
  content anywhere in the brief.**
- **Matthew 8:11-12** ("the children of the kingdom will be thrown out into the outer darkness") —
  grepped for `8:11`, `8:12`, `children of the kingdom`, `outer darkness`, `thrown out`. All matches
  are confined to the narrative-note under Scene 10 (line 284) and Contested Territory §9 (lines
  631-640). **Confirmed: 8:11-12 is not challenge-ready content anywhere in the brief.** (Independently
  re-fetched Matthew 8 from Bible Hub — see the chapter-8 fetch above — and confirmed vv.11-12 do sit
  immediately after the centurion pericope's v.8-10 exactly where the brief says, containing the
  "outer darkness" language as described.)
- **The Olivet Discourse (Matthew 24-25)** — grepped for `24:1`–`24:3`, `25:1`, `25:31`,
  `abomination of desolation`, `ten virgins`, `sheep and goats`, `this generation`. The only matches
  are inside the Contested Territory §10 discussion of the exclusion itself (lines 648-649); no scene
  is drawn from chapters 24 or 25, and no verse reference from either chapter appears as
  challenge-ready text anywhere in the brief. Independently confirmed structurally too: the brief's
  scenes jump from Scene 16 (Matthew 21, the Triumphal Entry) directly to Scene 17 (Matthew 26-27,
  the Last Supper through the crucifixion) — chapters 22-25 are skipped entirely, consistent with the
  stated exclusion. **Confirmed.**

Format-restriction tags (recall-only bounding) were also independently grepped rather than trusted:

- All **seven** verses named in Contested Territory §1 as the Fulfillment-Quotation Formula set
  (1:22-23, 2:15, 2:17-18, 2:23, 4:14-16, 8:17, 21:4-5) carry an explicit
  `*(Fulfillment-Quotation Formula — see Contested Territory. Recall-only format.)*` tag in their
  challenge-ready bullet. **Confirmed, count matches exactly.**
- Both ecclesiology verses (16:18, 16:19) carry an explicit `*(Ecclesiology — ... Recall-only
  format.)*` tag. **Confirmed.**
- All three sacramental-theology verses (26:26, 26:27-28, 28:18-19) carry an explicit `*(Sacramental
  theology — ...)*` tag (26:27-28 additionally tagged for atonement). **Confirmed.**

## Overall verdict

**pass-with-corrections** — all 68 challenge-ready verse blocks in `docs/content/matthew.md`,
covering all 18 pivotal scenes, are character-for-character accurate against an independent third
source (Bible Hub, not cited anywhere in this book's theological review) per `QA_REQUIREMENTS.md`
§3. No wording, word-order, or omission errors were found in any verse. One genuine cross-source WEB
variant was investigated (Matthew 7:24) and resolved in the brief's favor after triangulating against
ebible.org (WEB's canonical publisher) and BibleGateway, both of which confirm the brief's existing
text — no edit needed there. Two mislabeled-trim documentation errors were found and corrected
(Matthew 3:13-15 and 9:6, both wrongly tagged `(WEB, trimmed)` despite being complete, unabridged
verse text) — no verse wording was ever wrong in either case, only the label. All three named
exclusion/bounding rules from `docs/reviews/matthew-review.md` §3 (27:24-25 full exclusion, 8:11-12
full exclusion, Olivet Discourse/Matthew 24-25 full exclusion) and all recall-only format
restrictions (the seven fulfillment-quotation verses, both ecclesiology verses, all three
sacramental-theology verses) were independently re-confirmed by direct grep of the brief file, not
taken on the review's or brief's own word.

As the first New Testament book to pass through this QA stage, this closes out the independent
verbatim-text QA requirement for Matthew; `docs/CONTENT_REVIEW_LOG.md` and `docs/QA_SIGNOFF.md`
remain to be updated by the calling/orchestrating process, not this pass.
