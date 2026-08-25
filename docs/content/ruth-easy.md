# Content Brief — Ruth, Easy Tier (World 8)

Status: **approved-with-changes** — theological review complete, see
`docs/reviews/ruth-easy-review.md`. All required fixes (§6.1-§6.4, §6.6) applied below, plus
recommended fixes §6.5, §6.7-§6.10.

**Verbatim-text QA: `pass`** (2026-08-20, see `docs/qa/ruth-easy-verbatim-qa.md`) — every piece of text
changed while applying §6.1-§6.4 and §6.6 was independently re-verified against BibleGateway (WEB),
including the most substantive change (item 9's extended recall template); the four verses newly
promoted to standalone-ingestion status (items 2, 4, 6, 9) were confirmed verbatim for the first time.
No discrepancies found. **Eligible for ingestion.**

> **Verbatim-text note:** every verse used in this brief reuses text already fetched fresh from
> ebible.org and verified in the approved medium brief `docs/content/ruth.md` and its review
> `docs/reviews/ruth-review.md`. **No new verse text is introduced anywhere in this brief** — every
> quotation below is copied verbatim from that already-approved source. Per `QA_REQUIREMENTS.md` §3,
> independent verbatim QA is still required before ingestion regardless.

Part of scaling the difficulty-mode pipeline piloted on Genesis to Joshua, Judges, and Ruth (picking
up the remainder of that batch after Joshua and Judges). Reuses the same 5 pivotal scenes already
approved in `docs/content/ruth.md` — **no new scenes** — so the existing Contested Territory analysis
applies unchanged, including the Ruth 4:9-10 recall-only structural rule.

**Item/boss count note:** `docs/content/ruth.md` doesn't enumerate discrete items the way
`docs/content/genesis.md`/`judges.md` implicitly do — it lists "challenge-ready verses" per scene and
a 5-level Difficulty Ladder table. The medium tier's actual item/boss count was confirmed directly
against the ingested content in `docs/ingest/joshua-judges-ruth.sql` (the `ruth` `world` insert block):
**9 items total — 6 regular + 3 boss.** This brief matches that count exactly, as does the hard tier.

Translation: World English Bible (WEB) throughout, per `PRODUCT_REQUIREMENTS.md`/Open Decision #1.

---

## Design intent for this tier

Per Kachi's "easy... real simple" design direction (established for the Genesis pilot). This tier
draws the most iconic, broadly-recognizable facts from Ruth's 5 approved scenes and favors
multiple-choice recognition over typed recall. This brief draws **only** on verse text already quoted
verbatim and reviewed in the medium brief — zero new *verse text*. **Correction per review §6.6,
required: the "zero incremental review risk" framing below was too strong and has been removed.**
Items 2, 4, 6 and 9 draw on verses (`Ruth 1:8-9, 2:11-12, 4:21-22, 3:1-2`) that `docs/content/ruth.md`
listed as challenge-ready but that were never actually ingested — `docs/ingest/joshua-judges-ruth.sql`
confirms medium's nine rows use only 1:16, 1:17, 2:2-3, 2:8-9, 3:9, 3:11, 4:9-10, 4:17 and the
1:16/3:9/4:13-14 boss sequence. So the verbatim-QA pass that signed off that ingest never covered the
text now used in items 2, 4, 6 and 9, and `docs/reviews/ruth-review.md` §1 verified those four verses
against a single source only. The theological review has now independently verified all four against
live WEB text (see `docs/reviews/ruth-easy-review.md` §1); `docs/qa/ruth-easy-verbatim-qa.md` treats
them as new-to-ingestion text rather than re-verified text, per that review's instruction.

**Unused-but-approved verses identified and put to use:** `docs/content/ruth.md` lists five
challenge-ready verses that the medium tier's actual item set never turned into a standalone item —
Ruth 1:8-9, 2:11-12, 3:1-2, 4:13-14 (quoted only inside medium's boss sequence, never standalone), and
4:21-22. This brief uses four of the five (1:8-9, 2:11-12, 3:1-2, 4:21-22) as free, already-approved
content; the hard tier picks up 4:13-14.

## Pivotal Scenes — reused from `docs/content/ruth.md`, no new scenes added

Same 5 scenes: Loyalty — Ruth's Declaration (Ruth 1), Gleaning in Boaz's Field (Ruth 2), The Threshing
Floor (Ruth 3), The Redemption at the Gate (Ruth 4:1-12), Ancestor of David (Ruth 4:13-17, 4:21-22).

## Challenge Items (9: 6 regular + 3 boss)

### Regular (6)

1. **Ruth 1:16** (WEB, trimmed, already-approved verse, new format — medium uses this verse as a
   recall item blanking "stay"): "...Don't urge me to leave you, and to return from following you, for
   where you go, I will go; and where you stay, I will stay. Your people will be my people, and your
   God my God." *(Leading ellipsis added per review §6.5: WEB opens the verse "Ruth said," which the
   brief drops without marking the trim; consistency fix so all attribution-dropping items use the
   same convention.)* — MC: "What did Ruth tell Naomi she would do?" Options: Go where Naomi goes, and
   take Naomi's people and God as her own / Return to her mother's house in Moab / Stay behind while
   Naomi traveled on alone / Ask Boaz to marry her at once. Correct: Go where Naomi goes, and take
   Naomi's people and God as her own.
2. **Ruth 1:8-9** (WEB, already-approved verse, listed in the original medium brief but never used
   there as a standalone item): "Naomi said to her two daughters-in-law, 'Go, return each of you to
   her mother's house... May Yahweh grant you that you may find rest, each of you in the house of her
   husband.'" — MC: **"According to Ruth 1:8-9, what did Naomi urge her two daughters-in-law to
   do?"** *(Stem anchored per review §6.2, required, part 1.)* Options: Return each of them
   to her mother's house / Come with her to Bethlehem / **Glean in the fields of Bethlehem** / Marry
   Boaz. *(Fix per review §6.2, required, part 2: the distractor "Remain in Moab with their own
   people's gods" is replaced. That distractor was textually defensible — at Ruth 1:15 Naomi does tell
   Ruth "your sister-in-law has gone back to her people and to her god; follow your sister-in-law" —
   making it a correct reading of a nearby verse and the least desirable distractor in the set to get
   wrong, since it was the only one touching religious allegiance.)* Correct: Return each of them to
   her mother's house.
3. **Ruth 2:2-3** (WEB, already-approved verse, new format): "Ruth the Moabitess said to Naomi, 'Let
   me now go to the field, and glean among the ears of grain after him in whose sight I find
   favor.'... she happened to come to the portion of the field belonging to Boaz, who was of the
   family of Elimelech." — MC: "In whose field did Ruth happen to glean grain?" Options: Boaz's field
   / Elimelech's field / Naomi's field / Orpah's field. Correct: Boaz's field. *(Ruth is named "the
   Moabitess" in the verse itself; see Contested Territory below on why this stays clear of the
   Deuteronomy 23:3 question.)*
4. **Ruth 2:11-12** (WEB, trimmed, already-approved verse, listed in the original medium brief but
   never used there): "...I have been told all about what you have done for your mother-in-law since
   the death of your husband... May Yahweh repay your work, and a full reward be given to you from
   Yahweh, the God of Israel, under whose wings you have come to take refuge." *(Leading ellipsis added
   per review §6.5: WEB opens the verse "Boaz answered her," dropped without marking the trim in the
   prior draft.)* — MC: "What did Boaz tell Ruth he had heard about her?" Options: **All she had done
   for her mother-in-law since her husband's death** *(wording tightened per review §6.10 to track
   2:11's own phrasing more closely — no distractor competed under the prior wording, so this is a
   precision improvement, not an ambiguity fix)* / That she was wealthy in Moab / That she planned to
   return to Moab / That she was Naomi's servant. Correct: All she had done for her mother-in-law since
   her husband's death.
