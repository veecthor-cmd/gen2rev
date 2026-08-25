# Gen2Rev — Frontend Requirements (MVP)

Status: Draft v1, Phase 1. Owner discipline: Frontend Engineering.
Source: `GEN2REV_MASTER_PROMPT.md` Section 4 (Phase 1, Phase 3), Section 5.
Depends on: `PRODUCT_REQUIREMENTS.md` (scope, personas, metrics), feeds into
`DESIGN_REQUIREMENTS.md` and Phase 3 screens.

---

## 1. Architecture: Shareable-Link, Zero-Setup

The product's entire distribution model is a link pasted into a text thread or church group chat.
This constrains the frontend more than a typical web app:

- **Cold-start requirement:** a first-time visitor with no account, no app, and no prior state
  must go from clicking the link to playing a challenge in as few steps as possible — target ≤2
  taps after the landing page (Start → optional name/avatar skip → World Map).
- **No forced auth on the critical path.** Guest sessions must be fully playable; account claim is
  an optional, later action (see `BACKEND_REQUIREMENTS.md` §2 for the guest-session model this
  depends on).
- **Single build, responsive, not adaptive-per-device.** One React app, responsive CSS/layout —
  not separate mobile/desktop codepaths. Most first opens will be mobile (link from a phone chat
  thread); desktop is a secondary but required target.
- **Static/edge-hostable.** The app must be deployable as a static or edge-rendered bundle behind
  a CDN so a shared link opened by a group at once doesn't wait on server-rendering per request
  (see §5 performance budget and `QA_REQUIREMENTS.md` share-spike check).

## 2. Component Inventory (mapped to Phase 3 screens)

Every component below must exist before its owning screen can be marked done in Phase 3. This is
an inventory, not a design spec — visual treatment lives in `DESIGN_REQUIREMENTS.md`.

| Screen (Phase 3) | Core components |
|---|---|
| Landing/marketing | Hero, tagline, primary CTA button, footer |
| Onboarding | Name input (optional/skippable), avatar picker, skip button |
| World Map | World node (locked/in-progress/complete states), progress line/path, streak badge, points display |
| Challenge — recall | Verse-blank input, reference display, submit button, hint affordance |
| Challenge — multiple choice | Question text, answer option list (4-way), selection feedback state |
| Challenge — sequence | Draggable/orderable scene cards, submit button |
| Boss Battle | Boss card/visual, challenge sequence wrapper (reuses challenge components), health/progress meter |
| Result/Reward | Points-earned summary, Memory-Vault-added confirmation, streak update, continue CTA |
| Memory Vault | Verse card list, spaced-repetition due indicator, review-mode launcher |
| Profile/Rank | Rank badge, stats summary (worlds completed, streak, points), account-claim CTA |
| Home/Streak dashboard | Streak counter, "continue where you left off" CTA, daily-challenge nudge (if in scope) |
| Share screen | Shareable link display, copy-to-clipboard button, native share sheet trigger (mobile) |
| Universal | Empty state, loading state, error state, offline state — one shared pattern per state type, reused across all screens above (not bespoke per screen) |

## 3. State Management Approach

- **Local/session state** (current challenge index, in-progress answer, UI transients): component
  or lightweight local state — no global store needed for this tier.
- **Player progress state** (worlds unlocked, points, streak, Memory Vault contents): must survive
  a page refresh and be resilient to the guest-session model in
  `BACKEND_REQUIREMENTS.md` §2 — treat this as server-synced state with an optimistic local cache,
  not client-only state that can silently diverge from the backend record of truth.
- **No premature global state library.** Given MVP's scope (single-player, no complex
  cross-screen coordination beyond progress + streak + points), a single lightweight store (e.g.
  React context + a sync layer to the backend) is sufficient — do not introduce a heavier state
  management framework without a concrete need surfacing during implementation.
- **Offline/error handling:** if the backend is unreachable mid-challenge, the in-progress answer
  must not be silently lost — surface the offline state (component in §2) rather than letting a
  submit action fail silently. This is a direct callback to the guardrail in the global CLAUDE.md
  about silent-failure bugs being the costliest class of bug on this stack.

## 4. Accessibility Bar

