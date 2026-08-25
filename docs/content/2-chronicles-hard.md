# Content Brief — 2 Chronicles, Hard Tier (World 14)

Status: **approved-with-changes** — theological review complete, see
docs/reviews/2-chronicles-hard-review.md. All required fixes applied below.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/2-chronicles-hard-verbatim-qa.md`) — every
piece of text changed, restored, or re-tagged while applying the review's fixes independently
re-checked against BibleGateway (WEB), most cross-checked against ebible.org too, **with 2 Chronicles
29:10 given its own independent re-verification and reconfirmed as "fierce anger."** No discrepancies
found. Both required gates are now clear. **Eligible for ingestion.**

Second half of the scaled difficulty-mode pass for 2 Chronicles (see
`docs/content/2-chronicles-easy.md` for the tier's shared design rationale). Reuses the same 4
pivotal scenes already approved in `docs/content/2-chronicles.md` — no new scenes — but selects less
commonly memorized, more precise verses and skews toward typed recall. **2 Chronicles 7:14 and 36:17
remain excluded entirely, carried forward unchanged and not revisited by this brief.**

Translation: World English Bible (WEB) throughout. Verses already quoted verbatim in the approved
`docs/content/2-chronicles.md` are reused as-is, not refetched. All newly-introduced verse text below
was fetched fresh from ebible.org on 2026-08-19. **2 Chronicles 29:10** was cross-checked against two
independent sources after an internal discrepancy: a first ebible.org fetch returned "fierce wrath,"
while a second, closer ebible.org re-fetch and an independent BibleGateway (WEB) fetch both returned
"fierce anger." **Resolved and reconfirmed per theological review
(`docs/reviews/2-chronicles-hard-review.md` §1): four independent live WEB sources — BibleGateway,
Bible Hub, `ebible.org/web`, and `ebible.org/engwebp` — all read "fierce anger," 4-for-4, with zero
sources returning "wrath." "Fierce wrath" is the KJV/Webster's rendering of this verse, not a WEB
variant or edition difference; the drafter's original bad fetch is attributed to translation bleed in
the fetch/summarization path, not an unstable WEB text.** Item 4 below uses the confirmed WEB
reading, "fierce anger" — flagging this explicitly for the verbatim-QA pass rather than silently
resolving it.

## Design intent for this tier

Draws on verses that are narratively significant but less likely to be immediately recognized —
precise phrasing, secondary dialogue, exact numbers — and requires typed recall (no multiple-choice
scaffolding) wherever the format allows.

## Pivotal Scenes — reused from `docs/content/2-chronicles.md`, no new scenes added

Same 4 scenes as `medium` and `easy`: Solomon's Temple Dedication (2 Chronicles 5, 7), Hezekiah's
Reforms (2 Chronicles 29), Josiah's Reforms: The Great Passover (2 Chronicles 34-35), The Fall of
Judah and Cyrus's Decree (2 Chronicles 36).

## Challenge Items (12: 8 regular + 4 boss)

### Regular (8)

**Scene 1 — Solomon's Temple Dedication**

1. **2 Chronicles 5:1** (WEB, new): "Thus all the work that Solomon did for Yahweh's house was
   finished. Solomon brought in the things that David his father had dedicated, even the silver, the
   gold, and all the vessels, and put them in the treasuries of God's house." — recall: "...Solomon
   brought in the things that David his father had dedicated, even the silver, the gold, and all the
   vessels, and put them in the treasuries of God's ___." → **house**.
2. **2 Chronicles 5:7** (WEB, new): "The priests brought in the ark of Yahweh's covenant to its
   place, into the inner sanctuary of the house, to the most holy place, even under the wings of the
   cherubim." — recall: "The priests brought in the ark of Yahweh's covenant to its place, into the
   inner sanctuary of the house, to the most holy place, even under the wings of the ___." →
   **cherubim**.

**Scene 2 — Hezekiah's Reforms**

3. **2 Chronicles 29:18** (WEB, already-approved verse, trimmed, new blank than `medium`'s): "...We
   have cleansed all Yahweh's house, including the altar of burnt offering with all its vessels, and
   the table of show bread with all its vessels." — recall: "...We have ___ all Yahweh's house,
   including the altar of burnt offering with all its vessels, and the table of show bread with all
   its vessels." → **cleansed**. *(Re-tagged "(WEB, trimmed)" with a leading ellipsis per review
   Finding C — `medium`'s own correct trim label was dropped when this tier ported the verse; the
   full verse opens "Then they went in to Hezekiah the king within the palace and said, 'We have
   cleansed...'". Words shown are unchanged, verbatim.)*
4. **2 Chronicles 29:10** (WEB, new — see the cross-check note above): "Now it is in my heart to make
   a covenant with Yahweh, the God of Israel, that his fierce anger may turn away from us." — recall:
   "Now it is in my heart to make a covenant with Yahweh, the God of Israel, that his fierce ___ may
   turn away from us." → **anger**. *(Hezekiah's own stated intent, quoted in-text — see Contested
   Territory below. Per review Finding G: the graded blank falls exactly on the one word where major
   English translations diverge — KJV/Webster's read "wrath" and Sefaria's JPS reads "rage" at this
   position, confirmed live in §1 above and in the review. Decision recorded here, per the review's
   recommendation: the blank stays on "anger," WEB's own confirmed word, as deliberate hard-tier
   difficulty rather than being moved to a translation-stable word (e.g. "covenant") elsewhere in the
   same verse. The answer-matching/normalization layer should treat "wrath" as an incorrect answer,
   not a silent near-match, since it is a different translation's word, not a WEB variant.)*

**Scene 3 — Josiah's Reforms: The Great Passover**

5. **2 Chronicles 34:19** (WEB, new): "When the king had heard the words of the law, he tore his
   clothes." — recall: "When the king had heard the words of the law, he tore his ___." →
   **clothes**.
6. **2 Chronicles 34:31** (WEB, new): "The king stood in his place and made a covenant before Yahweh,
   to walk after Yahweh, and to keep his commandments, his testimonies, and his statutes with all his
   heart and with all his soul, to perform the words of the covenant that were written in this book."
   — recall: "...to walk after Yahweh, and to keep his commandments, his testimonies, and his statutes
   with all his heart and with all his ___, to perform the words of the covenant that were written in
   this book." → **soul**.

**Scene 4 — The Fall of Judah and Cyrus's Decree**

7. **2 Chronicles 36:21** (WEB, new): "...to fulfill Yahweh's word by Jeremiah's mouth, until the land
   had enjoyed its Sabbaths. As long as it lay desolate, it kept Sabbath, to fulfill seventy years." —
   recall: "...As long as it lay desolate, it kept Sabbath, to fulfill seventy ___." → **years**.
   *(The text's own fulfillment-of-prophecy framing — see Contested Territory below. Lowercased "to"
   and added a leading ellipsis to the display quotation per review Finding A — v21 is a grammatical
   continuation of v20 and WEB does not capitalize "to" here; the recall string already carried the
   correct leading ellipsis, only the display quotation needed the fix.)*
8. **2 Chronicles 36:23** (WEB, already-approved verse, new blank than `medium`'s or `easy`'s):
   "Cyrus king of Persia says, 'Yahweh, the God of heaven, has given all the kingdoms of the earth to
   me; and he has commanded me to build him a house in Jerusalem, which is in Judah... let him go
   up.'" — recall: "Cyrus king of Persia says, 'Yahweh, the God of ___, has given all the kingdoms of
   the earth to me; and he has commanded me to build him a house in Jerusalem, which is in Judah...
   let him go up.'" → **heaven**.

### Boss (4)

9. **Boss recall — reused verbatim from `medium`**: **2 Chronicles 7:3** (WEB, trimmed): "All the
   children of Israel looked on, when the fire came down, and Yahweh's glory was on the house. They
   bowed themselves with their faces to the ground on the pavement, worshiped, and gave thanks to
   Yahweh, saying, 'For he is good, for his loving kindness endures ___!'" → **forever**.
10. **Boss recall — reused verbatim from `medium`**: **2 Chronicles 35:18** (WEB, trimmed): "There was
    no ___ like that kept in Israel from the days of Samuel the prophet, nor did any of the kings of
    Israel keep such a Passover as Josiah kept..." → **Passover**. *(Re-tagged "(WEB, trimmed)" per
    review Finding C — `medium`'s own correct trim label was dropped in the port to this tier; the
    verse continues past "kept" with "—with the priests, the Levites, and all Judah and Israel who
    were present, and the inhabitants of Jerusalem." Trailing ellipsis added to mark the cut point;
    words shown are unchanged, verbatim.)*
11. **Boss recall — new**: **2 Chronicles 29:5** (WEB, trimmed): "...Listen to me, you Levites! Now
    sanctify yourselves, and sanctify the house of Yahweh, the God of your fathers, and carry the
    filthiness out of the holy place." — recall: "...Listen to me, you Levites! Now sanctify
    yourselves, and sanctify the house of Yahweh, the God of your fathers, and carry the ___ out of
    the holy place." → **filthiness**. *(Re-tagged "(WEB, trimmed)" with a leading ellipsis per review
    Finding C — the full verse opens "and said to them, 'Listen to me, you Levites!...'"; this is the
    same verse `docs/content/2-chronicles-easy.md` boss item 12 also uses, in MC format there and
    recall format here — a deliberate, acknowledged cross-tier reuse, not a collision, since the two
    difficulty tiers are alternative play paths rather than a sequence. See review Finding D.)*
12. **Boss recall — new**: **2 Chronicles 36:16** (WEB, new): "...but they mocked the messengers of
    God, despised his words, and scoffed at his prophets, until Yahweh's wrath arose against his
    people, until there was no remedy." — recall: "...until Yahweh's wrath arose against his people,
    until there was no ___." → **remedy**. *(The text's own stated cause of the coming judgment — see
    Contested Territory below. Stops immediately before the excluded 36:17. Lowercased "but" and added
    a leading ellipsis per review Finding A — v16 is a grammatical continuation of v15 and WEB does
    not capitalize "but" here.)*

*(Items 9-10 are exact reuses of the two `medium` boss items `easy` did not reuse (both recall-format,
fitting this tier's typed-recall skew), so between the two new tiers all four of `medium`'s boss items
get reused exactly once each, not duplicated. Items 11-12 are genuinely new: reusing `medium`'s
scene-1 and scene-3 boss items here (7:3, 35:18) leaves scenes 2 and 4 without a boss item, so items
11 (scene 2) and 12 (scene 4) fill exactly those gaps — the same reasoning `easy` used for its own new
boss items (7:2 in scene 1, 29:5 in scene 2), just applied to the two different scenes this tier's
inherited boss items didn't already cover, so this tier's boss battle, like `easy`'s, spans all four
scenes. Rewritten for clarity per review Finding E — the prior wording was self-contradictory about
which scenes were "reassigned.")*

## Contested Territory

Everything already flagged in `docs/content/2-chronicles.md` applies unchanged, **including the full
exclusion of 2 Chronicles 7:14 and 36:17 from challenge-ready content — neither is selected anywhere
in this brief.**

**New for this tier — flagged for the theological reviewer, not resolved here:**

- **2 Chronicles 36:16 (item 12, boss)**: "until Yahweh's wrath arose against his people, until there
  was no remedy" is the text's own stated summary cause of the coming exile — persistent rejection of
  prophetic warning — sitting in the same causation-adjacent territory as 2 Kings 17:7's
  already-approved bounding (`docs/content/2-kings.md`, approved). The same causation-adjacent shape
  is also proposed — but not yet reviewed — at `docs/content/2-kings-hard.md`'s item 5 (2 Kings
  17:18); that reference is not load-bearing here, since the reviewer confirmed 36:16's bounding
  directly against live sources rather than relying on precedent (citation corrected per review
  Finding B — the original draft mislabeled 17:18 as already-approved). This item is recall-only,
  grades the stated word ("remedy"), and does not extend to a general claim about whether national
  calamity signals divine judgment. It stops one verse short of the excluded 36:17 (the graphic
  conquest-violence verse) — the boundary between the two verses is deliberate, not incidental.
- **2 Chronicles 36:21 (item 7)**: the text's own framing of the seventy-year exile as fulfilling
  "Yahweh's word by Jeremiah's mouth" is a narrative-fact statement the text makes about itself, the
  same category as 2 Kings 17:23's "as he said by his servants the prophets" (already in-bounds at
  `medium`, see `docs/content/2-kings.md`). No cross-tradition dispute was found on the number itself;
  the item does not extend to a general doctrine of prophecy-fulfillment or reference the separate
  book of Jeremiah's own content (out of this MVP's scope). **Forward-looking structural rule, added
  per review §4.2 (recommended change 5):** classic commentators genuinely divide on when the
  seventy years began and ended and on whether the number is literal or round (Ellicott/Barnes date
  from 605 BC via Jeremiah 25:1/Daniel 1:1; the Pulpit Commentary uses 606-605 BC; Keil & Delitzsch
  reject a chronological reading outright). Item 7 does not touch any of that — it grades only the
  word "years" — but **no challenge in any tier may grade when the seventy years began or ended, how
  they are calculated against the sabbatical years, or whether the number is literal or round.**
- **2 Chronicles 29:10 (item 4)**: Hezekiah's own quoted words about wanting "fierce anger" turned
  away are in-text direct quotation, not a general claim about divine anger and national calamity —
  the same bounding pattern as the one proposed — but not yet reviewed — at
  `docs/content/2-kings-easy.md`'s Josiah-alarm item (2 Kings 22:13); that reference is not
  load-bearing here, since 29:10 was independently confirmed against four live sources in the fetch
  note above (citation corrected per review Finding B — the original draft called 22:13
  "already-reviewed," which it is not).
- **2 Chronicles 29:5 (item 11, boss)**: "carry the filthiness out of the holy place" is a
  commissioning instruction to sanctify and clean the temple — the graded token "filthiness" is the
  text's own word for what is removed, and the item never touches the destruction of high places or
  the disposal narrative at 29:16. This stays comfortably inside `medium`'s existing Hezekiah's/
  Josiah's-reforms note (just below) on the destruction-of-idolatrous-worship-sites territory: this
  tier's chosen verses, like `medium`'s and `easy`'s, describe positive restoration acts rather than
  the destruction acts. **Added to the coverage bullet per review §4.4** — an earlier draft's "no
  other new contested ground" statement omitted this item, which is genuinely new to this tier.
- **No other new contested ground.** Items 1, 2, 3, 5, 6, 8 are plain narrative description or
  direct verse recall — ark placement, temple cleansing, Josiah's reaction, the covenant renewal, and
  Cyrus's decree — already within the existing bounding for these scenes. None require a
  denominational position or moral judgment.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required/
      recommended fixes applied above (see `docs/reviews/2-chronicles-hard-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/2-chronicles-hard-verbatim-qa.md` (29:10 given its own dedicated, independently
      re-verified section)
- [x] Every challenge item traceable to one of the 4 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, flagged bounding
- [x] Item/boss count (12: 8 regular + 4 boss) matches `medium`'s own count exactly, per the
      assignment's instruction — verified directly against
      `docs/ingest/1-2-kings-1-2-chronicles.sql`
- [x] 2 Chronicles 7:14 and 36:17 excluded entirely — not selected as challenge-ready content
      anywhere in this brief
