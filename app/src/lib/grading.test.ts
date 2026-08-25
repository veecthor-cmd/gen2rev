import { describe, expect, it } from 'vitest'
import { isMultipleChoiceCorrect, isRecallCorrect, isSequenceCorrect } from './grading'

describe('isRecallCorrect', () => {
  describe('easy/medium (forgiving)', () => {
    it('accepts an exact match', () => {
      expect(isRecallCorrect('image', 'image', 'medium')).toBe(true)
    })

    it('ignores case', () => {
      expect(isRecallCorrect('IMAGE', 'image', 'easy')).toBe(true)
    })

    it('ignores trailing punctuation', () => {
      expect(isRecallCorrect('image.', 'image', 'medium')).toBe(true)
      expect(isRecallCorrect('image!', 'image', 'medium')).toBe(true)
      expect(isRecallCorrect("image'", 'image', 'medium')).toBe(true)
    })

    it('trims surrounding whitespace', () => {
      expect(isRecallCorrect('  image  ', 'image', 'medium')).toBe(true)
    })

    it('accepts a singular answer for a plural key', () => {
      expect(isRecallCorrect('sandal', 'sandals', 'easy')).toBe(true)
    })

    it('accepts a plural answer for a singular key', () => {
      expect(isRecallCorrect('sandals', 'sandal', 'easy')).toBe(true)
    })

    it('strips -es plurals, not just -s', () => {
      expect(isRecallCorrect('box', 'boxes', 'medium')).toBe(true)
    })

    it('rejects a genuinely wrong word', () => {
      expect(isRecallCorrect('shadow', 'image', 'medium')).toBe(false)
    })

    it('rejects an empty answer against a real word', () => {
      expect(isRecallCorrect('', 'image', 'medium')).toBe(false)
    })
  })

  describe('hard (verbatim)', () => {
    it('accepts an exact-case match', () => {
      expect(isRecallCorrect('God', 'God', 'hard')).toBe(true)
    })

    it('rejects a case mismatch', () => {
      expect(isRecallCorrect('god', 'God', 'hard')).toBe(false)
    })

    it('rejects singular/plural leniency', () => {
      expect(isRecallCorrect('sandal', 'sandals', 'hard')).toBe(false)
    })

    it('rejects trailing punctuation leniency', () => {
      expect(isRecallCorrect('God.', 'God', 'hard')).toBe(false)
    })

    it('still trims surrounding whitespace (not part of the actual wording)', () => {
      expect(isRecallCorrect('  God  ', 'God', 'hard')).toBe(true)
    })
  })
})

describe('isMultipleChoiceCorrect', () => {
  it('accepts the correct index', () => {
    expect(isMultipleChoiceCorrect(2, 2)).toBe(true)
  })

  it('rejects a wrong index', () => {
    expect(isMultipleChoiceCorrect(1, 2)).toBe(false)
  })

  it('rejects no selection', () => {
    expect(isMultipleChoiceCorrect(null, 2)).toBe(false)
  })

  it('treats index 0 as a real, gradable selection', () => {
    expect(isMultipleChoiceCorrect(0, 0)).toBe(true)
  })
})

describe('isSequenceCorrect', () => {
  it('accepts the exact correct order', () => {
    expect(isSequenceCorrect([0, 1, 2, 3], [0, 1, 2, 3])).toBe(true)
  })

  it('rejects a reversed order', () => {
    expect(isSequenceCorrect([3, 2, 1, 0], [0, 1, 2, 3])).toBe(false)
  })

  it('rejects a single adjacent-pair swap', () => {
    expect(isSequenceCorrect([0, 2, 1, 3], [0, 1, 2, 3])).toBe(false)
  })

  it('rejects a mismatched-length order defensively', () => {
    expect(isSequenceCorrect([0, 1], [0, 1, 2])).toBe(false)
  })

  it('handles a single-item sequence', () => {
    expect(isSequenceCorrect([0], [0])).toBe(true)
  })
})
