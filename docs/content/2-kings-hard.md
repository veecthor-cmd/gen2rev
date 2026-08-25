# Content Brief — 2 Kings, Hard Tier (World 12)

Status: **approved-with-changes** — theological review complete, see
docs/reviews/2-kings-hard-review.md. All required fixes applied below.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/2-kings-hard-verbatim-qa.md`) — all
corrected and newly-inlined verses (items 2, 5, 6, 10, 12), including item 6's corrected 2 Kings
19:15 WEB-edition reading, independently re-checked against BibleGateway WEB; no discrepancies found.
Both required gates are now clear. **Eligible for ingestion.**

Second half of the scaled difficulty-mode pass for 2 Kings (see `docs/content/2-kings-easy.md` for
the tier's shared design rationale and inherited Sensitivity note). Reuses the same 5 pivotal scenes
already approved in `docs/content/2-kings.md` — no new scenes — but selects less commonly memorized,
more precise verses and skews toward typed recall. **One item (2 Kings 19:15) required resolving a
live WEB edition conflict against the approved `medium` brief — see item 6's inline note below. The
underlying project-wide WEB-edition-pinning decision this surfaces (review §6.4) is a product-owner
call for `MEMORY.md`, out of scope for this pass since it would require touching the already-approved
`medium` file, and is flagged for the calling session rather than resolved here.**

Translation: World English Bible (WEB) throughout. All newly-introduced verse text below was
fetched fresh from ebible.org on 2026-08-18. Verses already quoted verbatim in the approved
`docs/content/2-kings.md` are reused as-is, not refetched.

## Sensitivity note (inherited, read before the items below)

Same posture as `medium` and `easy`: factual, not graphic. **Specifically excluded, same as
`medium`/`easy`:** 2 Kings 25:6-7, 2 Kings 6:26-29, and 2 Kings 2:23-24. 2 Kings 19:35 stays trimmed
to the bare fact. Item 16 below (25:11, on the deportation) was deliberately chosen over the more
graphic execution of Judah's officials narrated a few verses later (25:18-21, not selected anywhere
in this brief) to keep this tier's fall-of-Jerusalem material factual rather than graphic, matching
the same judgment call the `medium` brief made in choosing 25:8-10 over 25:6-7. *(Cross-reference
corrected per review §6.3 — this sentence previously cited "item 12," but item 12 is actually 25:29,
Jehoiachin's release; the deportation verse discussed here is item 16, the boss recall.)*

---

## Design intent for this tier

Draws on verses that are narratively significant but less likely to be immediately recognized —
exact numbers, secondary dialogue, precise phrasing — and requires typed recall (no multiple-choice
scaffolding) wherever the format allows.

## Pivotal Scenes — reused from `docs/content/2-kings.md`, no new scenes added

Same 5 scenes as `medium` and `easy`.

## Challenge Items (16: 12 regular + 4 boss)

### Regular (12)

**Scene 1 — Elijah's Ascension and Elisha's Succession**

1. **2 Kings 2:10** (WEB, new): "He said, 'You have asked a hard thing. If you see me when I am
   taken from you, it will be so for you; but if not, it will not be so.'" — recall: "He said, 'You
   have asked a ___ thing. If you see me when I am taken from you, it will be so for you...'" →
   **hard**.
2. **2 Kings 2:12** (WEB, new; trimmed for challenge use — full verse continues "Then he took hold
   of his own clothes and tore them in two pieces."): "Elisha saw it, and he cried, 'My father, my
   father, the chariots of Israel and its horsemen!' He saw him no more..." — recall: "Elisha saw
   it, and he cried, 'My father, my father, the chariots of ___ and its horsemen!'" → **Israel**.
   *(Trim now labelled and marked per review Finding §6.2 — the words shown are verbatim, but the
   verse continues past "He saw him no more"; presenting a partial verse as though it were the
   complete verse is the integrity concern this fix addresses.)*
3. **2 Kings 2:13** (WEB, new): "He also took up Elijah's mantle that fell from him, and went back
   and stood by the bank of the Jordan." — recall: "He also took up Elijah's ___ that fell from him,
   and went back and stood by the bank of the Jordan." → **mantle**.

**Scene 2 — The Fall of the Northern Kingdom**

4. **2 Kings 17:18** (WEB, new): "Therefore Yahweh was very angry with Israel, and removed them out
   of his sight. There was none left but the tribe of Judah only." — recall: "...There was none left
   but the tribe of ___ only." → **Judah**.
5. **2 Kings 17:7** (WEB, already-approved verse, trimmed; listed in the original medium brief but
   not used standalone in `easy`): "It was so because the children of Israel had sinned against
   Yahweh their God, who brought them up out of the land of Egypt from under the hand of Pharaoh
   king of Egypt, and had feared other gods." — recall: "It was so because the children of Israel
   had ___ against Yahweh their God, who brought them up out of the land of Egypt..." → **sinned**.
   *(Verbatim text inlined per review §6.8 — previously cited only by cross-reference to
   `docs/content/2-kings.md`. This trim covers more of the verse than `medium`'s own "...and had
   feared other gods" cut, which skips the "who brought them up" clause this item's recall stem
   needs; both are independently verbatim-accurate trims of the same verse.)*

**Scene 3 — Hezekiah and the Assyrian Siege**

6. **2 Kings 19:15** (WEB, already-approved verse, trimmed, not used in `easy`): "Yahweh, the God of
   Israel, who are enthroned above the cherubim, you are the God, even you alone, of all the
   kingdoms of the earth." — recall: "Yahweh, the God of Israel, who are enthroned above the ___,
   you are the God, even you alone, of all the kingdoms of the earth." → **cherubim**. *(Corrected
   per review §6.1 — the original draft read "enthroned above the cherubim" (dropping "who are"),
   which is a real character-level mismatch against the approved `medium` brief's "who are enthroned
   above the cherubim." Independently re-verified via a live BibleGateway WEB fetch during this pass,
   which confirmed "who are enthroned above the cherubim" is the current live reading, matching
   `medium`; the text and recall stem above are corrected to that reading so both tiers now agree,
   and the "(WEB, trimmed)" label is added since the full verse begins "Hezekiah prayed before
   Yahweh, and said," and continues past "of all the kingdoms of the earth" into "You have made
   heaven and earth." Verbatim text also inlined per review §6.8, previously cited only by
   cross-reference. **Note for the calling session:** the review (§6.4) separately flags that
   ebible.org and other live WEB sources disagree on this verse across printings, and that the
   project has no formally pinned WEB edition/printing date in `MEMORY.md` beyond the translation
   itself (Open Decision #1) — that pinning decision is a product-owner call above this brief's scope
   and is not resolved here; this fix only makes the two already-drafted briefs agree with each other
   and with the currently-live text.)*
7. **2 Kings 19:1** (WEB, new): "When King Hezekiah heard it, he tore his clothes, covered himself
   with sackcloth, and went into Yahweh's house." — recall: "When King Hezekiah heard it, he tore
   his clothes, covered himself with ___, and went into Yahweh's house." → **sackcloth**.
8. **2 Kings 19:14** (WEB, new): "Hezekiah received the letter from the hand of the messengers and
   read it. Then Hezekiah went up to Yahweh's house, and spread it before Yahweh." — recall:
   "Hezekiah received the letter... and read it. Then Hezekiah went up to Yahweh's house, and ___ it
   before Yahweh." → **spread**.

**Scene 4 — Josiah's Reforms and the Rediscovery of the Law**

9. **2 Kings 22:19** (WEB, new): "because your heart was tender, and you humbled yourself before
   Yahweh when you heard what I spoke against this place and against its inhabitants, that they
   should become a desolation and a curse, and have torn your clothes and wept before me, I also
   have heard you,' says Yahweh." — recall: "...because your heart was ___, and you humbled yourself
   before Yahweh when you heard what I spoke against this place..." → **tender**.
10. **2 Kings 23:3** (WEB, already-approved verse, trimmed, different clause than any prior use):
    "The king stood by the pillar and made a covenant before Yahweh to walk after Yahweh and to keep
    his commandments, his testimonies, and his statutes with all his heart and all his soul, to
    confirm the words of this covenant that were written in this book; and all the people agreed to
    the covenant." — recall: "...to walk after Yahweh and to keep his commandments, his testimonies,
    and his statutes with all his heart and all his ___..." → **soul**. *(Verbatim text inlined per
    review §6.8.)*

**Scene 5 — The Fall of Jerusalem and the Babylonian Exile**

11. **2 Kings 25:1** (WEB, new) — *displayed with a scene label below, per review §6.7/§4.5: "his
    reign" as printed grammatically sits beside "Nebuchadnezzar king of Babylon" later in the same
    sentence, but every commentator consulted confirms the antecedent is Zedekiah's reign, not
    Nebuchadnezzar's (this was Zedekiah's 9th year; Nebuchadnezzar's 19th, per 25:8) — the review
    found the undisambiguated stem could quietly teach players the wrong association even though the
    answer key, "ninth," is unaffected either way. The verbatim WEB text itself is unchanged; the
    scene label sits outside the quotation.* **Scene: the siege of Jerusalem begins, in King
    Zedekiah's reign.** "In the ninth year of his reign, in the tenth month, in the tenth day of the
    month, Nebuchadnezzar king of Babylon came, he and all his army, against Jerusalem, and encamped
    against it; and they built forts against it around it." — recall: "In the ___ year
    of his reign, in the tenth month, in the tenth day of the month, Nebuchadnezzar king of Babylon
    came... against Jerusalem." → **ninth**.
12. **2 Kings 25:29** (WEB, already-approved verse, trimmed, different clause than any prior use):
    "...and changed his prison garments. Jehoiachin ate bread before him continually all the days of
    his life." — recall: "...and changed his prison garments. Jehoiachin ate bread before him
    continually all the days of his ___." → **life**. *(Verbatim text inlined per review §6.8;
    leading ellipsis retained since the verse's preceding clause, about Jehoiachin's release from
    prison, is already displayed in the approved `medium` brief and not repeated here — WEB's own
    text continues past "his life" with a semicolon into further detail about his daily allowance,
    not included in this trim.)*

### Boss (4)

13. **Boss sequence — reused verbatim from `medium`/`easy`**: order the book's five scenes (Elijah's
    ascension → fall of Israel → Hezekiah's siege → Josiah's reforms → fall of Jerusalem).
14. **Boss quotation-order — reused verbatim from `medium`/`easy`**: given three quotations
    (2 Kings 2:9, 19:19, 22:8), place them in order and match each to its reference.
15. **Boss MC — reused verbatim from `medium`/`easy`**: "According to 2 Kings 22:11, what did Josiah
    do when he heard the words of the book of the law?" → tore his clothes.
16. **Boss recall — new**: **2 Kings 25:11** (WEB, new): "Nebuzaradan the captain of the guard
    carried away captive the rest of the people who were left in the city and those who had deserted
    to the king of Babylon—all the rest of the multitude." — recall: "Nebuzaradan the captain of the
    guard carried away ___ the rest of the people who were left in the city..." → **captive**.

## Contested Territory

Everything already flagged in `docs/content/2-kings.md` applies unchanged, including the Sensitivity
note above.

**New for this tier — reviewed against live cross-tradition sources in
`docs/reviews/2-kings-hard-review.md` §4, bounding confirmed to hold in every case:**

- **2 Kings 17:18 (item 4) and 17:7 (item 5)**: both narrate the same stated national judgment as
  17:23 (already bounded at `medium`). Recall-only, grades the stated word, never a position on
  whether/how national calamity generally signals divine judgment. **Structural rule, added per
  review §6.5/§4.1: no item in any tier may ask "which tribe was left" as a multiple-choice
  question.** Every mainstream commentator consulted glosses "the tribe of Judah only" (17:18) as
  meaning the kingdom of Judah, not one literal tribe (Matthew Henry notes parts of Benjamin, Simeon,
  and Levi also remained; the Cambridge Bible: "By the 'tribe of Judah' is meant the kingdom") — a
  factually contested key that an MC framing would expose. Item 4's typed recall of the text's own
  word ("Judah") is unaffected and remains safe.
- **2 Kings 25:11 (item 16, boss)**: see the Sensitivity note above — this verse (deportation) was
  deliberately selected over the nearby, more graphic execution narrative at 25:18-21, which is not
  selected as challenge-ready content anywhere in this brief and should not be added by a future
  authoring pass without review, on the same footing as the already-excluded 25:6-7.
- **2 Kings 2:10, 2:12, 2:13 (items 1-3)**: narrative dialogue and action within the already-bounded
  Elijah/Elisha succession scene (no NT typology). No new ground. **Structural rule, added per review
  §6.5/§4.2: no challenge in any tier may ask what "the chariots of Israel and its horsemen" (2:12)
  means or whom it refers to** — display-only phrase, never the graded subject or an MC stem. Rashi
  reads this phrase as referring to Elijah himself (his intercession being worth more to the nation
  than an army), a substantively different referent from the plain-reading assumption most players
  would make, and a live reading in a mainstream tradition. Item 2 grades only the word "Israel,"
  which is identical under every reading, so the recall-only bounding is unaffected.
- **2 Kings 19:1, 19:14, 19:15 (items 6-8)**: Hezekiah's prayer scene, already bounded at `medium`
  via 19:15/19:19. No new ground — these items narrate Hezekiah's actions (tearing clothes, spreading
  the letter), not a theological claim.
- **2 Kings 22:19, 23:3 (items 9-10)**: Josiah's reform scene, already bounded at `medium`. No new
  ground for 22:19/23:3 themselves. *(New bullet added per review §6.6/§4.4 — Huldah's oracle
  continues past the verse this brief uses (22:19) into 22:20, promising Josiah he will be "gathered
  to your grave in peace" — yet 23:29 narrates his death in battle at Megiddo. Classic commentators
  (Barnes: "a verbal contradiction… but not in real opposition to its spirit"; the Pulpit Commentary:
  "a seeming contradiction") offer varying resolutions (timing, spiritual state, manner of burial vs.
  death) — unambiguously interpretive territory.)* **Structural rule: 22:20 is not challenge-ready
  content in any tier, and no item may ask how or whether Huldah's "in peace" promise was fulfilled.**
  Item 9 stops at 22:19 and grades "tender," which is unaffected.
- **2 Kings 25:1 (item 11)**: a chronological/narrative detail (the siege's start date) with no known
  cross-tradition dispute — confirmed via commentary consensus that the reign is Zedekiah's (see item
  11's scene-label fix, review §6.7).

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required/
      recommended fixes applied above (see `docs/reviews/2-kings-hard-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/2-kings-hard-verbatim-qa.md` (item 6's corrected WEB-edition reading specifically
      re-checked)
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, flagged bounding
- [x] Sensitivity note (25:6-7, 6:26-29, 2:23-24 excluded; 19:35 trimmed; 25:18-21 not introduced)
      carried forward, per the assignment's inherited instructions
