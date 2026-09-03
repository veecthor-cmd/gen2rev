# Verbatim-Text QA — Song of Solomon, Hard Tier (World 22)

Per `QA_REQUIREMENTS.md` §3. Independent re-verification of every challenge-ready verse in
`docs/content/song-of-solomon-hard.md`, run 2026-09-03, after theological review
(`docs/reviews/song-of-solomon-hard-review.md`, `approved`, no changes required).

**Independent source used: [Bible Hub, WEB](https://biblehub.com/web/songs/2.htm)** (chapters 2, 3,
8) — genuinely different from the two sources already cited in
`docs/reviews/song-of-solomon-hard-review.md` (ebible.org for every item, plus BibleGateway
specifically for items 3, 7, 8). Bible Hub was not used at all in the prior review, so it is
independent for every item here.

**Zero-new-verses claim verified directly.** Every verse reference appearing anywhere in this brief's
10 items was enumerated and checked against the 4 passages/verses named in
`docs/content/song-of-solomon.md` (`medium`): 2:7, 3:5, 8:4, 2:10-13, 2:16a, 8:6-7. **Confirmed — no
verse reference outside this set appears anywhere in this brief.** (Full reference list found: item 1
→ 2:7; item 2 → 3:5; item 3 → 8:4; items 4/5 → 2:10-13; item 6 → 2:16a; items 7/8 → 8:6; item 9 →
8:7; item 10 → 2:7/3:5/8:4 by reference only, no new verse text.)

