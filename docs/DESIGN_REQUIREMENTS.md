# Gen2Rev — Design Requirements (MVP)

Status: Draft v1, Phase 1. Owner discipline: Design.
Source: `GEN2REV_MASTER_PROMPT.md` Section 3 (visual language extracted from the Lovable page —
inspiration, not spec) and Section 4 (Phase 1, Phase 3).
Depends on: `PRODUCT_REQUIREMENTS.md` (14-book sequential world map), feeds Phase 3 screens and
`FRONTEND_REQUIREMENTS.md` §4 (accessibility).

---

## 1. Design Tokens

Formalizing the Lovable page's illuminated-manuscript aesthetic into an actual token set — not
copied pixel-for-pixel, per the master prompt's explicit instruction.

### Color

| Token | Value (starting point) | Usage | AA check |
|---|---|---|---|
| `color-bg-parchment` | `#F4EDE0` | Primary background | Base for all text-contrast pairs below |
| `color-bg-parchment-dark` | `#E8DCC8` | Secondary/card background | — |
| `color-text-primary` | `#241F1A` (near-black) | Body text on parchment | 4.5:1+ against `color-bg-parchment` — verify at implementation |
| `color-accent-olive` | `#5C6B3F` | Secondary accents, complete-state | 4.5:1+ against parchment required for text use |
| `color-accent-ochre` | `#B8792E` | World icons, flavor accents | Decorative use permitted below AA if never carrying text; text use requires contrast check |
| `color-highlight-gold` | `#C98A2C` | Taglines, CTAs, in-progress state | Verify 3:1 against parchment for large/UI-component use per WCAG AA |
| `color-locked` | `#9C9488` (muted grey-olive) | Locked world nodes | Must remain distinguishable from complete/in-progress by shape/icon, not color alone (color-blindness) |
| `color-error` | `#A33B2E` | Error states, incorrect-answer feedback | 4.5:1+ against parchment required |
| `color-success` | `#3F7A4A` | Correct-answer feedback, boss-defeat state | 4.5:1+ against parchment required |

All pairs above are starting hex values, not final — **every text-bearing pair must be run through
an actual contrast checker at implementation time** and adjusted if it fails AA; this table is a
palette direction, not a signed-off contrast audit.

### Typography

| Token | Usage |
|---|---|
| `font-display-serif` | Logo/wordmark, world titles, boss-battle headers — large serif display face |
| `font-accent-script` | Taglines only, sparingly — italic script accent, never for body or challenge text (readability) |
| `font-label-smallcaps` | Nav items, section eyebrows (e.g. "✦ SCRIPTURE IS THE KEY ✦") — letterspaced small caps |
| `font-body` | Challenge prompts, verse text, all functional UI copy — a plain, highly legible serif or humanist sans, not a display face; this is the font actually read under time pressure during a challenge, so legibility wins over theme |

### Spacing & Layout

- 8px base spacing unit, standard scale (8/16/24/32/48/64).
- World Map uses a fixed vertical/serpentine path layout reflecting the 14-book **sequential**
  order (per `PRODUCT_REQUIREMENTS.md` §3 — this is now a fixed path, not a free grid, which
  simplifies the map layout considerably versus the original genre-sample concept).

## 2. Responsive Breakpoints

| Breakpoint | Width | Primary target |
|---|---|---|
| `mobile` | < 768px | Majority of first opens (shared link from phone chat) — design mobile-first |
| `tablet` | 768–1023px | Secondary |
| `desktop` | ≥ 1024px | Secondary, must remain fully functional, not just "not broken" |

World Map path, challenge cards, and boss-battle layout must be explicitly designed (not just
scaled) at both `mobile` and `desktop` per the Phase 3 DoD — a scaled-up mobile layout is not
sufficient for desktop sign-off.

## 3. Motion & Feedback Principles

Reward moments are the emotional core of the loop (correct answer, world unlock, boss defeat) —
these need explicit, deliberate motion design, not default browser transitions:

- **Correct answer:** immediate (<150ms) visual feedback (color + icon, never color alone),
  followed by a short celebratory motion (<600ms) that doesn't block the player from proceeding —
  never force a wait-through-the-animation delay before the next action is available.
- **Incorrect answer:** clear, non-punitive feedback — show the correct answer/verse, no harsh
  motion (shake/red-flash is acceptable but should read as "try again," not as failure-shaming,
  given this product's tone).
- **World unlock:** a distinct, higher-weight animation (the map node transitions locked →
  unlocked) — this is a rarer, more significant event than a single correct answer and should feel
  that way.
- **Boss defeat / world complete:** the highest-weight animation in the product — this is the
  capstone moment per world and should feel earned; also the moment `vault_entry_added` and
  `streak_incremented` events are visually represented on the Result/Reward screen.
- **Motion must respect `prefers-reduced-motion`.** Every animation above needs a reduced-motion
  fallback (instant state change or minimal cross-fade) — this is an accessibility requirement, not
  optional polish, per `FRONTEND_REQUIREMENTS.md` §4.

## 4. Component States

Every interactive component in `FRONTEND_REQUIREMENTS.md` §2's inventory needs, at minimum, these
states designed before Phase 3 sign-off:

| State | Applies to |
|---|---|
| Default | All components |
| Hover | All clickable components (desktop/pointer input) |
| Focus (keyboard) | All interactive components — must be visually distinct from hover, per accessibility bar |
| Active/pressed | Buttons, answer options |
| Disabled | Submit buttons before an answer is selected, locked world nodes |
| Locked | World map nodes specifically — visually distinct from "disabled," since locked communicates a future-available state, not an unavailable action |
| Loading | Any component awaiting a backend response (submit, world transition) |
| Error | Form inputs (name entry), failed submission states |
| Empty | Memory Vault with zero entries, Profile before any world completed |
| Selected/correct/incorrect | Multiple-choice answer options specifically — three distinct visual states, not just a binary selected/unselected |

## 5. Acceptance Criteria for This Document

- [ ] Every color pair used for text verified against WCAG AA contrast at implementation time
- [ ] No state communicated by color alone anywhere in the token/state system
- [ ] World Map layout reflects the confirmed 14-book sequential order, not a free-grid layout
- [ ] Every component in `FRONTEND_REQUIREMENTS.md` §2 has its required states covered here
- [ ] Motion principles include a `prefers-reduced-motion` fallback for every named animation
