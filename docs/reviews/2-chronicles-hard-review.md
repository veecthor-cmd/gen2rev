# Theological Review — 2 Chronicles, Hard Tier (World 14)

Reviewer: `theological-reviewer` agent, run 2026-08-19.
Brief reviewed: `docs/content/2-chronicles-hard.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` (§2 History group,
§4 Samuel/Kings/Chronicles overlap), `docs/content/2-chronicles.md` (approved `medium` tier — its
verse text and Contested Territory bounding treated as settled ground), `docs/reviews/2-chronicles-review.md`,
`docs/content/2-chronicles-easy.md` (sibling tier, `submitted`), and the two pilot reviews
`docs/reviews/genesis-easy-review.md` / `genesis-hard-review.md` for the defect patterns to hunt.

**Verdict: `approved-with-changes`.** No item is doctrinally out-of-bounds, and all three
contested-territory items the brief flagged were cross-checked against live Jewish, Catholic and
Protestant sources and their narrative-only bounding **holds**. The **29:10 "fierce anger" vs.
"fierce wrath" discrepancy is resolved in favour of "fierce anger"** — confirmed against four
independent live sources, with the source of the drafter's bad first fetch positively identified.
Six changes are required before ingestion, all text-integrity, labelling or citation-accuracy fixes
rather than content problems. Not escalated.

---

## 1. Priority item — the 2 Chronicles 29:10 discrepancy. **Resolved: "fierce anger".**

The drafter asked for independent re-verification rather than accepting their own 2-to-1 result. I
re-checked from scratch against four live sources, three of which are independent of the ones the
drafter used:

| Source | Reading returned |
|---|---|
| [BibleGateway, WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+29%3A5%3B+2+Chronicles+29%3A10%3B+2+Chronicles+29%3A18&version=WEB) | "that his fierce **anger** may turn away from us" |
| [Bible Hub, WEB, 2 Chronicles 29](https://biblehub.com/web/2_chronicles/29.htm) | "that his fierce **anger** may turn away from us" |
| [ebible.org `/web/2CH29.htm`](https://ebible.org/web/2CH29.htm) | "that his fierce **anger** may turn away from us" |
| [ebible.org `/engwebp/2CH29.htm`](https://ebible.org/engwebp/2CH29.htm) | "that his fierce **anger** may turn away from us" |

Four for four, zero returning "wrath". **The brief's reading is correct and item 4's text is
verbatim WEB.**

**More usefully, the origin of the bad fetch is identifiable rather than mysterious.** The Bible Hub
parallel-translation page for this verse
([biblehub.com/2_chronicles/29-10.htm](https://biblehub.com/2_chronicles/29-10.htm)) shows the split
runs along translation lines, not along WEB-edition lines:

- **"fierce wrath"** — KJV, Webster's
- **"fierce anger"** — WEB, NIV, ESV; NASB has "burning anger"

So "fierce wrath" is a real English rendering of this verse, just not WEB's — it is KJV's. The most
probable explanation of the first ebible.org fetch is translation bleed in the fetch/summarisation
path, not an unstable WEB text or a genuine edition variant. **No live-source disagreement about the
WEB text exists.** Treat this as closed, and note it for `QA_REQUIREMENTS.md` §3 as a known failure
mode: on any verse where KJV and WEB diverge lexically, a single fetch is not sufficient evidence.

**One consequence for the answer key, though — see Finding G in §4.** The graded blank is exactly the
word on which the major translations disagree.

*(Incidental observation for the record, not a defect in this brief: the `ebible.org/engwebp` fetch
rendered the divine name as "the LORD" throughout while `ebible.org/web`, BibleGateway and Bible Hub
all rendered "Yahweh". Every verse quoted in this brief uses "Yahweh", matching three of the four
sources and matching the approved `medium` brief and the existing ingest SQL, so nothing here needs
changing — but a future verbatim-QA pass should prefer `ebible.org/web` or BibleGateway over
`engwebp` for divine-name-bearing verses.)*

## 2. Verse-Text Verification

Every challenge-ready verse in the brief was checked against **at least two independent live WEB
sources**. Nothing below rests on recalled knowledge.

| Item | Verse | Sources checked | Result |
|---|---|---|---|
| 1 | 2 Chr 5:1 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+5%3A1%3B+2+Chronicles+5%3A7%3B+2+Chronicles+7%3A3%3B+2+Chronicles+34%3A19%3B+2+Chronicles+34%3A31&version=WEB), [Bible Hub WEB 2 Chr 5](https://biblehub.com/web/2_chronicles/5.htm) | **Match** — verbatim, full verse, no trim |
| 2 | 2 Chr 5:7 | same two | **Match** — verbatim, full verse, no trim |
| 3 | 2 Chr 29:18 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+29%3A5%3B+2+Chronicles+29%3A10%3B+2+Chronicles+29%3A18&version=WEB), [Bible Hub WEB 2 Chr 29](https://biblehub.com/web/2_chronicles/29.htm) | Quoted words verbatim, but **verse is TRIMMED and no longer labelled as such** — Finding C |
| 4 | 2 Chr 29:10 | four sources, §1 above | **Match** — verbatim, full verse. Discrepancy resolved |
| 5 | 2 Chr 34:19 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+5%3A1%3B+2+Chronicles+5%3A7%3B+2+Chronicles+7%3A3%3B+2+Chronicles+34%3A19%3B+2+Chronicles+34%3A31&version=WEB), [Bible Hub WEB 2 Chr 34](https://biblehub.com/web/2_chronicles/34.htm) | **Match** — verbatim, full verse |
| 6 | 2 Chr 34:31 | same two | **Match** — verbatim, full verse |
| 7 | 2 Chr 36:21 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+36%3A16%3B+2+Chronicles+36%3A17%3B+2+Chronicles+36%3A21%3B+2+Chronicles+36%3A23%3B+2+Chronicles+35%3A18&version=WEB), [Bible Hub WEB 2 Chr 36](https://biblehub.com/web/2_chronicles/36.htm), [ebible.org engwebp 2CH36](https://ebible.org/engwebp/2CH36.htm) | **MISMATCH — capitalisation.** Finding A |
| 8 | 2 Chr 36:23 | same three | **Match** — trim marked with ellipsis, consistent with `medium` |
| 9 | 2 Chr 7:3 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+5%3A1%3B+2+Chronicles+5%3A7%3B+2+Chronicles+7%3A3%3B+2+Chronicles+34%3A19%3B+2+Chronicles+34%3A31&version=WEB); reused verbatim from approved+QA'd `medium` | **Match** (see minor note, Finding F) |
| 10 | 2 Chr 35:18 | [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+36%3A16%3B+2+Chronicles+36%3A17%3B+2+Chronicles+36%3A21%3B+2+Chronicles+36%3A23%3B+2+Chronicles+35%3A18&version=WEB) | Quoted words verbatim, but **verse is TRIMMED and `medium`'s "trimmed" label was dropped** — Finding C |
| 11 | 2 Chr 29:5 | [Bible Hub WEB 2 Chr 29](https://biblehub.com/web/2_chronicles/29.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+29%3A5%3B+2+Chronicles+29%3A10%3B+2+Chronicles+29%3A18&version=WEB) | Quoted words verbatim, but **verse is TRIMMED and not labelled** — Finding C |
| 12 | 2 Chr 36:16 | [Bible Hub WEB 2 Chr 36](https://biblehub.com/web/2_chronicles/36.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=2+Chronicles+36%3A16%3B+2+Chronicles+36%3A17%3B+2+Chronicles+36%3A21%3B+2+Chronicles+36%3A23%3B+2+Chronicles+35%3A18&version=WEB), [ebible.org engwebp 2CH36](https://ebible.org/engwebp/2CH36.htm) | **MISMATCH — capitalisation.** Finding A |

**No spliced or composite quotation was found** — the Genesis-hard failure mode (Finding A of
`docs/reviews/genesis-hard-review.md`, where 9:12's tail was welded onto 9:13) does **not** recur
here. Every quoted string is a contiguous run of a single verse.

### Finding A — items 7 and 12: sentence-initial capitals that WEB does not have. **Must fix.**

Both 2 Chr 36:16 and 36:21 are grammatical continuations of the preceding verse, and all three
sources agree WEB prints them in **lowercase**:

- **36:15–16** — v15 ends "…because he had compassion on his people and on his dwelling place;" and
  v16 begins "**but** they mocked the messengers of God…"
- **36:20–21** — v20 ends "…until the reign of the kingdom of Persia," and v21 begins "**to** fulfill
  Yahweh's word by Jeremiah's mouth…"

The brief renders them "**But** they mocked…" (item 12) and "**To** fulfill Yahweh's word…" (item 7).
Bible Hub's fetch was explicit on this point when asked directly: *"Verse 16 begins with lowercase
'but' and verse 21 begins with lowercase 'to' as shown in the source text."*

This is a one-character deviation per item, and it is nobody's idea of a doctrinal problem — but the
brief presents both strings inside quotation marks, tagged "(WEB, new)", as the verse. Under
`CONTENT_STYLE_GUIDE.md` §3 (final bullet) and §5(3) the displayed text must be the verbatim WEB
text. It is also precisely the kind of silent drift the verbatim-QA gate exists to catch, and it
would be stored in the `challenge` table and rendered to players as-is.

**Fix (either is acceptable):** restore the lowercase initial, or mark the quotation with a leading
ellipsis ("…but they mocked…", "…to fulfill Yahweh's word…") to show it is picked up mid-sentence.
Note item 7's recall string *already* uses a leading ellipsis while its display quotation does not —
so the recall string is fine and only the display quotation needs the fix.

### Finding C — items 3, 10, 11: trimmed verses no longer labelled trimmed. **Must fix.**

Three items quote a partial verse with no trim marker. This is the same defect as
`docs/reviews/genesis-easy-review.md` §6.2, and in two of the three cases the `medium` brief's own
correct label was dropped in the port to this tier:

- **Item 3 (29:18)** — full WEB verse: *"Then they went in to Hezekiah the king within the palace
  and said, 'We have cleansed all Yahweh's house, including the altar of burnt offering with all its
  vessels, and the table of show bread with all its vessels.'"* The brief quotes from "We have
  cleansed" and tags it "(WEB, already-approved verse, new blank than `medium`'s)". `medium` tagged
  this verse "(WEB, trimmed)"; the label was lost.
- **Item 10 (35:18)** — the verse continues past where the brief stops: *"…nor did any of the kings
  of Israel keep such a Passover as Josiah kept—with the priests, the Levites, and all Judah and
  Israel who were present, and the inhabitants of Jerusalem."* The brief tags it "(WEB)"; `medium`
  tagged it "(WEB, trimmed)". Label lost.
- **Item 11 (29:5)** — full WEB verse begins *"and said to them, 'Listen to me, you Levites!…'"*. The
  brief quotes from "Listen to me" and tags it "(WEB, new)" — this one is newly introduced by the
  tier passes, so no label was lost, it was never applied. (`docs/content/2-chronicles-easy.md` item
  12 has the identical unlabelled trim and will need the same fix at its own review.)

**Fix:** tag all three "(WEB, trimmed)" per the `medium` brief's existing convention, and/or use a
leading ellipsis. No text needs to change — the words shown are verbatim in all three cases.

## 3. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

Every item tested against: *does this require a player to affirm anything beyond narrative fact or
direct verse text?*

| Item | Graded token | In-bounds basis (§2) | Result |
|---|---|---|---|
| 1 — 5:1 | "house" | Direct verse recall | Pass |
| 2 — 5:7 | "cherubim" | Direct verse recall / setting detail | Pass |
| 3 — 29:18 | "cleansed" | Direct verse recall (quotation attributed in-text) | Pass; see Finding H |
| 4 — 29:10 | "anger" | Direct quotation attributed in-text (Hezekiah) | Pass; see §4.3 and Finding G |
| 5 — 34:19 | "clothes" | Narrative fact | Pass |
| 6 — 34:31 | "soul" | Direct verse recall | Pass |
| 7 — 36:21 | "years" | Direct verse recall | Pass; see §4.2 |
| 8 — 36:23 | "heaven" | Direct quotation attributed in-text (Cyrus) | Pass — inherited bounding from `medium` |
| 9 — 7:3 (boss) | "forever" | Direct verse recall | Pass — unchanged from approved `medium` |
| 10 — 35:18 (boss) | "Passover" | Direct verse recall | Pass — unchanged from approved `medium`; see Finding I |
| 11 — 29:5 (boss) | "filthiness" | Direct quotation attributed in-text (Hezekiah) | Pass; see §4.4 |
| 12 — 36:16 (boss) | "remedy" | Direct verse recall | Pass; see §4.1 |

**No item asks for doctrinal interpretation, a denominational position, a historicity/scientific
judgment, or a moral evaluation.** As with the Genesis hard tier, the all-typed-recall format
actually *lowers* exposure relative to multiple choice: a blank on a verbatim word has no distractor
set through which an interpretive claim could be smuggled in, and none of the twelve stems asks
"why".

**Exclusion check — confirmed.** I read the brief in full and searched it. **2 Chronicles 7:14
appears only in exclusion statements** (header, Contested Territory, acceptance criteria) and
**2 Chronicles 36:17 likewise** — neither is selected as challenge-ready content, quoted as verse
text, or used as an answer anywhere. Item 12 stops at the end of 36:16, and the two verses are
separated by a clean sentence break in WEB (36:16 ends "…until there was no remedy." / 36:17 begins
"Therefore he brought on them the king of the Chaldeans…"), so there is no risk of the display text
bleeding across. The exclusion holds cleanly. The `docs/ingest/1-2-kings-1-2-chronicles.sql` file
likewise contains neither verse.

**Paraphrase-as-quotation check (§3 final bullet):** none found. Every string presented as scripture
was matched to live WEB text in §2. The two capitalisation deviations (Finding A) and the three
unlabelled trims (Finding C) are integrity-of-presentation defects, not invented text.

## 4. Contested-Territory Cross-Check

### 4.1 Item 12 — 2 Chr 36:16, "until there was no remedy". **Bounding holds.**

The brief's claim is that this is causation-adjacent in the same way as the already-bounded 2 Kings
17:7 material. Checked across three traditions:

- **Jewish** — [Sefaria, II Chronicles 36:16](https://www.sefaria.org/api/texts/II_Chronicles.36.16?context=0):
  "But they mocked the messengers of God and disdained those words and taunted those prophets until
  G<small>OD</small>'s wrath against this people grew **beyond remedy**." Hebrew עַד־לְאֵין מַרְפֵּא.
- **Catholic** — [USCCB, NABRE 2 Chronicles 36](https://bible.usccb.org/bible/2chronicles/36):
  "…until the LORD's anger against his people blazed up **beyond remedy**." The footnotes at vv.
  15–16 are cross-references only (Jer 7:25, Heb 1:1, Mt 23:34-37) — no interpretive gloss.
- **Classic Protestant commentary** — [Bible Hub, 2 Chronicles 36:16](https://biblehub.com/commentaries/2_chronicles/36-16.htm):
  commentators are, unusually, **substantially convergent** on this clause. Poole: "Because the
  people would not repent, and God would not pardon them." Gill: "till there was no remedy; or
  healing of them; there was no reclaiming or recovering of them." Geneva: "Till God could no longer
  allow their sins, but must punish them."

**Why the bounding holds rather than merely sounds plausible:** the graded token is "remedy", and
*all three traditions' own translations use that same word* (JPS "beyond remedy", NABRE "beyond
remedy", WEB "no remedy") — it renders the uncontested Hebrew מַרְפֵּא (healing/cure). No commentator
consulted disputes what the clause says; the disagreements about divine judgment in history attach to
*application beyond the text*, which this item never reaches. The item is recall-only, grades a noun
the text supplies outright, and asks nothing about whether national calamity generally indicates
divine judgment. The brief's parallel to 2 Kings 17:7 is apt, and 36:16 is arguably *safer* than
17:7, since 17:7 states the cause in the narrator's voice ("It was so because…") while 36:16 states
it as a bare narrative sequence.

### 4.2 Item 7 — 2 Chr 36:21, the Jeremiah seventy-years framing. **Bounding holds, but a real live disagreement exists nearby — add a forward-looking guard.**

The brief claims no cross-tradition dispute was found on the number itself. That is correct as far as
it goes, and I confirmed it:

- **Jewish** — [Sefaria, II Chronicles 36:21](https://www.sefaria.org/api/texts/II_Chronicles.36.21?context=0):
  "in fulfillment of the word of G<small>OD</small> spoken by Jeremiah, until the land paid back its
  sabbaths; as long as it lay desolate it kept sabbath, till **seventy years** were completed."
- **Catholic** — [USCCB, NABRE 2 Chronicles 36](https://bible.usccb.org/bible/2chronicles/36): "All
  this was to fulfill the word of the LORD spoken by Jeremiah: Until the land has retrieved its lost
  sabbaths… while **seventy years** are fulfilled."

Both agree with WEB on the number, on the attribution to Jeremiah, and on the sabbaths-of-the-land
framing. **The graded token is the word "years", which is not in dispute in any source consulted.
The item passes.**

**However — and the brief did not surface this — there is genuine, live, mainstream disagreement one
step away from the graded token.** [Bible Hub's commentary aggregation on 36:21](https://biblehub.com/commentaries/2_chronicles/36-21.htm)
shows commentators diverging substantially on *when the seventy years run*: Ellicott and Barnes date
the start from the fourth year of Jehoiakim (605 BC, via Jer 25:1 and Dan 1:1), the Pulpit Commentary
uses 606–605 BC, and Barnes flags a further two-year end-date problem ("the historical date of the
taking of Babylon by Cyrus is 538 B.C., or two years earlier") before concluding "the term 'seventy'
may be taken as a round number, and the prophecy as sufficiently fulfilled by a desolation which
lasted 68 years." Keil & Delitzsch go further and reject the chronological framing outright: "The
connection between the prophecy of Jeremiah and the provision of the law is to be understood
theologically, and does not purport to be calculated chronologically."

That is a live dispute about chronology and about whether the number is literal or round — the same
species of trap as Ur-vs-Haran at Gen 12:1 in `docs/reviews/genesis-easy-review.md` §6.4. **Item 7
does not touch it** (it grades the word "years", not a date, not a start point, not a calculation),
but a future authoring pass easily could. **Recommended change 4 below adds the guard.**

### 4.3 Item 4 — 2 Chr 29:10, Hezekiah's "fierce anger" line. **Bounding holds.**

The brief's claim — in-text direct quotation of Hezekiah's own stated intent, not a general claim
about divine anger and national calamity — is accurate on the text and confirmed cross-tradition:

- **Jewish** — [Sefaria, II Chronicles 29:10](https://www.sefaria.org/api/texts/II_Chronicles.29.10?context=0):
  "Now I wish to make a covenant with the E<small>TERNAL</small> God of Israel, whose rage may
  hopefully be withdrawn from us." Hebrew חֲרוֹן אַפּוֹ.
- **Translation spread** — [Bible Hub parallel, 2 Chr 29:10](https://biblehub.com/2_chronicles/29-10.htm):
  KJV/Webster "fierce wrath", WEB/NIV/ESV "fierce anger", NASB "burning anger".

Every source renders the same referent; they differ only in English word choice, and the differences
are stylistic, not tradition-marked (the "wrath"/"anger" split runs older-vs-modern English, not
Protestant-vs-Catholic-vs-Jewish). Crucially the clause is **Hezekiah speaking in the first person
about his own intention** — §2's "direct quotations attributed in-text" category, the same instrument
already used for Josiah at 2 Kings 22:13. The item grades one word inside a displayed quotation and
extends to no general proposition. **Pass.**

### 4.4 Item 11 — 2 Chr 29:5, "carry the filthiness out of the holy place". **In-bounds, but the brief's coverage statement omits it. Must fix (documentation only).**

The brief's closing Contested Territory bullet asserts "No other new contested ground" and then
enumerates items **1, 2, 3, 5, 6, 8** — items 9 and 10 are inherited unchanged from approved
`medium`, but **item 11 (29:5) is genuinely new to this tier and is not covered by any bullet.** It
should be, because the approved `medium` brief already carries a live note on exactly this scene:
*"Hezekiah's and Josiah's reforms — destruction of idolatrous worship sites… touch the same
just-war/iconoclasm-adjacent territory the style guide flags for conquest narratives generally,"*
with the stated mitigation that the chosen verses "describe positive restoration acts… rather than
the destruction acts."

**My assessment: 29:5 stays comfortably inside that existing bounding.** It is a commissioning
instruction to sanctify and clean the temple; the graded token "filthiness" is the text's own word
for what is removed, and the item never touches the destruction of high places or the disposal
narrative at 29:16. But the brief should say so rather than silently omit it — the Genesis-easy
review flagged the same class of problem (§6.3, scope stated but not covered). **Fix: add item 11 to
the coverage bullet, tying it explicitly to `medium`'s existing reforms/iconoclasm note.**

### 4.5 Inherited ground — spot-checked, no change

- **36:23, Cyrus as instrument of Yahweh (item 8).** `medium`'s bounding (test only what this book's
  own text states; no cross-book Isaiah "Cyrus my anointed" typology) is intact — item 8 grades
  "heaven" inside the decree's own words. No change.
- **36:22-23 vs. 2 Kings 25:27-30, the two endings.** Not engaged by any item in this tier beyond the
  already-approved 36:23 recall. No change.
- **Divine name "Yahweh".** Displayed in items 1, 2, 3, 4, 8, 9, 11, 12. Settled inherited ground
  (Open Decision #1 fixes WEB as the MVP translation); recorded for the trail only, no action, no
  re-litigation. Notably it is never a graded token in this tier.
- **7:14.** Excluded, confirmed absent (§3). The exclusion is stated three times in the brief and
  correctly characterised as full exclusion, not recall-only restriction.

## 5. Findings on citation accuracy and content hygiene

### Finding B — the brief cites two *unreviewed* briefs as settled precedent. **Must fix.**

The Contested Territory section leans on three cross-book precedents. Checked against
`docs/CONTENT_REVIEW_LOG.md` and `docs/reviews/`:

| Precedent as the brief states it | Actual status |
|---|---|
| "already-approved 2 Kings 17:7" | **Correct.** 17:7 is a challenge-ready verse in `docs/content/2-kings.md` (medium), logged `approved` 2026-08-08. |
| "already-approved 2 Kings 17:18" | **Incorrect.** 17:18 appears only in `docs/content/2-kings-hard.md`, which is status `submitted`, has no review file, and has no row in `CONTENT_REVIEW_LOG.md`. |
| "already-approved 2 Kings 17:23" (for item 7) | **Correct.** In `docs/content/2-kings.md` (medium), approved. |
| "2 Kings 22:13's already-reviewed item… see `docs/content/2-kings-easy.md`" (for item 4) | **Incorrect.** 22:13 appears only in `docs/content/2-kings-easy.md`, which is status `submitted`, unreviewed, no log row. |

Only Genesis's easy/hard tiers have been reviewed to date; every other book's tier briefs are
`submitted`. This does not invalidate anything — I verified items 4 and 12 directly against live
sources in §4 rather than relying on the precedent chain, and both hold on their own merits — but a
brief that cites unreviewed content as approved precedent is exactly how an unreviewed bounding
becomes load-bearing three briefs later. **Fix: restate the 17:18 and 22:13 references as "the same
bounding proposed (not yet reviewed) at `2-kings-hard.md` / `2-kings-easy.md`", and anchor the
"already-approved" claims to 17:7 and 17:23 in `docs/content/2-kings.md` only.**

### Finding D — 29:5 is used in *both* new tiers, unacknowledged. **Recommended.**

`docs/content/2-chronicles-easy.md` item 12 (boss MC) and this brief's item 11 (boss recall) both
draw on 2 Chr 29:5. The brief's closing parenthetical discusses only *scene*-level overlap with
`easy` and does not mention that the verse itself is shared. Cross-tier verse reuse in different
formats is defensible — different difficulty modes are alternative paths, not a sequence — but it
should be a stated decision rather than an apparent collision, especially since `medium`'s boss set
does not use 29:5 at all and the two tier briefs were drafted in the same pass. **Recommend adding
one sentence acknowledging it.**

### Finding E — the boss-reuse parenthetical is self-contradictory as written. **Recommended.**

Lines 108–112 read "…drawn from the two scenes `easy`'s new boss items also touched (2 and 1… here
reassigned to 2 and 4)". `Easy`'s new boss items are 7:2 (scene 1) and 29:5 (scene 2); this tier's
are 29:5 (scene 2) and 36:16 (scene 4). The underlying claim — that reusing `medium`'s 7:3 (scene 1)
and 35:18 (scene 3) plus new items in scenes 2 and 4 makes this boss set span all four scenes — is
**correct and I verified it**, including that `easy` explicitly reserved 7:3 and 35:18 for this tier
so all four `medium` boss items are reused exactly once across the two new tiers. The sentence just
doesn't say that. **Recommend rewriting for clarity;** no content change.

### Finding F — item 9's "trimmed" tag (7:3). **Non-blocking.**

BibleGateway returns 7:3 in full as exactly the string the brief quotes, so the "(WEB, trimmed)" tag
appears to be inaccurate — but it is inherited verbatim from the approved and QA-passed `medium`
brief, so I am not disturbing it here. Flagging for `docs/qa/2-chronicles-hard-verbatim-qa.md` to
confirm the verse boundary rather than for the drafter to change.

## 6. Answer-key precision notes (the Genesis-easy defect class)

The `easy` pilot's most substantive finding was an answer key with a second defensible answer. I
checked all twelve keys for that failure mode. **No item has an ambiguous key** — every item displays
its verse with a single blank, so the anchoring problem that afflicted the unanchored MC stem at Gen
8:11 cannot arise in this format. Three softer risks are worth recording:

- **Finding G — item 4 (29:10), the blank falls on the one translation-divergent word.** The graded
  answer is "anger"; KJV and Webster's read "wrath" at exactly this position, and Sefaria's JPS reads
  "rage" (all confirmed live, §1 and §4.3). A KJV-formed player doing typed recall will very
  plausibly type "wrath" and be marked wrong on a word where their Bible agrees with them. This is
  not a style-guide violation — WEB is the fixed MVP translation and the surrounding displayed text
  is WEB — but it is the same *shape* of problem as Gen 8:11. **Recommended:** either move the blank
  to a translation-stable word in the same verse (e.g. "…to make a ___ with Yahweh" → **covenant**),
  or keep "anger" as deliberate hard-tier difficulty and record the decision, with the answer
  normaliser rejecting "wrath" rather than silently near-matching it.
- **Finding H — item 3 (29:18), synonym pressure on a verb.** "We have ___ all Yahweh's house" →
  "cleansed" invites "cleaned", "purified", "sanctified" — and "sanctify" is the very verb the same
  chapter uses four times in item 11's verse. Typed recall of verbs is more synonym-exposed than
  typed recall of nouns. Design note for the answer-matching layer, not a review defect.
- **Finding I — item 10 (35:18), the answer appears later in the displayed stem.** "There was no ___
  like that kept in Israel… nor did any of the kings of Israel keep such a **Passover** as Josiah
  kept." The answer is visible in the prompt. Inherited verbatim from approved `medium`, so out of
  scope to change here; noting it because it makes a boss item trivially easy in a tier explicitly
  designed for precise recall.

## 7. Verdict

**`approved-with-changes`.**

**Blocking (apply before ingestion):**

1. **Items 7 and 12** — restore WEB's lowercase sentence-initial "to fulfill" (36:21) and "but they
   mocked" (36:16), or mark both display quotations with a leading ellipsis (Finding A).
2. **Items 3, 10, 11** — tag the trimmed quotations "(WEB, trimmed)" per the `medium` brief's
   convention; no text change needed (Finding C).
3. **Contested Territory** — add item 11 (29:5) to the coverage bullet, tied to `medium`'s existing
   Hezekiah/Josiah reforms-and-iconoclasm note (§4.4).
4. **Contested Territory** — correct the precedent citations: 2 Kings 17:18 and 22:13 are **not**
   already-approved; only 17:7 and 17:23 (in `docs/content/2-kings.md`) are (Finding B).

**Recommended (none blocks on its own):**

5. **Add a forward-looking format restriction for 36:21**, in the style of the Gen 22:13 / Gen 12:1
   guards: *no challenge in any tier may grade when the seventy years began or ended, how they are
   calculated against the sabbatical years, or whether the number is literal or round* — mainstream
   commentators genuinely divide on all three (§4.2). Grading the word "years" is fine and is what
   item 7 does.
6. **Item 4 (29:10)** — resolve the "anger"/"wrath" answer-key exposure per Finding G, either by
   moving the blank or by recording the decision to keep it.
7. **Acknowledge the 29:5 cross-tier reuse** with `docs/content/2-chronicles-easy.md` (Finding D) and
   **rewrite the boss-reuse parenthetical** at lines 108–112 (Finding E).
8. **Record the 29:10 fetch-discrepancy resolution** in the brief: WEB reads "fierce anger" on four
   live sources; "fierce wrath" is the KJV/Webster reading and was almost certainly translation bleed
   in the fetch path, not a WEB variant (§1).

**Not escalated.** All three contested items the brief flagged were checked against real, live
sources representing genuinely different traditions — Sefaria (Jewish), USCCB/NABRE (Catholic), Bible
Hub's classic-commentary aggregation (Protestant, and internally varied) — and in each case the
graded token turned out to be a word those traditions' own translations render identically
("remedy", "years", and a first-person quotation of Hezekiah). That convergence is what makes the
narrative-only bounding hold rather than merely sound plausible. The one genuine live disagreement I
found (the seventy-years chronology, §4.2) does not bear on any graded answer key, and
recommendation 5 exists to keep it that way. No graded item requires a denominational position.

**Residual risk, stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer originally scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in
`MEMORY.md`, 2026-08-08). Per `docs/CONTENT_REVIEW_LOG.md`, Open Decision #7 is now closed and Kachi
Okere is the named human reviewer for escalations — nothing here required escalation, but a human
specialist could still weigh the 36:16 judgment-causation framing differently than I have.

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/2-chronicles-hard-verbatim-qa.md`), which must specifically re-check (a) the corrected
capitalisation at 36:16 and 36:21, (b) the three trim labels, (c) item 9's inherited "trimmed" tag on
7:3, and (d) divine-name rendering, preferring `ebible.org/web` or BibleGateway over `engwebp` per
§1. Logging this review in `docs/CONTENT_REVIEW_LOG.md` is the calling session's task, not this
reviewer's.

---

### Sources cited in this review

**World English Bible text**
- https://www.biblegateway.com/passage/?search=2+Chronicles+29%3A5%3B+2+Chronicles+29%3A10%3B+2+Chronicles+29%3A18&version=WEB
- https://www.biblegateway.com/passage/?search=2+Chronicles+5%3A1%3B+2+Chronicles+5%3A7%3B+2+Chronicles+7%3A3%3B+2+Chronicles+34%3A19%3B+2+Chronicles+34%3A31&version=WEB
- https://www.biblegateway.com/passage/?search=2+Chronicles+36%3A16%3B+2+Chronicles+36%3A17%3B+2+Chronicles+36%3A21%3B+2+Chronicles+36%3A23%3B+2+Chronicles+35%3A18&version=WEB
- https://biblehub.com/web/2_chronicles/5.htm
- https://biblehub.com/web/2_chronicles/29.htm
- https://biblehub.com/web/2_chronicles/34.htm
- https://biblehub.com/web/2_chronicles/36.htm
- https://ebible.org/web/2CH29.htm
- https://ebible.org/engwebp/2CH29.htm
- https://ebible.org/engwebp/2CH36.htm
- https://biblehub.com/2_chronicles/29-10.htm (parallel translations, KJV/NIV/ESV/NASB/WEB)

**Cross-tradition sources**
- https://www.sefaria.org/api/texts/II_Chronicles.29.10?context=0 (Jewish — JPS/Hebrew)
- https://www.sefaria.org/api/texts/II_Chronicles.36.16?context=0 (Jewish — JPS/Hebrew)
- https://www.sefaria.org/api/texts/II_Chronicles.36.21?context=0 (Jewish — JPS/Hebrew)
- https://bible.usccb.org/bible/2chronicles/36 (Catholic — NABRE with footnotes)
- https://biblehub.com/commentaries/2_chronicles/36-16.htm (Protestant classics — Poole, Gill, Geneva, Barnes, Pulpit)
- https://biblehub.com/commentaries/2_chronicles/36-21.htm (Protestant classics — Ellicott, Barnes, Pulpit, Keil & Delitzsch)
