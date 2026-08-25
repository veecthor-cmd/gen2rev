# Theological Review — Exodus, Easy Tier (World 2)

Reviewer: `theological-reviewer` agent, run 2026-08-20.
Brief reviewed: `docs/content/exodus-easy.md`
Checked against: `docs/CONTENT_STYLE_GUIDE.md` (§§1–6), `docs/CANON_STRUCTURE.md` §2 (Exodus = Law
group, world 2), `docs/content/exodus.md` (approved medium tier, `approved-with-changes`) and
`docs/reviews/exodus-review.md` (source of the two inherited structural rules), plus
`docs/ingest/exodus-leviticus.sql` (what medium actually ingests) and `docs/QA_SIGNOFF.md`.
Pilot precedent studied before review, per the review request:
`docs/reviews/genesis-easy-review.md` (unanchored-MC-stem ambiguity) and
`docs/reviews/genesis-hard-review.md` (Finding A — re-cutting a blank out of an already-QA'd
multi-verse block without re-checking).

**Verdict: `approved-with-changes`.** Two required fixes (§6.1, §6.2), four recommended (§6.3–§6.6).
Both inherited structural rules were checked directly: the **hardening-of-Pharaoh's-heart exclusion
holds completely** (§4.1), and the **Ex 12:29-30 format restriction is honored in letter but
undercut in substance** (§6.2). No escalation, but §6.2 carries an explicit human-confirmation
condition if the drafter wants to keep the item as written.

---

## 1. Verse-Text Verification

Every verse the brief asserts was checked against live World English Bible sources, regardless of
the brief's claim that no new text was fetched for this tier. That claim is examined separately in
§5.1 — it is **not accurate**, which is why I re-verified all of it rather than accepting the
inheritance argument.

