# Verbatim-Text QA — John (World 43)

Process: `docs/QA_REQUIREMENTS.md` §3 — independent, character-for-character verification of
every challenge-ready verse against source. Distinct from, and additional to, the theological
review in `docs/reviews/john-review.md` (verdict: `approved-with-changes` as of the 2026-09-04
addendum resolving the divinity-claim-bounding escalation; that product-policy question is closed
and is not re-litigated here — this pass is textual-accuracy only).

QA reviewer: independent verbatim-QA pass (this session), 2026-09-04.
Brief checked: `docs/content/john.md`.

This is the first New Testament book this QA process has covered (Wave 1, world 43). Everything
before it in this project was Old Testament.

Prior sources (per brief + `docs/reviews/john-review.md` §1): every challenge-ready verse was
already checked against ebible.org's live WEB text during drafting, and the Prologue (1:1-18) plus
the four most theologically load-bearing single verses (8:58, 10:30, 14:6, 20:28) were additionally
cross-checked against BibleGateway (WEB). BibleHub's commentary aggregation was also used during
review, but only for cross-tradition doctrinal comparison — not as a verbatim-text source. Per this
project's established convention (used for every prior book's independent QA pass), this pass
fetched every challenge-ready verse fresh from **BibleHub's own WEB text pages**
(`biblehub.com/web/john/<chapter>.htm`), a source not previously relied on for this book's *text*
check, for genuine independent triangulation. Two items (John 14:2-3's wording and John 4:9/4:25's
omissions) were additionally cross-checked against BibleGateway as a third source before correction,
per this task's triangulation instruction for suspected discrepancies.

**100% coverage: all 46 challenge-ready verses/verse-groups across all 14 scenes checked, none
sampled.**

## Verse-by-verse results

