# Gen2Rev

A Bible-literacy web game. Players progress through "worlds" — one per book of the Bible — answering
scripture challenges to unlock progress, facing a boss battle at the end of each world, and banking
mastered verses into a personal **Memory Vault** (spaced-repetition review). No install, no signup —
open the link and start playing as a guest.

**Live: [gen2rev.vercel.app](https://gen2rev.vercel.app)**

## Status

**All 39 planned Old Testament worlds are live and playable** (Genesis → Malachi) — the full OT
expansion shipped 2026-08-26. The original 14 books also have Easy/Medium/Hard difficulty modes;
the 25 expansion books (Ezra → Malachi) are medium tier only for now. See
[`docs/CONTENT_REVIEW_LOG.md`](docs/CONTENT_REVIEW_LOG.md) for the current per-book status and
[`MEMORY.md`](MEMORY.md) for the full project history.

No New Testament content ships in this build — v1 is the Old Testament's historical and wisdom
literature, played in canonical order as one continuous story.

## How it works

- **Guest play by default.** A session starts transparently on first load — no account needed to
  play a world end to end. An optional account claim (email/password) later attaches to the same
  guest identity, so nothing is lost.
- **Three challenge types** per world: verse recall (fill-in-the-blank), multiple choice, and
  sequence (put events or quotations in order) — capped off by a boss battle.
- **Difficulty modes** (Easy/Medium/Hard): easier modes grade recall answers leniently
  (case/punctuation/plural-insensitive); Hard requires verbatim recall.
- **Memory Vault**: verses earned from boss battles enter a spaced-repetition queue (1/2/4/7/14/30/60
  day intervals) for long-term review, not just a trophy list.
- **Streaks and points** track daily engagement and completion.

## Content integrity

Every book's content clears two independent, required gates before it ships — logged in
[`docs/CONTENT_REVIEW_LOG.md`](docs/CONTENT_REVIEW_LOG.md) and
[`docs/QA_SIGNOFF.md`](docs/QA_SIGNOFF.md):

1. **Theological review** — checked against `docs/CONTENT_STYLE_GUIDE.md` for denominational
   neutrality (narrative fact and direct verse text only, never doctrinal commentary), grounded in
   real, cited sources spanning multiple Christian and Jewish traditions. Genuinely contested
   material is either excluded, narrowly bounded, or escalated for a human decision — never
   silently resolved one way.
2. **Independent verbatim-text QA** — every challenge-ready verse checked character-for-character
   against source, by a process distinct from theological review. Neither check substitutes for the
   other.

Scripture text is the **World English Bible** (WEB), a modern, public-domain translation — no
licensing dependency on a copyrighted modern translation.

## Stack

React 19 + Vite 6 + TypeScript, plain CSS, React Router, [Supabase](https://supabase.com) (Postgres +
Auth, including anonymous guest sessions), deployed on [Vercel](https://vercel.com). No custom API
server — the client talks to Supabase directly, authorized by Postgres Row-Level Security. Full
architecture writeup: [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md).

## Running locally

```bash
cd app
npm install
npm run dev
```

Needs a Supabase project with the schema in [`docs/BACKEND_REQUIREMENTS.md`](docs/BACKEND_REQUIREMENTS.md)
§1. Copy `app/.env.example` to `app/.env` and fill in `VITE_SUPABASE_URL` / `VITE_SUPABASE_ANON_KEY`
from your Supabase project's API settings.

### Tests

```bash
npm run test        # unit + mocked-integration tests (Vitest)
npm run test:e2e     # end-to-end (Playwright, hits a real Supabase project)
```

## Project structure

```
app/                 React app (source of truth for what's actually built)
docs/
  content/           Per-book content briefs (setting, scenes, challenge-ready verses)
  reviews/            Theological review write-ups, one per book/tier
  qa/                 Independent verbatim-text QA reports, one per book/tier
  ingest/             SQL files that seed the challenge table (applied by hand, reviewed first)
  ARCHITECTURE.md      System design, as-built
  API_CONTRACT.md      The lib/*.ts function surface
  CONVENTIONS.md        Project-specific practices
  *_REQUIREMENTS.md    Phase 1 requirements docs (product/frontend/backend/design/QA)
GEN2REV_MASTER_PROMPT.md   Phased build plan and decision log
MEMORY.md                  Append-only project decision/history log
CLAUDE.md                  Context for AI coding agents working in this repo
```

## License

Application code: no license file yet — all rights reserved by default until one is added.
Scripture text is the World English Bible, public domain.
