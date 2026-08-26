# Verbatim-Text QA — Amos (World 30)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/amos-review.md`.

QA reviewer: independent verbatim-QA pass (this session), 2026-08-26.
Brief checked: `docs/content/amos.md` (medium tier only, per the brief's own scope note).

Per `docs/reviews/amos-review.md` §1, most challenge-ready verses in this brief were already
checked against two independent live WEB sources (ebible.org + biblegateway.com), but the
nation-formula verse **Amos 1:3** and the pair **Amos 5:11-12** were flagged as **single-source-only**
(ebible.org) and explicitly prioritized for this QA pass. This pass fetched every challenge-ready
block from a third (or, for the flagged rows, second) genuinely different source not previously
cited: Bible Hub (`biblehub.com/web/amos/<chapter>.htm`), still the World English Bible
translation.

## Verse-by-verse results

| Ref | Prior sources (per review) | This pass's source | Result |
|---|---|---|---|
| Amos 1:3 | ebible.org only (flagged for QA) | Bible Hub (2nd source) | **Mismatch found — silent truncation (see Corrections below)** |
| Amos 2:6 | ebible.org + biblegateway | Bible Hub (3rd source) | **Mismatch found — silent truncation (see Corrections below)** |
| Amos 2:7 (1st sentence only) | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Amos 5:11 | ebible.org only (flagged for QA) | Bible Hub (2nd source) | **Mismatch found — silent truncation (see Corrections below)** |
| Amos 5:12 | ebible.org only (flagged for QA) | Bible Hub (2nd source) | Match, word-for-word |
| Amos 5:21 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Amos 5:23 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Amos 5:24 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word (confirms WEB "roll on like rivers" wording, not the NRSV "roll down like waters" phrasing the review flagged as a risk) |
| Amos 7:14 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |
| Amos 7:15 | ebible.org + biblegateway | Bible Hub (3rd source) | Match, word-for-word |

## Discrepancies found and corrected

**Amos 1:3** — the brief quoted: "For three transgressions of Damascus, yes, for four, I will not
turn away its punishment, because they have threshed Gilead with threshing instruments of iron."
Bible Hub's full verse 3 text opens with an introductory clause the brief silently dropped:
"**Yahweh says:** 'For three transgressions of Damascus...'". The quoted formula wording itself is
accurate; the omission of the opening attribution was unlabeled. **Fix applied:** relabeled
`(WEB, formula as applied to Damascus, trimmed)` with a note explaining the omitted opening clause.

**Amos 2:6** — same issue: the brief quoted the formula starting at "For three transgressions of
Israel..." but the actual verse opens "Yahweh says: 'For three transgressions of Israel...'",
confirmed via a targeted re-fetch of the verse. **Fix applied:** relabeled `(WEB, trimmed)` with the
same explanatory note.

**Amos 5:11** — the brief quoted only the first two clauses: "Therefore, because you trample on the
poor and take taxes from him of wheat, you have built houses of cut stone, but you will not dwell
in them." Bible Hub's full verse 11 continues: "You have planted pleasant vineyards, but you shall
not drink their wine." — silently dropped by the brief. **Fix applied:** relabeled `(WEB, trimmed)`
with a note stating the omitted vineyard clause and why (passage's focus on taxation/building, not
the vineyard image).

In all three cases the wording that *was* quoted is accurate, character-for-character, against
Bible Hub; the issue in every case was an **unlabeled trim**, not a wrong word, wrong verse, or
altered meaning. Per this QA pass's standard ("a labeled trim is fine, a silent truncation is
not"), all three are now labeled `(trimmed)` with an explanatory parenthetical, matching the
convention already used elsewhere in this project (`docs/content/nahum.md`, `docs/content/isaiah.md`).
No wording was altered in any of the three corrections — only labeling was added.

## Exclusion checks

- **Amos 2:7's second sentence** ("A man and his father use the same maiden, to profane my holy
  name") — confirmed absent from `docs/content/amos.md`'s challenge-ready quotation. The brief
  quotes only the first sentence ("They trample the heads of the poor into the dust of the earth
  and deny justice to the oppressed."), verified word-for-word against Bible Hub. The second
  sentence appears only in this QA report and the theological review, for verification purposes,
  never in the content brief itself.
- **Amos 9:11-12** — fetched directly from Bible Hub to confirm the exclusion is total. Confirmed:
  no verse from Amos 9:11-12 is quoted as challenge-ready content anywhere in
  `docs/content/amos.md`. Note for completeness: the brief's Contested Territory section discusses
  *why* 9:11-12 is excluded and, in doing so, quotes a few short fragments secondhand from cited
  external commentary (e.g., "the tabernacle of David," "possess the remnant of Edom," "the remnant
  of mankind... seek the Lord") — these are discussion-only prose inside the reviewer-facing
  Contested Territory section, not challenge-ready verse blocks, and no full verse text of 9:11 or
  9:12 appears anywhere in the brief. This does not affect the brief's compliance with its own
  stated acceptance criterion.

## Corrections made

Three, all in `docs/content/amos.md`: Amos 1:3, Amos 2:6, and Amos 5:11 relabeled `(trimmed)` with
explanatory notes of the silently-omitted text. See "Discrepancies found and corrected" above. No
wording was changed in any of the three.

## Overall verdict

**pass-with-corrections** — three silent-truncation discrepancies found (Amos 1:3, 2:6, 5:11) and
corrected by labeling the existing trims explicitly; no wording, word-order, or wrong-verse-number
error found in any quoted text. Amos 9:11-12 confirmed absent from challenge-ready content; Amos
2:7's second sentence confirmed absent from the challenge-ready quotation. All other challenge-ready
verses in `docs/content/amos.md` (medium tier) confirmed character-for-character accurate against
an independent source (Bible Hub, WEB) per `QA_REQUIREMENTS.md` §3.