**Result: `pass-with-corrections`.** One real character-level discrepancy was found and investigated
(item 8, "Yah" vs. Bible Hub's "Yahweh") — resolved as a known WEB-edition variance, not a defect in
the brief; **no change was made to the brief**, per the resolution below. All other 8 text-bearing
items match Bible Hub's WEB text character-for-character. (Verdict recorded as `pass-with-corrections`
because a real discrepancy was found and required investigation to resolve, consistent with how this
project treats WEB-edition-drift findings — see `MEMORY.md`'s 2026-08-25 entries on 2 Kings 19:15 and
`docs/QA_SIGNOFF.md`'s Jeremiah 28:9 row, both "investigated and resolved," not silently passed over.)

## Verses independently re-checked

| Item | Verse | Brief's text | Source | Result |
|---|---|---|---|---|
| 1 | Song 2:7 | "I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up, nor awaken love, until it so desires." | [Bible Hub, Song 2](https://biblehub.com/web/songs/2.htm) | **Match.** Blank ("daughters of ___" → Jerusalem) falls on text present exactly as quoted. |
| 2 | Song 3:5 | "I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up nor awaken love, until it so desires." | [Bible Hub, Song 3](https://biblehub.com/web/songs/3.htm) | **Match, including the missing comma.** Source confirms 3:5 reads "...not stir up nor awaken love..." (no comma after "up"), unlike 2:7's "...not stir up, nor awaken love...". The brief correctly reproduces this micro-variant rather than harmonizing it — a place a copy error could easily have slipped in, and didn't. |
| 3 | Song 8:4 | "I adjure you, daughters of Jerusalem, that you not stir up, nor awaken love, until it so desires." | [Bible Hub, Song 8](https://biblehub.com/web/songs/8.htm) | **Match.** Blank ("...until it so ___." → desires) falls on text present exactly as quoted. |
| 4 | Song 2:10-13 | "...For behold, the winter is past. The rain is over and gone..." | [Bible Hub, Song 2](https://biblehub.com/web/songs/2.htm) | **Match** (v.11). Blank ("The rain is over and ___." → gone) confirmed. |
| 5 | Song 2:10-13 | "...The fig tree ripens her green figs..." | [Bible Hub, Song 2](https://biblehub.com/web/songs/2.htm) | **Match** (v.13). Blank ("...her green ___." → figs) confirmed. |
| 6 | Song 2:16a (trimmed) | "My beloved is mine, and I am his." | [Bible Hub, Song 2](https://biblehub.com/web/songs/2.htm) | **Match.** Blank ("...and I am ___." → his) falls within the approved trim; "he browses among the lilies" not displayed or graded. |
| 7 | Song 8:6 | "...Jealousy is as cruel as Sheol..." | [Bible Hub, Song 8](https://biblehub.com/web/songs/8.htm) | **Match.** Blank ("...as cruel as ___." → Sheol) confirmed. |
| 8 | Song 8:6 | "...Its flashes are flashes of fire, a very flame of Yah." | [Bible Hub, Song 8](https://biblehub.com/web/songs/8.htm) | **MISMATCH found — investigated below.** Bible Hub's WEB text reads "...a very flame of **Yahweh**," not "Yah." |
| 9 | Song 8:7 | "Many waters can't quench love, neither can floods drown it..." | [Bible Hub, Song 8](https://biblehub.com/web/songs/8.htm) | **Match.** Blank ("...neither can floods ___ it." → drown) confirmed. |
| 10 | Boss sequence — 3 refrain occurrences by reference, no new verse text | — | — | N/A. Order (2:7 → 3:5 → 8:4) independently confirmed correct against chapter/verse order. |

## Item 8 discrepancy — investigation and resolution

**Finding.** Item 8's graded answer is "Yah" (from "...a very flame of ___." → **Yah**). Bible Hub's
WEB text of Song 8:6, fetched fresh and confirmed via raw HTML (not just a summarized read, to rule
out a fetch-tool paraphrase error), reads "a very flame of **Yahweh**" — a different word than the
brief's graded token.

**This is exactly the recurring WEB-edition-drift pattern this project has already surfaced twice
before** (2 Kings 19:15, per `MEMORY.md`'s 2026-08-25 entry — "edition drift between ebible.org's
current `/web` printing, its `/engwebp` printing, and the older printing BibleGateway/BibleHub still
serve"; and Jeremiah 28:9, per `docs/QA_SIGNOFF.md` — "a Bible Hub transcription variance, confirmed
via a fresh ebible.org fetch matching the brief"). Open Decision #1 in `GEN2REV_MASTER_PROMPT.md`
names the WEB translation but does not pin a specific printing/edition, and this project's established
practice (see `docs/content/1-chronicles-easy.md`, `1-chronicles-hard.md`) is to treat the
**`ebible.org/web` + BibleGateway `version=WEB` pairing as the pinned/canonical edition**, with Bible
Hub known to sometimes serve a different (often older) printing.

**Triangulation performed, beyond the single Bible Hub source:**

| Source | Song 8:6 final word | Notes |
|---|---|---|
| [ebible.org SNG08](https://ebible.org/web/SNG08.htm) — raw HTML fetched directly | **Yah** | This project's primary drafting source (per the brief's own header) and this book's `medium`-tier canonical source. Carries an explicit footnote: "'Yah' is a short form of 'Yahweh', which is God's proper Name..." — i.e. "Yah" here is a deliberate, footnoted translation choice, not a typo. |
| [BibleGateway, version=WEB](https://www.biblegateway.com/passage/?search=Song+of+Solomon+8%3A6&version=WEB) — re-checked directly for this QA pass, not assumed from the prior review | **Yah** | Matches ebible.org. |
| [worldenglish.bible](https://worldenglish.bible/song-of-solomon/8) (the WEB translation's own official site) | — | Redirects (302) to `ebible.org/song-of-solomon/8` — i.e. the translation's official publisher host **is** ebible.org. Strong evidence ebible.org's reading is the authoritative one. |
| [Bible Hub, Song 8](https://biblehub.com/web/songs/8.htm) | Yahweh | Confirmed via raw HTML, not just summarized text. |
| [BibleStudyTools, WEB, Song 8](https://www.biblestudytools.com/web/song-of-solomon/8.html) — pulled as a tie-breaking third source given the split | Yahweh | Agrees with Bible Hub, not ebible.org/BibleGateway. |

**Resolution: the brief's text ("Yah") is correct and requires no change.** Two of the three
independent sources — including the translation's own official publisher host, which resolves to
ebible.org — agree with the brief and with the already-shipped `medium`/`easy` tiers' display of the
same clause. This is a genuine edition-level variance between different WEB printings on one specific
poetic/proper-noun word (consistent with the underlying translation-choice dispute already documented
in `docs/reviews/song-of-solomon-hard-review.md` §3, citing TheTorah.com, over whether this clause
contains a divine-name reference at all), not a transcription error introduced by this brief's
drafting. Per this project's established precedent for exactly this situation, the brief is left as
written and the finding is logged here rather than "corrected" against a source that is itself the
outlier.

**No edit made to `docs/content/song-of-solomon-hard.md`.**

## Answer-key / format check

- Item 2's brief-vs-Bible Hub comma variance (see item 2 above) was checked specifically because it is
  the kind of micro-difference a drafting pass could silently normalize away — confirmed the brief
  preserves it correctly.
- Item 8's structural rule (recall-only, never MC, never asking what "Yah" refers to) re-confirmed
  intact regardless of the edition question above — the item's construction does not change based on
  which printing's spelling is used.

## Conclusion

**`pass-with-corrections`** — no text was actually changed in `docs/content/song-of-solomon-hard.md`
("corrections" here refers to a discrepancy that was found, investigated, and resolved in favor of the
brief's existing text after triangulating three additional sources, not a wording change to the
brief). All 9 text-bearing items independently re-verified; 8 matched Bible Hub exactly, and item 8's
Bible-Hub-vs-brief variance was traced to a known WEB-printing difference already documented elsewhere
in this project, with the brief's reading confirmed correct against the translation's own official
host and against BibleGateway. `docs/content/song-of-solomon-hard.md` is eligible for ingestion on
this verbatim-QA criterion.

**Flag for the orchestrating session (not this reviewer's job to act on):** this is the third
recorded instance of Bible Hub WEB text diverging from the ebible.org/BibleGateway pairing this
project treats as canonical (after 2 Kings 19:15 and Jeremiah 28:9). Worth considering whether Open
Decision #1's WEB-edition-pinning gap (already flagged in `MEMORY.md`, still unresolved as a formal
decision) should be closed out, and whether Bible Hub should be avoided as an independent-QA source
going forward given three recurrences.
