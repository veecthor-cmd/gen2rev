# Content Brief — Amos, Hard Tier (World 30)

Status: **`approved`** — theological self-review complete, no changes required, see
`docs/reviews/amos-hard-review.md`.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run. Verse text below was retrieved via a **draft pull** from a live source
([ebible.org](https://ebible.org/web/)) on 2026-09-03, with a second-source spot-check
(biblegateway.com, `version=WEB`) on Amos 5:24 given the medium review's specific flag on that
verse's wording — a draft pull, not the final verbatim-QA pass. **Do not ingest into the `challenge`
table until that separate verbatim QA pass has run**, on top of the medium tier's own still-
outstanding QA pass.

This tier reuses the same 4 pivotal passages already approved in `docs/content/amos.md` — **no new
scenes** — but selects less commonly memorized clauses and requires typed recall throughout (no
multiple-choice scaffolding anywhere in this brief). **Amos 9:11-12 remains excluded entirely, and
the second sentence of Amos 2:7 is never quoted, exactly as at medium.**

Translation: World English Bible (WEB) throughout.

---

## Design intent for this tier

Per Kachi: "hard... needs very deep scripture knowledge." This tier draws on precise, less-obvious
phrasing within Amos's 4 pivotal passages and requires typed recall throughout. Difficulty skews to
rank 5 throughout.

## Pivotal Passages — reused from `docs/content/amos.md`, no new scenes added

Same 4 passages as `medium` and `easy`.

## Challenge Items (9: 8 regular + 1 boss)

### Regular (8, all recall/fill-in-blank, difficulty_rank 5)

1. **Amos 1:3** (WEB, already-approved verse, different question format than easy tier): "Yahweh
   says: 'For three transgressions of Damascus, yes, for four, I will not turn away its punishment,
   because they have threshed Gilead with threshing instruments of iron.'" — recall: "...because they have threshed
   Gilead with threshing instruments of ___." → **iron**.
2. **Amos 1:11** (WEB, new verse within Passage 1, the Edom oracle): "Yahweh says: 'For three
   transgressions of Edom, yes, for four, I will not turn away its punishment, because he pursued his
   brother with the sword and cast off all pity, and his anger raged continually, and he kept his
   wrath forever.'" —
   recall: "...and his anger raged continually, and he kept his wrath ___." → **forever**.
3. **Amos 2:6** (WEB, already-approved verse, different blank than easy tier): "Yahweh says: 'For
   three transgressions of Israel, yes, for four, I will not turn away its punishment, because they
   have sold the righteous for silver, and the needy for a pair of sandals.'" — recall: "...because they
   have sold the righteous for silver, and the needy for a pair of ___." → **sandals**.
4. **Amos 2:7, first sentence only** (WEB, already-approved verse; the second sentence is never
   quoted, per the exclusion below): "They trample the heads of the poor into the dust of the earth
   and deny justice to the oppressed." — recall: "They trample the heads of the poor into the dust
   of the earth and deny ___ to the oppressed." → **justice**.
5. **Amos 5:11** (WEB, new verse within Passage 2, trimmed to avoid the vineyard clause not selected
   as challenge-ready at medium): "Therefore, because you trample on the poor and take taxes from
   him of wheat, you have built houses of cut stone, but you will not dwell in them." — recall:
   "...you have built houses of cut stone, but you will not ___ in them." → **dwell**.
6. **Amos 5:12** (WEB, already-approved verse, different blank than easy tier): "For I know how many
   are your offenses, and how great are your sins—you who afflict the just, who take a bribe, and who
   turn away the needy in the courts." — recall: "...you who afflict the just, who take a bribe, and
   who turn away the needy in the ___." → **courts**.
7. **Amos 5:23** (WEB, new verse within Passage 3): "Take away from me the noise of your songs! I
   will not listen to the music of your harps." — recall: "Take away from me the noise of your songs!
   I will not listen to the music of your ___." → **harps**.
8. **Amos 7:14** (WEB, already-approved verse, different blank than easy tier): "I was no prophet,
   neither was I a prophet's son, but I was a herdsman, and a farmer of sycamore figs." — recall: "I
   was no prophet, neither was I a prophet's son, but I was a herdsman, and a farmer of sycamore
   ___." → **figs**.

### Boss (1)

9. **Boss sequence + recall**: given three quotations from this book — "For three transgressions of
   Israel... they have sold the righteous for silver" (Amos 2:6); "let justice roll on like rivers"
   (Amos 5:24); "I was no prophet, neither was I a prophet's son" (Amos 7:14) — place them in the
   order they occur and match each to its reference.

## Contested Territory

Everything already flagged in `docs/content/amos.md` applies unchanged.

**New for this tier — reviewed in `docs/reviews/amos-hard-review.md`, bounding confirmed to hold:**

- **Amos 9:11-12 remains excluded entirely — no verse from it appears anywhere in this brief.**
- **Amos 2:7's second sentence is never quoted in this brief.** Item 4 above quotes only the first
  sentence, exactly as at medium and easy.
- **Amos 1:11 (item 2, the Edom oracle).** New at this tier. Checked against the same "stay
  narrative, don't grade the interpretation" bounding already applied to the rest of the nations
  cycle at medium — the item tests only the text's own stated charge and consequence wording
  ("wrath," "forever"), not an evaluation of the punishment's proportionality. This verse also has no
  bearing on Obadiah's separate, independently-bounded Edom material (`docs/content/obadiah.md`) —
  Amos 1:11 addresses Edom's violence against "his brother" (read in context as Israel/Judah) in a
  different oracle than anything Obadiah's brief selects, and neither brief's items require any
  cross-book claim connecting the two. No change needed.
- **Boss item 9's quotation set** reuses only already-cleared iconic lines (2:6, 5:24, 7:14), none of
  which is 9:11-12 or the excluded clause of 2:7, and 5:24's stem again uses the verified WEB
  wording, not the more famous non-WEB phrasing.
- **No new contested ground otherwise** — 1:3, 5:11, 5:12, 5:23, and 7:14 are plain narrative
  description with no live cross-tradition disagreement found.

## Acceptance Criteria for This Brief

- [x] Reviewed by the self-run `theological-reviewer` procedure — `approved`, see
      `docs/reviews/amos-hard-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
- [x] Every challenge item traceable to one of the 4 already-approved pivotal passages
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No verse from Amos 9:11-12 appears anywhere in this brief
- [x] No verse quotes the second sentence of Amos 2:7 verbatim
- [x] Amos 5:24 uses the verified WEB wording, not the more famous non-WEB phrasing
