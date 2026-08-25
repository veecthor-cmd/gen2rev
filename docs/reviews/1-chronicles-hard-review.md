# Theological Review — 1 Chronicles, Hard Tier (World 13)

Reviewer: `theological-reviewer` agent, run 2026-08-19.
Brief reviewed: `docs/content/1-chronicles-hard.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` §4 (Samuel/Kings/
Chronicles differentiation and the "low challenge-density fit" guidance), `docs/content/1-chronicles.md`
(approved medium tier), `docs/reviews/1-chronicles-review.md`, `docs/qa/1-chronicles-verbatim-qa.md`
(medium's verbatim QA, verdict `pass`), `docs/ingest/1-2-kings-1-2-chronicles.sql` (what medium
actually shipped), and `docs/content/1-chronicles-easy.md` (sibling tier, for item-overlap checking).
Precedent reviews read for known failure modes: `docs/reviews/genesis-hard-review.md`,
`docs/reviews/genesis-easy-review.md`.

**Verdict: `approved-with-changes`.** No text-integrity failure — every verse checked matched live
WEB sources, and unlike Genesis hard there is no composite/mis-cited quotation here. Four changes are
required before ingestion (a missed cross-book name divergence on the graded token in item 2, a
missing structural rule on item 6's elided clause, an ambiguous WEB-edition citation affecting four
items, and the absent per-item prompt strings), plus three recommendations. Both inherited contested
items were re-checked against live cross-tradition sources and their bounding **holds**. Not escalated.

---

## 1. Verse-Text Verification

Procedure note: the brief claims every verse is reused as-is from the already-approved medium brief
and that no new fetch was needed. I verified that claim **and** independently re-fetched every verse
from live WEB sources anyway, per this role's standing rule that a reuse claim is not a source.

