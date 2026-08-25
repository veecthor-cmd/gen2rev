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
No New Testament content is part of this expansion — that remains a separate, larger decision not
made here (would take the product beyond "the Old Testament historical arc" framing stated
throughout `PRODUCT_REQUIREMENTS.md`).

**Phasing, matching how the original 14 books were actually built** (medium tier first, all books,
then difficulty tiers as separate follow-on work — not attempting all three tiers per book
simultaneously, which would triple this already-large lift): content authoring + theological
review + verbatim QA + ingestion for **medium-tier content only**, all 25 books, in waves. Easy/
hard tiers for these 25 books are explicitly **not** in this pass — a later decision, same as how
the original 14 books' difficulty tiers were scoped as separate work starting 2026-08-18.
