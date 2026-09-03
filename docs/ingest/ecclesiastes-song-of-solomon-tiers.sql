-- Gen2Rev challenge ingest: Ecclesiastes (World 21) and Song of Solomon (World 22) -- EASY and HARD tiers
-- Generated from docs/content/ecclesiastes-easy.md, docs/content/ecclesiastes-hard.md,
--   docs/content/song-of-solomon-easy.md, docs/content/song-of-solomon-hard.md
-- All four briefs: theological review (Ecclesiastes: approved-with-changes; Song of Solomon: approved),
--   independent verbatim-text QA pass (docs/CONTENT_REVIEW_LOG.md rows 21e/21h/22e/22h,
--   docs/QA_SIGNOFF.md same rows; docs/reviews/ecclesiastes-easy-review.md,
--   docs/reviews/ecclesiastes-hard-review.md, docs/reviews/song-of-solomon-easy-review.md,
--   docs/reviews/song-of-solomon-hard-review.md).
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/proverbs-ecclesiastes-song-of-solomon.sql are untouched by this file.
--
-- Structural rules carried forward from the medium briefs and reaffirmed/extended by the easy/hard
-- briefs:
--   Ecclesiastes: no item combines Passage 1 (Vanity of Vanities, ch. 1) and Passage 4 (Remember Your
--     Creator, ch. 12) material except a pure "which comes first" ordering item. Ecclesiastes 3:11's
--     "eternity"/olam clause may be graded only via verbatim recall/fill-in-the-blank, never multiple
--     choice, and no item at any tier may ask what the clause means or whether "eternity" is the
--     correct rendering (easy tier displays but does not grade the clause; hard tier item 4 grades it
--     under this rule).
--   Song of Solomon: both tiers introduce zero new verse text beyond the 4 passages already bounded at
--     medium tier (the refrain 2:7/3:5/8:4, the voice of spring 2:10-13, mutual belonging 2:16a
--     trimmed, love strong as death 8:6-7). No verse from 1:2, chapters 4/6/7, the embrace verses
--     (2:6/3:4/8:3), or "he browses among the lilies" (2:16b) appears in either tier. Song of Solomon
--     8:6's "a very flame of Yah" (hard tier item 8) is recall-only, never multiple-choice, and no
--     distractor or question stem may ask what "Yah" refers to or whether the verse names God.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).