| Item | Verse | Live sources checked | Result |
|---|---|---|---|
| 1 | 1 Chr 1:1 | [ebible.org engwebp 1CH01](https://ebible.org/engwebp/1CH01.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Chronicles+28%3A9-10%3B+1+Chronicles+29%3A14%3B+1+Chronicles+22%3A5%3B+1+Chronicles+21%3A18%3B+1+Chronicles+1%3A1&version=WEB) | **Match** — "Adam, Seth, Enosh," incl. trailing comma |
| 2 | 1 Chr 21:18 | [ebible.org web 1CH21](https://ebible.org/web/1CH21.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Chronicles+28%3A9-10%3B+1+Chronicles+29%3A14%3B+1+Chronicles+22%3A5%3B+1+Chronicles+21%3A18%3B+1+Chronicles+1%3A1&version=WEB) | **Match** for the quoted portion. Full verse opens "**Then** Yahweh's angel commanded…"; brief drops the leading "Then" (labeled "trimmed"). "**Ornan** the Jebusite" confirmed verbatim |
| 3 | 1 Chr 22:5 | [ebible.org engwebp 1CH22](https://ebible.org/engwebp/1CH22.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Chronicles+28%3A9-10%3B+1+Chronicles+29%3A14%3B+1+Chronicles+22%3A5%3B+1+Chronicles+21%3A18%3B+1+Chronicles+1%3A1&version=WEB) | **Match** — "**young and tender**" confirmed verbatim; the mid-quote ellipsis correctly covers "of fame and of glory throughout all countries." Brief also drops the narrator frame "David said," with no leading ellipsis (see Finding D) |
| 4 | 1 Chr 29:14 | [ebible.org web 1CH29](https://ebible.org/web/1CH29.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Chronicles+28%3A9-10%3B+1+Chronicles+29%3A14%3B+1+Chronicles+22%3A5%3B+1+Chronicles+21%3A18%3B+1+Chronicles+1%3A1&version=WEB) | **Match, word-for-word** — "For all things come from you, and we have given you **of your own**." Confirmed genuine WEB text, not a paraphrase |
| 5 (boss) | 1 Chr 22:7-8; 22:14; 28:9-10; 29:14 | ebible.org (engwebp 1CH22; web 1CH28, 1CH29), BibleGateway WEB (28:9-10, 29:14) | **Match** on all four quotations — see composite-splice check below |
| 6 (boss) | 1 Chr 28:9-10 | [ebible.org web 1CH28](https://ebible.org/web/1CH28.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=1+Chronicles+28%3A9-10%3B+1+Chronicles+29%3A14%3B+1+Chronicles+22%3A5%3B+1+Chronicles+21%3A18%3B+1+Chronicles+1%3A1&version=WEB) | **Match** — "…with a willing **mind**;" (v9) / "Take heed now**,** for Yahweh has chosen you to build a house for the sanctuary. Be strong, and do it." (v10). Both sources agree on the comma after "Take heed now" |

### Composite-quotation check (the Genesis-hard failure mode) — clean

Genesis hard failed on item 8 because a blank was re-cut out of a two-verse block without re-checking
the verse boundary, producing a re-ordered splice cited to the wrong verse. I checked every
multi-verse quotation here specifically for that:

- **22:7-8 (item 5).** v7 = "David said to Solomon his son, 'As for me, it was in my heart to build a
  house to the name of Yahweh my God.'"; v8 = "But Yahweh's word came to me, saying, 'You have shed
  blood abundantly and have made great wars…'". The brief's quotation runs v7 → v8 **in source order**
  and is cited **22:7-8**. Correct on both counts. ("shed blood abundantly and have made great wars"
  carries no comma before "and" in WEB — the brief matches.)
- **28:9-10 (items 5 and 6).** Runs v9 → v10 in source order, cited 28:9-10, with the ellipsis falling
  exactly at the v9 material that is omitted. Correct.
- **22:14 (item 5).** Brief drops the leading "Now, behold," and elides "; for it is in abundance"
  mid-verse; retained wording is verbatim. Correct content, see Finding D on labeling.

No splice, no re-ordering, no mis-citation anywhere in this brief.

### Reuse-claim verification — the drafter's claim is TRUE

Every verse string in the hard brief was diffed against the approved medium brief and against the
shipped SQL:

| Hard item | Medium source | Identical? |
|---|---|---|
| 1 (1:1) | `1-chronicles.md` L63; SQL `sort_order` 1 | Yes |
| 2 (21:18) | `1-chronicles.md` L79-80; SQL `sort_order` 3 | Yes — including "Ornan" |
| 3 (22:5) | `1-chronicles.md` L96-97 | Yes — including "young and tender" |
| 4 (29:14) | `1-chronicles.md` L114-115; SQL `sort_order` 6 (inside the sequence) | Yes — including "of your own" |
| 5 (four-quotation sequence) | SQL `sort_order` 6 | Yes — all four quotation strings identical |
| 6 (28:9-10) | `1-chronicles.md` L109-111; SQL `sort_order` 6 (inside the sequence) | Yes |

Both specific strings the review request asked about — **"Ornan"** and **"young and tender"** /
**"of your own"** — are genuine verbatim substrings of medium's already-approved, already-QA-passed
text, *and* independently confirmed against live WEB sources above. No paraphrase.

### Finding C — the "WEB" label is ambiguous between two ebible editions. **Fix before ingestion.**

`ebible.org/engwebp/` renders the divine name as "**the LORD**"; `ebible.org/web/` and BibleGateway's
`version=WEB` render it "**Yahweh**". Both are published as "World English Bible." The brief (and
medium, and the shipped SQL) use the **Yahweh** rendering, which matches `ebible.org/web/` and
BibleGateway — so the content is *correct*, but the `translation` value "WEB" alone does not pin
which edition it was verified against. This bears directly on items 2, 3, 5 and 6, every one of which
displays "Yahweh" in player-facing text, and it is the sort of thing that silently breaks a future
verbatim-QA pass that happens to fetch the other edition. Record the edition explicitly (e.g.
"WEB (`ebible.org/web`, Yahweh rendering)") in the brief and in `QA_REQUIREMENTS.md` §3's procedure.
This is a project-wide note, not unique to this brief.

## 2. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

For each item: *does this require the player to affirm anything beyond narrative fact or direct verse
text?*

| Item | Graded token / task | In-bounds basis | Result |
|---|---|---|---|
| 1 | "Adam" | §2 direct verse recall / character identification | Pass — bare name, no claim attached (see §3.3) |
| 2 | "Ornan" | §2 character identification, stated in the text | Pass doctrinally; **answer-key note, Finding A** |
| 3 | "tender" | §2 direct verse recall | Pass — plain descriptive wording, no doctrinal content |
| 4 | "own" | §2 direct verse recall | Pass (see §3.4) |
| 5 (boss) | order + attribute 4 quotations | §2 sequencing + attributed quotation | Pass — order asked for is the text's own chapter order (22 → 28 → 29); unchanged from approved medium |
| 6 (boss) | "mind" | §2 direct verse recall | Pass as written; **structural rule needed, Finding B** |

No item asks for moral judgment, historicity framing, doctrinal interpretation, or a denominational
position. As in Genesis hard, this tier's swing toward typed recall *reduces* exposure relative to
multiple choice — a typed blank on a verbatim word carries no interpretive distractor set. Notably,
item 5 asks players to order events and match references; it never asks *why* David was barred from
building, which is where §3 would bite.

**Paraphrase-as-quotation check (§3 final bullet, §5): pass on all six items.** Every quoted string
is verbatim WEB; every trim is an omission, never a rewording; every citation matches the verse the
words actually come from.

### Finding E — no item prompts are written. **Fix before ingestion.**

The brief specifies verse, template and answer for each item but no `prompt` string, which
`public.challenge` requires (see the SQL's `prompt` column). This matters beyond bookkeeping because
medium's item 1 prompt is *"Fill in the missing name: **the second name** in 1 Chronicles' opening
genealogy."* — hard's item 1 blanks the **first** name, so a copied prompt would produce a stem whose
wording contradicts its own answer key. This is the Genesis-easy unanchored-stem lesson in a new
shape. Write each prompt explicitly, and anchor item 1's to "the first name," item 2's to
"1 Chronicles 21:18" (as medium's already does).

## 3. Contested-Territory Cross-Check

### 3.1 Ornan vs. Araunah — contested-territory claim HOLDS, but the brief missed a note. **Finding A.**

The brief says of item 2 only that its scene "sits inside the same chapter" as the flagged 21:1
divergence, and declares "no new contested ground." It did not notice that the token it newly grades,
**"Ornan," is itself a Chronicles-vs-Samuel divergence of exactly the same class as the 21:1 one it
does flag** — 2 Samuel 24:16-18 calls the same man **Araunah**. Medium blanked "altar" and never
exposed this; hard blanks the name.

Cross-tradition check on whether this is doctrinally contested:

- **Jewish (Sefaria, Revised JPS 2023 + Masoretic text of I Chronicles 21:18)** — renders "the
  threshing floor of **Ornan** the Jebusite," Hebrew `אׇרְנָ֥ן`.
  [sefaria.org/api/texts/I_Chronicles.21.18](https://www.sefaria.org/api/texts/I_Chronicles.21.18?context=0)
- **Classic Christian commentators (Bible Hub aggregation, 1 Chr 21:18)** — treat the two names as
  the same person under two forms without dispute: Keil & Delitzsch write "Ornan's (Araunah's)"
  parenthetically; the Cambridge Bible simply cross-references "cp. 2 Samuel 24:18"; no aggregated
  commentator treats the variation as theologically significant.
  [biblehub.com/commentaries/1_chronicles/21-18.htm](https://biblehub.com/commentaries/1_chronicles/21-18.htm)

**Conclusion: this is not contested territory in the §3 sense** — Jewish and Christian sources
converge that the Chronicles form is "Ornan," and no tradition builds a doctrinal position on the
name. The brief's "no new contested ground" verdict survives. **But it is a live answer-key risk**: a
player who knows the Samuel telling may type "Araunah," which is a correct name for the person and a
wrong answer for the displayed verse. Add (a) a Contested Territory / cross-book note recording the
Ornan-Araunah correspondence with the two sources above, and (b) an explicit answer-key rule that the
accepted answer is "Ornan" only, with the prompt citing 1 Chronicles 21:18 so the player knows which
book's telling is on screen.

### 3.2 1 Chronicles 28:9's seek/forsake clause — unflagged, currently safe, needs a structural rule. **Finding B.**

Item 6 displays 28:9 up to "with a willing mind…" and resumes at "Take heed now." The elided portion
of v9 is "If you seek him, he will be found by you; but if you forsake him, he will cast you off
forever" — perseverance/conditionality ground, and the commentators do not read it the same way:

- **Bible Hub aggregation, 1 Chr 28:9** — **Gill** confines "he will cast thee off for ever" to
  temporal/dynastic loss ("from being king, or enjoying that peace, prosperity, and happiness");
  **Benson** reads it against the dynastic promise ("Notwithstanding his promises to me and my seed");
  **Poole** reads the verse as aimed at insincere profession ("if thy obedience to God be insincere
  and with grudging; thou mayst indeed deceive me, but thou canst not deceive him"); **Matthew
  Henry's Concise** stays relational/experiential. Same clause, materially different scopes — royal
  office vs. covenant standing vs. sincerity of profession.
  [biblehub.com/commentaries/1_chronicles/28-9.htm](https://biblehub.com/commentaries/1_chronicles/28-9.htm)

That spread is precisely the kind of divergence a graded item must not sit on top of. **The item is
safe as written** — the graded token is "mind," in a clause about how to serve, and the contested
clause is not displayed. But per `CONTENT_STYLE_GUIDE.md` §4 this should be *flagged deliberately*
rather than left unnoticed, exactly as Genesis hard was asked to do for Gen 1:2. Add a Contested
Territory bullet stating: the display window for 28:9-10 never extends past "with a willing mind" into
the seek/forsake material, and "forsake" / "cast you off forever" is never a graded token or a
multiple-choice subject at any tier.

### 3.3 The genealogies (item 1) — inherited bounding holds, and the recall-only rule is honored

Verified structurally: item 1 is typed recall, not multiple-choice, not part of a sequence, not a boss
item — matching the restriction set in `docs/content/1-chronicles.md` (Difficulty Ladder,
"Genealogy scene note") and `docs/CANON_STRUCTURE.md` §4's low-challenge-density guidance. The verse is
a bare three-name sequence with no claim attached about the genealogies' completeness, so there is no
claim to cross-check — the same finding as `docs/reviews/1-chronicles-review.md` §3, unchanged.

Also verified as the brief claims: medium blanks "Seth" (SQL `sort_order` 1), easy blanks "Enosh",
hard blanks "Adam" — each of the three names blanked exactly once, no duplicated item across tiers.

### 3.4 1 Chronicles 29:14 (item 4) — rendering divergence noted, graded token safe

The graded token "own" sits in a WEB rendering choice worth recording:

- **Jewish (Sefaria, JPS Gender-Sensitive Edition, I Chr 29:14)** — "but all is from You, and it is
  **Your gift** that we have given to You" (Hebrew `וּמִיָּדְךָ֖ נָתַ֥נּוּ לָֽךְ`, lit. "from your hand").
  [sefaria.org/api/texts/I_Chronicles.29.14](https://www.sefaria.org/api/texts/I_Chronicles.29.14?context=0)
- **Orthodox** — the same verse's sense is embedded verbatim in the Byzantine anaphora: "Thine own of
  Thine own we offer unto Thee, on behalf of all and for all."
  [orthodoxwiki.org/Anaphora](https://orthodoxwiki.org/Anaphora)

So the wording differs between renderings ("of your own" / "Your gift" / "Thine own of Thine own")
while the *sense* is one traditions share rather than dispute — a Jewish, Orthodox, Catholic or
Protestant player typing "own" from displayed WEB text affirms nothing any of them contests. In-bounds.
No change required; the rendering note is worth one line in the brief for the same reason Genesis
hard was asked to record *ruach elohim*.

### 3.5 Inherited items carried over — spot-checked, no change

- **21:1 (Satan and the census).** Not re-used as an item in this tier. `docs/reviews/1-chronicles-review.md`
  §3 already established the genuine Jewish/Christian divergence here (Radak's internal-inclination
  reading vs. the classic Christian permitted-external-tempter reading) and confirmed the
  narrative-only bounding. Nothing in this tier disturbs it — item 2 quotes 21:18, which contains no
  agency claim at all.
- **22:7-8 / 28:3 ("man of war").** Item 5 reuses 22:7-8 verbatim as one element of a sequence; the
  graded task is ordering, not explaining. The text states its own reason and the item never asks
  whether the restriction was just. Bounding unchanged and still correct.

## 4. Thinness, Scope and Structural Checks

- **Item count.** Verified directly against `docs/ingest/1-2-kings-1-2-chronicles.sql` (world
  `1-chronicles`): 6 challenge rows, `is_boss_item` true on `sort_order` 4 and 6 → **4 regular + 2
  boss**. The hard brief's 6 items (4 + 2) match exactly. **Thinness preserved, not padded** — this is
  a real match to what shipped, not just an assertion.
- **No new scenes.** All 6 items trace to the 4 approved pivotal scenes. Scene 3 (22:5) and Scene 4
  (29:14, 28:9-10) supply items that medium listed as challenge-ready but never graded standalone —
  legitimately new items from already-reviewed material, exactly as the brief claims.
- **No cross-tier duplication.** Item 5 is an exact reuse of medium's sequence boss (which easy did not
  take); easy reused medium's other boss (22:7-8 recall). Between the two tiers each of medium's boss
  items is reused once. Confirmed against both sibling documents.
- **Documentation inconsistency (not this brief's fault).** `docs/content/1-chronicles.md`'s difficulty
  ladder, level 4, describes the sequence boss as "**three** quotations (22:7-8, 28:9-10, 29:14)", but
  the shipped SQL item contains **four** (22:7-8; 22:14; 28:9-10; 29:14). The hard brief follows the
  SQL, which is right. Recommend correcting medium's ladder line so the two docs stop disagreeing.

## 5. Minor Findings

- **Finding D — trim labeling/ellipsis convention.** Items 2, 3 and 5 open mid-verse without a leading
  ellipsis: 21:18 drops "Then", 22:5 drops "David said,", 22:14 drops "Now, behold,". The retained
  wording is verbatim in every case and no player-facing text is inaccurate, so this is cosmetic — but
  it is the same observation `docs/qa/1-chronicles-verbatim-qa.md` note 1 already made about medium,
  now inherited. Adopt one convention (leading ellipsis, or a consistent "(WEB, trimmed)" label on
  every mid-verse start) so `BACKEND_REQUIREMENTS.md` §4's citation check sees a uniform shape. Item 5
  is currently labeled plain "(WEB)" despite three of its four quotations being trimmed.
- **Item 3 answer sensitivity.** "young and tender" is an unusual collocation in modern English; a
  player may type "tender-hearted" or "inexperienced." Not a style-guide issue — just flag for the
  answer-key spec that exact-match is intended here, since the whole point of the hard tier is precise
  phrasing.
- **Item 6 distractor-free by construction.** Grading "mind" from "a perfect heart and with a willing
  ___" is safe, but note for future authoring: do not convert this into a multiple-choice item with
  "spirit"/"soul" options, which would foreground an anthropology question the text isn't making.

## 6. Verdict

**`approved-with-changes`.**

**Required before ingestion:**

1. **Item 2 (21:18)** — add the Ornan/Araunah cross-book note to Contested Territory with the Sefaria
   and Bible Hub sources (§3.1), and specify the answer key accepts "Ornan" only, with the prompt
   citing 1 Chronicles 21:18.
2. **Item 6 (28:9-10)** — add a Contested Territory bullet for the elided seek/forsake clause and the
   structural rule that the display window never extends into it and "forsake"/"cast you off forever"
   is never a graded token or MC subject at any tier (§3.2).
3. **All items** — pin the WEB edition explicitly (Yahweh rendering, `ebible.org/web` / BibleGateway
   `version=WEB`), not bare "WEB" (Finding C).
4. **All items** — write the per-item `prompt` strings; anchor item 1's to "the first name" (medium's
   says "second name") and item 2's to its reference (Finding E).

**Recommended (none blocking on their own):**

5. Add a one-line rendering note for 29:14 recording the JPS/Orthodox-liturgical wording divergence
   (§3.4).
6. Normalize the trim/ellipsis convention across items 2, 3, 5; label item 5 "(WEB, trimmed)"
   (Finding D).
7. Fix `docs/content/1-chronicles.md`'s difficulty-ladder level 4 to say four quotations, matching the
   shipped SQL (§4).

**Not escalated.** Both inherited contested items and both newly-identified ones were checked against
live sources spanning genuinely different traditions — Jewish (Sefaria: Revised JPS, JPS
Gender-Sensitive Edition, Masoretic text), classic Christian commentary across Reformed/Anglican/
Nonconformist lines (Bible Hub aggregation of Gill, Poole, Benson, Henry, Keil & Delitzsch, Cambridge
Bible), and Orthodox liturgical usage (OrthodoxWiki). In each case the graded token turned out to be
either a proper name all traditions render the same way, or wording whose sense the disagreeing
traditions share — which is what makes the narrative-only bounding actually hold rather than merely
sound plausible. No graded item requires a denominational position, a moral judgment, or a historicity
call. Nothing here met the bar for escalation.

**Residual risk stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in `MEMORY.md`,
2026-08-08; Open Decision #7 still has no named human reviewer, so an escalation from this role
currently has nowhere to land). Nothing here required escalation, but a human specialist could weigh
the 28:9 conditionality material differently than "elide it and grade elsewhere."

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/1-chronicles-hard-verbatim-qa.md`), which should specifically re-check the four multi-verse
quotations in items 5 and 6 for verse boundaries, and record which WEB edition it fetched (Finding C).
`docs/CONTENT_REVIEW_LOG.md` is to be updated by the calling session, not by this reviewer.

---

### Sources cited in this review

- https://ebible.org/engwebp/1CH01.htm
- https://ebible.org/engwebp/1CH22.htm
- https://ebible.org/web/1CH21.htm
- https://ebible.org/web/1CH28.htm
- https://ebible.org/web/1CH29.htm
- https://www.biblegateway.com/passage/?search=1+Chronicles+28%3A9-10%3B+1+Chronicles+29%3A14%3B+1+Chronicles+22%3A5%3B+1+Chronicles+21%3A18%3B+1+Chronicles+1%3A1&version=WEB
- https://www.sefaria.org/api/texts/I_Chronicles.21.18?context=0
- https://www.sefaria.org/api/texts/I_Chronicles.29.14?context=0
- https://biblehub.com/commentaries/1_chronicles/21-18.htm
- https://biblehub.com/commentaries/1_chronicles/28-9.htm
- https://orthodoxwiki.org/Anaphora