5. **Ruth 3:9** (WEB, trimmed, already-approved verse, new format — medium uses this verse as a recall
   item blanking "kinsman"): "...She answered, 'I am Ruth your servant. Therefore spread the corner of
   your garment over your servant; for you are a near kinsman.'" *(Re-tagged "trimmed" and leading
   ellipsis added per review §6.3, required: WEB 3:9 opens "He said, 'Who are you?'" before "She
   answered," which the prior draft cut without any trim marker, presenting a partial verse as the
   whole verse.)* — MC: "What did Ruth ask Boaz to do at the threshing floor?" Options: Spread the
   corner of his garment over her, because he was a near kinsman / Give her a place to sleep for the
   night / **Redeem the land on her behalf immediately** / Send her back to Naomi. *(Fix per review
   §6.4, required: the prior distractor "Marry her sister Orpah" stated a false relationship — WEB
   calls Orpah Ruth's sister-**in-law** (Ruth 1:15), not her sister, and `CONTENT_STYLE_GUIDE.md` §2
   makes stated relationships graded content, so a distractor asserting a contradicted relationship
   would teach an error even when marked wrong. Replaced outright rather than patched, since Orpah has
   left the narrative by chapter 3.)* Correct: Spread the corner of his garment over her, because he
   was a near kinsman.
