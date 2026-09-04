# Verbatim-Text QA — Mark (World 41)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/mark-review.md` (verdict: `approved-with-changes`, no open escalations).

QA reviewer: independent verbatim-QA pass (this session), 2026-09-04.
Brief checked: `docs/content/mark.md` (Medium tier, World 41 — first New Testament book to reach
this pass).

Prior sources (per brief + `docs/reviews/mark-review.md` §1): every challenge-ready verse was
already double-sourced against ebible.org and biblegateway.com (both WEB) during authoring/review,
with both reported as matching full verbatim text for all 13 scenes. Per `QA_REQUIREMENTS.md` §3's
100%-coverage requirement (not sampled) and this project's established practice, this pass fetched
every challenge-ready verse from a source not already relied on during drafting/review — **Bible
Hub** (`biblehub.com/web/mark/<chapter>.htm`, WEB translation) — for genuine independent
triangulation.

**Methodology note:** this pass fetched raw HTML for every needed chapter directly (via `curl`) and
parsed verse boundaries from the underlying markup, rather than relying solely on an LLM-summarized
fetch of the page. This mattered in practice: an initial AI-summarized fetch of Mark 10 silently
dropped a full clause from the 10:33-34 quotation ("They will condemn him to death, and will
deliver him to the Gentiles.") that turned out to be present and correct in both the brief and the
raw source — a false-positive discrepancy that only the raw-HTML re-check resolved. All results
below are from the raw-HTML parse, cross-checked verse-by-verse against the brief's text.

## Verse-by-verse results (45 challenge-ready items, all 13 scenes, 100% coverage)

| # | Scene | Ref | Brief text (as originally written) | Bible Hub result |
|---|---|---|---|---|
| 1 | 1 | Mark 1:1 | "The beginning of the Good News of Jesus Christ, the Son of God." | Match, exact |
| 2 | 1 | Mark 1:9-11 | "In those days, Jesus came from Nazareth... in whom I am well pleased.'" | Match, exact (full v9+v10+v11 concatenated) |
| 3 | 1 | Mark 1:12-13 | "Immediately the Spirit drove him out... serving him." | Match, exact (full v12+v13) |
| 4 | 2 | Mark 1:17 | "Jesus said to them, 'Come after me...men.'" | Match, exact |
| 5 | 2 | Mark 1:22 | "They were astonished at his teaching...scribes." | Match, exact |
| 6 | 2 | Mark 1:34 | "He healed many who were sick...knew him." | Match, exact |
| 7 | 2 | Mark 1:35 | "Early in the morning...prayed there." | Match, exact |
| 8 | 3 | Mark 2:5 | "Jesus, seeing their faith...forgiven you.'" | Match, exact |
| 9 | 3 | Mark 2:9-10 | "Which is easier...to forgive sins" | Match for quoted wording — **see correction below (unlabeled trim) and cosmetic note (quote/question-mark order)** |
| 10 | 3 | Mark 2:12 | "He arose, and immediately took up the mat...like this!'" | Match, exact |
| 11 | 4 | Mark 4:11-12 | "To you is given the mystery...forgiven them.'" | Match, exact (leading narrator tag "He said to them," omitted — standard convention, not a discrepancy) |
| 12 | 4 | Mark 4:39 | "He awoke and rebuked the wind...great calm." | Match, exact |
| 13 | 4 | Mark 4:41 | "They were greatly afraid...obey him?'" | Match, exact |
| 14 | 5 | Mark 5:23 | "My little daughter is at the point of death...and live." | Match, exact |
| 15 | 5 | Mark 5:27-28 | "having heard the things concerning Jesus...made well.'" | Match, exact (full v27+v28) |
| 16 | 5 | Mark 5:34 | "He said to her, 'Daughter, your faith...disease.'" | Match, exact |
| 17 | 5 | Mark 5:41-42 | "Taking the child by the hand...twelve years old." | Match for quoted wording — **see correction below (unlabeled trim)** |
| 18 | 6 | Mark 6:41-42 | "He took the five loaves and the two fish...were filled." | Match, exact (full v41+v42) |
| 19 | 6 | Mark 6:50 | "But he immediately spoke with them...afraid.'" | Match, exact |
| 20 | 6 | Mark 6:52 | "for they hadn't understood about the loaves...hardened." | Match, exact |
| 21 | 7 | Mark 8:23-25 | "When he had spat on his eyes...saw everyone clearly." | Match, exact (full v23 [minus leading narration]+v24+v25) |
| 22 | 8 | Mark 8:29 | "Peter answered, 'You are the Christ.'" | Match, exact |
| 23 | 8 | Mark 8:30 | "He commanded them that they should tell no one about him." | Match, exact |
| 24 | 8 | Mark 8:31 | "He began to teach them that the Son of Man must suffer...rise again." | Match, exact |
| 25 | 8 | Mark 8:33 | "But he, turning around...things of men.'" | Match, exact |
| 26 | 8 | Mark 9:7 | "A cloud came, overshadowing them...Listen to him.'" | Match, exact |
| 27 | 8 | Mark 9:9 | "As they were coming down from the mountain...risen from the dead." | Match, exact |
| 28 | 9 | Mark 10:6-9 | "God made them male and female...let no man separate." | Match, exact (full v7+v8+v9; leading clause of v6 omitted, standard convention) |
| 29 | 9 | Mark 10:17-18 | "'Good Teacher, what shall I do...one—God.'" | Match, exact |
| 30 | 9 | Mark 10:21 | "Jesus looking at him loved him...taking up the cross.'" | Match, exact, full verse |
| 31 | 9 | Mark 10:27 | "Jesus, looking at them, said...possible with God.'" | Match, exact, full verse |
| 32 | 9 | Mark 10:33-34 | "Behold, we are going up to Jerusalem...he will rise again." | Match, exact, full v33+v34 (see methodology note above) |
| 33 | 9 | Mark 10:45 | "For the Son of Man also came...ransom for many." | Match, exact, full verse |
| 34 | 10 | Mark 10:47-48 | "When he heard that it was Jesus the Nazarene...have mercy on me!'" | Match, exact, full v47+v48 |
| 35 | 10 | Mark 10:52 | "Jesus said to him, 'Go your way...on the way." | Match, exact, full verse |
| 36 | 10 | Mark 11:9-10 | "Those who went in front...Hosanna in the highest!'" | Match, exact, full v9+v10 |
| 37 | 11 | Mark 14:22-24 | "As they were eating, Jesus took bread...poured out for many.'" | Match, exact wording; citation closes with a quotation mark at the v24 boundary where the source's underlying sentence grammatically continues into v25 — cosmetic, not a wording issue (see note below) |
| 38 | 11 | Mark 14:36 | "He said, 'Abba, Father...what you desire.'" | Match, exact |
| 39 | 11 | Mark 14:50 | "They all left him, and fled." | Match, exact |
| 40 | 12 | Mark 14:61-62 | "'Are you the Christ...clouds of the sky.'" | Match, exact |
| 41 | 12 | Mark 15:34 | "At the ninth hour Jesus cried...forsaken me?'" | Match, exact |
| 42 | 12 | Mark 15:38 | "The veil of the temple was torn in two...bottom." | Match, exact |
| 43 | 12 | Mark 15:39 | "When the centurion, who stood by opposite him...Son of God!'" | Match, exact |
| 44 | 13 | Mark 16:6 | "He said to them, 'Don't be amazed...they laid him!'" | Match, exact wording; same v6/v7 quotation-boundary note as 14:24 above — cosmetic |
| 45 | 13 | Mark 16:8 | "They went out, and fled from the tomb...afraid." | Match, exact |

**Overall: zero wording errors.** No dropped word, added word, or wrong word found anywhere across
all 45 challenge-ready items. Two unlabeled partial-verse truncations were found and corrected
(items 9 and 17, below). Two cosmetic quotation-boundary notes are documented but require no
correction (item 9's question-mark nesting, and items 37/44's closing-quote-at-citation-boundary
pattern).

## Discrepancies found and corrected

**Two corrections, both unlabeled trims (no wording was ever wrong — only the trim was undisclosed),
consistent with this project's established handling of this exact issue class (see
`docs/qa/nahum-verbatim-qa.md`'s Nahum 1:2-3 precedent):**

1. **Mark 2:9-10 (item 9).** The brief's citation covers verses 9-10, and quotes verse 9 in full,
   but verse 10 as quoted stops at "...has authority on earth to forgive sins" — omitting the
   verse's own trailing narrator aside, "—he said to the paralytic—", which precedes the actual
   healing command in v11 (not part of this citation). The omitted material carries no theological
   or narrative-fact weight (it is only a speech-attribution tag), but per `QA_REQUIREMENTS.md` §3's
   character-for-character standard and this project's precedent, an unlabeled partial-verse quote
   is a real discrepancy, not a cosmetic one. **Corrected in `docs/content/mark.md`**: the entry now
   reads "(WEB, trimmed)" with an inline note naming exactly what was omitted and why. No wording
   was changed.
2. **Mark 5:41-42 (item 17).** The brief's citation covers verses 41-42 and quotes both in full
   except for verse 42's trailing clause, "They were amazed with great amazement," a general
   reaction phrase not needed for this citation's narrative-fact point (the age detail and the
   healing itself). Same fix pattern applied: **corrected in `docs/content/mark.md`** with a
   "(WEB, trimmed)" label and an inline note naming the omission. No wording was changed.

