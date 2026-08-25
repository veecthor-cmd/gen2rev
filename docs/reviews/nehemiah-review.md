# Theological Review — Nehemiah (World 16)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored the
brief, per `.claude/agents/theological-reviewer.md`'s exact procedure (steps 1-9) — the assignment
for this book explicitly calls for self-review rather than invoking the subagent separately.
Brief reviewed: `docs/content/nehemiah.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`
Canon context checked against: `docs/CANON_STRUCTURE.md` §6
Companion brief checked for consistency: `docs/content/ezra.md` and `docs/reviews/ezra-review.md`
(same session, same day — Scene 5 of that book was escalated; see §3 below for why this book's
comparable material was handled differently).

---

## 1. Verse-Text Verification

| Verse(s) | Sources checked | Result |
|---|---|---|
| Neh 1:1-11 | [ebible.org WEB, Neh 1](https://ebible.org/web/NEH01.htm), [biblegateway.com WEB, Neh 1-2,8](https://www.biblegateway.com/passage/?search=Nehemiah+1%2C+Nehemiah+2%2C+Nehemiah+8&version=WEB) | **Match, two independent sources** |
| Neh 2:1-8, 17-18 | [ebible.org WEB, Neh 2](https://ebible.org/web/NEH02.htm), [biblegateway.com WEB, Neh 1-2,8](https://www.biblegateway.com/passage/?search=Nehemiah+1%2C+Nehemiah+2%2C+Nehemiah+8&version=WEB) | **Match, two independent sources** |
| Neh 4:1-3, 6, 16-18 | [ebible.org WEB, Neh 4](https://ebible.org/web/NEH04.htm) | Match, single source only — **flag for QA §3** |
| Neh 6:15-16 | [ebible.org WEB, Neh 6](https://ebible.org/web/NEH06.htm) | Match, single source only — **flag for QA §3** |
| Neh 8:1-3, 5-6, 8-10, 17 | [ebible.org WEB, Neh 8](https://ebible.org/web/NEH08.htm), [biblegateway.com WEB, Neh 1-2,8](https://www.biblegateway.com/passage/?search=Nehemiah+1%2C+Nehemiah+2%2C+Nehemiah+8&version=WEB) | **Match, two independent sources** (8:9-10 specifically cross-checked) |
| Neh 9:1-3, 38 | [ebible.org WEB, Neh 9](https://ebible.org/web/NEH09.htm) | Match, single source only — **flag for QA §3** |
| Neh 13:15-27 | [ebible.org WEB, Neh 13](https://ebible.org/web/NEH13.htm), [biblegateway.com WEB, Neh 13](https://www.biblegateway.com/passage/?search=Nehemiah+13&version=WEB) | **Match, two independent sources** |

Nehemiah 13:15-27 (including the excluded 13:23-27) was deliberately cross-checked against two
sources given its sensitivity, even though 13:23-27 is excluded from challenge-ready content and
from the scene description — the underlying text still needed verifying since the brief discusses
its exclusion by name. No mismatches found anywhere. Prioritize the single-source rows (Neh 4, 6:15-
16, 9:1-3/38) for the independent QA §3 pass.

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line is attributed to a specific WEB
  reference, and trimmed quotations use ellipses rather than silently rewording. **Pass.**
- All challenge-ready content is narrative fact or direct verse text. **Pass.**
- The brief excludes Nehemiah 13:23-27 (including its most severe clause, 13:25) from both
  challenge-ready content and the scene description itself — a stronger move than a
  challenge-content-only exclusion, matching the pattern `docs/reviews/2-samuel-review.md` praised
  for the Uzzah exclusion. **Pass.**
- Difficulty-ladder examples stay within narrative-fact/textual-detail territory even at the
  "application" level. **Pass.**

## 3. Contested-Territory Cross-Check

### Nehemiah 13:23-27, the recurrence of intermarriage and Nehemiah's violent response

Same underlying subject matter as `docs/content/ezra.md` Scene 5, which this same review session
escalated — so this item needed a deliberate, stated comparison rather than a default "handle it the
same way" or "handle it differently" without reasoning.

Sources: the WEB text itself (both ebible.org and biblegateway.com, confirmed above) plus the same
cross-tradition sourcing gathered for the Ezra review (Ligonier, cojs.org, and the broader academic
search on Ezra/Nehemiah's intermarriage material, which treats the two books' episodes as closely
related instances of the same underlying policy — see `docs/reviews/ezra-review.md` §3).

**Where this differs from Ezra 9-10, in this reviewer's judgment:**
1. **Scope and centrality.** Ezra 9-10 is two full chapters built entirely around the mass-divorce
   episode, with a closing list of named participants — it is the book's climactic scene. Nehemiah
   13:23-27 is six verses inside a chapter mostly about other reforms (Sabbath-keeping, temple
   administration, tithing) — a coda recording that the same underlying problem recurred, not a
   scene the book is centrally built around.
2. **What the brief actually asks the player to encounter.** For Ezra, even after excluding the most
   sensitive verses, the scene description still narrates that a national covenant was made to
   separate from foreign wives (because that *is* the scene). For Nehemiah, this brief excludes
   13:23-27 from the scene description entirely — the player-facing content is Sabbath reform only.
   There is no comparable "the scene still has to state what happened" problem here, because this
   brief does not treat 13:23-27 as a scene the game presents at all, narrowly or otherwise.
3. **The violence itself (13:25) is the most severe individual clause across either book's
   contested material** — more severe in isolation than anything in Ezra 9-10 — which is exactly why
   it gets the strongest available treatment (full exclusion, not narrative-only bounding) rather
   than a lighter one. This is not this reviewer treating Nehemiah's material as less serious; it's
   applying a stronger tool (exclusion) because a single verse, not an entire two-chapter scene, is
   the carrier of the risk.

**Confidence check, per `.claude/agents/theological-reviewer.md` step 7(b):** this reviewer is
reasonably, not fully, confident in this distinction — it is a real judgment call, and a different
reviewer could reasonably draw the line differently (e.g., treating any recurrence of the same
policy as needing the same escalation regardless of verse count). Given that, this review states the
reasoning explicitly in the brief itself (see `docs/content/nehemiah.md`'s Contested Territory
section) rather than deciding silently, so a later reader — including Kachi, when Ezra's Scene 5
escalation is resolved — can revisit this specific call if the reasoning doesn't hold up. This is a
softer form of the same safety-valve principle behind escalation, applied at the review-documentation
level rather than by escalating a scene this reviewer is otherwise confident is out of the game's
player-facing content entirely.

**Verdict for this item: `approved-with-changes`** (the exclusion, already applied), not
`escalate-to-human` — for the reasons above. If the calling session or Kachi judges this distinction
insufficient once Ezra's escalation is resolved, the correct fix is to escalate this scene too and
add an addendum here, not to silently reinterpret this section.

### Nehemiah 9's historical review prayer (9:4-37)
Confirmed this section narrates the same historical sweep (Exodus, wilderness, conquest) that
`docs/content/joshua.md` already handles in detail, including its ḥerem-related contested material.
**The brief's bounding holds** — no verse from 9:4-37 is selected as challenge-ready, avoiding any
need to re-litigate Joshua's already-reviewed bounding inside this book's brief. No change needed.

### Chronology of Ezra and Nehemiah
See `docs/reviews/ezra-review.md` §3 — same finding and same bounding applies here. No change
needed.

### Sanballat/Tobiah opposition and regional-identity questions
Not independently re-searched this pass — the brief selects no challenge-ready verse naming or
characterizing the opposing figures' identity beyond the bare fact that opposition occurred, so no
cross-tradition sourcing was required for style-guide compliance purposes. Approved as written on
the same low-cost-precaution logic as comparable unselected material in prior reviews.

## 4. Verdict

**`approved-with-changes`** — two concrete changes, both already applied to
`docs/content/nehemiah.md` as part of this review rather than left as a follow-up:

1. Nehemiah 13:23-27 excluded from challenge-ready content.
2. Nehemiah 13:25 (and the intermarriage-recurrence episode generally) excluded from the Scene 5
   description itself, not just from graded content.

**Not escalated.** See §3 above for the explicit reasoning distinguishing this book's comparable
material from `docs/content/ezra.md` Scene 5, which this same review session did escalate. This
review does not treat that distinction as beyond doubt — it is documented in full, in both this file
and the brief itself, specifically so it can be checked and revisited rather than taken on faith.

**Outstanding, not this review's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3 (especially the single-source-only rows in §1 above) — that is a distinct
check from this theological/neutrality review and still must run before ingestion, per
`BACKEND_REQUIREMENTS.md` §4.
