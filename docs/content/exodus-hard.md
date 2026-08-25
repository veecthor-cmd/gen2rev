# Content Brief — Exodus, Hard Tier (World 2)

Status: **approved-with-changes** — theological review complete, see
`docs/reviews/exodus-hard-review.md`. The blocking fix (boss item 12's spliced composite quotation)
and the required attribution fix (item 8) are applied below, along with recommended strengthenings.

**Verbatim-text QA: `pass`** (see `docs/qa/exodus-hard-verbatim-qa.md`) — all newly-fetched verses
re-checked, with particular attention to boss item 12's corrected text and every multi-verse cut's
internal verse boundary, per the review's explicit instruction. Both required gates are now clear.
**Eligible for ingestion.**

Second half of the Exodus tier-scaling pass (see `docs/content/exodus-easy.md` for the shared design
rationale). Reuses the same 5 pivotal scenes already approved in `docs/content/exodus.md` — no new
scenes — but selects less commonly memorized, more precise verses and skews toward typed recall over
multiple choice.

Translation: World English Bible (WEB) throughout. **Every verse newly introduced by this tier (all
8 regular items plus one boss item) was fetched fresh from ebible.org on 2026-08-18** — none of these
verses appear in `docs/content/exodus.md`'s "Challenge-ready verses" lists, so none of them carry
prior verbatim-QA coverage. Three boss items are exact reuses from `medium` and carry that brief's
existing (partial) verification. Canonical verification source: `https://ebible.org/web/` (Yahweh
rendering), per `docs/reviews/exodus-easy-review.md` §1.1.

---

## Design intent for this tier

Per the Genesis pilot's design rule: "hard... needs very deep scripture knowledge." This tier draws
on verses that are theologically or narratively significant but less likely to be immediately
recognized — secondary details, exact phrasing — and requires typed recall (no multiple-choice
scaffolding) wherever the format allows. Same guardrails as every other tier: verbatim WEB text
only, narrative fact only, no doctrinal position required.

## Pivotal Scenes — reused from `docs/content/exodus.md`, no new scenes added

Same 5 scenes as `medium` and `easy`: Moses' Call at the Burning Bush (Exodus 3), The Plagues and the
Passover (Exodus 7-12), The Crossing of the Red Sea (Exodus 14), Sinai: Covenant and the Ten
Commandments (Exodus 19-20), The Golden Calf (Exodus 32).

## Challenge Items (12: 8 regular + 4 boss)

Matches `medium`'s own shape (12 items, 4 boss — verified against `docs/ingest/exodus-leviticus.sql`,
same as `easy`).

### Regular (8)

1. **Ex 3:2** (WEB, new): "Yahweh's angel appeared to him in a flame of fire out of the middle of a
   bush. He looked, and behold, the bush burned with fire, and the bush was not consumed." — recall:
   "...He looked, and behold, the bush burned with fire, and the bush was not ___." → **consumed**.
   *(See Contested Territory below on "Yahweh's angel.")*
2. **Ex 3:11** (WEB, new): "Moses said to God, 'Who am I, that I should go to Pharaoh, and that I
   should bring the children of Israel out of Egypt?'" — recall: "Moses said to God, 'Who am I, that
   I should go to ___, and that I should bring the children of Israel out of Egypt?'" → **Pharaoh**.
3. **Ex 12:8** (WEB, new): "They shall eat the meat in that night, roasted with fire, with unleavened
   bread. They shall eat it with bitter herbs." — recall: "They shall eat the meat in that night,
   roasted with fire, with unleavened bread. They shall eat it with bitter ___." → **herbs**.
4. **Ex 12:11** (WEB, new): "This is how you shall eat it: with your belt on your waist, your
   sandals on your feet, and your staff in your hand; and you shall eat it in haste: it is Yahweh's
   Passover." — recall: "...and you shall eat it in ___: it is Yahweh's Passover." → **haste**.
5. **Ex 14:19** (WEB, new; citation narrowed per review §7.3 — the graded blank falls wholly within
   v19, so the citation of record is Ex 14:19, though v20 is shown as honest context; full text of
   v19-20: "The angel of God, who went before the camp of Israel, moved and went behind them; and the
   pillar of cloud moved from before them, and stood behind them. It came between the camp of Egypt
   and the camp of Israel. There was the cloud and the darkness, yet it gave light by night. One
   didn't come near the other all night."): "...and the pillar of cloud moved from before them, and
   stood behind them." — recall: "...and the pillar of cloud moved from before them, and stood ___
   them." → **behind**. *(See Contested Territory below on "the angel of God.")*
6. **Ex 20:8** (WEB, new): "Remember the Sabbath day, to keep it holy." — recall: "Remember the
   Sabbath day, to keep it ___." → **holy**. *(Displays only this verse's own wording; not numbered
   as a specific commandment — see Contested Territory below on the inherited numbering-neutrality
   rule, which this item is the first in this book to actually engage since it's the first item built
   from a commandment other than 20:2-3/20:12-15.)*
