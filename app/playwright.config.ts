import { defineConfig, devices } from '@playwright/test'

// E2E tests run against the real Supabase project (this app has no separate staging
// database — see ARCHITECTURE.md), same as every manual QA pass in this project's history.
// Point at a deployed URL with E2E_BASE_URL for a real pre-release check; defaults to the
// local WSL2 dev server for fast iteration. See docs/QA_REQUIREMENTS.md §1.
const baseURL = process.env.E2E_BASE_URL ?? 'http://localhost:5173'

export default defineConfig({
  testDir: './e2e',
  fullyParallel: false, // each test creates a real guest player row in production Supabase; keep runs serial and legible
  retries: 0,
  reporter: [['list']],
  timeout: 120_000, // 13 real Supabase round-trips per Genesis run (no mocking here — see e2e/golden-path.spec.ts)
  // Playwright's 5s assertion default is too tight for real (sometimes slow, WSL2-networked)
  // Supabase round-trips — the initial guest-session creation alone does an auth sign-in plus
  // two more queries before Landing even renders. Bumped globally rather than per-assertion.
  expect: { timeout: 15_000 },
  use: {
    baseURL,
    trace: 'retain-on-failure',
    actionTimeout: 15_000,
  },
  projects: [{ name: 'chromium', use: { ...devices['Desktop Chrome'] } }],
  webServer: process.env.E2E_BASE_URL
    ? undefined
    : {
        command: 'npm run dev -- --host',
        url: baseURL,
        reuseExistingServer: true,
        timeout: 30_000,
      },
})
