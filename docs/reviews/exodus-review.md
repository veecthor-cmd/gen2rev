# Theological Review — Exodus (World 2)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored
`docs/content/exodus.md`, following the exact procedure in
`.claude/agents/theological-reviewer.md`.
Brief reviewed: `docs/content/exodus.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`

---

## 1. Verse-Text Verification

| Verse(s) | Sources checked | Result |
|---|---|---|
| Ex 3:1-15 | [ebible.org (WEB)](https://ebible.org/web/EXO03.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Exodus+3&version=WEB) | **Match, two independent sources** |
| Ex 12:12-14, 12:29-30 | [ebible.org (WEB)](https://ebible.org/web/EXO12.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Exodus+12&version=WEB) | **Match, two independent sources** |
| Ex 20:1-17 | [ebible.org (WEB)](https://ebible.org/web/EXO20.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Exodus+20&version=WEB) | **Match with one minor discrepancy — see note below** |
| Ex 14:13-31 | [ebible.org (WEB)](https://ebible.org/web/EXO14.htm) | Match, single source only — **flag for QA §3** |
| Ex 19:3-8 | [ebible.org (WEB)](https://ebible.org/web/EXO19.htm) | Match, single source only — **flag for QA §3** |
| Ex 32:1-6, 15-20, 30-32 | [ebible.org (WEB)](https://ebible.org/web/EXO32.htm) | Match, single source only — **flag for QA §3** |

**Discrepancy note (Ex 20:4):** the ebible.org fetch returned "...or that is **on** the earth
beneath..." while the biblegateway.com fetch returned "...or that is **in** the earth beneath..."
— a one-word difference, likely a WebFetch extraction artifact rather than a real difference
between the two published texts, but genuinely present in the two fetches as returned. **This verse
(Ex 20:4) is not used as a challenge-ready verse in this brief** (the brief uses 20:2-3 and
20:12-15 from this chapter), so it does not affect any graded content, but flagging it explicitly
for `QA_REQUIREMENTS.md` §3 since it's exactly the kind of single-word slip that automated
extraction can introduce and the dedicated QA pass exists to catch. All other verses in Ex 20:1-17
matched character-for-character between both sources.

No other mismatches found. As with the Genesis review, both fetches go through an automated
extraction step (WebFetch summarizes page content via a small model), so this review's confidence
is high but not a substitute for the dedicated character-for-character QA pass — prioritize the
single-source-only rows above, plus a manual re-check of Ex 20:4 specifically.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line is attributed to a specific WEB
  reference, and all trims are marked "(trimmed)" with ellipses inside the quoted text itself.
  **Pass.**
- All challenge-ready content is narrative fact or direct verse text — no editorial doctrinal
  commentary in the brief itself. **Pass.**
- Difficulty-ladder examples stay within narrative-fact/textual-detail territory even at the
  "application" level (Level 5 asks what the text says Yahweh used to divide the sea, not why or
  how theologically). **Pass.**
- **One real error found and corrected during this review:** the brief's original Contested
  Territory section, discussing the hardening of Pharaoh's heart, claimed that Exodus 14:17
  "appears inside the Red Sea challenge-ready block above as scene-setting narration." This was
  checked against the brief's actual Scene 3 challenge-ready verses (Ex 14:21-22 and 14:30-31
  only) and found to be **false** — 14:17 was never included. This is exactly the kind of
  self-review catch this process exists for. Corrected during this review: rewrote the paragraph to
  state accurately that no hardening verse appears anywhere in the brief's challenge-ready content,
  and added a structural rule (see §3 below) rather than leave an inaccurate claim standing.

## 3. Contested-Territory Cross-Check

### The hardening of Pharaoh's heart
Confirmed as genuine, live, unresolved cross-tradition disagreement, not previously flagged with
this level of specificity before this review:
- **Calvinist/Reformed reading:** God actively hardens Pharaoh's heart as the primary cause (citing
  Ex 9:12, 10:1, 10:20, 10:27, 11:10, 14:4, 14:8), with Pharaoh's own hardening (Ex 8:15, 8:32,
  9:34) read as the human-side description of the same divine act.
- **Arminian/non-Calvinist reading:** Pharaoh hardens his own heart first (citing the same 8:15,
  8:32, 9:34 verses as *initiating*), and God's hardening comes later, in judgment, after Pharaoh's
  own repeated refusal.
- [Sources: overview of the Calvinist/Arminian textual argument](http://www.midwestapologetics.org/articles/theology/pharaohsheart.pdf), [Arminian case](https://evidenceunseen.com/theology/calvinism-versus-arminianism/biblical-defense-of-arminianism), [Reformed case discussion](https://allthingsnewcovenant.com/2024/11/04/the-hardening-verses-of-exodus-a-discussion/).
- **Jewish tradition** has its own distinct fault line, not reducible to the Christian one:
  Maimonides reads the hardening as a *punishment* — God withdrew Pharaoh's capacity for repentance
  only after Pharaoh had already sinned freely and severely (Laws of Repentance 6:3) — while other
  rabbinic voices (Albo, Sforno) read the hardening as *restoring* Pharaoh's genuine free will, so
  that his continued refusal (not merely capitulation under duress from the plagues) would be truly
  his own choice. [Source: Sefaria-hosted source sheet surveying these readings](https://www.sefaria.org/sheets/318574).

**This is a real, unresolved, cross-tradition disagreement bearing directly on how a reader
understands a recurring plot beat in the book.** The brief's original approach (bounding a single
hardening verse to "narrative fact only") was the same technique that worked for Genesis 22, but on
reflection this case is different in kind: the *fact itself* ("Pharaoh's heart was hardened") is
inseparable from *whose agency caused it*, which is exactly what the traditions disagree about, and
the verse text itself alternates between the two framings depending on which verse you pick. A
narrative-only bounding on one selected verse can't neutralize that the way it could for Genesis
22's "what happened" vs. "why." **Change made:** rather than select and narratively-bound one
hardening verse, the brief now excludes every hardening verse from challenge-ready content
entirely (see the brief's Contested Territory section, updated as part of this review). This is
the more conservative fix and keeps the motif fully out of graded content.

### The divine name (Exodus 3:14-15)
Confirmed: WEB's rendering of the Tetragrammaton as "Yahweh" is a stated translation convention,
not unique to WEB, but Jewish tradition (Talmudic-era through today) does not pronounce the
Tetragrammaton or its scholarly reconstructions ("Yahweh," "Jehovah") aloud, substituting Adonai,
Elohim, or HaShem instead. [Source: Chabad.org on why the name isn't pronounced](https://www.chabad.org/library/article_cdo/aid/6359796/jewish/The-Tetragrammaton-Why-We-Dont-Pronounce-G-ds-Four-Letter-Name.htm), [GotQuestions overview of the Tetragrammaton](https://www.gotquestions.org/YHWH-tetragrammaton.html).
This is a genuine practice difference, but it is about pronunciation/liturgical practice, not a
disputed doctrinal claim about the text's meaning — the text itself states God's self-identification
as "I AM WHO I AM" and gives the name "Yahweh" (3:14-15) as narrative fact, which is what the
brief's challenge items test. **No change required** to challenge content; recommend (not requiring)
that fill-in-blank items built from 3:14 favor "I AM WHO I AM" (the text's own self-designation) over
prompting a player to type "Yahweh" from scratch, as a low-cost prudence measure given the practice
difference — noted in the brief already as a question for the reviewer, now answered: soft
recommendation, not a hard structural rule, since this is a practice difference rather than a
disputed truth-claim.

### Numbering of the Ten Commandments (Exodus 20:1-17)
Confirmed genuine three-way difference: Jewish tradition counts "I am Yahweh your God who brought
you out of Egypt" as commandment 1 (not a preamble); Catholic and Lutheran tradition (following
Augustine's numbering) combines "no other gods" and "no idols" into one commandment and splits the
coveting clause into two (9 and 10); Protestant/Reformed and Orthodox tradition (following Origen's
numbering) keeps "no other gods" and "no idols" separate and keeps the coveting clause as one.
[Source: overview of Catholic/Protestant numbering differences](https://www.learnreligions.com/different-versions-of-the-ten-commandments-250923), [numbering origins](https://www.modernreformation.org/resources/articles/the-theology-of-numbering-the-ten-commandments).
**The brief's bounding holds** — no challenge item numbers the commandments; items test content,
textual order, and verbatim recall only. This is already stated as an explicit rule in the brief.
No change needed.

### The tenth plague / death of Egypt's firstborn (Exodus 12:29-30)
This is a sensitivity question (per this assignment's instructions) more than a cross-tradition
doctrinal one — no tradition disputes that the text narrates this event. **Change made:** added a
structural rule restricting Ex 12:29-30 to recall/sequence format only, and requiring it be
sequenced after the Passover-institution verses (12:12-14) rather than presented first, so a young
player's first exposure to this beat is the protective/memorial framing, not the death account in
isolation. See the brief's updated Contested Territory section.

### The golden calf and Aaron's culpability (Exodus 32)
Not independently deep-researched this pass — this is a narrower, lower-stakes item than the other
three (no live doctrinal fault line comparable to the hardening or commandment-numbering questions
was found in preliminary searching). The brief's existing narrative-only bounding (what happened,
not an evaluation of Aaron's guilt) is consistent with the style guide's general "moral judgment"
rule and doesn't require a source-backed cross-tradition check the way a specific doctrinal dispute
would. No change needed.

## 4. Verdict

**`approved-with-changes`** — three changes made, all applied directly to `docs/content/exodus.md`
during this review:

1. Corrected a factual error (the false claim that Ex 14:17 appears in challenge-ready content).
2. Removed the hardening-of-Pharaoh's-heart motif from challenge-ready content entirely (structural
   exclusion, not just narrative bounding), given genuine unresolved cross-tradition disagreement
   that a single-verse narrative bounding couldn't fully neutralize.
3. Added a structural format/sequencing restriction on Exodus 12:29-30 (the tenth plague) as a
   sensitivity measure.

**Not escalated.** Every contested item found has either a narrative-only bounding that holds up
against real cross-tradition sources, or (in the hardening case) was resolved by excluding the
motif from graded content rather than relying on a bounding that felt too thin under scrutiny. No
item was found requiring a human call this reviewer isn't confident making.

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3 — especially the single-source-only rows in §1 above, and a manual
character-level check of Exodus 20:4 given the one-word discrepancy noted there (though that verse
isn't used in graded content). That QA pass is a distinct check from this theological/neutrality
review and still must run before ingestion, per `BACKEND_REQUIREMENTS.md` §4.