7. **Ex 19:16** (WEB, new): "On the third day, when it was morning, there were thunders and
   lightnings, and a thick cloud on the mountain, and the sound of an exceedingly loud trumpet; and
   all the people who were in the camp trembled." — recall: "...and the sound of an exceedingly loud
   trumpet; and all the people who were in the camp ___." → **trembled**.
8. **Ex 32:24** (WEB, new; trimmed for challenge use with leading ellipsis added per review §7.6,
   full text: "I said to them, 'Whoever has any gold, let them take it off.' So they gave it to me;
   and I threw it into the fire, and out came this calf."): "...So they gave it to me; and I threw it
   into the fire, and out came this calf." — stem attributed per review §7.2 (required fix — the
   prior draft's bare blank presented Aaron's excuse as unattributed first-person narration a player
   could read as what actually happened, which Ex 32:4's narration ["He received what they handed
   him, fashioned it with an engraving tool, and made it a molded calf"] contradicts): "Complete
   Aaron's explanation to Moses: 'So they gave it to me; and I threw it into the fire, and out came
   this ___.'" → **calf**. *(Aaron's own account, to Moses, of how the calf came to be — narrative
   fact only, what he says happened; never an evaluation of whether his account is truthful or how
   culpable he was. This is the first item in any tier to draw on Ex 32:22-24 specifically —
   `medium`'s Contested Territory names this passage as the site of "Aaron... later blaming the
   people" but did not select it as challenge-ready. See Contested Territory below.)*

### Boss (4)

9. **Boss recall — reused verbatim from `medium`**: "At midnight, Yahweh struck all the ___ in the
   land of Egypt, from the firstborn of Pharaoh who sat on his throne to the firstborn of the captive
   who was in the dungeon, and all the firstborn of livestock..." (Ex 12:29-30) → **firstborn**.
10. **Boss sequence — reused verbatim from `medium`**: the three Sinai quotations in order (Ex 3:14;
    19:8; 20:2-3).
11. **Boss recall — reused verbatim from `medium`**: "...he threw the ___ out of his hands, and broke
    them beneath the mountain..." (Ex 32:19-20) → **tablets**.
12. **Boss recall — new**: Ex 20:18-19 (WEB, new; **corrected per review Finding A — blocking fix**.
    The original draft dropped v18's closing sentence and butted v18's opening directly against
    v19's opening with no ellipsis and no trim label, producing a continuous-looking string that
    appears nowhere in WEB — the same defect class as the Genesis hard-tier review's Finding A.
    Restored below to the true, continuous text of vv. 18-19, per the review's preferred fix (option
    1): "All the people perceived the thunderings, the lightnings, the sound of the trumpet, and the
    mountain smoking. When the people saw it, they trembled, and stayed at a distance. They said to
    Moses, 'Speak with us yourself, and we will listen; but don't let God speak with us, lest we
    die.'" — recall: "...but don't let God speak with us, lest we ___." → **die**. *(The graded blank
    sits wholly inside v19, so the answer key was always sound; only the displayed quotation was
    defective. Note for the authoring/sequencing pass: the restored clause contains the word
    "trembled," which is item 7's graded answer [Ex 19:16] — not a correctness problem, different
    item and verse, but the two should not be placed adjacent in a player's session.)*

*(Same reasoning as `easy`: items 9-11 reuse three of `medium`'s four already-reviewed boss items so
the new-verse review surface stays bounded, while item 12 adds a genuinely new challenge angle — the
people's own reaction to Sinai, distinct from the covenant-quotation sequence already reused.)*

## Contested Territory

Everything already flagged in `docs/content/exodus.md`/`docs/reviews/exodus-review.md` applies
unchanged: the tenth-plague format restriction (honored above, boss item 9, unchanged from
`medium`'s exact form — and per review §6.3, the compliance argument is stated explicitly here rather
than left for a reader to reconstruct: items 3 [Ex 12:8] and 4 [Ex 12:11], both Passover-institution
instructions, are the items preceding boss item 9, so a player's first exposure to this beat is the
meal framing rather than the death account, satisfying the rule's purpose even though this tier does
not use 12:12-14, the verses the rule's literal text names), the hardening-of-Pharaoh's-heart
exclusion (confirmed — no hardening verse, Ex 4:21, 7:3, 8:15, 8:32, 9:12, 9:34, 10:1, 10:20, 10:27,
11:10, 14:4, 14:8, 14:17, appears anywhere in this brief), the divine-name handling (no action
needed), and the golden-calf/Aaron-culpability bounding (extended below to a new verse for the first
time).

**Ex 14 display-scope rule — added per review §7.5:** no challenge item built from Exodus 14 may
render surrounding chapter context beyond the cited verse(s), because Ex 14:17 ("I myself will
harden the hearts of the Egyptians") sits two verses from item 5's text and is under a total
exclusion from graded content. The selected text (item 5, Ex 14:19) is clean; this rule keeps a
context-rendering runtime feature (a "show the passage" affordance, a wider display window) from
reintroducing excluded material through the side door. Cross-reference from
`FRONTEND_REQUIREMENTS.md` when the scripture-display component is specified.

**New for this tier — not previously checked against live cross-tradition sources, flagged for the
theological reviewer with a proposed structural rule each:**

- **Ex 3:2 and Ex 14:19** (items 1 and 5), "**Yahweh's angel**" / "**the angel of God**." This is a
  real, live cross-tradition question this brief has not had to consider before, confirmed by the
  reviewer across four sources spanning three traditions (review §5.1): classic Protestant
  commentators near-unanimously read "the angel of the LORD" (מַלְאַךְ יְהוָה) as a *Christophany* —
  a pre-incarnate appearance of the Son (Benson, Poole, Gill, Ellicott, Keil-Delitzsch, Pulpit
  Commentary); Jewish tradition disagrees, and is itself internally divided (Ramban explicitly
  rejects Ibn Ezra's identification of the angel with God, citing the Rabbis' angel-Michael reading;
  Rashi and Ibn Ezra stay on the linguistic plane, advancing no Christological reading); Orthodox
  tradition (OrthodoxWiki) offers a third frame — the angel as the Logos/"Angel of Great Counsel,"
  the flame as God's uncreated energies, with a Theotokos parallel neither Protestant nor Jewish
  readings share; contemporary evangelical sources (GotQuestions) favor the pre-incarnate-Christ
  reading and do not present alternatives as live. Both items as written grade only a plain
  positional/descriptive word ("consumed," "behind") and neither asks about the angel's identity or
  nature. **Structural rule, confirmed and strengthened per review §5.1/§7.4: no challenge built from
  either verse (or any future "angel of the LORD"/"angel of God" verse in this book) may ask what or
  who the angel is — only what the text narrates happening. Added clause: "Yahweh's angel"/"the angel
  of God" may never itself be the blanked token, in any tier, and the verse is displayed as verbatim
  WEB text with no gloss, header, or explanatory note.** (This forecloses a future authoring pass
  writing "___'s angel appeared to him in a flame of fire" — textually valid, and precisely the wrong
  thing to foreground; same closure applied to Gen 1:26's "us/our" and Gen 1:2's "God's Spirit.")
- **Ex 32:24** (item 8), Aaron's account of the calf's making. `docs/content/exodus.md`'s Contested
  Territory already names Ex 32:22-24 as the passage where "Aaron... later blam[es] the people," and
  states the existing bounding ("what happens... never an evaluation of Aaron's guilt or character")
  — but that passage was never actually selected as challenge-ready until this item. Review §5.2
  confirmed a real divergence on Aaron's culpability (classic Christian commentators uniformly read
  Aaron as evading and culpable — Poole: he "conceals his own sin"; Pulpit Commentary: "not only a
  *suppressio veri*, but a *suggestio falsi*"; Rashi reads it markedly gentler, as Aaron genuinely not
  knowing the calf would emerge). **Structural rule, confirmed per review §5.2:** the item grades
  only the narrative fact of what Aaron says happened to the gold (it went into the fire and "out
  came this calf") — never whether his account is credible, evasive, or how it reflects on his
  culpability. The item's stem now attributes the quotation to Aaron explicitly (§7.2, applied
  above), which both satisfies the §2 "attributed in-text" requirement and reinforces this bounding —
  the item is about what Aaron *said*, which stays clear of the culpability disagreement.
- **Ex 20:8** (item 6), "Remember the Sabbath day, to keep it holy." This is the first item in any
  tier of this book built from a Ten Commandments verse other than 20:2-3 or 20:12-15 — it directly
  engages (rather than merely stating) the inherited numbering-neutrality rule from `medium`'s
  Contested Territory. Review §5.3 confirmed the divergence is real and touches this specific
  commandment: the Sabbath commandment is numbered 4th in Jewish, Orthodox, Anglican and Reformed
  numbering, and 3rd in Roman Catholic and Lutheran numbering. The item as written names no number
  and asks only for the word "holy" — identical across every numbering scheme, since the schemes
  differ on where the boundaries fall between commandments, never on this commandment's text. **No
  change** — confirmed the existing rule was actually load-bearing here, not a new rule.
- **No other new contested ground** — items 2, 3, 4, 7, and boss item 12 are plain narrative
  description/dialogue with no live cross-tradition disagreement found in a preliminary check,
  independently spot-checked by the reviewer (§5.4).

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, blocking fix (boss item
      12), required fix (item 8 attribution), and recommended strengthenings applied above (see
      `docs/reviews/exodus-hard-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/exodus-hard-verbatim-qa.md` (boss item 12's corrected text and every multi-verse cut's
      internal verse boundary specifically re-checked, per the review's explicit instruction)
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No challenge item crosses into Contested Territory without explicit, reviewed bounding — all
      four flagged items confirmed and strengthened per review §5.1–§5.3/§7.4
