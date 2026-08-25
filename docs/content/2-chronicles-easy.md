# Content Brief — 2 Chronicles, Easy Tier (World 14)

Status: **approved-with-changes** — theological review complete, see
docs/reviews/2-chronicles-easy-review.md. All required fixes applied below.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/2-chronicles-easy-verbatim-qa.md`) — every
piece of text changed, restored, or newly inlined while applying the review's fixes independently
re-checked against BibleGateway (WEB), with item 12 (29:5) additionally cross-checked against
ebible.org. No discrepancies found. Both required gates are now clear. **Eligible for ingestion.**

Scaling the difficulty-mode pipeline (piloted on Genesis, see `docs/content/genesis-easy.md`) to
2 Chronicles. Reuses the same 4 pivotal scenes already approved in `docs/content/2-chronicles.md`
(no new scenes), so the existing Contested Territory analysis for those scenes still applies and is
inherited below — **including the entire exclusion of 2 Chronicles 7:14 and 36:17 from
challenge-ready content, carried forward unchanged and not revisited by this brief.**

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.
Verses already quoted verbatim in the approved `docs/content/2-chronicles.md` are reused as-is, not
refetched. All newly-introduced verse text below was fetched fresh from ebible.org on 2026-08-19.

## Design intent for this tier

Draws the most iconic, broadly-recognizable facts from 2 Chronicles's 4 scenes and favors
multiple-choice recognition over typed recall, so a first-time player with no prior Bible knowledge
can succeed. It does not simplify or paraphrase verse text.

## Pivotal Scenes — reused from `docs/content/2-chronicles.md`, no new scenes added

Same 4 scenes: Solomon's Temple Dedication (2 Chronicles 5, 7), Hezekiah's Reforms: Cleansing and
Reopening the Temple (2 Chronicles 29), Josiah's Reforms: The Great Passover (2 Chronicles 34-35),
The Fall of Judah and Cyrus's Decree (2 Chronicles 36).

## Challenge Items (12: 8 regular + 4 boss)

### Regular (8)

**Scene 1 — Solomon's Temple Dedication**

1. **2 Chronicles 5:13-14** (WEB, already-approved verse, new format; text corrected per review §6.1):
   "...when the trumpeters and singers were as one, to make one sound to be heard in praising and
   thanking Yahweh... then the house was filled with a cloud, even Yahweh's house, so that the priests
   could not stand to minister by reason of the cloud; for Yahweh's glory filled God's house." — MC:
   **"According to 2 Chronicles 5:13-14, what filled Yahweh's house when the trumpeters and singers
   made one sound of praise?"** Options: A cloud, filled with Yahweh's glory / Fire from heaven / Total
   darkness / A great earthquake. Correct: A cloud, filled with Yahweh's glory. *(Restored WEB's
   "when... then..." construction, which an earlier draft silently capitalized/altered to "The... the...",
   presenting text in quotation marks that did not actually appear in WEB — review §6.1. The identical
   defect was inherited by the already-shipped `medium` tier (`docs/content/2-chronicles.md`, since
   independently corrected there too) and its prepared ingest SQL; per the calling session, the live
   production database has already been corrected. Not duplicated here — this brief does not touch
   `docs/content/2-chronicles.md` or any SQL/database.)*
2. **2 Chronicles 7:1** (WEB, already-approved verse, new format): "Now when Solomon had finished
   praying, fire came down from heaven and consumed the burnt offering and the sacrifices; and
   Yahweh's glory filled the house." — MC: **"According to 2 Chronicles 7:1, what happened right
   after Solomon finished praying at the temple dedication?"** Options: Fire came down from heaven and
   consumed the sacrifice / The ark disappeared from the temple / An earthquake shook Jerusalem / The
   priests began a new song. Correct: Fire came down from heaven and consumed the sacrifice.

**Scene 2 — Hezekiah's Reforms**

3. **2 Chronicles 29:1-2** (WEB, already-approved verse, trimmed — listed as challenge-ready in the
   medium brief but never used as a standalone item there): "Hezekiah began to reign when he was
   twenty-five years old, and he reigned twenty-nine years in Jerusalem... He did that which was
   right in Yahweh's eyes, according to all that David his father had done." — MC: **"According to
   2 Chronicles 29:1-2, what did Hezekiah do as king, following his father David's example?"**
   Options: He did what was right in Yahweh's eyes / He built a new palace / He raised a large army /
   He made treaties with Egypt. Correct: He did what was right in Yahweh's eyes.
4. **2 Chronicles 29:3** (WEB, already-approved verse, new format): "In the first year of his reign,
   in the first month, he opened the doors of Yahweh's house and repaired them." — MC: **"According
   to 2 Chronicles 29:3, what did Hezekiah do in the first month of the first year of his reign?"**
   Options: He opened the doors of Yahweh's house and repaired them / He tore down the temple / He
   appointed new priests / He declared war on Assyria. Correct: He opened the doors of Yahweh's house
   and repaired them.

**Scene 3 — Josiah's Reforms: The Great Passover**

5. **2 Chronicles 34:15** (WEB, already-approved verse, new format): "Hilkiah answered Shaphan the
   scribe, 'I have found the book of the law in Yahweh's house.' So Hilkiah delivered the book to
   Shaphan." — MC: **"According to 2 Chronicles 34:15, what did Hilkiah tell Shaphan the scribe he
   had found in Yahweh's house?"** Options: The book of the law / A hidden treasure / A golden ark /
   An ancient altar. Correct: The book of the law.
6. **2 Chronicles 35:1** (WEB, already-approved verse, new format): "Josiah kept a Passover to
   Yahweh in Jerusalem. They killed the Passover on the fourteenth day of the first month." — MC:
   **"According to 2 Chronicles 35:1, what did Josiah keep in Jerusalem?"** Options: A Passover to
   Yahweh / A coronation feast / A harvest festival / A day of mourning. Correct: A Passover to
   Yahweh.

**Scene 4 — The Fall of Judah and Cyrus's Decree**

7. **2 Chronicles 36:19-20** (WEB, already-approved verse, trimmed): "They burned God's
   house, broke down the wall of Jerusalem, burned all its palaces with fire, and destroyed all of
   its valuable vessels. He carried those who had escaped from the sword away to Babylon..." — MC:
   **"According to 2 Chronicles 36:19-20, what happened to Jerusalem and its people?"**
   Options: Burned God's house and the city, and carried the survivors to Babylon / Burned only the
   palace / Made Jerusalem a Babylonian province without violence / Rebuilt the temple. Correct:
   Burned God's house and the city, and carried the survivors to Babylon. *(Stem reworded per review
   §6.4 — the displayed text's "They"/"He" take their antecedent from the excluded 36:17/18, off-screen
   here, so the original stem asked the player to supply an agent ("the Babylonians") the shown text
   never names. Closing ellipsis added since v20 continues past "away to Babylon" — review §6.5.)*
8. **2 Chronicles 36:23** (WEB, already-approved verse, full verse — previously trimmed in a way that
   deleted the clause supplying the grammatical subject of "let him go up"; restored per review §6.2):
   "Cyrus king of Persia says, 'Yahweh, the God of heaven, has given all the kingdoms of the earth to
   me; and he has commanded me to build him a house in Jerusalem, which is in Judah. Whoever there is
   among you of all his people, Yahweh his God be with him, and let him go up.'" — MC:
   **"According to 2 Chronicles 36:23, what did Cyrus king of Persia's decree permit?"** Options: Any
   of Yahweh's people among them could go up to Jerusalem / The exiles must remain in Babylon /
   The temple would be rebuilt in Persia / Judah's kings would be restored to power. Correct: Any of
   Yahweh's people among them could go up to Jerusalem. *(Correct answer reworded per review §6.2 —
   the verse itself does not say the exiles would rebuild the house; that clause belongs to Ezra 1:3,
   a different book outside this MVP's scope. 2 Chronicles 36:23 only says "let him go up," and now
   that the full verse is restored, the displayed text supports both who is permitted to go and that
   the decree's building charge falls on Cyrus, "me," not the exiles.)*

### Boss (4)

9. **Boss MC — reused verbatim from `medium`, verse text inlined and the §6.2 fix applied to its
   36:23 portion**: **2 Chronicles 36:22-23** (WEB, trimmed): "In the first year of Cyrus king of
   Persia... Yahweh stirred up the spirit of Cyrus king of Persia, so that he made a proclamation
   throughout all his kingdom, and put it also in writing." + "Cyrus king of Persia says, 'Yahweh, the
   God of heaven, has given all the kingdoms of the earth to me; and he has commanded me to build him
   a house in Jerusalem, which is in Judah. Whoever there is among you of all his people, Yahweh his
   God be with him, and let him go up.'" — MC: **"According to 2 Chronicles 36:22-23, which foreign
   king does the text say Yahweh 'stirred up' to let the exiles return?"** → Cyrus of Persia. *(Text
   pasted inline per review §6.6, replacing the prior cross-reference to `medium`; the 36:23 portion
   now carries the same restored clause as item 8, per the review's explicit note that this inherited
   block needed the §6.2 fix applied here too.)*
10. **Boss sequence — reused verbatim from `medium`, verse text inlined and the §6.2 fix applied to
    its 36:23 portion**: order the book's four scenes, each anchored to its verse — "Solomon's Temple
    Dedication" (2 Chronicles 7:1, WEB: "Now when Solomon had finished praying, fire came down from
    heaven and consumed the burnt offering and the sacrifices; and Yahweh's glory filled the house.")
    → "Hezekiah's Temple Cleansing" (2 Chronicles 29:3, WEB: "In the first year of his reign, in the
    first month, he opened the doors of Yahweh's house and repaired them.") → "Josiah's Passover"
    (2 Chronicles 35:1, WEB: "Josiah kept a Passover to Yahweh in Jerusalem. They killed the Passover
    on the fourteenth day of the first month.") → "The Fall of Judah and Cyrus's Decree" (2 Chronicles
    36:23, WEB, full verse per the §6.2 fix: "Cyrus king of Persia says, 'Yahweh, the God of heaven,
    has given all the kingdoms of the earth to me; and he has commanded me to build him a house in
    Jerusalem, which is in Judah. Whoever there is among you of all his people, Yahweh his God be with
    him, and let him go up.'"). *(Text pasted inline per review §6.6, matching
    `docs/ingest/1-2-kings-1-2-chronicles.sql`'s sequence-item structure; not itself a database edit —
    this brief only mirrors that file's existing shape for review purposes.)*
11. **Boss MC — new**: **2 Chronicles 7:2** (WEB, new): "The priests could not enter into Yahweh's
    house, because Yahweh's glory filled Yahweh's house." — MC: **"According to 2 Chronicles 7:2, why
    could the priests not enter Yahweh's house?"** Options: Because Yahweh's glory filled the house /
    Because the doors were sealed shut / Because the ark hadn't yet arrived / Because Solomon forbade
    it. Correct: Because Yahweh's glory filled the house.
12. **Boss MC — new**: **2 Chronicles 29:5** (WEB, trimmed): "...Listen to me, you Levites! Now
    sanctify yourselves, and sanctify the house of Yahweh, the God of your fathers, and carry the
    filthiness out of the holy place." — MC: **"According to 2 Chronicles 29:5, what did
    Hezekiah command the Levites to do, besides sanctifying themselves?"** Options: Sanctify the house
    of Yahweh and carry out its filthiness / Rebuild the outer wall / Appoint new judges / Compose new
    psalms. Correct: Sanctify the house of Yahweh and carry out its filthiness. *(Re-tagged "(WEB,
    trimmed)" with a leading ellipsis per review §6.3 — the full verse opens "and said to them,
    'Listen to me, you Levites!...'"; the words shown are verbatim, but the item was presenting a
    partial verse as if it were the whole one.)*

*(Items 9-10 are exact reuses of two of `medium`'s four boss items — the book's most dramatic
capstone beats — kept consistent across tiers. Items 11-12 are genuinely new, one drawn from each of
two scenes (1 and 2) that `medium`'s boss set didn't otherwise represent, so this tier's boss battle
touches all four scenes. `Medium`'s other two boss items (7:3 and 35:18, both recall-format) are
reserved for the `hard` tier (`docs/content/2-chronicles-hard.md`), so between the two new tiers all
four of `medium`'s boss items get reused exactly once each, not duplicated.)*

## Contested Territory

Everything already flagged in `docs/content/2-chronicles.md` applies unchanged, **including the full
exclusion of 2 Chronicles 7:14 (the "if my people" civil-religion verse) and 36:17 (graphic conquest
violence) from challenge-ready content — neither is selected anywhere in this brief**, the
36:22-23-vs-2-Kings-25:27-30 two-endings note (item 9 reuses the already-bounded comparison), the
36:23 Cyrus-as-instrument-of-Yahweh bounding (items 8 and 9 test only what this book's own text
states, no cross-book typological reading), and the Hezekiah's/Josiah's-reforms
destruction-of-high-places note (this tier's chosen verses, like `medium`'s, stay on the positive
restoration acts — reopening the temple, keeping the Passover — not the accompanying destruction).

**New for this tier:** no new contested ground. Items 3 (29:1-2, Hezekiah's righteous reign), 11
(7:2, why the priests couldn't enter), and 12 (29:5, the Levites' commission to cleanse) are plain
narrative description with no live cross-tradition disagreement identified. None require a
denominational position or moral judgment.

**Structural rules recorded per review §2.1 and §4.4 (recommended, applied as forward-looking
guards):**

- **Item 3 (29:1-2) and the Chronicler's evaluative formula.** The Chronicler's own judgment ("did
  what was right / evil in Yahweh's eyes") may stay *quoted* — this item grades what the text says
  about Hezekiah — but must never be *applied* by a challenge item. No item in any tier may ask
  something of the shape "Was Hezekiah a good king?" or "Why did Judah fall?", even though the raw
  words for such a question exist in the text.
- **Item 3 (29:1-2) and "David his father."** "David his father" is the text's own idiom for an
  ancestor (Hezekiah is David's descendant, not his son). Since the graded answer does not depend on
  the relationship, this is not a defect, but no item may grade *how* Hezekiah was related to David.
- **Item 2 (7:1) and the fire-from-heaven motif.** The NABRE's footnote at 7:1 cross-references 2
  Maccabees 2:10 — a book in the Catholic and Orthodox canons but not the Protestant one. No item here
  touches it, and the fire-from-heaven motif at 7:1 must not be extended into a cross-book item, since
  the natural cross-reference sits on a canon boundary.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required/
      recommended fixes applied above (see `docs/reviews/2-chronicles-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/2-chronicles-easy-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 4 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, inherited bounding
- [x] Item/boss count (12: 8 regular + 4 boss) matches `medium`'s own count exactly, per the
      assignment's instruction — verified directly against
      `docs/ingest/1-2-kings-1-2-chronicles.sql`
- [x] 2 Chronicles 7:14 and 36:17 excluded entirely — not selected as challenge-ready content
      anywhere in this brief
