export type ChallengeType = 'recall' | 'multiple_choice' | 'sequence'

export interface World {
  id: string
  book_slug: string
  sequence_order: number
  title: string
  flavor_text: string | null
  icon_ref: string | null
}

export type AnswerKey =
  | { type: 'recall'; template: string; answer: string }
  | { type: 'multiple_choice'; options: string[]; correct_index: number }
  | { type: 'sequence'; items: string[]; correct_order: number[] }

export type DifficultyMode = 'easy' | 'medium' | 'hard'

export const DIFFICULTY_ORDER: DifficultyMode[] = ['easy', 'medium', 'hard']

export const DIFFICULTY_LABEL: Record<DifficultyMode, string> = {
  easy: 'Easy',
  medium: 'Medium',
  hard: 'Hard',
}

export interface Challenge {
  id: string
  world_id: string
  type: ChallengeType
  prompt: string
  verse_ref: string
  verse_text: string
  translation: string
  difficulty_rank: number
  difficulty_tier: DifficultyMode
  answer_key: AnswerKey
  is_boss_item: boolean
  sort_order: number
}

export type WorldStatus = 'locked' | 'in_progress' | 'complete'

export interface PersistedResult {
  challenge_id: string
  isCorrect: boolean
  userAnswerDisplay: string
}

export interface WorldProgress {
  player_id: string
  world_id: string
  status: WorldStatus
  boss_battle_complete_at: string | null
  attempt_count: number
  updated_at: string
  /** Count of challenges answered so far in the current (incomplete) attempt — 0 to the world's total inclusive. */
  current_index: number
  session_results: PersistedResult[]
}

export interface ChallengeResult {
  challenge: Challenge
  isCorrect: boolean
  /** Human-readable version of what the player submitted, for the Review screen. */
  userAnswerDisplay: string
}

export const MAX_WORLD_ATTEMPTS = 3 // 1 initial run + 2 retakes

export interface Streak {
  player_id: string
  current_streak: number
  longest_streak: number
  last_active_date: string | null
}

export interface Points {
  player_id: string
  total_points: number
}

export type AuthType = 'guest' | 'claimed'

export interface Player {
  id: string
  display_name: string | null
  avatar_id: string | null
  auth_type: AuthType
  created_at: string
  claimed_at: string | null
  difficulty_mode: DifficultyMode
}

export interface VaultEntry {
  id: string
  player_id: string
  challenge_id: string
  added_at: string
  next_review_at: string
  review_interval: number
  review_streak: number
}

export interface VaultEntryWithChallenge extends VaultEntry {
  challenge: Challenge
}
