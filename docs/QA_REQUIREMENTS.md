# Gen2Rev — QA Requirements (MVP)

Status: Draft v1, Phase 1. Owner discipline: QA.
Source: `GEN2REV_MASTER_PROMPT.md` Section 4 (Phase 1, Phase 5), Section 5.
Depends on: all other Phase 1 docs. Feeds Phase 5 (hardening pass) and Phase 6 (eval rubric).

---

## 1. Test Strategy

| Layer | Scope | Notes |
|---|---|---|
| Unit | Challenge scoring logic, streak calculation (incl. grace-period rule), points math, spaced-repetition interval calculation | These are the pieces of logic most likely to have a "looks right, wrong under a real date/timezone edge case" bug — prioritize timezone and date-boundary test cases explicitly for streaks. |
| Integration | Guest session creation → progress write → account claim → progress preserved (per `BACKEND_REQUIREMENTS.md` §2); content ingestion pipeline refuses unreviewed content (per `BACKEND_REQUIREMENTS.md` §4) | The claim-flow test is the single highest-value integration test in this product — a silent progress loss here would directly contradict the core pitch. |
| End-to-end | Full player journey: open link → guest session → World 1 (Genesis) challenges → boss battle → reward → Memory Vault entry → return session next day → streak increments | Must be run against a real deployed environment, not just local, per the global verification-discipline standard — "the code looks right" is not a pass. |
| Manual/exploratory | Every Phase 3 screen's empty/loading/error/offline state; every challenge type (recall/multiple choice/sequence) | Automated coverage of visual/interaction states is lower ROI at MVP scale than a deliberate manual pass — don't over-invest in E2E visual regression tooling for a 13-world MVP. |

## 2. Device / Browser Support Matrix

| Category | Support level |
|---|---|
| Mobile Safari (iOS, last 2 major versions) | Full support — primary target, most first opens |
| Mobile Chrome (Android, last 2 major versions) | Full support — primary target |
| Desktop Chrome, Safari, Firefox, Edge (last 2 major versions) | Full support |
| Older/unlisted browsers | Best-effort only — must not hard-crash, but pixel-perfect fidelity not required |
| Screen readers (VoiceOver on iOS/macOS, TalkBack on Android, NVDA on Windows) | Full support per WCAG 2.1 AA bar — tested, not assumed |

## 3. Content-Accuracy QA Process

This is the non-negotiable content rule from `CLAUDE.md` made testable:

- **100% of shipped verse text checked against source**, not sampled. Every `challenge` row's
  `verse_text` + `verse_ref` must be diffed against the canonical WEB source text before that
  book's content is eligible to ship.
- **Process:** for each of the 13 confirmed books, after theological-reviewer sign-off (per
  `docs/CONTENT_REVIEW_LOG.md`) and before ingestion into the `challenge` table
  (`BACKEND_REQUIREMENTS.md` §4), a second, independent pass verifies verse text character-for-
  character against source. Reviewer sign-off (theological accuracy) and verse-text QA (textual
  accuracy) are two distinct checks — one does not substitute for the other.
- **Recorded in `docs/QA_SIGNOFF.md`** per book, alongside the functional pass (§1 end-to-end)
  for that world.
- **No book ships with a partial pass.** If any verse in a book's challenge set fails the check,
  that whole book stays unshipped until fixed and re-checked — not shipped with a known-bad item
  flagged for later.

## 4. Accessibility QA Process

- Run the `design:accessibility-review` process (WCAG 2.1 AA) against every Phase 3 screen before
  Phase 4 sign-off, and again against the actual implemented screens before Phase 5 close — a
  design-time pass and an implementation-time pass are both required, since implementation can
  regress a compliant design (missing alt text, wrong DOM order, etc.).
- Explicit checks: color contrast (verify the actual rendered tokens from
  `DESIGN_REQUIREMENTS.md` §1, not just the design-file swatches), keyboard-only full playthrough
  of one world end-to-end, screen-reader pass on World Map + one challenge of each type + Result
  screen, touch-target sizing on mobile, `prefers-reduced-motion` respected.
- Recorded as a pass/fail per screen in the Phase 5 hardening pass, feeding `QA_SIGNOFF.md`.

## 5. Share-Spike / Load Assumption

Direct consequence of the product's distribution model (a link dropped into a group chat can
produce a burst of near-simultaneous first opens):

- **Assumption to test against:** up to ~50 simultaneous first-time guest sessions created within
  a 60-second window (one plausible church-group-chat share event) without failed session creation,
  degraded challenge-load latency beyond the performance budget in `FRONTEND_REQUIREMENTS.md` §5,
  or data loss.
- **"Handles gracefully" is defined as:** no dropped guest sessions, no silently-failed writes
  (progress, points, vault entries), and challenge-screen load time staying within 2x the normal
  performance budget under this burst — not "the server didn't crash."
- This is a sanity check appropriate to MVP scale, not a formal load-testing program — re-scope if
  real usage data shows spikes materially larger than this assumption.

## 6. Bug Severity Taxonomy & Release Exit Criteria

| Severity | Definition | Examples | Exit criteria |
|---|---|---|---|
| P0 | Blocks core loop entirely, or causes data loss / theological-content inaccuracy | Guest session fails to create; account claim loses progress; a verse ships with incorrect text; a challenge exposes doctrinal commentary | Zero P0s to ship, ever |
| P1 | Breaks a major flow but has a workaround, or a significant accessibility failure | Boss battle can't be completed on mobile Safari; a screen fails WCAG AA contrast; streak miscounts | Zero P1s to ship |
| P2 | Degraded experience, no data/content risk | Animation stutters on low-end devices; minor visual misalignment | Tracked, does not block ship; listed in `docs/QA_SIGNOFF.md` |
| P3 | Cosmetic / polish | Copy tweak, minor spacing inconsistency | Tracked, does not block ship |

**Release exit criteria:** zero open P0/P1 bugs, content-accuracy check (§3) complete for all 13
books at 100%, accessibility QA (§4) passed, share-spike check (§5) passed, sign-off recorded in
`docs/QA_SIGNOFF.md` with tester and date.

## 7. Acceptance Criteria for This Document

- [ ] Test strategy split (unit/integration/e2e/manual) matches what's actually feasible at MVP
      scope — not aspirational tooling beyond what a 13-world MVP needs
- [ ] Content-accuracy process is 100%-coverage, not sampled, and technically distinct from
      theological review
- [ ] Severity taxonomy has concrete examples, not just abstract definitions
- [ ] Exit criteria are binary/checkable, not "feels stable"
