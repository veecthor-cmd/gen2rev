# Gen2Rev — Canon Structure Pass (Phase 2, Task 1)

Status: Draft v1. Confirms groupings and world order for the MVP book list.
Source: `GEN2REV_MASTER_PROMPT.md` Phase 2 Task 1. Depends on `PRODUCT_REQUIREMENTS.md` §3
(confirmed 14-book list — updated 2026-08-08 to add Deuteronomy back in; see §3 below, kept for the
reasoning trail rather than deleted).

---

## 1. Standard Canon Groupings (Protestant OT/NT, confirmed)

Law (Pentateuch/Torah) · History · Wisdom/Poetry · Major Prophets · Minor Prophets · Gospels ·
Acts · Pauline Epistles · General Epistles · Revelation.

## 2. Where the Confirmed MVP List Falls

| Group | Full group (Protestant canon) | MVP books included | MVP books excluded |
|---|---|---|---|
| Law | Genesis, Exodus, Leviticus, Numbers, Deuteronomy (5) | **All 5 — full Pentateuch** | none |
| History | Joshua, Judges, Ruth, 1–2 Samuel, 1–2 Kings, 1–2 Chronicles, Ezra, Nehemiah, Esther (12) | Joshua, Judges, Ruth, 1–2 Samuel, 1–2 Kings, 1–2 Chronicles (9) | Ezra, Nehemiah, Esther |
| All other groups | 52 remaining books | none | all |

MVP world order (`sequence_order` 1–14) matches standard canonical order exactly for these books —
no reordering needed; the confirmed list is already chronological/canonical.

## 3. Resolved: The Deuteronomy Gap (originally flagged, now closed)

**Status: resolved 2026-08-08 — Deuteronomy added back into the MVP list.** Kept below for the
reasoning trail; no longer a gap.

The original 13-book list jumped from **Numbers** (Israel encamped on the plains of Moab,
wilderness generation) directly to **Joshua** (crossing the Jordan into Canaan after Moses'
death) — Deuteronomy was missing. Narratively, Deuteronomy is the bridge: Moses' farewell
discourses, the covenant renewed for the new generation, restatement of the Law, and Moses' death
(Deut. 34) are what Joshua 1 assumes already happened. Flagged as a defensible-but-real scope cut;
Kachi's follow-up confirmed adding it back rather than accepting the gap. With Deuteronomy now
world 5, Joshua's content brief no longer needs an artificial bridge beat — the transition is
covered by Deuteronomy's own closing scenes.

## 4. Flag: Samuel/Kings/Chronicles Overlap

1–2 Chronicles retells much of the narrative already covered in 1–2 Samuel and 1–2 Kings, from a
different angle (priestly/temple-focused, written for a post-exilic audience, with distinct
emphases — e.g. Chronicles omits David's affair with Bathsheba and most of the northern kingdom's
history). Per `PRODUCT_REQUIREMENTS.md` §3, each of these six books' content briefs must pick a
distinct scene/verse emphasis so worlds 9–14 don't feel like a repeat of worlds already played.
Suggested differentiation (confirm during each book's content-brief pass, not fixed here):

- **1–2 Samuel:** Saul's rise and fall, David's rise, covenant with David (2 Sam. 7).
- **1–2 Kings:** Solomon's reign and the temple, the kingdom split, the prophetic narratives (Elijah/
  Elisha), the fall of Israel and Judah.
- **1–2 Chronicles:** genealogies/temple-establishment framing kept light-touch (low
  challenge-density fit), David's temple preparations, Solomon's temple dedication, Hezekiah's and
  Josiah's reforms — the material *not* already covered in Kings, rather than re-covering the same
  ground.

## 5. Acceptance Criteria

- [x] Groupings confirmed for the MVP list
- [x] World order confirmed as matching canonical order (no resequencing needed)
- [x] Deuteronomy gap flagged, then resolved by adding it back into the confirmed list
- [x] Samuel/Kings/Chronicles overlap flagged with a differentiation approach for Phase 2 content
      authoring to follow

## 6. Post-MVP Expansion: The Rest of the Old Testament (decided 2026-08-25)

**Kachi reopened the book-count-expansion hold (see `MEMORY.md`, same date) and chose the full
remaining Old Testament** — not the smaller "next 14" or "bridge batch" options also on the table.
This supersedes the `PRODUCT_REQUIREMENTS.md`/master-prompt "≤15 books" MVP guardrail by design;
see those docs' own updated Open Decisions for the formal record. World order continues
`sequence_order` 15 onward, canonical order, same as the original 14.