**Two cosmetic-only observations, documented per this project's established practice of noting but
not correcting punctuation-style/quote-nesting differences between sources (see
`docs/qa/esther-verbatim-qa.md`'s Esther 9:26 precedent) — no correction made in either case:**

3. **Mark 2:9, question-mark nesting.** The brief renders the quote-internal question as "...and
   walk'? But..." (closing single-quote, then question mark, outside). Bible Hub's WEB text renders
   it as "...and walk?'" (question mark inside the closing single-quote). The words are identical;
   only the punctuation-nesting convention differs. Cosmetic, no correction made.
4. **Mark 14:22-24 and Mark 16:6, quotation-boundary punctuation.** In both cases the brief closes
   its quotation with a closing single-quote mark exactly at the citation's stated verse boundary
   (end of v24; end of v6), while the WEB source's underlying sentence is grammatically one
   continuous quotation that does not actually close until the following verse (v25; v7) — verses
   correctly excluded from these citations per each item's stated scope (14:22-24 is bounded to the
   institution-narrative text only, per Contested Territory; 16:6 is the angel's proclamation, with
   v7's further instruction to "tell his disciples and Peter" not selected for this item). The words
   quoted are 100% accurate to source in both cases; only a closing quotation mark was added at the
   editor's chosen stopping point, which does not exist in the source's underlying punctuation at
   that exact character position. This is the same class of quote-nesting/punctuation-style
   difference as item 3, not a wording discrepancy. No correction made.

## Exclusion / bounding checks (independently re-confirmed via grep, not trusted from the brief or review)

Per `docs/reviews/mark-review.md` §3.1, **Mark 16:9-20 (the "Longer Ending") must not appear as
challenge-ready content anywhere in this brief.** Independently confirmed, not assumed:

- Grepped `docs/content/mark.md` for every occurrence of `16:9` through `16:20`: all seven matches
  (lines 64, 299, 334, 340, 345, 417, 432, 448 in the file as checked) fall inside prose discussion
  — Setting/Era, Scene 13's closing sentence, the Contested Territory section, and the Acceptance
  Criteria checkbox — never inside a "Challenge-ready verses:" block.
- Independently re-fetched Mark 16 in full from Bible Hub (verses 1-20) and confirmed 16:9-20 does
  contain exactly the material the brief describes as excluded (Mary Magdalene's appearance, the
  Great Commission with its signs — new languages, serpent-handling, drinking poison unharmed,
  laying on hands — and the Ascension) — i.e., the exclusion is a real, substantive one, not merely
  a citation-range technicality.
- Extracted every line beginning `- Mark ` under a "Challenge-ready verses:" heading across the
  entire brief (45 lines, matching the table above) and confirmed the highest verse number cited
  from chapter 16 is **16:8** — no item reaches 16:9.

Per `docs/reviews/mark-review.md` §3.7, **Mark 13 (the Olivet Discourse) must not appear as
challenge-ready content at all.** Grepped `docs/content/mark.md` for `Mark 13:` — **zero matches**
anywhere in the file, confirming full exclusion (chapter 13 is not cited even in prose discussion
beyond the Setting/Era section's mention of the dating debate, and never as a verse reference).

Both exclusions independently confirmed honored, not merely trusted from the brief's or review's own
claims.

## Overall verdict

**pass-with-corrections.**

- **45 challenge-ready items checked, covering all 13 pivotal scenes — 100% coverage, not sampled.**
- **Zero wording errors** — no dropped, added, or wrong word found in any item.
- **Two corrections made** in `docs/content/mark.md`: Mark 2:9-10 and Mark 5:41-42, both unlabeled
  partial-verse trims (narrator's-aside and reaction-phrase omissions respectively), fixed by adding
  explicit "(trimmed)" labels and inline notes naming what was omitted. No verse wording was altered
  in either fix — only the missing-trim-label issue was corrected, consistent with this project's
  established handling of this issue class.
- **Two cosmetic-only observations documented, no correction needed**: a question-mark nesting
  difference (Mark 2:9) and a quotation-boundary punctuation pattern shared by Mark 14:22-24 and
  Mark 16:6 — both are quote-style/punctuation differences between sources with no wording impact,
  consistent with this project's established practice of noting rather than correcting such
  differences.
- **Mark 16:9-20's exclusion from challenge-ready content is independently confirmed via grep** —
  real and complete, not just claimed.
- **Mark 13's full exclusion from challenge-ready content is independently confirmed via grep** —
  zero references anywhere in the brief as a verse citation.

This book is now clear on **both** required gates — theological review
(`docs/reviews/mark-review.md`, `approved-with-changes`) and this independent verbatim-text QA pass
— per `QA_REQUIREMENTS.md` §3. Updating `docs/CONTENT_REVIEW_LOG.md` and `docs/QA_SIGNOFF.md` to
reflect this, and any ingestion-pipeline work, remain out of scope for this pass (per this
assignment's own scope note and this project's sole-writer discipline for those files).