**WCAG 2.1 AA, minimum, for every MVP screen** — not a stretch goal, not deferred to a later pass.
Concretely:

- Color contrast ratios meet AA (4.5:1 normal text, 3:1 large text/UI components) — checked at
  design-token level in `DESIGN_REQUIREMENTS.md`, not left to implementation-time guessing.
- All interactive elements (challenge options, world nodes, buttons) reachable and operable via
  keyboard alone, with visible focus states.
- Touch targets ≥44×44px on mobile layouts (relevant given majority-mobile entry).
- All non-text content (world icons, boss visuals, badges) has text alternatives.
- Drag-based sequence challenges (§2) must have a non-drag alternative interaction (e.g. tap-to-
  reorder or numbered-selection) — drag-only interaction fails both keyboard and motor-accessibility
  bars.
- Verified against `design:accessibility-review` process defined in `QA_REQUIREMENTS.md`, not
  self-certified by frontend alone.

## 5. Performance Budget

Target scenario: a link opened cold from a social/church group chat, likely on mobile data, likely
several people opening it within the same few minutes of a share event.

| Metric | Budget |
|---|---|
| Time to interactive (first visit, mobile, simulated 4G) | ≤ 3s |
| Largest Contentful Paint | ≤ 2.5s |
| JS bundle (initial route, gzipped) | ≤ 200KB |
| Challenge screen transition (world map → first challenge) | ≤ 500ms perceived (skeleton/optimistic transition acceptable, blank white screen is not) |

These are starting budgets to build against, not empirically validated yet — re-baseline after
first real deployment against `QA_REQUIREMENTS.md`'s share-spike check.

## 6. Analytics Events

**Status (2026-08-25): none of this is implemented.** Surveyed the full codebase while updating
project docs — there is no analytics library, no event-tracking calls, and no analytics provider
configured anywhere in `app/`. Every success metric in `PRODUCT_REQUIREMENTS.md` §4 (World 1
completion rate, D1/D7 retention, streak distribution, Memory Vault entries per completer,
share-link rate, claim rate) currently has **no way to be measured** — the events below are still
the right design, they were simply never wired up during Phase 4. Not fixed in this pass (it's new
feature work — picking an analytics provider and instrumenting ~10 pages — not a documentation
update); flagging clearly here and in `MEMORY.md` rather than leaving it to be silently
rediscovered as "why do we have no usage data" once Phase 5's real-user QA starts generating
exactly the kind of traffic these events were meant to measure.

Every event below exists specifically to compute a metric in `PRODUCT_REQUIREMENTS.md` §4 — no
metric without an event, no event without a metric it feeds.

| Event | Fires when | Feeds metric |
|---|---|---|
| `session_start` | New guest session created | Denominator for all rate metrics |
| `world_started` | Player enters a world's first challenge | World engagement funnel |
| `world_completed` | Player reaches world's result/reward screen post-boss-battle | World 1 completion rate |
| `challenge_answered` | Every challenge submission (correct or incorrect) | Difficulty/drop-off diagnostics |
| `boss_battle_started` / `boss_battle_completed` | Boss battle entry/exit | World completion funnel detail |
| `vault_entry_added` | A verse is banked to Memory Vault | Memory Vault entries per completer |
| `vault_review_completed` | A spaced-repetition review session finishes | Retention-mechanic engagement (report-only for v1) |
| `streak_incremented` | Daily streak counter increases | Streak length distribution |
| `share_link_used` | Share screen's copy/share action triggered | Share-link generation rate |
| `session_return` | A returning guest/account session is detected within 24h / 7d of a prior session | D1/D7 retention |
| `account_claimed` | Guest session converts to a claimed account | Guest-to-account claim rate |

No personal data in any event payload beyond what's already collected under the guest/account
model in `BACKEND_REQUIREMENTS.md` — analytics must not become a side-channel for data collection
the product itself avoids (see child-safety guardrail, master prompt Section 5).

## 7. Acceptance Criteria for This Document

- [ ] Every Phase 3 screen has a corresponding component-inventory row
- [ ] Every Product Requirements success metric has a corresponding analytics event
- [ ] Accessibility bar stated as testable checks, not vibes
- [ ] Performance budget stated as numbers, not "should feel fast"
