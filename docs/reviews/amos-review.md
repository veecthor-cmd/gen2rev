# Theological Review — Amos (World 30)

Reviewer: `theological-reviewer` agent process, self-applied by the same session that authored
`docs/content/amos.md`, following the exact procedure in
`.claude/agents/theological-reviewer.md`.
Brief reviewed: `docs/content/amos.md`
Style guide checked against: `docs/CONTENT_STYLE_GUIDE.md`, `docs/CANON_STRUCTURE.md` §6.

---

## 1. Verse-Text Verification

| Verse(s) | Sources checked | Result |
|---|---|---|
| Amos 1:3, 1:6, 1:9, 1:11, 1:13, 2:1, 2:4 (formula/nation-list verses) | [ebible.org](https://ebible.org/web/AMO01.htm) | Match, single source only — **flag for QA §3** |
| Amos 2:6, 2:7, 2:8 | [ebible.org](https://ebible.org/web/AMO02.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Amos+2%3A6-8&version=WEB) | **Match, two independent sources** |
| Amos 5:11, 5:12 | [ebible.org](https://ebible.org/web/AMO05.htm) | Match, single source only — **flag for QA §3** |
| Amos 5:21, 5:23, 5:24 | [ebible.org](https://ebible.org/web/AMO05.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Amos+5%3A21-24&version=WEB) | **Match, two independent sources** |
| Amos 7:14, 7:15 | [ebible.org](https://ebible.org/web/AMO07.htm), [biblegateway.com (WEB)](https://www.biblegateway.com/passage/?search=Amos+7%3A14-15&version=WEB) | **Match, two independent sources** |

One useful catch this pass: an initial automated read of Amos 5:24 risked being misquoted using
non-WEB phrasing ("let justice roll down like waters, and righteousness like an ever-flowing
stream" — the NRSV/RSV rendering, a well-known and frequently-cited version of this verse). Direct
verification against both ebible.org and biblegateway.com's `version=WEB` confirms the actual WEB
text reads **"let justice roll on like rivers, and righteousness like a mighty stream"** — a
different, though closely related, wording. The brief's challenge-ready quotation was written to
match the verified WEB text, not the more commonly-known non-WEB phrasing. This is exactly the kind
of catch the two-source verification step exists to make (cf. the Leviticus and 1 Chronicles
reviews' truncation catches) and should be called out explicitly to whoever runs the follow-on QA
pass, since the popular non-WEB wording is likely to be many reviewers' mental default.

No other mismatches found. As with prior reviews, both fetches go through an automated extraction
step, so confidence is high but not a substitute for the dedicated character-for-character QA pass
in `QA_REQUIREMENTS.md` §3 — that pass should prioritize the single-source-only rows above (the
nation-formula verses in 1-2 and the 5:11-12 pair).

## 2. Style Guide Compliance

- No paraphrase presented as direct quotation — every quoted line is attributed to a specific WEB
  reference. **Pass**, with the 5:24 catch above now correctly resolved to actual WEB wording.
- All challenge-ready content is narrative fact or direct verse text — no editorial doctrinal
  commentary added by the brief itself. **Pass.**
- The nations-oracle passage (1-2) is used only at the narrative-summary/identification level for
  the seven nations not directly quoted, and the two quoted formula/charge verses (2:6, 2:7) state
  only the text's own charge, not an evaluation of it. **Pass.**
- Amos 2:7's second sentence (sexual content unsuitable for a child-directed MVP) is correctly
  omitted from the challenge-ready quotation and described only at a narrative-summary level in the
  brief's own prose. **Pass** — same technique the Leviticus brief used for its most sensitive
  material.
- Difficulty-ladder Level 5 example tests only the text's own stated charge against Israel (2:6),
  explicitly not a comparative judgment about the nations' relative guilt. **Pass.**

## 3. Contested-Territory Cross-Check

### The judgment oracles' severity (Amos 1-2)
No genuine cross-tradition doctrinal dispute found on the narrative facts themselves (that the text
announces these punishments); this is a sensitivity/style-guide-boundary question, not a
cross-tradition one, and is handled the same way Joshua's conquest oracles and Leviticus 10 are
handled elsewhere in this project — narrative-summary only, no evaluation of proportionality graded.
No change needed.

### Amos 9:11-12, "the tabernacle of David that is fallen" (excluded)
Received a real, sourced cross-tradition check even though the brief excludes it, to confirm the
exclusion itself is the right call:
- **Christian reading:** [enduringword.com's Amos 9 commentary](https://enduringword.com/bible-commentary/amos-9/)
  reads "the tabernacle of David" as restored specifically through "the Messiah, Jesus Christ,"
  directly connecting the passage's fulfillment to the New Testament. This is also the passage James
  quotes at the Jerusalem Council (Acts 15:16-17) to justify Gentile inclusion without circumcision —
  a foundational moment in the NT's account of the early church, confirmed by multiple sources
  including a scholarly comparison of the passage's Hebrew and Septuagint-Greek wording (the Hebrew
  says Israel will "possess the remnant of Edom"; the Greek Acts 15:17 quotes says instead "the
  remnant of mankind" will "seek the Lord" — a real translation-level divergence, not just a
  theological-reading one, per the [Andrews University source on Amos 9:11-12 in Acts 15](https://digitalcommons.andrews.edu/cgi/viewcontent.cgi?article=1215&context=pubs)).
- **Jewish tradition:** search for this review did not surface a comparably load-bearing
  traditional Jewish reading of 9:11-12 specifically (unlike, say, Joel 2:28's messianic-age reading
  or 1 Chronicles 21:1's "Satan" question, both of which have clear, citable rabbinic commentary).
  This asymmetry is itself notable: 9:11-12 functions as a foundational Christian proof-text (via
  Acts 15) with no comparably prominent role in Jewish tradition on the book's own OT terms — closer
  in shape to Isaiah 7:14/9:6-7/53's kind of one-sided-but-still-contested weight than to a genuine
  two-tradition disagreement over the same ground.

**Conclusion: the brief's exclusion is confirmed correct.** Given the passage's direct,
scripturally-load-bearing role in a New Testament event (Acts 15) that this OT-only product should
not reference, and the translation-level (not just interpretive-level) divergence between the
Hebrew and the Greek text the NT actually quotes, narrow bounding was reasonably judged insufficient
the same way it was for Isaiah's three excluded passages. No change needed — decision affirmed.

### Amos 2:7's sexual content (omitted from quotation)
No cross-tradition check needed; this is a child-safety/style-guide boundary, not a doctrinal one,
and the brief's handling (omit the sentence, describe only at narrative-summary level) is correctly
applied. No change needed.

## 4. Additional Item Found (not originally flagged with this specificity in the brief)

**The Amos 5:24 wording catch**, detailed in §1 above, is the substantive finding of this review —
not a style-guide violation in the delivered brief (the brief already has the correct WEB wording),
but worth flagging explicitly as a caught-in-time risk: had the more famous NRSV/RSV phrasing been
used instead, it would have been a paraphrase-presented-as-quotation violation under
`docs/CONTENT_STYLE_GUIDE.md` §3. No change needed to the brief as delivered; flagging for QA §3's
attention as instructed.

## 5. Verdict

**`approved`** — every check above passed; the brief's most contested excluded item (Amos 9:11-12)
received a real, cited cross-tradition check confirming exclusion was the right call, and a
wording-accuracy risk on this book's centerpiece verse (5:24) was caught and confirmed already
correctly resolved in the delivered brief.

**Not escalated.** No unresolved cross-tradition disagreement bears on any graded item in this
brief; the one passage with genuine theological weight (9:11-12) is excluded entirely rather than
narrowly bounded.

**Outstanding, not this reviewer's job:** the independent verbatim-text QA pass required by
`QA_REQUIREMENTS.md` §3, prioritizing the single-source-only rows in §1 above, and specifically
re-confirming the Amos 5:24 wording given the risk of confusion with the more widely-known
non-WEB phrasing noted above.
