import type { DifficultyMode } from './types'

function normalize(s: string): string {
  return s.trim().toLowerCase().replace(/[.,!?;:'"]+$/g, '')
}

/** Strips one trailing 's' (or 'es') so "memorials"/"memorial" and "boxes"/"box" match — a light singular/plural heuristic, not a full stemmer. */
function stripPlural(s: string): string {
  if (s.endsWith('es') && s.length > 2) return s.slice(0, -2)
  if (s.endsWith('s') && s.length > 1) return s.slice(0, -1)
  return s
}

/**
 * Grades a recall (fill-in-the-blank) answer. Easy/Medium are forgiving —
 * case-insensitive, trailing punctuation ignored, singular/plural
 * interchangeable — since the point is checking Scripture recall, not typing
 * precision. Hard is verbatim: exact text match (still trimmed, since
 * whitespace isn't part of the actual wording).
 */
export function isRecallCorrect(userInput: string, correctAnswer: string, mode: DifficultyMode): boolean {
  if (mode === 'hard') {
    return userInput.trim() === correctAnswer.trim()
  }
  const a = normalize(userInput)
  const b = normalize(correctAnswer)
  return a === b || stripPlural(a) === stripPlural(b)
}

/** Grades a multiple-choice answer: the selected option's index must match the answer key's. */
export function isMultipleChoiceCorrect(selectedIndex: number | null, correctIndex: number): boolean {
  return selectedIndex === correctIndex
}

/** Grades a sequence (reorder) answer: every position must hold the same item index as the answer key. */
export function isSequenceCorrect(order: number[], correctOrder: number[]): boolean {
  return order.length === correctOrder.length && order.every((itemIndex, pos) => itemIndex === correctOrder[pos])
}