| Item | Verse | Source(s) checked | Result |
|---|---|---|---|
| 1 | Ex 3:5 | [ebible.org WEB EXO03](https://ebible.org/web/EXO03.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A5-8%3B+Exodus+19%3A5-6%3B+Exodus+32%3A31-32&version=WEB) | **Match** — "Don't come close. Take off your sandals, for the place you are standing on is holy ground." |
| 2 | Ex 3:7-8 | [ebible.org WEB EXO03](https://ebible.org/web/EXO03.htm) | **Text matches, but the trim differs from `medium` and is unmarked** — see §6.3 |
| 3 | Ex 12:12-13 | [ebible.org WEB EXO12](https://ebible.org/web/EXO12.htm) | **Match** across the 12/13 verse boundary, including "I am Yahweh." ending v12 |
| 4 | Ex 12:29-30 | [ebible.org WEB EXO12](https://ebible.org/web/EXO12.htm) | **Text matches verbatim; blank position changed from `medium`** — see §6.2 |
| 5 | Ex 14:30-31 | [ebible.org WEB EXO14](https://ebible.org/web/EXO14.htm) | **Match**, ellipsis correctly marks the elided "; and Israel saw the Egyptians dead on the seashore." Note "believed in Yahweh and in his servant Moses" carries **no** comma before "and" — the brief is correct |
| 6 | Ex 19:5-6 | [ebible.org WEB EXO19](https://ebible.org/web/EXO19.htm) | **Match** across the 5/6 boundary; end-truncated mid-v6 without ellipsis (§6.3) |
| 7 | Ex 20:12-15 | [ebible.org WEB EXO20](https://ebible.org/web/EXO20.htm) | **Text matches. Answer key is unsafe** — see §6.1 |
| 8 | Ex 32:1 | [ebible.org WEB EXO32](https://ebible.org/web/EXO32.htm) | **Quoted portion matches**; verse actually begins "When the people saw that Moses delayed coming down from the mountain," — trim is labelled but has no leading ellipsis (§6.3) |
| 9 | Ex 14:21-22 | [ebible.org WEB EXO14](https://ebible.org/web/EXO14.htm) | **Match** — "a strong east wind" confirmed |
| 10 | Ex 3:14; 19:8; 20:2-3 | [ebible.org WEB EXO03](https://ebible.org/web/EXO03.htm), [EXO19](https://ebible.org/web/EXO19.htm), [EXO20](https://ebible.org/web/EXO20.htm) | **Match** — "I AM WHO I AM"; "All that Yahweh has spoken we will do."; "I am Yahweh your God, who brought you out of the land of Egypt, out of the house of bondage. You shall have no other gods before me." |
| 11 | Ex 32:19-20 | [ebible.org WEB EXO32](https://ebible.org/web/EXO32.htm) | **Match** — "tablets" confirmed as the blanked token |
| 12 | Ex 32:31-32 | [ebible.org WEB EXO32](https://ebible.org/web/EXO32.htm), [BibleGateway WEB](https://www.biblegateway.com/passage/?search=Exodus+3%3A5-8%3B+Exodus+19%3A5-6%3B+Exodus+32%3A31-32&version=WEB) | **Match** across the 31/32 boundary, including the em dash in "forgive their sin—and if not" |

**No character-level mismatch was found in any verse text the brief displays.** Unlike the Genesis
hard tier, there is no spliced or re-ordered composite quotation here — I specifically checked every
multi-verse block (3:7-8, 12:12-13, 12:29-30, 14:30-31, 19:5-6, 20:12-15, 32:31-32) for the Finding A
pattern and every one is contiguous and in text order.

### 1.1 Edition warning for the QA pass — ebible.org has two WEB editions and they differ

My first fetch used `https://ebible.org/engwebp/EXO12.htm` and returned **"At midnight, **the LORD**
struck all the firstborn…"**. Re-fetching the same verses from `https://ebible.org/web/EXO12.htm`
returned **"At midnight, **Yahweh** struck…"**. The `engwebp` edition renders the Tetragrammaton as
"the LORD"; the `web` edition renders it "Yahweh". Both are live and both are called "World English
Bible".

This matters beyond this review: `docs/reviews/genesis-hard-review.md` cites `ebible.org/engwebp/…`
URLs as its verification source. **Recommendation for the calling session:** fix
`https://ebible.org/web/` (the Yahweh-rendering edition) as the canonical verification URL in
`QA_REQUIREMENTS.md`, since Open Decision #1 and every ingested `verse_text` value in
`docs/ingest/exodus-leviticus.sql` use "Yahweh". Verifying against `engwebp` would produce false
mismatches on every verse containing the divine name. Not a defect in this brief.

## 2. Style-Guide Compliance (§2 in-bounds / §3 out-of-bounds)

Each item tested against: *does this require the player to affirm anything beyond narrative fact or
direct verse text?*

| Item | Graded task | In-bounds basis | Result |
|---|---|---|---|
| 1 Ex 3:5 | MC — "his sandals" | §2 narrative fact | Pass |
| 2 Ex 3:7-8 | MC — "deliver his people out of the hand of the Egyptians" | §2 direct quotation attributed in-text | Pass — grades what God said he came to do, not the land promise (§4.2) |
| 3 Ex 12:12-13 | MC — "he would pass over them" | §2 direct quotation attributed in-text | Pass — protective framing, no elaboration on the plague |
| 4 Ex 12:29-30 | Recall — "dead" | §2 direct verse recall | Doctrinally in-bounds; **sensitivity concern**, §6.2 |
| 5 Ex 14:30-31 | MC — "they believed in Yahweh and in his servant Moses" | §2 narrative fact | Pass |
| 6 Ex 19:5-6 | MC — "his own possession, a kingdom of priests and a holy nation" | §2 direct quotation attributed in-text | Pass (§4.3); distractor note §6.4 |
| 7 Ex 20:12-15 | MC — "Honor your father and your mother" | §2 narrative fact | **Fail on answer-key integrity** (§6.1); doctrinally in-bounds |
| 8 Ex 32:1 | MC — "gods to go before them" | §2 direct quotation attributed in-text | Pass — asks what was requested, never evaluates Aaron |
| 9 Ex 14:21-22 | MC — "a strong east wind" | §2 narrative fact | Pass — unchanged from approved `medium` |
| 10 Ex 3:14/19:8/20:2-3 | Sequence | §2 sequencing | Pass — unchanged from approved `medium` |
| 11 Ex 32:19-20 | Recall — "tablets" | §2 direct verse recall | Pass — unchanged from approved `medium` |
| 12 Ex 32:31-32 | MC — "blot me out of your book which you have written" | §2 direct quotation attributed in-text | Pass (§4.4) |

**No item asks a player to affirm a doctrinal interpretation, a denominational position, a
historicity/scientific claim, or a moral judgment.** In particular, no item anywhere asks *why* God
did something, *whether* an action was justified, or *what a phrase means theologically*. Item 8
correctly stops at what the people asked Aaron for and never touches Aaron's culpability.

## 3. Paraphrase-Presented-As-Quotation Check (§3, final bullet)

**No invented or reworded text is presented as scripture anywhere in the brief.** Every string in
quotation marks framed as verse text was matched to live WEB text in §1. This is the check the
Genesis hard tier failed (Gen 9:13 composite); Exodus easy passes it cleanly.

Three items are *end-truncated mid-verse without an ellipsis* (items 2, 6, 8). That is a labelling
convention issue, not paraphrase — the displayed words are verbatim — but `docs/reviews/exodus-review.md`
§2 recorded that `medium` marks "all trims … with ellipses inside the quoted text itself," and these
three don't. Recorded as a recommended change (§6.3), consistent with how `docs/reviews/genesis-easy-review.md`
§6.2 handled the same shape.

## 4. Contested-Territory Cross-Check

### 4.1 Inherited rule 1: the hardening of Pharaoh's heart — **exclusion holds, fully confirmed**

I searched the brief's entire text for the motif rather than trusting its self-assertion. Result:
**no hardening verse appears anywhere in this brief** — not as a challenge-ready verse, not as
displayed context, not inside any multi-verse block. Specifically checked and absent: Ex 4:21, 7:3,
8:15, 8:32, 9:12, 9:34, 10:1, 10:20, 10:27, 11:10, 14:4, 14:8, 14:17.

The two Exodus 14 verses this brief *does* use (14:21-22, 14:30-31) were verified against
[ebible.org WEB EXO14](https://ebible.org/web/EXO14.htm) and contain no hardening language — 14:21-22
is the wind/division/crossing, 14:30-31 is the aftermath and Israel's response. The adjacent
hardening verses 14:4, 14:8 and 14:17 are not quoted, paraphrased, or alluded to. The word "harden"
and its cognates do not occur in `docs/content/exodus-easy.md` outside the Contested Territory
section's own statement of the exclusion.

**No graded item, distractor, or displayed verse touches the divine-sovereignty/free-will fault line**
that `docs/reviews/exodus-review.md` §3 documented (Calvinist/Reformed vs. Arminian/Wesleyan, and
separately Maimonides' withdrawal-of-repentance reading vs. Albo/Sforno's restoration-of-free-will
reading). The exclusion is not violated.

### 4.2 Ex 3:7-8, "a land flowing with milk and honey" (brief's new flag #1) — **bounding holds**

The brief asks the reviewer to confirm this. Checked against
[Bible Hub, Exodus 3:8 commentaries](https://biblehub.com/commentaries/exodus/3-8.htm) — Cambridge,
Matthew Poole, Keil & Delitzsch and others. Result: commentators are **substantially convergent**,
reading the phrase as proverbial for agricultural abundance rather than as a delimited territorial
claim; none of the aggregated classic commentaries makes a modern geopolitical claim. The one point
of friction (Poole defending the land's literal fertility against detractors) is antiquarian, not
doctrinal, and touches nothing the item grades.

The graded answer is "deliver his people out of the hand of the Egyptians," which is a verbatim
clause of v8 that precedes the milk-and-honey phrase entirely. **The brief's proposed structural
rule** — no challenge may ask a player to identify or bound the promised land, or connect it to a
present-day territorial claim — **is sound, and I recommend adopting it as written.** It correctly
mirrors the Gen 12:1 bounding already in force.

One note the brief did not make: WEB's v8 continues past "milk and honey" into "to the place of the
Canaanite, the Hittite, the Amorite, the Perizzite, the Hivite, and the Jebusite"
([ebible.org WEB EXO03](https://ebible.org/web/EXO03.htm)). That clause **is** where a territorial-
scope item could plausibly be built, so the structural rule should explicitly name it: the
peoples-list clause is display-only at most, never a graded token, never an MC subject.

### 4.3 Ex 19:5-6, "a kingdom of priests and a holy nation" (brief's new flag #2) — **bounding holds**

This is the brief's most substantial new flag and the divergence it names is **real and live**, in a
sharper form than the brief describes.

- **Classic Christian commentary** — [Bible Hub, Exodus 19:6](https://biblehub.com/commentaries/exodus/19-6.htm)
  (Ellicott, Barnes, Gill, Matthew Henry, Cambridge, Keil & Delitzsch). *Every* major commentator on
  the page links the phrase to 1 Peter 2:9 and applies it to the Church; Ellicott states the same
  privileges "belong to all Christians, who … are now 'the Israel of God.'" They then diverge among
  themselves on whether the "kingdom" element is spiritual (Ellicott, Cambridge) or entails actual
  rule over nations culminating in Christ's reign (Keil & Delitzsch).
- **Jewish tradition** — [Sefaria, Rashi on Exodus 19:6](https://www.sefaria.org/api/texts/Rashi_on_Exodus.19.6?context=0).
  Rashi does not read *kohanim* as "priests" here at all. He glosses it as **princes/leaders**,
  arguing from 2 Samuel 8:18 (David's sons called *kohanim* though of Judah, not Levi) that the word
  denotes rank rather than priestly office — so the promise is that Israel becomes "a kingdom of
  princes." No Christological or ecclesial transfer whatsoever; a different lexical reading before
  the theological question is even reached.

So there are **two genuine divergences**: (a) whether the description transfers to the Church, and
(b) what *kohanim* means in this verse.

**The bounding holds, and here is why it actually holds rather than merely sounding plausible.** The
graded content is the WEB text's own words — "my own possession … a kingdom of priests and a holy
nation" — attached to the condition the verse itself states ("if you will indeed obey my voice and
keep my covenant"). The question stem asks what God said **Israel** would be **to him**, in the
narrative moment at Sinai. Every source above agrees that is what the verse says of Israel; they
disagree only about what follows *afterwards*, which the item never asks. A Jewish, Catholic,
Orthodox or Protestant player answering this item affirms nothing their tradition disputes.

**I recommend adopting the brief's proposed structural rule as written**, with one addition: it
should state that **no challenge may ask what "priests" means in this verse**, since Rashi's
princes/leaders reading makes that a genuinely contested lexical question, not merely a contested
theological one. See also the distractor concern at §6.4, which is a direct consequence of this.

*Attempted and unavailable:* [USCCB, Exodus 19 (NABRE)](https://bible.usccb.org/bible/exodus/19)
returned **HTTP 403** on this pass, so I could not add a Catholic-edition rendering/footnote to the
above. Stating that plainly rather than substituting recalled knowledge. The two traditions actually
consulted (classic Protestant aggregation; Jewish/Rashi) are genuinely different traditions and are
sufficient for the bounding conclusion, but a Catholic and an Orthodox source remain unchecked on
this specific verse.

### 4.4 Ex 32:31-32, "blot me out of your book which you have written" (brief's new flag #3) — **bounding holds**

Checked against [Bible Hub, Exodus 32:32 commentaries](https://biblehub.com/commentaries/exodus/32-32.htm).
The divergence the brief anticipated is real and the commentators split openly:

- **Temporal reading** — Benson and Matthew Henry hold Moses meant simply "let me die"; Benson says
  reading it as eternal exclusion makes Moses "talk a language quite unnatural."
- **Eternal reading** — Pulpit Commentary and Keil & Delitzsch extend the book to "life before God,
  first in the earthly kingdom of God, and then eternal life also."
- They converge only on Moses' *intent* (self-sacrificial intercession, cf. Romans 9:3), not on what
  the book is.

That is precisely a §3 "doctrinal interpretation" question, and it would be out-of-bounds to grade.
**The item does not grade it.** It grades what Moses *asked*, quoting the verse verbatim; the answer
option is a direct substring of WEB Ex 32:32. All parties to the disagreement agree those are the
words Moses said. **The brief's proposed structural rule is correct and should be adopted as
written.**

### 4.5 Inherited rule 2: Ten-Commandments numbering neutrality — **honored as stated, but see §6.1**

No item numbers a commandment, and no stem or option asks "which commandment is #N". The rule as
literally written is honored.

However, the brief treats commandment-*numbering* neutrality as covering this ground, and it does
not cover the adjacent problem I found in item 7: cross-tradition divergence in the **verse
numbering** of Exodus 20. That is a distinct issue and is written up as a required change in §6.1.

### 4.6 Inherited: the divine name "Yahweh"

Items 3, 4, 5, 6, 9, 10, 11 and 12 display WEB's "Yahweh". This is settled, inherited ground — Open
Decision #1 fixes WEB, `docs/reviews/exodus-review.md` §3 already adjudicated it as a
pronunciation/practice difference rather than a disputed truth-claim, and its soft recommendation
was that recall items favour "I AM WHO I AM" over prompting a player to type "Yahweh" from scratch.
**That soft recommendation is respected here:** the two typed-recall items in this tier blank "dead"
(item 4) and "tablets" (item 11); no item asks a player to type "Yahweh". Recorded for the trail
only; no action.

### 4.7 Items with no new contested ground — spot-checked, confirmed

Items 1 (3:5), 5 (14:30-31), 8 (32:1), 9 (14:21-22), 10 and 11 were checked for unflagged contested
ground. Item 5's "they believed in Yahweh and in his servant Moses" sits near questions about
Moses' prophetic authority, but the item grades the narrated response verbatim and asks nothing
about the nature of that authority. Item 9's "a strong east wind" sits near naturalistic-vs-
miraculous explanations of the crossing, which is §3 historicity territory — but the item grades the
means the text itself names, exactly as `docs/content/exodus.md`'s difficulty ladder already
approved at `medium`, and offers no naturalistic/miraculous framing in the options. No change.

## 5. Findings on the Brief's Own Claims

### 5.1 "No new verses were fetched for this tier" — **not accurate**

The brief's header argues there is "no fresh-fetch verbatim-QA surface beyond what `medium` already
carries," and its acceptance criteria propose skipping independent verbatim QA on that basis. That
reasoning does not hold, for three separate reasons:

1. **Item 2 is trimmed further than `medium`.** `docs/content/exodus.md` renders Ex 3:7-8 as
   *"Yahweh said, 'I have surely seen the affliction…'"*. This brief drops the speech frame
   "Yahweh said," and opens directly at "'I have surely seen…'". That is a new trim, not a reuse.
2. **Item 4 re-cuts the blank.** `docs/ingest/exodus-leviticus.sql` (sort_order 5) blanks
   **"firstborn"**; this brief blanks **"dead"**. The surrounding text is identical, but the
   answer-key token is new and unreviewed. This is structurally the same move that produced Finding A
   in `docs/reviews/genesis-hard-review.md` — re-cutting a blank out of a previously-QA'd block. Here
   the text survived intact, but the *content* decision did not (see §6.2).
3. **Item 7's option strings differ from `medium`'s.** SQL sort_order 10 uses "Remember the Sabbath
   day to keep it holy", "You shall not covet your neighbor's house", "You shall make no idols"; the
   brief abbreviates the first two. Distractor strings are player-facing content.

**Consequence:** the acceptance-criteria line proposing to skip verbatim QA for this tier should be
struck. Items 2, 4, 7 and 12 in particular need the independent QA pass. (Every one of them checks
out against live sources in §1 above — but that is my check, not the independent
`QA_REQUIREMENTS.md` §3 check, and the two are deliberately distinct.)

*Related documentation conflict, for the calling session, not a defect in this brief:*
`docs/content/exodus.md`'s header still says its verbatim QA "has not run" and blocks ingestion,
while `docs/QA_SIGNOFF.md` line 29 records Exodus as **`pass`, 16 verses, 2026-08-08** and
`docs/ingest/exodus-leviticus.sql` line 3 asserts the same. The QA evidently *did* run; the medium
brief's header is stale. Worth correcting so a future tier isn't reasoning from a stale block notice.

### 5.2 "Item 7 is a new format" — **it is a duplicate of an approved `medium` item**

The brief tags item 7 "(WEB, already-approved verse, new format)". It is not a new format: SQL
sort_order 10 is already `multiple_choice`, with the **identical stem** ("Which of these instructions
appears in Exodus 20:12-15?") and the identical correct answer. Item 1 is likewise close to
`medium`'s sort_order 1 prompt wording. This affects the brief's stated novelty ratio, and it means a
player who plays both tiers will meet the same question twice. Design nit, outside my remit
theologically — but the *inaccuracy of the "new format" label* matters, because it is the label that
would otherwise have prompted a fresh look at the item, and the item turns out to have a defect
(§6.1) that has been sitting in approved `medium` content since ingestion.

### 5.3 Item count and boss count — **verified, brief is correct**

The brief claims `medium` ingests 12 challenge rows with 4 `is_boss_item = true`, and says it
verified this against the SQL rather than assuming. Confirmed: `docs/ingest/exodus-leviticus.sql`
Exodus block has 12 value rows (sort_order 1–12), with `true` at sort_order 5, 6, 11 and 12. The
brief's shape-matching claim holds.

## 6. Required and Recommended Changes

### 6.1 — Item 7 (Ex 20:12-15): the answer key has a second defensible answer. **[required]**

The stem asks which instruction "appears in Exodus 20:12-15" and offers "You shall not covet" as a
distractor. In WEB's versification this is correct — coveting is Ex 20:17, confirmed at
[ebible.org WEB EXO20](https://ebible.org/web/EXO20.htm) (12 = honor father/mother, 13 = murder,
14 = adultery, 15 = steal, 16 = false testimony, 17 = covet).

**But Exodus 20 is versified differently in the Jewish/Masoretic tradition, and under that
versification "You shall not covet" falls at Exodus 20:14 — inside the cited range.** Verified:

- [Sefaria, Exodus 20](https://www.sefaria.org/api/texts/Exodus.20?context=0) — v12 "Honor your
  father and your mother…"; **v13 carries murder, adultery, theft and false witness together in a
  single verse**; **v14 is "You shall not covet your neighbor's house…"**.
- [tanach.us, "Decalogues"](https://www.tanach.us/Supplements/Decalogues.html) — corroborates
  independently: "The Jewish Publication Society Tanach (1999) and Etz Hayim chumash (2001) have
  **14 verses per Decalogue**," against 16 in the KJV-derived versification the UXLC follows. The
  page further documents that the Masoretic tradition itself carries *two* verse-division systems
  (lower and upper cantillation) for the Decalogue.

So a player reading from a JPS Tanach, an Etz Hayim chumash, or any Masoretic-versified edition finds
**two** of the four options inside Exodus 20:12-15. This is the `docs/reviews/genesis-easy-review.md`
§6.1 defect (a stem with more than one textually-correct answer, with one of them offered as a
distractor) — except that here the second correct answer arises specifically from a **cross-tradition
difference**, which makes it a `CONTENT_STYLE_GUIDE.md` §3 "denominational positions" concern as well
as an accuracy one: as written, the answer key silently requires the Christian versification to be
the right one.

**Fix — pick one:**

1. **Preferred: drop the verse-range dependency from the stem.** Rewrite as "Which of these
   instructions is given in the verses shown?" with the item's own displayed WEB text (20:12-15) as
   the anchor. The player then answers from the text in front of them, not from a versification
   scheme. This is fully tradition-neutral and needs no distractor change.
2. **Or: replace the "You shall not covet" distractor** with something outside the Decalogue's
   second table under *either* versification — e.g. "You shall not misuse the name of Yahweh your
   God" (20:7 in both schemes, comfortably outside 20:12-15 either way).

Do **not** fix this by simply adding "in the World English Bible" to the stem — that grades a
translation's versification, which is worse.

**This same defect exists in already-approved `medium` content** (`docs/ingest/exodus-leviticus.sql`,
sort_order 10, identical stem and distractor). Flagging to the calling session: the medium item needs
the same fix, and this review's finding should be carried back to `docs/content/exodus.md` and
`docs/reviews/exodus-review.md`. It was missed at medium review because the numbering-neutrality rule
was framed around *commandment* numbering, and this is *verse* numbering.

### 6.2 — Item 4 (Ex 12:29-30): move the blank off "dead". **[required]**

The inherited structural rule from `docs/reviews/exodus-review.md` restricts this verse to
recall/sequence format and requires it be sequenced after the Passover-institution material, so that
"a young player's first exposure to this beat is the protective/memorial framing, not the death
account in isolation." The brief satisfies both conditions **literally** — the item is recall, and it
sits after item 3.

But the brief also changed which word is blanked. `medium` blanks **"firstborn"**
(`docs/ingest/exodus-leviticus.sql`, sort_order 5). This tier blanks **"dead"** — the single most
graphic word in the verse, as the graded token, in the tier explicitly designed so "a first-time or
younger player can succeed." The rule exists to keep a young player from dwelling on the death
account; making them type the word "dead" to score a point runs against exactly that purpose, while
technically staying inside the format restriction. The brief does not mention the change or justify
it, and appears not to have noticed it (it asserts the item is an unchanged reuse — see §5.1).

**Fix:** restore `medium`'s blank — "At midnight, Yahweh struck all the ___ in the land of Egypt…"
→ **firstborn** — or blank another neutral token ("midnight"). The displayed verse text stays
verbatim and complete either way; only the graded token changes.

**Condition, stated explicitly:** if the drafter wants to keep "dead" as the graded token, that
specific decision should go to a human before ingestion rather than being settled by this review. It
sits on the child-safety guardrail in `GEN2REV_MASTER_PROMPT.md` §5, and while I am confident the
conservative fix above is correct and sufficient, I am not the right party to authorise the
non-conservative option. Applying the fix removes the question entirely.

### 6.3 — Items 2, 6, 8: mark mid-verse trims with ellipses. **[recommended]**

`docs/reviews/exodus-review.md` §2 records that `medium` marks all trims "with ellipses inside the
quoted text itself," and item 5 in this brief does exactly that. Three items don't:

- **Item 2 (Ex 3:7-8)** — drops the opening "Yahweh said," with no leading ellipsis, and stops at
  "milk and honey" though v8 continues "; to the place of the Canaanite, the Hittite, the Amorite,
  the Perizzite, the Hivite, and the Jebusite." Restore `medium`'s "Yahweh said," (it is also useful
  attribution) and add a trailing ellipsis.
- **Item 6 (Ex 19:5-6)** — stops at "a holy nation." though v6 continues "These are the words which
  you shall speak to the children of Israel." Add a trailing ellipsis.
- **Item 8 (Ex 32:1)** — begins mid-verse at "The people gathered themselves together," with the
  article capitalised; the verse opens "When the people saw that Moses delayed coming down from the
  mountain, the people gathered…". Add a leading ellipsis (or restore the full verse).

None of these is paraphrase and none changes a graded answer; this is the labelling hygiene
`docs/reviews/genesis-easy-review.md` §6.2 required for Gen 8:11.

### 6.4 — Item 6 (Ex 19:5-6): consider replacing the "a nation of kings" distractor. **[recommended]**

The answer key is textually unambiguous (WEB reads "priests"). But per §4.3, Rashi reads *kohanim*
here as **princes/leaders**, giving "a kingdom of princes"
([Sefaria](https://www.sefaria.org/api/texts/Rashi_on_Exodus.19.6?context=0)), and Keil & Delitzsch
develop an actual-kingship sense of the "kingdom" element
([Bible Hub](https://biblehub.com/commentaries/exodus/19-6.htm)). A player formed by either reading
may be drawn to "a nation of kings" — a distractor that is wrong on the WEB text but resonant with a
mainstream commentary tradition. Same shape as the "a lamb" distractor noted at
`docs/reviews/genesis-easy-review.md` §5.2, and slightly sharper because it attaches to a lexical
dispute rather than a nearby verse. Consider a plainly-wrong swap (e.g. "a tribe of judges").

### 6.5 — Strengthen the three proposed structural rules before adopting. **[recommended]**

All three of the brief's proposed rules are sound and should be adopted (§4.2, §4.3, §4.4). Two need
a clause added:

- **Ex 3:7-8** — add: the peoples-list clause of v8 ("to the place of the Canaanite, the Hittite,
  the Amorite, the Perizzite, the Hivite, and the Jebusite") is display-only at most, never a graded
  token and never an MC subject. That clause, not "milk and honey", is where a territorial-scope item
  would actually get built.
- **Ex 19:5-6** — add: no challenge may ask what "priests" means in this verse, or ask a player to
  choose between renderings of *kohanim*. The existing rule covers the 1 Peter 2:9 transfer question
  but not the lexical one, and Rashi's reading makes the lexical one live.

### 6.6 — Strike the acceptance-criteria claim that verbatim QA can be skipped. **[recommended]**

Per §5.1, items 2, 4, 7 and 12 carry new player-facing strings or new answer-key tokens relative to
`medium`. The independent `QA_REQUIREMENTS.md` §3 pass should run on this tier, prioritising those
four items plus the corrected items from §6.1 and §6.2, and using `https://ebible.org/web/` (not
`engwebp`) per §1.1.

## 7. Verdict

**`approved-with-changes`.**

Every verse this brief displays is verbatim-correct against live WEB text — no composite quotation,
no misattributed reference, no paraphrase presented as scripture. Every one of the 12 items is
in-bounds under `CONTENT_STYLE_GUIDE.md` §2 and clear of all five §3 prohibitions on its face.

**Both inherited structural rules were checked directly, not taken on the brief's word:**

- **The hardening-of-Pharaoh's-heart exclusion is fully intact.** No hardening verse appears
  anywhere in the brief in any capacity (§4.1). This is the one the review request asked me to
  confirm, and it confirms cleanly.
- **The Ex 12:29-30 restriction is honored in letter but weakened in substance** — the format and
  sequencing conditions are met, but the graded token was silently moved to "dead" (§6.2). Required
  fix, with a human-confirmation condition attached if the drafter wants to keep it.

**Blocking (apply before ingestion):**

1. **§6.1 — Item 7 (Ex 20:12-15).** Answer key has a second defensible answer under Jewish/Masoretic
   versification, where "You shall not covet" is Ex 20:14. **This defect is also live in already-
   approved `medium` content** and needs carrying back.
2. **§6.2 — Item 4 (Ex 12:29-30).** Move the blank off "dead", back to `medium`'s "firstborn".

**Recommended:** §6.3 (ellipsis convention, items 2/6/8), §6.4 (Ex 19:6 distractor), §6.5 (two added
clauses to the proposed structural rules), §6.6 (do not skip verbatim QA).

**All three contested items the brief flagged were checked against real sources representing
genuinely different traditions and their bounding holds** — in each case because the graded token
turned out to be text the disagreeing traditions render identically, which is what makes a
narrative-only bounding real rather than merely plausible. The land promise (§4.2) is graded on a
clause that precedes the contested phrase; the kingdom-of-priests promise (§4.3) is graded on what
Israel would be to God at Sinai, which Rashi and the Christian commentators state identically even
while disagreeing about *kohanim* and about transfer to the Church; the book of Ex 32:32 (§4.4) is
graded on what Moses asked, which every side of the temporal-vs-eternal dispute agrees on.

**Not escalated** — but two things are recorded here for a human rather than resolved by me: the
§6.2 keep-"dead" option if the drafter contests the fix, and the unchecked Catholic/Orthodox angle on
Ex 19:6 noted in §4.3 after [USCCB](https://bible.usccb.org/bible/exodus/19) returned HTTP 403.

**Residual risk stated plainly:** this review was performed by an AI agent standing in for the named
human theological reviewer scoped in `GEN2REV_MASTER_PROMPT.md` (substitution logged in `MEMORY.md`,
2026-08-08; Open Decision #7 still has no named human reviewer, so a §6.2 escalation would currently
have nowhere to land). A human specialist may weigh the versification question in §6.1 or the
sensitivity question in §6.2 differently.

**Outstanding, not this reviewer's job:** independent verbatim-text QA per `QA_REQUIREMENTS.md` §3
(`docs/qa/exodus-easy-verbatim-qa.md`), per §6.6; carrying the §6.1 fix back into
`docs/content/exodus.md`, `docs/reviews/exodus-review.md` and `docs/ingest/exodus-leviticus.sql`;
correcting the stale QA-blocking notice in `docs/content/exodus.md`'s header (§5.1); and fixing the
canonical ebible.org edition URL in `QA_REQUIREMENTS.md` (§1.1). `docs/CONTENT_REVIEW_LOG.md` is to
be updated by the calling session, not by this reviewer.

---

### Sources cited in this review

**World English Bible text verification**
- https://ebible.org/web/EXO03.htm
- https://ebible.org/web/EXO12.htm
- https://ebible.org/web/EXO14.htm
- https://ebible.org/web/EXO19.htm
- https://ebible.org/web/EXO20.htm
- https://ebible.org/web/EXO32.htm
- https://ebible.org/engwebp/EXO03.htm (edition-divergence check, §1.1)
- https://ebible.org/engwebp/EXO12.htm (edition-divergence check, §1.1)
- https://www.biblegateway.com/passage/?search=Exodus+3%3A5-8%3B+Exodus+19%3A5-6%3B+Exodus+32%3A31-32&version=WEB

**Cross-tradition doctrinal / versification checks**
- https://www.sefaria.org/api/texts/Exodus.20?context=0 (Jewish versification of the Decalogue, §6.1)
- https://www.sefaria.org/api/texts/Rashi_on_Exodus.19.6?context=0 (Rashi, *kohanim* as princes, §4.3)
- https://www.tanach.us/Supplements/Decalogues.html (Masoretic Decalogue verse divisions, §6.1)
- https://biblehub.com/commentaries/exodus/3-8.htm (milk and honey, §4.2)
- https://biblehub.com/commentaries/exodus/19-6.htm (kingdom of priests / 1 Peter 2:9, §4.3)
- https://biblehub.com/commentaries/exodus/32-32.htm (the book — temporal vs eternal, §4.4)
- https://bible.usccb.org/bible/exodus/19 — **attempted, HTTP 403, not consulted** (§4.3)

**Project documents**
- `docs/content/exodus-easy.md`, `docs/content/exodus.md`, `docs/reviews/exodus-review.md`
- `docs/reviews/genesis-easy-review.md`, `docs/reviews/genesis-hard-review.md`
- `docs/CONTENT_STYLE_GUIDE.md`, `docs/CANON_STRUCTURE.md`, `docs/QA_SIGNOFF.md`
- `docs/ingest/exodus-leviticus.sql`