6. **Ruth 4:21-22** (WEB, already-approved verse, listed in the original medium brief but never used
   there): "...and Salmon became the father of Boaz, and Boaz became the father of Obed, and Obed
   became the father of Jesse, and Jesse became the father of David." — MC: "According to Ruth
   4:21-22, who was Boaz's son?" Options: Obed / David / Jesse / Salmon. Correct: Obed.

### Boss (3)

7. **Boss recall — re-cut from `medium`'s boss item (shortened display; same graded token
   "witnesses")** *(claim corrected per review Finding C, required — carried over from
   `docs/reviews/ruth-hard-review.md`, which found this same claim inaccurate in both Ruth briefs: the
   medium tier's actually-ingested template is the full two-verse text with two blanks, so this item is
   a re-cut and shortened version, not a verbatim reuse. Nothing displayed is non-verbatim — the
   retained words are exact WEB text and the trim is ellipsed — so this was a traceability defect, not
   a §3 paraphrase violation.)*: Ruth 4:9-10, "Boaz said to the elders and to all the people, 'You are
   witnesses today, that I have bought all that was Elimelech's, and all that was Chilion's and
   Mahlon's, from the hand of Naomi. Moreover, Ruth the Moabitess, the wife of Mahlon, I have purchased
   to be my wife... You are witnesses today.'" — recall: "Boaz said to the elders and to all the
   people, 'You are ___ today...'" → **witnesses**. *(Recall format only — never
   multiple-choice — per the existing structural rule; see Contested Territory below.)*
8. **Boss MC — reused verbatim from `medium`**: Ruth 4:17, "The women, her neighbors, gave him a name,
   saying, 'A son is born to Naomi'. They named him Obed. He is the father of Jesse, the father of
   David." — "According to Ruth 4:17, who was Obed's grandson?" Options: David / Boaz / Jesse / Salmon.
   Correct: David.
9. **Boss recall — genuinely new item**: **Ruth 3:1-2** (WEB, already-approved verse, listed in the
   original medium brief but never used there): "Naomi her mother-in-law said to her, 'My daughter,
   shall I not seek rest for you, that it may be well with you? Now isn't Boaz our kinsman, with whose
   maidens you were?'" — recall: **"Now isn't Boaz our ___, with whose maidens you were?"** → **kinsman**.
   *(Fix per review §6.1, required: the prior template truncated the verse mid-clause and replaced
   WEB's comma with a question mark, so the string shown to the player was not WEB text — the item most
   like a Gen 9:13-style defect (invented text presented as the verse), though here caused by a cut
   rather than a splice. The template now reproduces the full sentence verbatim; the answer token
   "kinsman" is unchanged.)*

*(Items 7-8 are exact reuses of already-reviewed `medium` boss items — deliberately, to keep the boss
battle's most dramatic beats (the redemption, the David genealogy) consistent across tiers — while
item 9 still adds one genuinely new piece of already-approved content. The hard tier reuses the same
two verbatim items and contributes a different new item, so the two tiers' boss sets aren't
identical.)*

## Contested Territory

Everything already flagged in `docs/content/ruth.md` applies unchanged. **Nothing new is introduced
by this brief**: no new verse, no new scene.

- **Ruth's Moabite identity and Deuteronomy 23:3 — confirmed still convergent, not re-litigated.**
  Item 3 (2:2-3) displays "Ruth the Moabitess" and item 7 (4:9-10, boss) displays "Ruth the
  Moabitess" again — both direct from already-approved verse text. Per `docs/reviews/ruth-review.md`,
  this tension resolves via cross-tradition convergence (not a live split), and this brief's items
  test only that Ruth was a Moabite and (via the boss set) that she was taken as Boaz's wife — plain
  narrative fact, never the lawfulness question. No new bounding required.