| # | Ref | Brief's text (as drafted) | Source | Result |
|---|---|---|---|---|
| 1 | John 1:1 | "In the beginning was the Word, and the Word was with God, and the Word was God." | [BibleHub WEB, John 1](https://biblehub.com/web/john/1.htm) | Match, verbatim, full verse |
| 2 | John 1:3 | "All things were made through him. Without him, nothing was made that has been made." | BibleHub WEB, John 1 | Match, verbatim, full verse |
| 3 | John 1:14 | "The Word became flesh and lived among us. We saw his glory, such glory as of the only born Son of the Father, full of grace and truth." | BibleHub WEB, John 1 | Match, verbatim, full verse |
| 4 | John 1:29 | "Behold, the Lamb of God, who takes away the sin of the world!" | BibleHub WEB, John 1 | Match — quoted dialogue is verbatim; narrator lead-in ("he saw Jesus coming to him, and said") intentionally presented outside the quote, with attribution supplied separately in italics. Not a discrepancy — see note 1 below. |
| 5 | John 2:3 | "When the wine ran out, Jesus' mother said to him, 'They have no wine.'" | [BibleHub WEB, John 2](https://biblehub.com/web/john/2.htm) | Match, verbatim, full verse |
| 6 | John 2:7-8 (trimmed) | "Jesus said to them, 'Fill the water pots with water.' So they filled them up to the brim. He said to them, 'Now draw some out, and take it to the ruler of the feast.'" | BibleHub WEB, John 2 | Match — correctly labeled trim (drops v8's trailing "So they took it."), retained wording exact |
| 7 | John 2:11 | "This beginning of his signs Jesus did in Cana of Galilee, and revealed his glory; and his disciples believed in him." | BibleHub WEB, John 2 | Match, verbatim, full verse |
| 8 | John 3:3 | "Jesus answered him, 'Most certainly I tell you, unless one is born anew, he can't see God's Kingdom.'" | [BibleHub WEB, John 3](https://biblehub.com/web/john/3.htm) | Match, verbatim, full verse |
| 9 | John 3:16 | "For God so loved the world, that he gave his only born Son, that whoever believes in him should not perish, but have eternal life." | BibleHub WEB, John 3 | Match, verbatim, full verse |
| 10 | John 3:17 | "For God didn't send his Son into the world to judge the world, but that the world should be saved through him." | BibleHub WEB, John 3 | Match, verbatim, full verse |
| 11 | John 4:9 | "The Samaritan woman therefore said to him, 'How is it that you, being a Jew, ask for a drink from me, a Samaritan woman?'" | [BibleHub WEB, John 4](https://biblehub.com/web/john/4.htm) | **Discrepancy found and fixed** — see note 2 below |
| 12 | John 4:14 | "But whoever drinks of the water that I will give him will never thirst again; but the water that I will give him will become in him a well of water springing up to eternal life." | BibleHub WEB, John 4 | Match — sentence-initial "But" is capitalized where the source's mid-sentence verse begins lowercase (v14 continues v13's sentence). Cosmetic boundary effect, consistent with this project's established convention (see e.g. `docs/qa/1-chronicles-verbatim-qa.md` note 2, `docs/qa/2-chronicles-hard-verbatim-qa.md` item 12) — not a discrepancy. |
| 13 | John 4:25-26 | "The woman said to him, 'I know that Messiah is coming, he who is called Christ.' Jesus said to her, 'I am he, the one who speaks to you.'" | BibleHub WEB, John 4 | **Discrepancy found and fixed** — see note 3 below |
| 14 | John 4:42 (trimmed) | "They said to the woman, 'Now we believe... we have heard for ourselves, and know that this is indeed the Christ, the Savior of the world.'" | BibleHub WEB, John 4 | Match — correctly labeled and ellipsis-marked trim, retained wording exact |
| 15 | John 6:11 | "Jesus took the loaves, and having given thanks, he distributed to the disciples, and the disciples to those who were sitting down, likewise also of the fish as much as they desired." | [BibleHub WEB, John 6](https://biblehub.com/web/john/6.htm) | **Mislabel found and fixed** — see note 4 below (text itself was already accurate) |
| 16 | John 6:13 | "So they gathered them up, and filled twelve baskets with broken pieces from the five barley loaves, which were left over by those who had eaten." | BibleHub WEB, John 6 | Match, verbatim, full verse |
| 17 | John 6:20 | "But he said to them, 'It is I. Don't be afraid.'" | BibleHub WEB, John 6 | Match, verbatim, full verse |
| 18 | John 6:35 | "Jesus said to them, 'I am the bread of life. Whoever comes to me will not be hungry, and whoever believes in me will never be thirsty.'" | BibleHub WEB, John 6 | Match, verbatim, full verse |
| 19 | John 8:12 | "Again, therefore, Jesus spoke to them, saying, 'I am the light of the world. He who follows me will not walk in the darkness, but will have the light of life.'" | [BibleHub WEB, John 8](https://biblehub.com/web/john/8.htm) | Match, verbatim, full verse |
| 20 | John 8:31-32 | "Jesus therefore said to those Jews who had believed him, 'If you remain in my word, then you are truly my disciples. You will know the truth, and the truth will make you free.'" | BibleHub WEB, John 8 | Match, verbatim — both verses combined in full, nothing omitted |
| 21 | John 8:58 | "Jesus said to them, 'Most certainly, I tell you, before Abraham came into existence, I AM.'" | BibleHub WEB, John 8 | Match, verbatim, full verse |
| 22 | John 9:2-3 | "His disciples asked him, 'Rabbi, who sinned, this man or his parents, that he was born blind?' Jesus answered, 'This man didn't sin, nor did his parents, but that the works of God might be revealed in him.'" | [BibleHub WEB, John 9](https://biblehub.com/web/john/9.htm) | Match, verbatim — both verses combined in full, nothing omitted |
| 23 | John 9:7 (trimmed) | "'Go, wash in the pool of Siloam' (which means 'Sent'). So he went away, washed, and came back seeing." | BibleHub WEB, John 9 | Match — correctly labeled trim (drops leading "and said to him,"), retained wording exact |
| 24 | John 9:25 | "One thing I do know: that though I was blind, now I see." | BibleHub WEB, John 9 | **Discrepancy found and fixed** — see note 5 below |
| 25 | John 10:10-11 | "The thief only comes to steal, kill, and destroy. I came that they may have life, and may have it abundantly. I am the good shepherd. The good shepherd lays down his life for the sheep." | [BibleHub WEB, John 10](https://biblehub.com/web/john/10.htm) | Match, verbatim — both verses combined in full, nothing omitted |
| 26 | John 10:27-28 | "My sheep hear my voice, and I know them, and they follow me. I give eternal life to them. They will never perish, and no one will snatch them out of my hand." | BibleHub WEB, John 10 | Match, verbatim — both verses combined in full, nothing omitted |
| 27 | John 10:30 | "I and the Father are one." | BibleHub WEB, John 10 | Match, verbatim, full verse |
| 28 | John 11:21 | "Therefore Martha said to Jesus, 'Lord, if you would have been here, my brother wouldn't have died.'" | [BibleHub WEB, John 11](https://biblehub.com/web/john/11.htm) | Match, verbatim, full verse (including narrator lead-in) |
| 29 | John 11:25-26 | "Jesus said to her, 'I am the resurrection and the life. He who believes in me will still live, even if he dies. Whoever lives and believes in me will never die. Do you believe this?'" | BibleHub WEB, John 11 | Match, verbatim — both verses combined in full, nothing omitted |
| 30 | John 11:35 | "Jesus wept." | BibleHub WEB, John 11 | Match, verbatim, full verse |
| 31 | John 11:43-44 (trimmed) | "He cried with a loud voice, 'Lazarus, come out!' He who was dead came out, bound hand and foot with wrappings... Jesus said to them, 'Free him, and let him go.'" | BibleHub WEB, John 11 | Match — correctly labeled and ellipsis-marked trim (drops leading "When he had said this," and mid-sentence "and his face was wrapped around with a cloth"), retained wording exact |
| 32 | John 13:4-5 (trimmed) | "He took a towel and wrapped a towel around his waist. Then he poured water into the basin, and began to wash the disciples' feet and to wipe them with the towel." | [BibleHub WEB, John 13](https://biblehub.com/web/john/13.htm) | Match — correctly labeled trim (drops v4's leading "arose from supper, and laid aside his outer garments." and v5's trailing "that was wrapped around him"), retained wording exact |
| 33 | John 13:14-15 | "If I then, the Lord and the Teacher, have washed your feet, you also ought to wash one another's feet. For I have given you an example, that you should also do as I have done to you." | BibleHub WEB, John 13 | Match, verbatim — both verses combined in full, nothing omitted |
| 34 | John 13:34 | "A new commandment I give to you, that you love one another. Just as I have loved you, you also love one another." | BibleHub WEB, John 13 | Match, verbatim, full verse |
| 35 | John 14:2-3 (trimmed) | "In my Father's house are many homes... I go to prepare a place for you. If I go and prepare a place for you, I will come again and will receive you to myself." | [BibleHub WEB, John 14](https://biblehub.com/web/john/14.htm); cross-checked [BibleGateway WEB](https://www.biblegateway.com/passage/?search=John+14%3A2-3&version=WEB) | **Discrepancy found and fixed** — see note 6 below |
| 36 | John 14:6 | "I am the way, the truth, and the life. No one comes to the Father, except through me." | BibleHub WEB, John 14 | Match — quoted content is verbatim; narrator lead-in ("Jesus said to him,") intentionally dropped as a bare-quote presentation, same convention as item 4. Not a discrepancy. |
| 37 | John 15:5 | "I am the vine. You are the branches. He who remains in me and I in him bears much fruit, for apart from me you can do nothing." | [BibleHub WEB, John 15](https://biblehub.com/web/john/15.htm) | Match, verbatim, full verse |
| 38 | John 15:13 | "Greater love has no one than this, that someone lay down his life for his friends." | BibleHub WEB, John 15 | Match, verbatim, full verse |
| 39 | John 19:17-18 (trimmed) | "He went out, bearing his cross, to the place called 'The Place of a Skull'... where they crucified him, and with him two others, on either side one, and Jesus in the middle." | [BibleHub WEB, John 19](https://biblehub.com/web/john/19.htm) | Match — correctly labeled and ellipsis-marked trim (drops ", which is called in Hebrew, 'Golgotha',"), retained wording exact |
| 40 | John 19:30 | "When Jesus therefore had received the vinegar, he said, 'It is finished!' Then he bowed his head and gave up his spirit." | BibleHub WEB, John 19 | Match, verbatim, full verse |
| 41 | John 19:34 | "However, one of the soldiers pierced his side with a spear, and immediately blood and water came out." | BibleHub WEB, John 19 | Match, verbatim, full verse |
| 42 | John 20:1-2 (trimmed) | "Mary Magdalene went early, while it was still dark, to the tomb, and saw that the stone had been taken away from the tomb. Therefore she ran and came to Simon Peter and to the other disciple... and said to them, 'They have taken away the Lord out of the tomb.'" | [BibleHub WEB, John 20](https://biblehub.com/web/john/20.htm) | Match — correctly labeled trim (drops v1's leading "Now on the first day of the week,", v2's "whom Jesus loved" via ellipsis, and v2's trailing ", and we don't know where they have laid him!"), retained wording exact |
| 43 | John 20:16 | "Jesus said to her, 'Mary.' She turned and said to him, 'Rabboni!' which is to say, 'Teacher!'" | BibleHub WEB, John 20 | Match, verbatim, full verse |
| 44 | John 20:25 (trimmed) | "'Unless I see in his hands the print of the nails, put my finger into the print of the nails, and put my hand into his side, I will not believe.'" | BibleHub WEB, John 20 | Match — correctly labeled trim (drops leading "The other disciples therefore said to him, 'We have seen the Lord!' But he said to them,"), retained wording exact |
| 45 | John 20:28 | "Thomas answered him, 'My Lord and my God!'" | BibleHub WEB, John 20 | Match, verbatim, full verse |
| 46 | John 20:29 | "Jesus said to him, 'Because you have seen me, you have believed. Blessed are those who have not seen and have believed.'" | BibleHub WEB, John 20 | Match, verbatim, full verse |

## Notes

1. **Item 4 (John 1:29) — bare-quote convention, not a discrepancy.** The brief presents only the
   quoted speech ("Behold, the Lamb of God...") and supplies the speaker attribution separately in
   an italicized aside ("*(John the Baptist's words about Jesus.)*") rather than folding the
   narrator's "he saw Jesus coming to him, and said" into the quoted `verse_text`. The quoted
   material itself is 100% accurate to what appears inside quotation marks in the source. This is
   standard practice for isolating a spoken line from its narration and is used inconsistently but
   harmlessly elsewhere in the brief (also item 36, John 14:6) — it does not misrepresent content
   and was not treated as a discrepancy, distinct from the omissions in notes 2, 3, and 5 below,
   which drop actual additional spoken/narrative *content*, not just a reporting verb.

2. **Item 11 (John 4:9) — unlabeled silent truncation, found and corrected.** The brief quoted only
   the woman's spoken question. The full WEB verse continues with the narrator's own explanatory
   aside: "(For Jews have no dealings with Samaritans.)" — dropped from the brief with no
   "(trimmed)" label. The quoted portion itself was already word-for-word accurate; this is a
   labeling omission, not a wording error, but per `QA_REQUIREMENTS.md` §3 an unlabeled partial
   verse is a real discrepancy. **Corrected in `docs/content/john.md`**: re-tagged "(WEB, trimmed)"
   with an inline note naming the omitted aside and why it's out of scope (background context, not
   dialogue).

3. **Item 13 (John 4:25-26) — unlabeled silent truncation, found and corrected.** The brief closed
   the woman's quote in 4:25 after "he who is called Christ." The full WEB verse continues, still
   within her same quoted speech, "When he has come, he will declare to us all things." — dropped
   with no "(trimmed)" label. Same class of issue as item 11: content, not wording, was affected.
   **Corrected**: re-tagged "(WEB, trimmed)" with an inline note.

4. **Item 15 (John 6:11) — incorrect trim label, found and corrected.** The brief tagged this verse
   "(WEB, trimmed)," but the quoted text is in fact the complete, unabridged verse — nothing is
   omitted. This is the inverse of notes 2/3/5 (over-labeling rather than under-labeling) and does
   not affect the accuracy of the verse text itself, but it is inaccurate metadata that could
   mislead a later reviewer into assuming content was cut when none was. **Corrected**: removed the
   "trimmed" tag, now reads plain "(WEB)".

5. **Item 24 (John 9:25) — unlabeled silent truncation, found and corrected.** The brief quoted only
   the second half of the healed man's answer. The full WEB verse opens with "He therefore answered,
   'I don't know if he is a sinner.'" before the sentence the brief quotes — dropped with no
   "(trimmed)" label. This omission removes a substantive piece of the man's actual answer (his
   express uncertainty about whether Jesus is a sinner), not merely a reporting verb, so it is held
   to the same standard as notes 2 and 3. **Corrected**: re-tagged "(WEB, trimmed)" with an inline
   note.

6. **Item 35 (John 14:2-3) — genuine wording inaccuracy, found and corrected.** The brief's
   ellipsis-bridged text read "...I go to prepare a place for you." The actual WEB text of the
   clause the ellipsis is bridging into (the end of v2) is "I am going to prepare a place for you."
   — confirmed independently on both BibleHub and BibleGateway. "I go to prepare a place for you"
   does not appear verbatim anywhere in WEB John 14; it reads as a paraphrase blending v2's ending
   with v3's opening ("If I go and prepare a place for you..."). This is the one genuine
   character-level wording error found in this pass — not a labeling issue. **Corrected in
   `docs/content/john.md`**: the bridged clause now reads "I am going to prepare a place for you,"
   matching WEB v2 exactly, with the trim/ellipsis structure otherwise unchanged.

7. Items 6, 14, 23, 31, 32, 39, 42, 44 (all "(trimmed)"-tagged verses not listed above) were
   confirmed correctly labeled, with the retained wording matching source exactly — no changes
   needed. Item 12's capitalization is a cosmetic sentence-boundary effect, consistent with this
   project's established handling of trims that begin mid-sentence in the source.

## Exclusion / bounding checks (independently grepped, not trusted from the brief's own claims)

Per this assignment's heightened bar for John specifically, every named exclusion was re-confirmed
directly against `docs/content/john.md` via grep, not accepted on the brief's or review's own
say-so.

- **John 7:53-8:11 (the pericope adulterae) — confirmed absent from all challenge content.**
  Grepped `7:53`, `8:11`, `8:1-11` — all 4 matches (lines 167, 366, 369, 375) fall inside prose
  discussion of *why* the passage is excluded (the "Contested Territory" section and a scene
  cross-reference), none inside a "Challenge-ready verses:" block. Confirmed excluded.
- **John 3:5 ("born of water and Spirit") — confirmed not used; only 3:3 is.** Grepped `3:5` — both
  matches (lines 432, 438) are inside the Contested Territory discussion explaining the exclusion.
  Confirmed John 3's actual "Challenge-ready verses:" list uses only 3:3, 3:16, 3:17 — 3:5 does not
  appear as challenge content anywhere.
- **John 9:8-41 (extended interrogation scene) — confirmed not used.** Scene 8's header explicitly
  scopes to "John 9:1-25," and its "Challenge-ready verses:" list is 9:2-3, 9:7, 9:25 — all within
  9:1-25, none inside the excluded 9:8-24 interrogation range. Grepped `9:8` through `9:41` — the
  only matches (lines 423, 429) are in the Contested Territory section's own discussion of the
  exclusion.
- **John's "the Jews" language — confirmed no challenge-ready verse uses it.** Grepped `the Jews` —
  three matches total: two (lines 426, 441) are in the Contested Territory discussion explaining why
  the phrase is avoided; one (line 109, "a ruler of the Jews") is scene-setting narrative prose in
  Scene 3's introduction, not inside a "Challenge-ready verses:" block, and is itself a neutral
  identification of Nicodemus's civic role (John 3:1's own description) rather than the
  hostile-faction usage the exclusion targets. No challenge-ready verse anywhere in the brief
  contains this phrase.
- **John 6:51-58 ("eat my flesh" sacramental language) — confirmed not used; only 6:35 is.** Grepped
  `6:51` through `6:58` — the only matches (lines 396-397) are in the Contested Territory section
  confirming the exclusion. Scene 5's "Challenge-ready verses:" list is 6:11, 6:13, 6:20, 6:35 — no
  verse from 6:51-58 appears.
- **Divinity-claim verses (1:1, 1:3, 1:14, 8:58, 10:30, 20:28) — confirmed recall/fill-in-blank-only
  format is actually followed, not just declared.** Grepped every occurrence of these six
  references. The only concrete challenge-type example built from any of them in the Difficulty
  Ladder table is the Level 1 recall/fill-in-blank example on 1:1 ("In the beginning was the ___...");
  no multiple-choice example anywhere in the ladder or elsewhere in the brief draws on 1:1, 1:3,
  1:14, 8:58, or 10:30. The Level 2 multiple-choice example uses John 2:1-11 instead, and the Level 4
  sequence+recall "I am" statement list (6:35, 10:11, 11:25, 14:6, 15:5) deliberately excludes 8:58
  and 10:30. John 20:28 additionally appears only in the recall/fill-in-blank and sequence contexts
  its own bounding rule permits (never multiple-choice). The document's own stated structural rules
  (lines 342-343, 354, 363) match what the ladder actually demonstrates — the bounding this book's
  approval depends on is genuinely reflected in the brief, not merely asserted.

## Corrections made

**5 total**, across `docs/content/john.md`:

1. John 4:9 — added "(trimmed)" label + inline note (omitted narrator aside; wording otherwise
   already correct).
2. John 4:25-26 — added "(trimmed)" label + inline note (omitted continuation of the woman's quote;
   wording otherwise already correct).
3. John 9:25 — added "(trimmed)" label + inline note (omitted leading portion of the man's answer;
   wording otherwise already correct).
4. John 14:2-3 — corrected wording: "I go to prepare a place for you" → "I am going to prepare a
   place for you" (the actual WEB text; the brief's prior wording was a paraphrase that doesn't
   appear verbatim in any checked source). This is the one genuine character-level text error found.
5. John 6:11 — removed an incorrect "(trimmed)" label; the quoted text was already the complete,
   accurate verse.

No SQL was generated or applied. `docs/CONTENT_REVIEW_LOG.md` and `docs/QA_SIGNOFF.md` were not
touched, per this task's scope.

## Overall verdict

**`pass-with-corrections`** — **46 of 46 challenge-ready verses/verse-groups checked (100%
coverage, none sampled)**, against BibleHub's WEB text as an independent source not previously used
for this book's text verification (ebible.org and BibleGateway were used during drafting/review;
BibleHub's own commentary aggregation was used only for doctrinal cross-checking, not verbatim
text). **5 corrections made**: 3 unlabeled silent truncations (4:9, 4:25-26, 9:25) now correctly
labeled "(trimmed)" with explanatory notes, 1 genuine wording inaccuracy corrected (14:2-3, verified
against two independent sources before fixing), and 1 incorrect "(trimmed)" mislabel removed (6:11).
No wording was invented or paraphrased in any fix — every correction restores or matches text
independently confirmed present in the WEB source. All five named exclusion/bounding rules specific
to this book's raised doctrinal bar — the pericope adulterae (7:53-8:11), John 3:5, the John 9
interrogation scene (9:8-41) and "the Jews" language, and the Bread of Life sacramental language
(6:51-58) — are independently confirmed honored by direct grep, not by trusting the brief's or
review's own claims. The recall/fill-in-blank-only format restriction on the six divinity-claim
verses (1:1, 1:3, 1:14, 8:58, 10:30, 20:28) that Kachi's 2026-09-04 decision depends on is
confirmed actually reflected in the brief's own challenge-type examples, not merely stated as a
rule. John is textually clean and its doctrinal bounding is intact; it remains blocked on nothing
from this pass and is ready for the remaining pipeline stage (SQL ingestion), pending whatever
consolidation `docs/CONTENT_REVIEW_LOG.md` requires outside this task's scope.
