# Content Brief — Habakkuk (World 35)

Status: **`approved`** — self-run theological review complete, see
`docs/reviews/habakkuk-review.md`. No changes required.

**Still blocking ingestion:** the independent verbatim-text QA pass (`QA_REQUIREMENTS.md` §3) has
not run — theological approval and verbatim-text QA are two distinct checks, both required before
this content reaches the `challenge` table (`BACKEND_REQUIREMENTS.md` §4). No
`docs/ingest/*.sql` file has been written for this book — that is a separate later phase, out of
scope for this task.

> **Verbatim-text caveat:** the verse text below was retrieved via automated web-fetch passes
> against two live WEB sources — [ebible.org](https://ebible.org/web/) and
> [biblegateway.com](https://www.biblegateway.com/) (`version=WEB`) — with every challenge-ready
> verse cross-checked against both sources independently. All checks matched character-for-
> character; see `docs/reviews/habakkuk-review.md` §1 for the full source-by-source table. This is
> still not a substitute for the independent character-for-character QA check required by
> `QA_REQUIREMENTS.md` §3. **Do not ingest into the `challenge` table
> (`BACKEND_REQUIREMENTS.md` §4) until that separate verbatim QA pass has run**, even after
> theological sign-off — sign-off and verbatim-text QA are two distinct checks per that document.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

**Scope note:** medium-tier content only, per `docs/CANON_STRUCTURE.md` §6 phasing. Easy/hard
difficulty tiers for this book are separate follow-on work, not attempted here.

---

## Setting / Era

Habakkuk prophesied shortly before the Babylonian (Chaldean) invasion of Judah, most likely late 7th
century BC (the book's own text at 1:6 names the Chaldeans as a rising power Yahweh is "raising up,"
placing it before Babylon's rise to full dominance, roughly contemporary with Jeremiah's early
ministry). Unlike most of the Minor Prophets, which are announcements from Yahweh to the people,
Habakkuk is structured as a dialogue: the prophet openly questions Yahweh (why does injustice go
unanswered? why use a nation more wicked than Judah to punish Judah?), receives an answer, and closes
with a psalm of trust. This dialogic shape gives the book more of a throughline than Nahum's single
sustained oracle, though it remains non-narrative in the sense that nothing "happens" externally —
the movement is entirely the prophet's internal wrestling and resolution.

**This brief selects 4 pivotal passages, tracking the book's own three-part structure** (complaint →
answer → resolution), consistent with `docs/CANON_STRUCTURE.md` §6's expectation that Minor Prophets
briefs stay proportionate to their source material rather than padded.

## Pivotal Passages (4)

### 1. Habakkuk 1:2-4 — The Prophet's Complaint
Habakkuk opens by asking Yahweh directly why violence and injustice persist unanswered — the book's
central tension, stated in the prophet's own words.

**Challenge-ready verses (Habakkuk 1:2-4, WEB):**
- v.2: "Yahweh, how long will I cry, and you will not hear? I cry out to you 'Violence!' and will
  you not save?"
- v.3: "Why do you show me iniquity, and look at perversity? For destruction and violence are
  before me."
- v.4: "Therefore the law is paralyzed, and justice never prevails; for the wicked surround the
  righteous; therefore justice comes out perverted."

### 2. Habakkuk 2:1-4 — "The Righteous Will Live by His Faith"
Habakkuk takes his post to watch for Yahweh's answer; Yahweh tells him to write the vision plainly
and to wait for it, closing with the book's best-known line and this world's natural anchor.

**Challenge-ready verses (Habakkuk 2:1-4, WEB):**
- v.1: "I will stand at my watch and set myself on the ramparts, and will look out to see what he
  will say to me, and what I will answer concerning my complaint."
- v.2: "Yahweh answered me, 'Write the vision, and make it plain on tablets, that he who runs may
  read it.'"
- v.3: "For the vision is yet for the appointed time, and it hurries toward the end, and won't
  prove false. Though it takes time, wait for it, because it will surely come. It won't delay."
- v.4: "Behold, his soul is puffed up. It is not upright in him, but the righteous will live by his
  faith."

### 3. Habakkuk 2:14 — The Earth Filled with Yahweh's Glory
A single verse near the middle of Yahweh's answer (a series of five "woe" oracles against
injustice), closing on a universal image of hope shared across traditions.

**Challenge-ready verse (Habakkuk 2:14, WEB):**
- "For the earth will be filled with the knowledge of Yahweh's glory, as the waters cover the sea."

### 4. Habakkuk 3:17-19 — Rejoicing Despite Total Loss
The book's capstone: Habakkuk resolves his complaint not by being told everything will be fine
materially, but by choosing to rejoice in Yahweh even if every source of agricultural livelihood
fails entirely. Widely regarded as one of the most beautiful expressions of trust-despite-
circumstance in the Old Testament.

**Challenge-ready verses (Habakkuk 3:17-19, WEB):**
- v.17: "For even though the fig tree doesn't flourish, nor fruit be in the vines, the labor of the
  olive fails, the fields yield no food, the flocks are cut off from the fold, and there is no herd
  in the stalls,"
- v.18: "yet I will rejoice in Yahweh. I will be joyful in the God of my salvation!"
- v.19: "Yahweh, the Lord, is my strength. He makes my feet like deer's feet, and enables me to go
  in high places."

## Difficulty Ladder