- **Ruth 4:9-10 (the redemption transaction language) format compliance.** The existing structural
  rule restricts this verse to recall/fill-in-blank or narrative-sequence format only, never
  multiple-choice. Item 7 is recall/fill-in-blank, grades only the word "witnesses," and does not ask
  whether the transaction or the kinsman-redeemer custom was fair or appropriate by modern standards.
  **Compliant.**
- **The kinsman-redeemer / levirate custom more broadly (items 5, 7, 9).** Items 5 (3:9) and 9 (3:1-2)
  touch the same institution from the threshing-floor scene. Both test only what was said and asked —
  Ruth's request, Naomi's instruction — never invite a player to evaluate the custom itself. Consistent
  with the comprehension-only bounding already established in `docs/content/ruth.md`.
- **Ruth 3:3-8, the threshing-floor euphemism — new bullet, added per review §6.8, required.** The
  threshing-floor scene carries a live, unresolved three-way dispute the brief did not flag: whether
  3:7's "uncovered his feet" is a sexual euphemism and whether the night involved sexual contact.
  Sources spanning evangelical (Crossway), Catholic (Garrett Ham) and Jewish (Israel Drazin, Times of
  Israel) writers disagree. Checked directly rather than assumed: 3:7 is not quoted, displayed, or
  graded anywhere in this brief. What items 5 and 9 grade — verse 9's stated speech and verse 2's word
  "kinsman" — is content every side of the verse-7 dispute reads identically (classic Protestant
  commentary and Rashi both read the garment-spreading request as a formal marriage/redemption
  request). **Structural rule: Ruth 3:3-8 (the threshing-floor night, especially 3:7's "uncovered his
  feet") is not challenge-ready content in any tier, and no distractor or option in any threshing-floor
  item may characterise what physically happened between Ruth and Boaz that night.** Items 5 and 9
  already comply; this makes compliance structural rather than incidental.
- **Two forward-looking guards — added per review §6.9, recommended.**
  - *`go'el` rendering.* WEB reads "near kinsman" (3:9, 4:14); Revised JPS reads "redeeming kinsman";
    the common evangelical rendering is "kinsman-redeemer." No item may grade the specific translation
    of the redeemer term. Grading the bare token "kinsman," as item 9 does, is fine.
  - *Obed's paternity / levirate reckoning.* Ruth 4:10 has Boaz redeem Ruth "to raise up the name of
    the dead on his inheritance" (Mahlon's line); 4:17 has the neighbours say "A son is born to Naomi";
    4:21 says "Boaz became the father of Obed." The text carries both framings. No item may ask whose
    son Obed "really" was or whose line he continued. Items 6 and 8 stay clear only because both are
    reference-anchored ("According to Ruth 4:21-22…", "According to Ruth 4:17…") — keep every future
    genealogy item reference-anchored for the same reason.
- **No other new contested ground.** Every item above draws on verse text already verified in
  `docs/reviews/ruth-review.md` §1; no new quotation or narrative claim beyond what that review
  already checked.

## Acceptance Criteria for This Brief

- [x] Reviewed by the `theological-reviewer` agent — `approved-with-changes`, required fixes (§6.1-
      §6.4, §6.6) and recommended fixes (§6.5, §6.7-§6.10) applied above (see
      `docs/reviews/ruth-easy-review.md`)
- [x] Verbatim verse text independently re-verified per `QA_REQUIREMENTS.md` §3 — `pass`, see
      `docs/qa/ruth-easy-verbatim-qa.md`
- [x] Every challenge item traceable to one of the 5 already-approved pivotal scenes
- [x] No new verse text introduced — every quotation copied verbatim from `docs/content/ruth.md`
- [x] Item/boss count (9: 6 regular + 3 boss) matches medium's actual ingested item count, confirmed
      against `docs/ingest/joshua-judges-ruth.sql`, not assumed
- [x] Ruth 4:9-10 item complies with its existing recall-only structural rule (self-checked above;
      confirmed on review)
