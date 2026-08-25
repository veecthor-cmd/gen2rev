import { describe, expect, it } from 'vitest'
import { computePointsEarned, computeStreakUpdate, computeVaultReviewProgress } from './game'

describe('computeStreakUpdate', () => {
  it('starts a fresh streak at 1 when there is no prior active date', () => {
    const result = computeStreakUpdate(null, '2026-03-05', 0, 0)
    expect(result).toEqual({ current_streak: 1, longest_streak: 1, changed: true })
  })

  it('does not change the streak on a same-day replay', () => {
    const result = computeStreakUpdate('2026-03-05', '2026-03-05', 4, 6)
    expect(result).toEqual({ current_streak: 4, longest_streak: 6, changed: false })
  })

  it('increments the streak for a consecutive calendar day', () => {
    const result = computeStreakUpdate('2026-03-05', '2026-03-06', 4, 6)
    expect(result).toEqual({ current_streak: 5, longest_streak: 6, changed: true })
  })

  it('raises the longest streak when the current streak surpasses it', () => {
    const result = computeStreakUpdate('2026-03-05', '2026-03-06', 6, 6)
    expect(result).toEqual({ current_streak: 7, longest_streak: 7, changed: true })
  })

  it('resets to 1 when a day was missed (gap of 2+ days), with no grace period', () => {
    const result = computeStreakUpdate('2026-03-03', '2026-03-06', 9, 12)
    expect(result).toEqual({ current_streak: 1, longest_streak: 12, changed: true })
  })

  it('resets to 1 on a very long gap without underflowing or erroring', () => {
    const result = computeStreakUpdate('2025-01-01', '2026-03-06', 40, 40)
    expect(result).toEqual({ current_streak: 1, longest_streak: 40, changed: true })
  })

  it('handles the month boundary correctly (Mar 1 is a consecutive day after Feb 28 in a non-leap year)', () => {
    const result = computeStreakUpdate('2027-02-28', '2027-03-01', 3, 3)
    expect(result).toEqual({ current_streak: 4, longest_streak: 4, changed: true })
  })

  it('does NOT treat Feb 28 -> Mar 1 as consecutive in a leap year (Feb 29 was skipped in between)', () => {
    const result = computeStreakUpdate('2028-02-28', '2028-03-01', 3, 3)
    expect(result).toEqual({ current_streak: 1, longest_streak: 3, changed: true })
  })

  it('treats Feb 28 -> Feb 29 as consecutive in a real leap year (2028)', () => {
    const result = computeStreakUpdate('2028-02-28', '2028-02-29', 5, 5)
    expect(result).toEqual({ current_streak: 6, longest_streak: 6, changed: true })
  })

  it('treats Feb 29 -> Mar 1 as consecutive in a real leap year (2028)', () => {
    const result = computeStreakUpdate('2028-02-29', '2028-03-01', 6, 6)
    expect(result).toEqual({ current_streak: 7, longest_streak: 7, changed: true })
  })

  it('handles the year boundary correctly (Dec 31 -> Jan 1 is consecutive)', () => {
    const result = computeStreakUpdate('2026-12-31', '2027-01-01', 10, 15)
    expect(result).toEqual({ current_streak: 11, longest_streak: 15, changed: true })
  })
})

describe('computePointsEarned', () => {
  it('awards 10 points per correct answer plus a flat 20-point world bonus', () => {
    expect(computePointsEarned(10)).toBe(120)
  })

  it('still awards the world bonus on a zero-correct run', () => {
    expect(computePointsEarned(0)).toBe(20)
  })

  it('scales linearly with correct count', () => {
    expect(computePointsEarned(1)).toBe(30)
    expect(computePointsEarned(16)).toBe(180)
  })
})

describe('computeVaultReviewProgress', () => {
  it('starts a never-reviewed entry at streak 1 / 2-day interval on first success', () => {
    expect(computeVaultReviewProgress(true, 0)).toEqual({ review_streak: 1, review_interval: 2 })
  })

  it('advances streak and interval together on repeated success', () => {
    // sequence: 1,2,4,7,14,30,60 indexed by review_streak
    expect(computeVaultReviewProgress(true, 1)).toEqual({ review_streak: 2, review_interval: 4 })
    expect(computeVaultReviewProgress(true, 2)).toEqual({ review_streak: 3, review_interval: 7 })
  })

  it('caps the interval at the sequence max once streak exceeds the table length', () => {
    expect(computeVaultReviewProgress(true, 6)).toEqual({ review_streak: 7, review_interval: 60 })
    expect(computeVaultReviewProgress(true, 20)).toEqual({ review_streak: 21, review_interval: 60 })
  })

  it('resets streak and interval to the start on a missed review, regardless of prior streak', () => {
    expect(computeVaultReviewProgress(false, 5)).toEqual({ review_streak: 0, review_interval: 1 })
    expect(computeVaultReviewProgress(false, 0)).toEqual({ review_streak: 0, review_interval: 1 })
  })
})
