-- Gen2Rev challenge ingest: Ezekiel (World 26) and Daniel (World 27) -- EASY and HARD tiers
-- Generated from docs/content/ezekiel-easy.md, docs/content/ezekiel-hard.md,
--   docs/content/daniel-easy.md, docs/content/daniel-hard.md
-- All four briefs: theological review approved-with-changes, independent verbatim-text QA pass
--   (docs/CONTENT_REVIEW_LOG.md rows 26e/26h/27e/27h, docs/QA_SIGNOFF.md same rows).
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/ezekiel-daniel.sql are untouched by this file.
--
-- Structural rules carried forward from the medium brief and reaffirmed/extended by the easy/hard
-- briefs:
--   Ezekiel: chapters 16, 23, and 38-39 excluded entirely, at every tier; the temple vision
--     (40-48) out of scope at every tier; Ezekiel 34:23-24 ("my servant David") is
--     recall/fill-in-blank format only, never multiple choice, at every tier.
--   Daniel: chapters 7-12 excluded entirely, at every tier; no challenge item may require
--     identifying which kingdom any part of Daniel 2's dream represents; Daniel 4:33 (the graphic
--     physical description of Nebuchadnezzar's madness) excluded from challenge-ready text at
--     every tier.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).

with w as (select id from public.world where book_slug = 'ezekiel')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== EZEKIEL — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Ezekiel 1:1, where was Ezekiel when the heavens opened and he saw visions of God?',
   'Ezekiel 1:1', 'Now in the thirtieth year, in the fourth month, in the fifth day of the month, as I was among the captives by the river Chebar, the heavens were opened, and I saw visions of God.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["by the river Chebar", "on Mount Sinai", "in the Temple in Jerusalem", "in the palace of Babylon"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Ezekiel 2:3, who did Yahweh send Ezekiel to?',
   'Ezekiel 2:3', 'He said to me, ''Son of man, I send you to the children of Israel, to a nation of rebels who have rebelled against me. They and their fathers have transgressed against me even to this very day.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a nation of rebels who have rebelled against him", "the king of Babylon", "the priests of Egypt", "a foreign nation with a strange language"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Ezekiel 3:3, what did the scroll taste like in Ezekiel''s mouth?',
   'Ezekiel 3:3', 'He said to me, ''Son of man, eat this scroll that I give you and fill your belly and your bowels with it.'' Then I ate it. It was as sweet as honey in my mouth.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["as sweet as honey", "bitter as gall", "like ash", "like bread"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Ezekiel 4:1, what city did Ezekiel portray on the tile?',
   'Ezekiel 4:1', 'You also, son of man, take a tile, and lay it before yourself, and portray on it a city, even Jerusalem.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Jerusalem", "Babylon", "Samaria", "Nineveh"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Ezekiel 3:17, what role did Yahweh give Ezekiel over the house of Israel?',
   'Ezekiel 3:17', '''Son of man, I have made you a watchman to the house of Israel. Therefore hear the word from my mouth, and warn them from me...''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a watchman", "a king", "a high priest", "a scribe"], "correct_index": 0}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what does Ezekiel 18:20 say happens to the soul who sins?',
   'Ezekiel 18:20', 'The soul who sins, he shall die.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "The soul who ___, he shall die.", "answer": "sins"}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Ezekiel 34:2-3, what were Israel''s shepherds condemned for?',
   'Ezekiel 34:2-3', 'Son of man, prophesy against the shepherds of Israel. Prophesy, and tell them, even the shepherds, ''The Lord Yahweh says: Woe to the shepherds of Israel who feed themselves! Shouldn''t the shepherds feed the sheep? You eat the fat. You clothe yourself with the wool. You kill the fatlings, but you don''t feed the sheep.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["feeding themselves instead of the sheep", "being too young to lead", "never speaking to the people", "living outside the land"], "correct_index": 0}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: who does Yahweh say he will set up as one shepherd over his people, in Ezekiel 34:23?',
   'Ezekiel 34:23', 'I will set up one shepherd over them, and he will feed them, even my servant David.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "I will set up one shepherd over them, and he will feed them, even my servant ___.", "answer": "David"}', true, 8),
  ((select id from w), 'multiple_choice', 'According to Ezekiel 37:3, what did Yahweh ask Ezekiel about the bones in the valley?',
   'Ezekiel 37:3', 'He said to me, ''Son of man, can these bones live?'' I answered, ''Lord Yahweh, you know.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["\"Can these bones live?\"", "\"Whose bones are these?\"", "\"How did they die?\"", "\"Where did they come from?\""], "correct_index": 0}', true, 9),
  ((select id from w), 'sequence', 'Put these pivotal passages in the order they appear in the book of Ezekiel.',
   'Ezekiel 1-3; 4; 3:16-21; 18; 34; 37', 'The call vision and commissioning; the sign-act; the watchman; individual responsibility; the shepherd of Israel; the valley of dry bones', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The call vision and commissioning by the river Chebar", "The sign-act of lying on his side to bear Israel and Judah''s iniquity", "The watchman appointed to warn the house of Israel", "\"The soul who sins, he shall die\" — individual responsibility", "The shepherd of Israel who will search for and gather his sheep", "The valley of dry bones brought to life"], "correct_order": [0, 1, 2, 3, 4, 5]}', true, 10),

  -- ===================== EZEKIEL — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word from Ezekiel 1:28, describing the appearance of the likeness of Yahweh''s glory.',
   'Ezekiel 1:28', '...This was the appearance of the likeness of Yahweh''s glory.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...This was the appearance of the likeness of Yahweh''s ___.", "answer": "glory"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what was written in the scroll shown to Ezekiel, according to Ezekiel 2:9-10?',
   'Ezekiel 2:9-10', '...and lamentations, mourning, and woe were written in it.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and lamentations, mourning, and ___ were written in it.", "answer": "woe"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s instruction to Ezekiel in Ezekiel 3:1.',
   'Ezekiel 3:1', 'He said to me, ''Son of man, eat what you find. Eat this scroll, and go, speak to the house of Israel.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He said to me, ''Son of man, eat what you find. Eat this ___, and go, speak to the house of Israel.''", "answer": "scroll"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: how many days did Yahweh appoint for Ezekiel to bear the house of Israel''s iniquity, according to Ezekiel 4:5?',
   'Ezekiel 4:5', 'For I have appointed the years of their iniquity to be to you a number of days, even three hundred ninety days.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For I have appointed the years of their iniquity to be to you a number of days, even three hundred ninety ___.", "answer": "days"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word from Ezekiel 33:11, about the wicked turning from his way.',
   'Ezekiel 33:11', '''As I live,'' says the Lord Yahweh, ''I have no pleasure in the death of the wicked, but that the wicked turn from his way and live.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''As I live,'' says the Lord Yahweh, ''I have no pleasure in the death of the wicked, but that the wicked turn from his way and ___.''", "answer": "live"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word from Ezekiel 18:23, about the wicked returning from his way.',
   'Ezekiel 18:23', '''Have I any pleasure in the death of the wicked?'' says the Lord Yahweh, ''and not rather that he should return from his way, and live?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''Have I any pleasure in the death of the wicked?'' says the Lord Yahweh, ''and not rather that he should return from his way, and ___?''", "answer": "live"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word from Ezekiel 34:16, about strengthening that which was sick.',
   'Ezekiel 34:16', '...and will bind up that which was broken, and will strengthen that which was sick.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and will bind up that which was broken, and will strengthen that which was ___.", "answer": "sick"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Ezekiel 34:24, about my servant David''s role among the people.',
   'Ezekiel 34:24', 'I, Yahweh, will be their God, and my servant David prince among them.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I, Yahweh, will be their God, and my servant David ___ among them.", "answer": "prince"}', true, 8),
  ((select id from w), 'recall', 'Fill in the missing word from Ezekiel 37:14, about Yahweh having spoken and performed it.',
   'Ezekiel 37:14', '...and you will know that I, Yahweh, have spoken it and performed it.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and you will know that I, Yahweh, have spoken it and ___ it.", "answer": "performed"}', true, 9),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its setting.',
   'Ezekiel 3:17; 18:20; 37:4', 'The watchman appointment; individual responsibility; the dry bones prophecy', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["\"Son of man, I have made you a watchman to the house of Israel.\" — the watchman appointment (3:17)", "\"The soul who sins, he shall die.\" — individual responsibility (18:20)", "\"Prophesy over these bones, and tell them, You dry bones, hear Yahweh''s word.\" — the dry bones prophecy (37:4)"], "correct_order": [0, 1, 2]}', true, 10)
;

with w as (select id from public.world where book_slug = 'daniel')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== DANIEL — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'What did Daniel resolve not to do, according to Daniel 1:8?',
   'Daniel 1:8', 'But Daniel purposed in his heart that he would not defile himself with the king''s delicacies, nor with the wine which he drank. Therefore he requested of the prince of the eunuchs that he might not defile himself.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["defile himself with the king''s food and wine", "disobey the king in every matter", "refuse to learn Babylonian wisdom", "refuse his new name"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'For how many days did Daniel ask the guard to test him and his friends, according to Daniel 1:12?',
   'Daniel 1:12', '''Test your servants, I beg you, ten days; and let them give us vegetables to eat and water to drink.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["ten days", "seven days", "thirty days", "three years"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'What did King Nebuchadnezzar say about Daniel''s God after the dream was revealed, according to Daniel 2:47?',
   'Daniel 2:47', 'The king answered to Daniel, and said, ''Of a truth your God is the God of gods, and the Lord of kings, and a revealer of secrets, since you have been able to reveal this secret.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["\"your God is the God of gods, and the Lord of kings\"", "\"your God is weaker than mine\"", "he said nothing about God", "\"your God is only a story\""], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'What did Shadrach, Meshach, and Abednego tell the king they would not do, according to Daniel 3:16-18?',
   'Daniel 3:16-18', 'Shadrach, Meshach, and Abednego answered the king, ''Nebuchadnezzar, we have no need to answer you in this matter... But if not, let it be known to you, O king, that we will not serve your gods or worship the golden image which you have set up.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["worship the golden image", "leave Babylon", "eat the king''s food", "bow to Daniel"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'What did Nebuchadnezzar see when he looked into the furnace, according to Daniel 3:25?',
   'Daniel 3:25', '''Look, I see four men loose, walking in the middle of the fire, and they are unharmed. The appearance of the fourth is like a son of the gods.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["four men, unharmed, walking in the fire", "three men, badly burned", "an angel standing alone", "smoke and nothing else"], "correct_index": 0}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what was inscribed on the wall, according to Daniel 5:25?',
   'Daniel 5:25', 'This is the writing that was inscribed: ''MENE, MENE, TEKEL, UPHARSIN.''', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "This is the writing that was inscribed: ''MENE, MENE, TEKEL, ___.''", "answer": "UPHARSIN"}', false, 6),
  ((select id from w), 'multiple_choice', 'Where was Daniel thrown for continuing to pray, according to Daniel 6:16?',
   'Daniel 6:16', 'Then the king commanded, and they brought Daniel and cast him into the den of lions. The king spoke and said to Daniel, ''Your God whom you serve continually, he will deliver you.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the den of lions", "a furnace", "a prison cell", "a pit of snakes"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'According to Daniel 6:22, who kept the lions from hurting him?',
   'Daniel 6:22', '''My God has sent his angel, and has shut the lions'' mouths, and they have not hurt me, because innocence was found in me before him; and also before you, O king, I have done no harm.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["God''s angel, who shut the lions'' mouths", "the king''s guards", "Daniel''s own strength", "no one — the lions were already tame"], "correct_index": 0}', true, 8),
  ((select id from w), 'recall', 'Fill in the missing word: how did Daniel and his friends appear at the end of the ten days, according to Daniel 1:15?',
   'Daniel 1:15', 'At the end of ten days, their faces appeared fairer and they were fatter in flesh than all the youths who ate of the king''s delicacies.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "At the end of ten days, their faces appeared ___ and they were fatter in flesh than all the youths who ate of the king''s delicacies.", "answer": "fairer"}', true, 9),
  ((select id from w), 'sequence', 'Put these six pivotal scenes in the order they appear in the book of Daniel.',
   'Daniel 1; 2; 3; 4; 5; 6', 'The king''s food refused; the dream and interpretation; the fiery furnace; Nebuchadnezzar''s pride and restoration; the writing on the wall; the lions'' den', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Daniel and his friends refuse the king''s food", "Nebuchadnezzar''s dream and Daniel''s interpretation", "The fiery furnace", "Nebuchadnezzar''s pride and restoration", "Belshazzar''s feast and the writing on the wall", "Daniel in the lions'' den"], "correct_order": [0, 1, 2, 3, 4, 5]}', true, 10),

  -- ===================== DANIEL — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word from Daniel 1:20, about Daniel and his friends compared to the king''s wise men.',
   'Daniel 1:20', '...he found them ten times better than all the magicians and enchanters who were in all his realm.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...he found them ten times better than all the magicians and ___ who were in all his realm.", "answer": "enchanters"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word from Daniel''s prayer of thanks in Daniel 2:23.',
   'Daniel 2:23', 'I thank you and praise you, O God of my fathers, who have given me wisdom and might, and have now made known to me what we desired of you.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I thank you and praise you, O God of my fathers, who have given me wisdom and ___, and have now made known to me what we desired of you.", "answer": "might"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what filled Nebuchadnezzar after the three men''s refusal, according to Daniel 3:19?',
   'Daniel 3:19', 'Then Nebuchadnezzar was full of fury, and the form of his appearance was changed against Shadrach, Meshach, and Abednego.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Then Nebuchadnezzar was full of ___, and the form of his appearance was changed against Shadrach, Meshach, and Abednego.", "answer": "fury"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word from Daniel 4:35, about no one being able to stop God''s hand.',
   'Daniel 4:35', '...and no one can stop his hand, or ask him, ''What are you doing?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and no one can stop his ___, or ask him, ''What are you doing?''", "answer": "hand"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word from Daniel''s rebuke of Belshazzar in Daniel 5:23.',
   'Daniel 5:23', 'You have praised the gods of silver and gold, of bronze, iron, wood, and stone, which don''t see, or hear, or know.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "You have praised the gods of silver and gold, of bronze, iron, wood, and stone, which don''t see, or hear, or ___.", "answer": "know"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: how many times a day did Daniel pray, according to Daniel 6:10?',
   'Daniel 6:10', '...he kneeled on his knees three times a day, and prayed, and gave thanks before his God, as he did before.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...he kneeled on his knees ___ times a day, and prayed, and gave thanks before his God, as he did before.", "answer": "three"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word from Daniel 6:23, about why no harm was found on Daniel.',
   'Daniel 6:23', '...and no kind of harm was found on him, because he had trusted in his God.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and no kind of harm was found on him, because he had trusted in his ___.", "answer": "God"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Daniel 5:6, describing Belshazzar''s terror at the writing on the wall.',
   'Daniel 5:6', '...and his knees struck one against another.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and his knees struck one against ___.", "answer": "another"}', true, 8),
  ((select id from w), 'recall', 'Fill in the missing word from Daniel 3:27, describing the three men after the furnace.',
   'Daniel 3:27', '...Their pants weren''t changed. The smell of fire wasn''t even on them.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...Their pants weren''t changed. The smell of ___ wasn''t even on them.", "answer": "fire"}', true, 9),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its scene.',
   'Daniel 1:8; 3:17-18; 6:22', 'Daniel refuses the king''s food; the fiery furnace defiance; the lions'' den deliverance', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["\"Daniel purposed in his heart that he would not defile himself...\" — Daniel refuses the king''s food (1:8)", "\"...our God whom we serve is able to deliver us from the burning fiery furnace...\" — Shadrach, Meshach, and Abednego before the furnace (3:17-18)", "\"My God has sent his angel, and has shut the lions'' mouths...\" — Daniel after a night in the lions'' den (6:22)"], "correct_order": [0, 1, 2]}', true, 10)
;