| Group | Books (canonical order) | Count | Content-brief shape |
|---|---|---|---|
| History (remainder) | Ezra, Nehemiah, Esther | 3 | Narrative scenes, same shape as worlds 1-14 |
| Wisdom/Poetry | Job, Psalms, Proverbs, Ecclesiastes, Song of Solomon | 5 | **Not narrative** — follow Leviticus's precedent (`docs/reviews/leviticus-review.md`) of adapting to pivotal *passages/themes* rather than forcing a scene structure. Song of Solomon specifically needs the same denominational-neutrality discipline as any contested book — allegorical vs. literal readings diverge sharply across traditions; expect this one to need real theological-review attention, not a rubber stamp. |
| Major Prophets | Isaiah, Jeremiah, Lamentations, Ezekiel, Daniel | 5 | Narrative scenes where present (Daniel especially); prophetic-oracle books (Isaiah, Jeremiah) likely need the same passage-based adaptation as Wisdom books for their non-narrative stretches. Daniel's apocalyptic material (7-12) is genuinely contested end-times territory — expect exclusions/bounding similar to how Numbers 25 or Deuteronomy 28 were handled. |
| Minor Prophets | Hosea, Joel, Amos, Obadiah, Jonah, Micah, Nahum, Habakkuk, Zephaniah, Haggai, Zechariah, Malachi | 12 | Mostly short, oracle-heavy — Jonah is the exception (real narrative). Expect thin content briefs for several of these (similar precedent: 1 Chronicles' deliberately thin brief), not padded to match a book like Isaiah's density. |

**Total: 25 new books, bringing the full list to 39** (the complete Protestant Old Testament).
**Shipped 2026-08-26** — see `docs/CONTENT_REVIEW_LOG.md` and `MEMORY.md` for the full account.
No New Testament content was part of this expansion; see §7 below for that separate, later
decision.

**Phasing, matching how the original 14 books were actually built** (medium tier first, all books,
then difficulty tiers as separate follow-on work — not attempting all three tiers per book
simultaneously, which would triple this already-large lift): content authoring + theological
review + verbatim QA + ingestion for **medium-tier content only**, all 25 books, in waves. Easy/
hard tiers for these 25 books are explicitly **not** in this pass — a later decision, same as how
the original 14 books' difficulty tiers were scoped as separate work starting 2026-08-18.

## 7. Post-OT Expansion: The New Testament (decided 2026-08-26)

**Kachi reversed the "no New Testament in v1" guardrail (§6 above, `PRODUCT_REQUIREMENTS.md`) the
same session the 39-book Old Testament completed**, choosing to continue directly into the New
Testament rather than stop or build easy/hard tiers first. World order continues `sequence_order`
40-66, standard canonical/Protestant NT order (Gospels → Acts → Pauline epistles, chronological
within that by traditional canon order rather than composition date → General epistles →
Revelation), same convention as the OT.

**This raises the doctrinal-review bar substantially versus the OT.** Almost every OT exclusion
this project has made so far worked by *keeping the OT text's own plain narrative sense* and
excluding a **later, external (Christian) reading** layered onto it (e.g. Isaiah 7:14 excluded
because of Matthew 1:23's use of it, not because of anything contested within Isaiah itself). In
the NT, that escape hatch mostly doesn't exist — claims like the virgin birth, the resurrection,
and Jesus's divinity **are the primary text**, not a later reading of it. The theological-reviewer
agent's existing narrative-fact/direct-quote discipline (`docs/CONTENT_STYLE_GUIDE.md` §1-3) still
applies and is still the right tool — historical/narrative reporting ("the tomb was found empty,"
"Mary was found to be pregnant by the Holy Spirit," as the text states them) is in-bounds the same
way any narrated OT event is; what changes is that **cross-tradition disagreement in the NT is
mostly Protestant/Catholic/Orthodox and historical-critical, not Christian/Jewish**, and the
disputed categories are different in kind. Known NT-specific contested categories, to brief every
authoring/reviewing agent on up front rather than let each rediscover from scratch (mirrors how
Wave 2's OT agents were pre-briefed on Daniel's apocalyptic material, per §6 above):

- **Atonement theory** — penal substitution vs. Christus Victor vs. moral-influence vs. ransom
  readings of the crucifixion's meaning. Narrate what happened; don't adjudicate why it "worked."
- **Soteriology** — faith alone (Romans/Galatians) vs. faith-and-works (James 2) is a live,
  centuries-old Protestant/Catholic fault line sitting inside the text itself, not just in later
  commentary. Quote both books' own language; never resolve the tension for the player.
- **Sacraments/ordinances** — baptism (mode, timing, regeneration vs. symbol), the Lord's
  Supper/Eucharist (real presence vs. memorial). Narrate the institution narratives; exclude
  grading any "correct" theological account of what they accomplish.
- **Ecclesiology and gender roles** — 1 Timothy 2/3, Titus 1, 1 Corinthians 11/14 church-office and
  gender-role passages are live complementarian/egalitarian battlegrounds across denominations
  today, not settled history. Likely candidates for narrow bounding or exclusion.
- **Spiritual gifts** — cessationism vs. continuationism (tongues, prophecy, healing) in 1
  Corinthians 12-14 is a genuine live Protestant divide (not resolved by "just quote the text,"
  since the text's own instructions are exactly what's disputed).
- **Eschatology** — pre-/mid-/post-tribulation rapture timing, millennium views (premillennial/
  amillennial/postmillennial), and Revelation's entire symbolic apparatus (the beast, 666, the
  antichrist's identity, the two witnesses, the millennium) are the single most fragmented
  interpretive territory in all of Christian theology. Expect Revelation (world 66) to need the
  thinnest, most conservatively-bounded content brief of any book in this project — likely
  narrative-report-only ("John saw a vision of...") with almost everything interpretive excluded.
- **Historical-critical/textual-criticism issues** — passages with a live manuscript-tradition
  dispute, not just an interpretive one: the Gospel of Mark's ending (16:9-20, absent from the
  earliest manuscripts), the pericope adulterae (John 7:53-8:11, same issue), and the Comma
  Johanneum (1 John 5:7-8's added Trinitarian clause in some later manuscripts, absent from the
  earliest ones and most modern translations including WEB). These need a text-integrity note
  regardless of doctrine — verify which reading WEB actually prints before citing any of them.
- **Predestination/free will** — Romans 9's potter-and-clay language sits on the Calvinist/
  Arminian fault line the same way Malachi 1:2-3 already did in the OT (excluded there for the same
  reason). Same treatment likely applies here.

**Proposed waves** (grouped by canon section, roughly ordered by narrative/doctrinal weight — this
is a plan, not a fixed sequence; adjust per actual content-authoring findings the same way OT
waves did):

| Wave | Group | Books | Count | `sequence_order` | Notes |
|---|---|---|---|---|---|
| 1 | The Four Gospels | Matthew, Mark, Luke, John | 4 | 40-43 | The largest, most narratively rich, and most doctrinally central books in the whole expansion — virgin birth, miracles, parables, passion, resurrection. One book per authoring/review agent, not batched, given size and stakes. |
| 2 | Acts + core Pauline epistles | Acts, Romans, 1 Corinthians, 2 Corinthians, Galatians | 5 | 44-48 | Acts is narrative (fits the project's existing pattern well); Romans/Galatians carry the faith-vs-works fault line, 1 Corinthians carries spiritual gifts and resurrection-body debates. |
| 3 | Remaining Pauline epistles | Ephesians, Philippians, Colossians, 1 Thessalonians, 2 Thessalonians, 1 Timothy, 2 Timothy, Titus, Philemon | 9 | 49-57 | Shorter, more thematically compact letters. Thessalonians touches eschatology; Timothy/Titus touch church-order and gender-role passages named above. |
| 4 | General Epistles | Hebrews, James, 1 Peter, 2 Peter, 1 John, 2 John, 3 John, Jude | 8 | 58-65 | Hebrews is doctrinally dense (priesthood/atonement typology); James carries the faith-vs-works tension directly; 1 John carries the Comma Johanneum textual issue. |
| 5 | Revelation | Revelation | 1 | 66 | Its own dedicated wave, not batched with anything — the single most contested book to render neutrally. Expect the thinnest brief and the most escalations of the whole NT expansion. |

**Total: 27 books, bringing the full list to 66** (the complete Protestant Bible). Same phasing
approach as the OT expansion: medium-tier content only, easy/hard tiers scoped as separate,
later follow-on work.
