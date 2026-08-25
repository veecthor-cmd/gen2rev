import { expect, type Page, test } from '@playwright/test'

/**
 * Full player journey e2e test, per docs/QA_REQUIREMENTS.md §1's e2e row: open link -> guest
 * session -> World 1 (Genesis) challenges -> boss battle -> reward -> Memory Vault entry ->
 * World 2 unlocked -> reload preserves progress.
 *
 * Runs against the real Supabase project (no mocking, no staging DB — see ARCHITECTURE.md and
 * MEMORY.md 2026-08-25 on why the earlier integration-test layer mocks but this layer doesn't:
 * a real end-to-end test needs to prove the actual wiring, not a stand-in). Each test gets a
 * fresh Playwright browser context, so Supabase's persisted anonymous session (localStorage)
 * starts empty and a brand-new guest player is created every run — this is what gives test
 * isolation, but it also means every run leaves a real (harmless, PII-free) orphaned guest row
 * behind. There is no automated cleanup here: RLS has no DELETE policy for the anon role on any
 * player-scoped table (confirmed via `pg_policies`), so a browser-side client can't clean up its
 * own rows even if this suite tried to. Periodic cleanup needs a privileged (service-role)
 * query, run out-of-band — not embedded in this test suite. See MEMORY.md for the cleanup SQL.
 *
 * Deliberately NOT tested here: the day-2 "streak increments on a consecutive calendar day"
 * case (needs either real wall-clock time to pass or a privileged DB write to backdate
 * last_active_date, neither of which this anon-authenticated e2e session can do) — that exact
 * date-boundary logic is already covered by lib/game.test.ts's computeStreakUpdate suite. This
 * test only proves same-day completion actually writes a real streak of 1, i.e. that the wiring
 * from the running app to the real database works, not the date arithmetic itself.
 *
 * Also deliberately NOT tested here: account claim (lib/game.test.ts's mocked integration suite
 * already covers claimAccount's logic) — claiming triggers a real Supabase Auth email send, and
 * this project's own history records that sender is easy to rate-limit; automating repeated real
 * email sends on every e2e run isn't worth that operational risk.
 */

/**
 * Answers whatever challenge is currently showing and waits for the app to genuinely move on.
 *
 * The first working version of this helper waited for `.recall-blank`/`.option`/`.sequence-list`
 * to "become visible" after submitting — but those classes are still present (just disabled,
 * mid-submit) on the *current* challenge right up until React swaps in the next one, so that wait
 * resolved instantly against stale, not-yet-replaced elements instead of the real next question.
 * That raced every subsequent step ahead of the actual UI state (confirmed by instrumenting the
 * failure: it kept re-clicking a disabled Submit button on the *same* still-mounted question).
 * Fixed by keying off `.challenge-body[data-challenge-id]` (added to Play.tsx's ChallengeBody
 * specifically for this) and waiting for that id to actually change.
 */