| Level | Type | Example (from this book) |
|---|---|---|
| 1 — Recall | Verse fill-in-blank | "The righteous will live by his ___." (Hab 2:4) → faith |
| 2 — Recall | Multiple choice, textual/narrative fact | "Where does Habakkuk say he will stand to watch for Yahweh's answer?" → at his watch, on the ramparts (Hab 2:1) |
| 3 — Sequence | Order passages within the book | Order the pivotal-passage blocks as they appear in the book (the complaint → the answer/2:4 → the earth filled with glory → rejoicing despite loss) |
| 4 — Sequence + recall | Order + attribute a quotation | Given three quotations (Hab 1:2, 2:4, 3:18), place them in the order they occur and match each to its reference |
| 5 — Application (narrative-fact only, not moral judgment) | Multiple choice on textual detail | "According to Habakkuk 3:17, name two of the sources of provision the prophet says may fail." → the fig tree/vines, the olive, the fields, the flocks, the herd (any two; tests attentive reading of the text's own list, not the theological meaning of hardship) |

Boss battle (world 35 capstone): a mixed-format sequence spanning all 4 pivotal passages, weighted
toward level 3-5 items, with 2:4 and 3:17-19 as the highest-value recall anchors given their
prominence. Because Habakkuk has a real internal throughline (complaint → answer → resolution) even
without external narrative action, this world supports slightly more sequence-format depth than
Nahum's, similar in shape to how Isaiah's oracle passages still supported sequencing within a single
passage even without a continuous plot.

## Contested Territory

Per `docs/CONTENT_STYLE_GUIDE.md` §4 — flagged for the theological reviewer, not resolved here.

### Habakkuk 2:4, "the righteous will live by his faith" — bounded inclusion, doctrine not graded

This is the book's central sensitivity. The verse is quoted in the New Testament three times
(Romans 1:17, Galatians 3:11, Hebrews 10:38) and became foundational to the Reformation doctrine of
justification by faith alone (sola fide) — a specific, historically contested Christian doctrinal
position (Catholic and Orthodox tradition read the relationship between faith and works differently
than classical Protestant reformers did, and this is a live intra-Christian dispute, not just a
Jewish/Christian one).

Independent research for this brief confirms a second layer of divergence at the translation/word-
meaning level: the underlying Hebrew word is *emunah*, which carries a sense closer to
"faithfulness" or "steadfastness" (constancy in living out one's commitments) than the more
individual, belief-oriented English sense "faith" often carries in later Christian theological
usage. Jewish reading of the verse (per rabbinic tradition connecting it to Abraham's *emunah* in
Genesis 15:6) emphasizes faithful, obedient conduct sustained through hardship, not primarily an
inward act of belief. [Truth Unites, "Faith in Habakkuk"](https://truthunites.org/2010/07/12/faith-in-habakkuk/);
[BGodInspired, "Hebrew Word for Faith: What Does 'Emunah' Really Mean?"](https://bgodinspired.com/index.php/articles/hebrew-word-for-faith/).

**The bounding holds, per this assignment's guidance, confirmed by this research.** The WEB
translation itself renders the word "faith" (confirmed against two independent live sources — see
§1), so a recall item testing "the righteous will live by his ___" → "faith" is testing the OT verse's
own WEB wording, not asserting anything about *emunah*'s fuller semantic range, the Reformation
doctrine of sola fide, or how Romans/Galatians/Hebrews later use the verse. No challenge item in
this brief asks what "faith" means, whether it implies belief alone or faithful conduct, or what
role the verse plays in any New Testament argument. This is the same "stay narrative/textual, don't
grade the interpretation" pattern already applied to Leviticus 17:11 (blood/atonement) and Isaiah's
non-excluded passages.

### Habakkuk's dialogue with Yahweh (1:2-4, 1:12-17) — no doctrinal claim graded

Habakkuk's open questioning of Yahweh's justice, and Yahweh's answer that a "more wicked" nation
(Babylon) will be used to punish a less wicked one (Judah), touches on theodicy — a subject with
real theological diversity across traditions on how to reconcile divine sovereignty, justice, and
the use of morally compromised nations as instruments of judgment. No challenge item in this brief
asks a player to resolve or affirm any specific theodicy; the challenge-ready verses (1:2-4) are the
prophet's own stated complaint, presented as narrative/textual fact ("this is what Habakkuk asked"),
not as a settled theological answer. The 1:5-11 and 1:12-17 material describing the Chaldeans in
more detail is not selected as challenge-ready content, limiting this brief's exposure to the
theodicy question to the complaint itself.

### No other contested items identified

Habakkuk 2:14 (the earth filled with Yahweh's glory) and 3:17-19 (rejoicing despite loss) were
checked and no live cross-tradition doctrinal dispute bearing on a graded item was found — both are
in near-universal, uncontested devotional use across Jewish and Christian tradition. See
`docs/reviews/habakkuk-review.md` §3 for the sourcing.

## Acceptance Criteria for This Brief

- [x] Reviewed (self-run per `.claude/agents/theological-reviewer.md`'s procedure) — `approved`,
      no changes required, see `docs/reviews/habakkuk-review.md`
- [ ] Verbatim verse text independently re-verified against source per `QA_REQUIREMENTS.md` §3
      (separate from theological sign-off, both required before ingestion)
- [x] Every challenge item traceable to one of the 4 pivotal passages above
- [x] No challenge item crosses into the Contested Territory list above without the stated
      narrative-only bounding
- [x] No challenge item built from Habakkuk 2:4 asserts a specific doctrine of justification
