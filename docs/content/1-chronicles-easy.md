# Content Brief — 1 Chronicles, Easy Tier (World 13)

Status: **approved-with-changes** — theological review complete, see
docs/reviews/1-chronicles-easy-review.md. All required fixes applied below.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/1-chronicles-easy-verbatim-qa.md`) — all six
challenge-ready verses independently re-checked against a live WEB source not used as the primary
drafting reference; no discrepancies found. **Eligible for ingestion.**

Scaling the difficulty-mode pipeline (piloted on Genesis, see `docs/content/genesis-easy.md`) to
1 Chronicles. Reuses the same 4 pivotal scenes already approved in `docs/content/1-chronicles.md`
(no new scenes), so the existing Contested Territory analysis for those scenes still applies and is
inherited below.

Translation: World English Bible (WEB) — `ebible.org/web` / BibleGateway `version=WEB` (the "Yahweh"
rendering), throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1. *(Edition pinned explicitly
per review §2: `ebible.org`'s `engwebp` path renders the divine name "the LORD" instead of "Yahweh"
on these same chapters — both are published as "WEB," so bare "WEB" is ambiguous. This brief's text
matches the `ebible.org/web` / BibleGateway edition throughout.)* Every verse used in this tier is
already quoted verbatim in the approved `docs/content/1-chronicles.md` (its "challenge-ready verses"
lists per scene) — no new WebFetch was required for the initial draft, per the assignment's
instruction that already-approved verse text need not be refetched; the theological review and this
brief's own verbatim QA pass (`docs/qa/1-chronicles-easy-verbatim-qa.md`) each independently
re-verified all six against live sources anyway, per standing project practice that a reuse claim is
not itself a source.

## A note on this tier's thinness — read before the items below

**1 Chronicles' medium tier is deliberately thin — 6 items (4 regular + 2 boss), against other MVP
books' 12-16 — per `docs/CANON_STRUCTURE.md` §4's "low challenge-density fit" guidance for this
book's genealogy-heavy, narrowly-scoped material** (see `docs/content/1-chronicles.md`'s own scope
note). **This tier matches that count exactly: 6 items (4 regular + 2 boss). It is not padded up to
resemble a richer book's tier.** The genealogy scene (chapters 1-9) keeps the same restriction the
medium brief established: it appears only as a single, low-stakes recall item, never built into a
multiple-choice, sequence, or boss-battle item — that restriction applies at every difficulty tier,
not just medium, and is honored below.

## Design intent for this tier

Draws the most iconic, broadly-recognizable facts from 1 Chronicles's 4 scenes and favors
multiple-choice recognition over typed recall, so a first-time player with no prior Bible knowledge
can succeed. It does not simplify or paraphrase verse text.

## Pivotal Scenes — reused from `docs/content/1-chronicles.md`, no new scenes added

Same 4 scenes: The Genealogies (1 Chronicles 1-9, light touch, minimal challenge density), David's
Census and the Altar at Ornan's Threshing Floor (1 Chronicles 21), David's Preparations for the
Temple (1 Chronicles 22), David's Charge to Solomon and the People's Offering (1 Chronicles 28-29).

## Challenge Items (6: 4 regular + 2 boss)

### Regular (4)

**Scene 1 — The Genealogies (recall-only, per the inherited restriction)**

1. **1 Chronicles 1:1** (WEB, already-approved verse, reused as-is; new blank than `medium`'s):
   "Adam, Seth, Enosh," — Prompt: **"Fill in the missing name: the third name in 1 Chronicles'
   opening genealogy."** — recall: "Adam, Seth, ___," → **Enosh**. *(Medium's own item blanks "Seth";
   this tier blanks the third name instead, so the item is genuinely new despite reusing the same
   three-word verse. Recall-only, per the genealogy scene's structural restriction — never
   multiple-choice, sequence, or boss content, at any tier. Prompt added per review §7.3/§6.1 — the
   original draft supplied a blank template and answer but no question prompt, which the ingest
   pipeline requires.)*

**Scene 2 — David's Census and the Altar at Ornan's Threshing Floor**

2. **1 Chronicles 21:1** (WEB, already-approved verse, new format): "Satan stood up against Israel,
   and moved David to take a census of Israel." — MC: **"According to 1 Chronicles 21:1, what was
   David moved to do?"** Options: Take a census of Israel / Attack the Philistines / Build an
   altar / Flee to Ornan's threshing floor. Correct: Take a census of Israel. *(Stem revised per
   review §7.1 — required/blocking. The original stem named "Satan" as an asserted premise in the
   question itself, promoting a contested agent-identity rendering (see Contested Territory below)
   from display-only verse text into a graded question stem; medium's own approved item uses the
   same agentless construction this now matches. The displayed verse still shows "Satan" — only the
   question wording changed.)*
3. **1 Chronicles 21:26** (WEB, already-approved verse — listed as challenge-ready in the medium
   brief but never used as a standalone item there; new format): "David built an altar to Yahweh
   there, and offered burnt offerings and peace offerings, and called on Yahweh; and he answered him
   from the sky by fire on the altar of burnt offering." — MC: **"According to 1 Chronicles 21:26,
   how did Yahweh answer David after he built the altar and offered sacrifices?"** Options: By fire
   from the sky on the altar / By a voice from heaven / By sending rain / By a vision in a dream.
   Correct: By fire from the sky on the altar.

**Scene 4 — David's Charge to Solomon and the People's Offering**

4. **1 Chronicles 28:20** (WEB, trimmed — already-approved verse, new format): "Be strong and
   courageous, and do it. Don't be afraid, nor be dismayed, for Yahweh God, even my God, is with
   you." — MC: **"According to 1 Chronicles 28:20, what did David tell Solomon to be, in charging him
   to build the temple?"** Options: Strong and courageous / Wealthy and wise / Patient and humble /
   Famous and powerful. Correct: Strong and courageous. *(Re-tagged "(WEB, trimmed)" per review
   §7.2 — required. The full verse opens "David said to Solomon his son," and closes "He will not
   fail you nor forsake you, until all the work for the service of Yahweh's house is finished.";
   `docs/content/1-chronicles.md` line 112 carries this same quotation correctly labelled "(WEB,
   trimmed)" and the label was lost when this item was transcribed into this tier. The displayed
   words themselves were always verbatim — this is a labelling fix, not a text correction.)*

### Boss (2)

5. **Boss — reused verbatim from `medium`**: **1 Chronicles 22:7-8** (WEB, trimmed): "As for me, it
   was in my heart to build a house to the name of Yahweh my God. But Yahweh's word came to me,
   saying, 'You have shed blood abundantly and have made great wars. You shall not build a house to
   my name, because you have shed much blood on the earth in my ___.'" → **sight**. *(Re-tagged "(WEB,
   trimmed)" per review §7.4 — recommended. The narrator frame "David said to Solomon his son," is
   omitted; this gap is inherited from `medium`, where it was noted and consciously left uncorrected
   in `docs/qa/1-chronicles-verbatim-qa.md` note 1 — flagged here for the calling session's awareness
   that `medium`'s own listing at `docs/content/1-chronicles.md` line 92 still lacks this label; not
   changed there per this task's scope. Applying the label to this tier's own presentation was the
   cheap fix available now.)*
6. **Boss — new**: **1 Chronicles 22:14** (WEB, already-approved verse, trimmed — listed as
   challenge-ready in the medium brief but never used as a standalone item there): "In my affliction
   I have prepared for Yahweh's house one hundred thousand talents of gold, one million talents of
   silver, and bronze and iron without weight... I have also prepared timber and stone." — MC:
   **"According to 1 Chronicles 22:14, what did David prepare in vast quantities for the temple
   Solomon would build?"** Options: Gold, silver, bronze, iron, timber, and stone / Gold and incense
   only / Silver and cedar only / Bronze and linen. Correct: Gold, silver, bronze, iron, timber, and
   stone.

*(Item 5 is an exact reuse of one of `medium`'s two boss items, keeping the "why David couldn't
build the temple" beat consistent across tiers; item 6 draws on a verse the medium brief already
listed as challenge-ready but never built into its own item — free, already-reviewed content, adding
one genuinely new boss item without introducing anything requiring a fresh review pass. `Medium`'s
other boss item, the four-quotation sequence, is reserved for the `hard` tier — see
`docs/content/1-chronicles-hard.md` — so between the two new tiers both of `medium`'s boss items get
reused exactly once each, not duplicated. Dangling reference to "the `hard` tier below" fixed per
review §7.6 — recommended; there is no hard tier further down this document.)*

## Contested Territory

Everything already flagged in `docs/content/1-chronicles.md` applies unchanged: the 1 Chronicles
21:1 vs. 2 Samuel 24:1 divergence over who incited David's census (item 2 tests only this book's own
21:1 wording, never asks a player to reconcile the two accounts or take a position on the
divine-sovereignty/Satan's-agency question), the 22:7-8/28:3 "man of war" restriction on David
building the temple (recalled as the text's own stated reason, never evaluated as just or unjust),
and the genealogies' scope decision (item 1 is a bare name sequence with no claim about historical
completeness attached, and stays recall-only per the inherited structural rule).

**New for this tier:** no new contested ground for items 3 (21:26, the altar answered by fire), 4
(28:20, David's charge to be strong and courageous), and 6 (22:14, the materials gathered) — all
plain narrative description with no live cross-tradition disagreement identified. None require a
denominational position or moral judgment.

**Forward-looking structural rules added per review §7.5 (recommended):**

- **1 Chronicles 21:1** — the identity/nature of the agent named in the text ("Satan" as a proper
  name vs. "an adversary" as a common noun) is a live translation-choice question the Hebrew's lack
  of a definite article leaves open. It is display-only: it may never itself be a graded token, and
  it may never be named inside a question stem, at any tier. Grading *what David was moved to do* is
  fine — see item 2's stem fix above, which this rule generalises so the fix cannot regress.
- **1 Chronicles 22:14** — the quantities ("one hundred thousand talents of gold," "one million
  talents of silver") are display-only; never a graded token, never an MC subject, at any tier.
  Grading *which materials* David gathered is fine and is exactly what item 6 does.
- **1 Chronicles 21:18-26** — no challenge may grade the identification of Ornan's threshing floor
  with Mount Moriah or the Genesis 22 sacrifice site (this identification is made explicitly at
  2 Chronicles 3:1, not in 1 Chronicles itself, and is interpretive terrain beyond what this book's
  text states).

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, all required/
      recommended fixes applied above (see `docs/reviews/1-chronicles-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/1-chronicles-easy-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 4 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, inherited bounding
- [x] Item/boss count (6: 4 regular + 2 boss) matches `medium`'s own count exactly, per the
      assignment's instruction — verified directly against `docs/ingest/1-2-kings-1-2-chronicles.sql`
- [x] Genealogy scene stays recall-only, never built into multiple-choice, sequence, or boss content
- [x] This tier's thinness is deliberate, per `docs/CANON_STRUCTURE.md` §4 — not padded to match
      other books' tiers, stated explicitly per the assignment's instruction