with w as (select id from public.world where book_slug = 'ecclesiastes')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== ECCLESIASTES — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 1:2, what does the Preacher say ''all'' is?',
   'Ecclesiastes 1:2', '''Vanity of vanities,'' says the Preacher; ''Vanity of vanities, all is vanity.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["vanity", "wisdom", "gold", "dust"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 1:9, what does the text say there is no new thing under?',
   'Ecclesiastes 1:9', 'That which has been is that which shall be, and that which has been done is that which shall be done; and there is no new thing under the sun.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the sun", "the moon", "heaven", "the stars"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 3:1, what does the text say there is a time for, under heaven?',
   'Ecclesiastes 3:1', 'For everything there is a season, and a time for every purpose under heaven:', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["every purpose", "every nation", "every king", "every harvest"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 3:4, ''a time to weep'' is paired with a time to do what?',
   'Ecclesiastes 3:4', 'a time to weep, and a time to laugh; a time to mourn, and a time to dance;', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["laugh", "sleep", "rest", "sing"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 4:9, why are two better than one?',
   'Ecclesiastes 4:9', 'Two are better than one, because they have a good reward for their labor.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["they have a good reward for their labor", "they travel faster", "they eat less", "they are stronger alone"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 4:12, what is ''not quickly broken''?',
   'Ecclesiastes 4:12', 'If a man prevails against one who is alone, two shall withstand him; and a threefold cord is not quickly broken.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a threefold cord", "a single thread", "an iron chain", "a wooden staff"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 12:1, who should you remember ''in the days of your youth''?',
   'Ecclesiastes 12:1', 'Remember also your Creator in the days of your youth, before the evil days come, and the years draw near, when you will say, ''I have no pleasure in them;''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["your Creator", "your teacher", "your king", "your ancestors"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 3:11, what has God made everything, in its time?',
   'Ecclesiastes 3:11', 'He has made everything beautiful in its time. He has also set eternity in their hearts, yet so that man can''t find out the work that God has done from the beginning even to the end.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["beautiful", "perfect", "new", "holy"], "correct_index": 0}', true, 8),
  ((select id from w), 'sequence', 'Put the book''s four pivotal passages in the order they occur in Ecclesiastes.',
   'Ecclesiastes 1; 3; 4; 12', '''Vanity of vanities,'' says the Preacher; ''Vanity of vanities, all is vanity.''; For everything there is a season, and a time for every purpose under heaven:; Two are better than one, because they have a good reward for their labor.; Remember also your Creator in the days of your youth, before the evil days come, and the years draw near, when you will say, ''I have no pleasure in them;''', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Vanity of Vanities (Ecclesiastes 1)", "A Time for Everything (Ecclesiastes 3)", "Two Are Better Than One (Ecclesiastes 4)", "Remember Your Creator (Ecclesiastes 12)"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'multiple_choice', 'According to Ecclesiastes 12:13, what is ''the whole duty of man''?',
   'Ecclesiastes 12:13', 'This is the end of the matter. All has been heard. Fear God and keep his commandments; for this is the whole duty of man.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["to fear God and keep his commandments", "to love your neighbor", "to give to the poor", "to build a temple"], "correct_index": 0}', true, 10),

  -- ===================== ECCLESIASTES — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 1:14, all is vanity and a chasing after what?',
   'Ecclesiastes 1:14', 'I have seen all the works that are done under the sun; and behold, all is vanity and a chasing after wind.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I have seen all the works that are done under the sun; and behold, all is vanity and a chasing after ___.", "answer": "wind"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 1:18, what does increasing knowledge increase?',
   'Ecclesiastes 1:18', 'For in much wisdom is much grief; and he who increases knowledge increases sorrow.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For in much wisdom is much grief; and he who increases knowledge increases ___.", "answer": "sorrow"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 3:7, a time to keep silence is paired with a time to do what?',
   'Ecclesiastes 3:7', 'a time to tear, and a time to sew; a time to keep silence, and a time to speak;', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "a time to tear, and a time to sew; a time to keep silence, and a time to ___;", "answer": "speak"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 3:11, what has God set in the human heart?',
   'Ecclesiastes 3:11', 'He has made everything beautiful in its time. He has also set eternity in their hearts, yet so that man can''t find out the work that God has done from the beginning even to the end.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He has made everything beautiful in its time. He has also set ___ in their hearts, yet so that man can''t find out the work that God has done from the beginning even to the end.", "answer": "eternity"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 4:9, two are better than one because of what?',
   'Ecclesiastes 4:9', 'Two are better than one, because they have a good reward for their labor.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Two are better than one, because they have a good reward for their ___.", "answer": "labor"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 4:10, if they fall, the one will lift up whom?',
   'Ecclesiastes 4:10', 'For if they fall, the one will lift up his fellow; but woe to him who is alone when he falls, and doesn''t have another to lift him up.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For if they fall, the one will lift up his ___; but woe to him who is alone when he falls, and doesn''t have another to lift him up.", "answer": "fellow"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 12:6, what happens to the silver cord?',
   'Ecclesiastes 12:6', '...before the silver cord is severed, or the golden bowl is broken, or the pitcher is broken at the spring, or the wheel broken at the cistern,', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...before the silver cord is ___, or the golden bowl is broken, or the pitcher is broken at the spring, or the wheel broken at the cistern,", "answer": "severed"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 12:1, before the evil days do what?',
   'Ecclesiastes 12:1', 'Remember also your Creator in the days of your youth, before the evil days come, and the years draw near, when you will say, ''I have no pleasure in them;''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Remember also your Creator in the days of your youth, before the evil days ___, and the years draw near, when you will say, ''I have no pleasure in them;''", "answer": "come"}', true, 8),
  ((select id from w), 'sequence', 'Order the four images of Ecclesiastes 12:6 as the verse states them.',
   'Ecclesiastes 12:6', '...before the silver cord is severed, or the golden bowl is broken, or the pitcher is broken at the spring, or the wheel broken at the cistern,', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["the silver cord is severed", "the golden bowl is broken", "the pitcher is broken at the spring", "the wheel is broken at the cistern"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'recall', 'Fill in the missing word: per Ecclesiastes 12:14, God will bring every work into judgment, with every hidden thing, whether it is good, or whether it is what?',
   'Ecclesiastes 12:14', 'For God will bring every work into judgment, with every hidden thing, whether it is good, or whether it is evil.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For God will bring every work into judgment, with every hidden thing, whether it is good, or whether it is ___.", "answer": "evil"}', true, 10)
;

with w as (select id from public.world where book_slug = 'song-of-solomon')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== SONG OF SOLOMON — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Song of Solomon 2:7, what does the speaker adjure the daughters of Jerusalem not to do?',
   'Song of Solomon 2:7', 'I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up, nor awaken love, until it so desires.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["stir up or awaken love until it desires", "build a house", "plant a vineyard", "go to war"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'How many times does the adjuration ''do not stir up nor awaken love until it so desires'' appear in the book?',
   'Song of Solomon 2:7; 3:5; 8:4', 'I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up, nor awaken love, until it so desires.; I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up nor awaken love, until it so desires.; I adjure you, daughters of Jerusalem, that you not stir up, nor awaken love, until it so desires.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["three times", "once", "twice", "four times"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'Song of Solomon 8:4 repeats the refrain — to whom is it addressed?',
   'Song of Solomon 8:4', 'I adjure you, daughters of Jerusalem, that you not stir up, nor awaken love, until it so desires.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the daughters of Jerusalem", "the sons of Israel", "the elders of the city", "the shepherds"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Song of Solomon 2:10-13, what has passed, in the invitation to ''rise up, my love''?',
   'Song of Solomon 2:10-13', 'My beloved spoke, and said to me, ''Rise up, my love, my beautiful one, and come away. For behold, the winter is past. The rain is over and gone. The flowers appear on the earth. The time of the singing has come, and the voice of the turtledove is heard in our land. The fig tree ripens her green figs. The vines are in blossom. They give out their fragrance. Arise, my love, my beautiful one, and come away.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the winter", "the summer", "the harvest", "the famine"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Song of Solomon 2:10-13, whose voice is heard in the land?',
   'Song of Solomon 2:10-13', 'My beloved spoke, and said to me, ''Rise up, my love, my beautiful one, and come away. For behold, the winter is past. The rain is over and gone. The flowers appear on the earth. The time of the singing has come, and the voice of the turtledove is heard in our land. The fig tree ripens her green figs. The vines are in blossom. They give out their fragrance. Arise, my love, my beautiful one, and come away.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the turtledove", "the nightingale", "the lamb", "the shepherd"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Song of Solomon 2:16, what does the speaker declare?',
   'Song of Solomon 2:16', 'My beloved is mine, and I am his.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["My beloved is mine, and I am his.", "I am my beloved''s forever.", "My beloved is a shepherd.", "I am the rose of Sharon."], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Song of Solomon 8:6, love is said to be as strong as what?',
   'Song of Solomon 8:6', 'Set me as a seal on your heart, as a seal on your arm; for love is strong as death. Jealousy is as cruel as Sheol. Its flashes are flashes of fire, a very flame of Yah. Many waters can''t quench love, neither can floods drown it. If a man would give all the wealth of his house for love, he would be utterly scorned.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["death", "fire", "the sea", "a lion"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'According to Song of Solomon 8:7, what can''t quench love?',
   'Song of Solomon 8:6-7', 'Set me as a seal on your heart, as a seal on your arm; for love is strong as death. Jealousy is as cruel as Sheol. Its flashes are flashes of fire, a very flame of Yah. Many waters can''t quench love, neither can floods drown it. If a man would give all the wealth of his house for love, he would be utterly scorned.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["many waters", "much wisdom", "great wealth", "strong wind"], "correct_index": 0}', true, 8),
  ((select id from w), 'sequence', 'Place the book''s four pivotal passages in the order they are first encountered in the book.',
   'Song of Solomon 2:7; 2:10-13; 2:16; 8:6-7', 'I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up, nor awaken love, until it so desires.; My beloved spoke, and said to me, ''Rise up, my love, my beautiful one, and come away...''; My beloved is mine, and I am his.; Set me as a seal on your heart, as a seal on your arm; for love is strong as death.', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The Refrain, first at Song of Solomon 2:7", "The Voice of Spring, Song of Solomon 2:10-13", "Mutual Belonging, Song of Solomon 2:16", "Love Strong as Death, Song of Solomon 8:6-7"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'multiple_choice', 'Which daughters are addressed in the refrain repeated at 2:7, 3:5, and 8:4?',
   'Song of Solomon 2:7; 3:5; 8:4', 'I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up, nor awaken love, until it so desires.; I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up nor awaken love, until it so desires.; I adjure you, daughters of Jerusalem, that you not stir up, nor awaken love, until it so desires.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the daughters of Jerusalem", "the daughters of Zion", "the daughters of Israel", "the daughters of Solomon"], "correct_index": 0}', true, 10),

  -- ===================== SONG OF SOLOMON — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 2:7, the speaker adjures the daughters of which city?',
   'Song of Solomon 2:7', 'I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up, nor awaken love, until it so desires.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I adjure you, daughters of ___, by the roes, or by the hinds of the field, that you not stir up, nor awaken love, until it so desires.", "answer": "Jerusalem"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 3:5, the daughters of Jerusalem are adjured by the roes, or by the ___ of the field.',
   'Song of Solomon 3:5', 'I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up nor awaken love, until it so desires.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I adjure you, daughters of Jerusalem, by the roes, or by the ___ of the field, that you not stir up nor awaken love, until it so desires.", "answer": "hinds"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 8:4, the daughters of Jerusalem are adjured not to stir up nor awaken love until it so ___.',
   'Song of Solomon 8:4', 'I adjure you, daughters of Jerusalem, that you not stir up, nor awaken love, until it so desires.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I adjure you, daughters of Jerusalem, that you not stir up, nor awaken love, until it so ___.", "answer": "desires"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 2:10-13, the rain is over and ___.',
   'Song of Solomon 2:10-13', 'My beloved spoke, and said to me, ''Rise up, my love, my beautiful one, and come away. For behold, the winter is past. The rain is over and gone. The flowers appear on the earth. The time of the singing has come, and the voice of the turtledove is heard in our land. The fig tree ripens her green figs. The vines are in blossom. They give out their fragrance. Arise, my love, my beautiful one, and come away.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "My beloved spoke, and said to me, ''Rise up, my love, my beautiful one, and come away. For behold, the winter is past. The rain is over and ___. The flowers appear on the earth. The time of the singing has come, and the voice of the turtledove is heard in our land. The fig tree ripens her green figs. The vines are in blossom. They give out their fragrance. Arise, my love, my beautiful one, and come away.''", "answer": "gone"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 2:10-13, the fig tree ripens her green ___.',
   'Song of Solomon 2:10-13', 'My beloved spoke, and said to me, ''Rise up, my love, my beautiful one, and come away. For behold, the winter is past. The rain is over and gone. The flowers appear on the earth. The time of the singing has come, and the voice of the turtledove is heard in our land. The fig tree ripens her green figs. The vines are in blossom. They give out their fragrance. Arise, my love, my beautiful one, and come away.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "My beloved spoke, and said to me, ''Rise up, my love, my beautiful one, and come away. For behold, the winter is past. The rain is over and gone. The flowers appear on the earth. The time of the singing has come, and the voice of the turtledove is heard in our land. The fig tree ripens her green ___. The vines are in blossom. They give out their fragrance. Arise, my love, my beautiful one, and come away.''", "answer": "figs"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 2:16, my beloved is mine, and I am ___.',
   'Song of Solomon 2:16', 'My beloved is mine, and I am his.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "My beloved is mine, and I am ___.", "answer": "his"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 8:6, jealousy is as cruel as ___.',
   'Song of Solomon 8:6', 'Set me as a seal on your heart, as a seal on your arm; for love is strong as death. Jealousy is as cruel as Sheol. Its flashes are flashes of fire, a very flame of Yah. Many waters can''t quench love, neither can floods drown it. If a man would give all the wealth of his house for love, he would be utterly scorned.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Set me as a seal on your heart, as a seal on your arm; for love is strong as death. Jealousy is as cruel as ___. Its flashes are flashes of fire, a very flame of Yah. Many waters can''t quench love, neither can floods drown it. If a man would give all the wealth of his house for love, he would be utterly scorned.", "answer": "Sheol"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 8:6, its flashes are flashes of fire, a very flame of ___.',
   'Song of Solomon 8:6', 'Set me as a seal on your heart, as a seal on your arm; for love is strong as death. Jealousy is as cruel as Sheol. Its flashes are flashes of fire, a very flame of Yah. Many waters can''t quench love, neither can floods drown it. If a man would give all the wealth of his house for love, he would be utterly scorned.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Set me as a seal on your heart, as a seal on your arm; for love is strong as death. Jealousy is as cruel as Sheol. Its flashes are flashes of fire, a very flame of ___. Many waters can''t quench love, neither can floods drown it. If a man would give all the wealth of his house for love, he would be utterly scorned.", "answer": "Yah"}', true, 8),
  ((select id from w), 'recall', 'Fill in the missing word: per Song of Solomon 8:7, many waters can''t quench love, neither can floods ___ it.',
   'Song of Solomon 8:6-7', 'Set me as a seal on your heart, as a seal on your arm; for love is strong as death. Jealousy is as cruel as Sheol. Its flashes are flashes of fire, a very flame of Yah. Many waters can''t quench love, neither can floods drown it. If a man would give all the wealth of his house for love, he would be utterly scorned.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Set me as a seal on your heart, as a seal on your arm; for love is strong as death. Jealousy is as cruel as Sheol. Its flashes are flashes of fire, a very flame of Yah. Many waters can''t quench love, neither can floods ___ it. If a man would give all the wealth of his house for love, he would be utterly scorned.", "answer": "drown"}', true, 9),
  ((select id from w), 'sequence', 'Place the three occurrences of the refrain in the order they appear in the book, giving each its reference.',
   'Song of Solomon 2:7; 3:5; 8:4', 'I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up, nor awaken love, until it so desires.; I adjure you, daughters of Jerusalem, by the roes, or by the hinds of the field, that you not stir up nor awaken love, until it so desires.; I adjure you, daughters of Jerusalem, that you not stir up, nor awaken love, until it so desires.', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["Song of Solomon 2:7", "Song of Solomon 3:5", "Song of Solomon 8:4"], "correct_order": [0, 1, 2]}', true, 10)
;