async function answerCurrentChallenge(page: Page) {
  const challengeBody = page.locator('.challenge-body[data-challenge-id]')
  await challengeBody.waitFor({ state: 'visible', timeout: 20_000 })
  const challengeId = await challengeBody.getAttribute('data-challenge-id')

  const recallInput = page.locator('.recall-blank')
  const mcOption = page.locator('.option').first()
  const submitButton = page.getByRole('button', { name: /Submit (Answer|Order)/ })

  if (await recallInput.isVisible().catch(() => false)) {
    await recallInput.fill('placeholder answer')
  } else if (await mcOption.isVisible().catch(() => false)) {
    await mcOption.click()
  }
  // Sequence challenges are answerable in their default (shuffled) order with no extra
  // interaction needed — the Submit button is enabled regardless of order.
  await submitButton.click()

  // Submitting kicks off real async writes (saveWorldProgress, and on the last item
  // incrementWorldAttempt) before the app advances — wait for the challenge id to actually
  // change (or Review to load, on the last item) rather than for any class to merely be present.
  await Promise.race([
    page.waitForURL(/\/review\//, { timeout: 20_000 }),
    page
      .locator(`.challenge-body[data-challenge-id]:not([data-challenge-id="${challengeId}"])`)
      .waitFor({ state: 'visible', timeout: 20_000 }),
  ])
}

test('golden path: guest session -> World 1 -> boss battle -> reward -> vault -> World 2 unlocked -> reload persists', async ({ page }) => {
  await page.goto('/')

  // 1. Guest session creation is transparent — no sign-in step, a brand-new visitor sees the
  // first-time pitch (not "Welcome back", which would mean an existing session leaked in).
  await expect(page.getByRole('heading', { name: 'Gen2Rev' })).toBeVisible()
  await expect(page.getByText(/Journey through the Old Testament/)).toBeVisible()

  // 2. Onboarding (optional step, but exercised here as part of the real first-time path).
  await page.getByRole('button', { name: 'Start Playing' }).click()
  await expect(page.getByRole('heading', { name: "Who's playing?" })).toBeVisible()
  // Easy mode: lenient grading keeps this test robust to exact wording without hardcoding verse text.
  // Not `exact: true` — the button's accessible name also includes its hint-text span
  // ("Easy" + "Forgiving grading..."), so an exact match on just the label never matches.
  await page.getByRole('button', { name: /^Easy/ }).click()
  await page.getByRole('button', { name: 'Start Playing' }).click()

  // 3. World Map: World 1 unlocked, everything else locked.
  await expect(page).toHaveURL(/\/map$/)
  await expect(page.getByText(/World 1: Genesis/)).toBeVisible()
  await expect(page.getByText('▶ In Progress').first()).toBeVisible()
  await expect(page.getByText('🔒 Locked').first()).toBeVisible()

  await page.getByText(/World 1: Genesis/).click()
  await expect(page).toHaveURL(/\/play\/genesis$/)

  // 4. Answer every challenge (regular items, then the boss battle) until Review is reached.
  // Genesis medium has 10 regular + 3 boss items as of 2026-08; loop with a safety cap instead
  // of hardcoding that count, so this test doesn't silently rot if content changes.
  for (let i = 0; i < 30; i++) {
    if (/\/review\//.test(page.url())) break
    await answerCurrentChallenge(page)
  }
  await expect(page).toHaveURL(/\/review\/genesis$/)
  await expect(page.getByRole('heading', { name: 'Genesis' })).toBeVisible()
  await expect(page.getByText(/\d+ \/ \d+ correct/)).toBeVisible()

  // 5. Proceed banks the run: points, streak, next-world unlock, Memory Vault entries.
  await page.getByRole('button', { name: 'Proceed to Next World' }).click()
  await expect(page).toHaveURL(/\/result\/genesis$/)
  await expect(page.getByText('World Complete')).toBeVisible()
  await expect(page.getByText('✦ Points earned')).toBeVisible()
  await expect(page.getByText(/^\d+ days?$/)).toBeVisible() // streak stat row
  await expect(page.getByText('A new world has been unlocked!')).toBeVisible()

  await page.getByRole('button', { name: 'Continue Your Journey' }).click()
  await expect(page).toHaveURL(/\/map$/)
  await expect(page.getByText('✓ Complete').first()).toBeVisible()
  await expect(page.getByText(/World 2: Exodus/)).toBeVisible()

  // 6. Boss items land in the Memory Vault (NavBar items are buttons, not links).
  await page.getByRole('button', { name: /Vault/i }).click()
  await expect(page).toHaveURL(/\/vault$/)
  await expect(page.getByText(/Verses? Mastered/)).toBeVisible()

  // 7. Reload simulates a return visit (same day): the persisted anonymous session and its
  // progress must survive, not silently reset — this is the "session persistence" requirement
  // in BACKEND_REQUIREMENTS.md §2.
  await page.reload()
  await expect(page).toHaveURL(/\/vault$/)
  await page.goto('/map')
  await expect(page.getByText('✓ Complete').first()).toBeVisible()
})
