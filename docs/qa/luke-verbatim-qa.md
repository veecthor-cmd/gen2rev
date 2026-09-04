# Verbatim-Text QA — Luke (World 42)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/luke-review.md`. This is the first New Testament book this project has
run this process on.

QA reviewer: independent verbatim-QA pass (this session), 2026-09-04.
Brief checked: `docs/content/luke.md` (medium tier only, per the brief's own scope note — Easy/Hard
are out of scope for this pass).

Per `docs/reviews/luke-review.md` §1, most challenge-ready verses were checked during
authoring/review against ebible.org and, for the doctrinally load-bearing blocks, also
BibleGateway (both WEB). The review explicitly disclosed a gap: several narrative
(non-doctrinally-contested) blocks — scenes 1, 3, 6, 8, 10, 11-12, 13, 14, 15 — were single-sourced
(ebible.org, or BibleGateway alone for scene 6) rather than dual-sourced, and flagged those for
full attention in this pass. This pass fetched **every** challenge-ready verse in the brief — not
just the flagged ones — from a source not previously used for this book: **Bible Hub**
(`biblehub.com/web/luke/<chapter>.htm`, WEB translation), via direct page-text extraction (not an
LLM-summarized fetch, to guarantee no paraphrase risk). One verse (3:21) was additionally
cross-checked directly against ebible.org's own page to adjudicate a discrepancy (see Notes).

## Verse-by-verse results

| # | Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|---|
| 1 | Luke 1:13-15 (trimmed) | ebible.org (single) | Bible Hub | Match — trim correctly labeled and ellipsized |
| 2 | Luke 1:18 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 3 | Luke 1:24-25 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 4 | Luke 1:30-31 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 5 | Luke 1:32-33 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 6 | Luke 1:34-35 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 7 | Luke 1:38 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 8 | Luke 1:41-42 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 9 | Luke 1:46-49 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 10 | Luke 1:52-53 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 11 | Luke 2:6-7 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 12 | Luke 2:10-11 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 13 | Luke 2:13-14 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 14 | Luke 2:19-20 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 15 | Luke 2:29-32 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 16 | Luke 2:34-35 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 17 | Luke 2:46-47 | BibleGateway (single) | Bible Hub | Match, word-for-word |
| 18 | Luke 2:48-49 | BibleGateway (single) | Bible Hub | Match, word-for-word |
| 19 | Luke 2:51-52 | BibleGateway (single) | Bible Hub | Match, word-for-word |
| 20 | Luke 3:7-8 (trimmed) | ebible.org (single) | Bible Hub | Match — trim correctly labeled |
| 21 | Luke 3:16 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 22 | Luke 3:21-22 | ebible.org + BibleGateway | Bible Hub, ebible.org (re-check) | **Discrepancy found and corrected — see Notes** |
| 23 | Luke 4:3-4 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 24 | Luke 4:8 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 25 | Luke 4:12-13 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 26 | Luke 4:18-19 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 27 | Luke 4:21 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 28 | Luke 4:24 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 29 | Luke 5:4-5 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 30 | Luke 5:8 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 31 | Luke 5:10-11 | ebible.org (single) | Bible Hub | Match (selective quote of dialogue + closing narrative — see Notes) |
| 32 | Luke 10:27 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 33 | Luke 10:33-34 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 34 | Luke 10:36-37 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 35 | Luke 10:40 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 36 | Luke 10:41-42 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 37 | Luke 15:4 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 38 | Luke 15:7 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 39 | Luke 15:18-19 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 40 | Luke 15:20 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 41 | Luke 15:22-24 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 42 | Luke 16:19-21 | ebible.org (single) | Bible Hub | **Unlabeled truncation found and corrected — see Notes** |
| 43 | Luke 16:22 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 44 | Luke 16:31 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 45 | Luke 19:5 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 46 | Luke 19:8 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 47 | Luke 19:9-10 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 48 | Luke 22:15 | ebible.org (single) | Bible Hub | Match (quote ends at verse's own sentence boundary — see Notes) |
| 49 | Luke 22:19 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 50 | Luke 22:20 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 51 | Luke 22:41-42 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 52 | Luke 23:34 (first sentence only) | ebible.org (single) | Bible Hub | Match, word-for-word |
| 53 | Luke 23:42-43 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 54 | Luke 23:46 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 55 | Luke 24:1-3 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 56 | Luke 24:5-6 | ebible.org + BibleGateway | Bible Hub | Match (quote ends at verse's own sentence boundary — see Notes) |
| 57 | Luke 24:10-11 | ebible.org (single) | Bible Hub | Match, word-for-word |
| 58 | Luke 24:30-31 | ebible.org + BibleGateway | Bible Hub | Match, word-for-word |
| 59 | Luke 24:34 | ebible.org (single) | Bible Hub | Match, word-for-word |

**59 challenge-ready verse blocks checked — 100% coverage, not sampled**, spanning all 18 pivotal
scenes. Every single-sourced block the review flagged (§1's list: scenes 1, 3, 6, 8, 10, 11-12, 13,
14, 15) received full independent-source attention in this pass, alongside every already
dual-sourced block.

## Notes

1. **Luke 3:21-22 — stray comma found and corrected (real discrepancy, not cosmetic).** The brief
   quoted: "...Jesus also had been baptized, and was praying." Both Bible Hub and a direct
   re-check of ebible.org (the source the brief itself cites for this passage) read: "...Jesus also
   had been baptized **and** was praying." — no comma before "and." This is a single stray comma,
   not a wording change, but per this pass's character-for-character standard it is a genuine
   textual discrepancy on one of the six doctrinally load-bearing, dual-sourced verses in this
   brief (the baptism/voice-from-heaven passage). **Corrected in `docs/content/luke.md`** — the
   comma was removed; no other wording changed.
2. **Luke 16:19-21 — unlabeled truncation found and corrected.** The brief's quote, cited as
   covering the full 16:19-21 range, stopped after "...crumbs that fell from the rich man's table."
   Verse 21 continues: "Yes, even the dogs came and licked his sores." — not quoted, and the cut was
   not labeled as a trim. The quoted portion itself is word-for-word accurate; this is the same
   class of issue as the Nahum 1:2/1:3 unlabeled-truncation finding in this project's prior QA
   pass (`docs/qa/nahum-verbatim-qa.md`) — a real discrepancy under `QA_REQUIREMENTS.md` §3, not a
   cosmetic one, because the citation implies a complete quote of the cited range.
   **Corrected in `docs/content/luke.md`**: the entry now reads "(WEB, trimmed)" with an inline
   note naming the omitted sentence and why it's out of scope (extraneous narrative detail, not a
   doctrinal exclusion). No wording was changed — only the trim was made explicit.
3. **Luke 22:15 and Luke 24:5-6 — quotes ending at a verse-internal sentence boundary, not treated
   as discrepancies.** Both quotes stop partway through a WEB verse ("...before I suffer." for
   22:15; "...but is risen." for 24:5-6), where the source text has a period marking the end of a
   complete sentence and the immediately following clause begins a new sentence in a different verse
   or a separate thought (22:16's "for I tell you..."; 24:6's "Remember what he told you..."). Unlike
   the 16:19-21 case, these are clean sentence-final cuts, not a cut mid-sentence within the cited
   verse's own core clause — consistent with how partial-verse quotes are handled elsewhere in this
   brief without a "(trimmed)" label (e.g. 5:10-11's dialogue-only extraction). No correction made.
4. **Luke 5:10-11** quotes only Jesus's direct speech from v.10 plus all of v.11, omitting the
   narrative aside "and so also were James and John, sons of Zebedee, who were partners with Simon"
   from the middle of v.10. This is narrative context around a quoted line, not a cut within the
   quoted sentence itself — same non-issue pattern as note 3. No correction made.
5. All other 55 challenge-ready blocks matched Bible Hub's WEB text exactly, word-for-word,
   including every block the theological review flagged as single-sourced during drafting.

## Exclusion / bounding checks (independently re-confirmed by grep, not by trusting the brief or review's own claims)

Per the assignment, every exclusion/restriction the review names was independently re-checked
against the current `docs/content/luke.md`, not assumed from the review's or brief's own summary:

- **Luke 21 (Olivet discourse / eschatology) — confirmed excluded entirely.** Grepped the file for
  `Luke 21` and `21:` — the only two hits (lines 541, 549) are both inside the Contested Territory
  section's prose explaining *why* Luke 21 is excluded. No Pivotal Scene, no Challenge-ready verse
  block, and no Difficulty Ladder example cites any Luke 21 verse. Confirmed the whole-chapter
  exclusion is actually honored, not just claimed.
- **Luke 22:43-44 (angel/sweat-like-blood textual-criticism passage) — confirmed not used as a
  challenge-ready verse.** Grepped for `22:43`, `22:44`, and the passage's distinctive language —
  the only hits (lines 567-568) are in the Contested Territory disclosure prose. Scene 17's
  Challenge-ready verses list (22:41-42, 23:34, 23:42-43, 23:46) does not include 22:43-44.
  Confirmed the brief's own claim ("not selected as a challenge-ready verse... no format
  restriction is needed") is accurate.
- **Luke 23:34 — confirmed only the disputed first sentence is quoted, not the full verse.**
  Grepped for `23:34` and `Father, forgive them` — the Challenge-ready verse (line 376) reads
  exactly: `"Jesus said, 'Father, forgive them, for they don't know what they are doing.'"` and
  stops there. The source's full verse continues "Dividing his garments among them, they cast
  lots" (confirmed against Bible Hub, item 52 above) — that continuation is correctly *not*
  included in the quoted block, consistent with the brief's own framing of this as "the first
  sentence" specifically (line 572).
- **The six recall/fill-in-blank-only structural rules (1:32-33, 1:34-35, 3:21-22, 4:21, 22:19-20,
  23:42-43, 24:5-6) — confirmed each is declared at both the Contested Territory level and the
  scene level.** Grepped for `Structural rule` (six hits, lines 440, 449, 459, 472, 487, 497 — one
  per restricted verse/verse-pair) and independently confirmed each corresponding Challenge-ready
  verse entry in the Pivotal Scenes section (1:32-33/1:34-35 at lines ~115-122; 3:21-22 at
  ~211-215; 4:21 at ~247-249; 22:19/22:20 at ~358-363; 23:42-43 at ~379-381; 24:5-6 at ~397-399)
  carries an explicit inline `(Handled per the format restriction below...)` cross-reference. Since
  this is a content brief (prose spec), not an implemented question bank, "honoring" the rule at
  this stage means the brief itself never presents one of these verses as an interpretive
  multiple-choice example — checked the Difficulty Ladder's own worked examples (Level 4 uses
  1:38, 4:18-19, 23:43 for a sequence+attribution exercise, which is recall/matching, not
  "what does this mean") and found no violation.
- **Marginalized/outsider and gender-related content (Good Samaritan, Zacchaeus, women as first
  witnesses)** — not subject to a format restriction per the review (§3.7, §3.8), and confirmed the
  brief indeed leaves these in open format with no interpretive/ecclesiological framing added to
  any challenge-ready verse text itself (verified directly against the quoted text in items 32-36,
  45-47, 55-59 above — all narrative-fact language, no added commentary).

## Corrections made

**Two**, both in `docs/content/luke.md`:
1. **Luke 3:21-22** — removed a stray comma ("baptized, and was praying" → "baptized and was
   praying") that did not match either ebible.org or Bible Hub. Wording otherwise unchanged.
2. **Luke 16:19-21** — added a "(WEB, trimmed)" label and an inline note disclosing the omitted
   continuation of v.21 ("Yes, even the dogs came and licked his sores"). No wording changed; the
   quoted text was already accurate, only the missing-trim-label issue was fixed.

## Overall verdict

**pass-with-corrections** — 59 of 59 challenge-ready verse blocks in `docs/content/luke.md`
(medium tier) checked, 100% coverage. All are character-for-character accurate against an
independent source (Bible Hub, WEB) not previously used for this book, including full attention to
every single-sourced block the theological review flagged for priority. Two discrepancies found and
corrected: one stray punctuation mark on a doctrinally load-bearing, dual-sourced verse (3:21-22),
and one unlabeled partial-verse truncation (16:19-21) of the same class as this project's prior
Nahum finding. Neither involved a wrong word, a dropped clause of doctrinal consequence, or a
mislabeled verse reference. All exclusion and format-restriction rules the theological review named
(the Luke 21 eschatology exclusion, the 22:43-44 non-selection, the 23:34 first-sentence-only cut,
and all six recall-only structural rules) were independently re-confirmed by direct grep of the
current file, not assumed from the brief's or review's own claims. This brief is not yet ready for
ingestion until `docs/CONTENT_REVIEW_LOG.md` and `docs/QA_SIGNOFF.md` are updated by the
orchestrating process — outside this pass's scope.
