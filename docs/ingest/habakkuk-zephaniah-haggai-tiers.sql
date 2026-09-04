-- Gen2Rev challenge ingest: Habakkuk (World 35), Zephaniah (World 36), Haggai (World 37)
--   -- EASY and HARD tiers
-- Generated from docs/content/habakkuk-easy.md, docs/content/habakkuk-hard.md,
--   docs/content/zephaniah-easy.md, docs/content/zephaniah-hard.md,
--   docs/content/haggai-easy.md, docs/content/haggai-hard.md.
-- All six briefs: theological review approved, independent verbatim-text QA complete
--   (docs/CONTENT_REVIEW_LOG.md rows 35e/35h/36e/36h/37e/37h; docs/QA_SIGNOFF.md same rows).
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/habakkuk-zephaniah-haggai.sql are untouched by this file.
--
-- Structural rules carried forward from the medium briefs and reaffirmed by the easy/hard briefs:
--   Habakkuk 1:5-11 and 1:12-17 (Chaldean detail beyond the complaint itself) remain excluded in
--     every tier.
--   Zephaniah 1:16-18 (graphic judgment imagery) and 2:4-15 (oracles against the nations) remain
--     permanently excluded in every tier.
--   Haggai 2:10-19 (ritual-purity dialogue) and 2:20-23 (the signet-ring oracle) remain permanently
--     excluded in every tier.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks) -- applied uniformly even to boss items reused verbatim from
--     medium content.

-- ===================== HABAKKUK — EASY TIER =====================
with w as (select id from public.world where book_slug = 'habakkuk')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'In his opening complaint, what does Habakkuk cry out to Yahweh?',
   'Habakkuk 1:2', 'Yahweh, how long will I cry, and you will not hear? I cry out to you ''Violence!'' and will you not save?', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Violence!", "Mercy!", "Help!", "Peace!"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'What does Habakkuk say he will do at his watch, on the ramparts?',
   'Habakkuk 2:1', 'I will stand at my watch and set myself on the ramparts, and will look out to see what he will say to me, and what I will answer concerning my complaint.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Look out to see what Yahweh will answer", "Offer a sacrifice", "Gather the elders", "Write a letter to Jerusalem"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Habakkuk 2:4, the righteous will live by what?',
   'Habakkuk 2:4', 'Behold, his soul is puffed up. It is not upright in him, but the righteous will live by his faith.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Faith", "Works", "The law", "Sacrifice"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Habakkuk 2:14, what will the earth be filled with?',
   'Habakkuk 2:14', 'For the earth will be filled with the knowledge of Yahweh''s glory, as the waters cover the sea.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The knowledge of Yahweh''s glory", "Silver and gold", "Trees and rivers", "Armies and horses"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Habakkuk 3:17, which of these does Habakkuk say may fail?',
   'Habakkuk 3:17', 'For even though the fig tree doesn''t flourish, nor fruit be in the vines, the labor of the olive fails, the fields yield no food, the flocks are cut off from the fold, and there is no herd in the stalls,', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The fig tree", "The sun", "The moon", "The stars"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'Even if everything fails, what does Habakkuk say he will do?',
   'Habakkuk 3:18', 'yet I will rejoice in Yahweh. I will be joyful in the God of my salvation!', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Rejoice in Yahweh", "Give up", "Move away", "Build a shrine"], "correct_index": 0}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: according to Habakkuk 2:4, the righteous will live by his what?',
   'Habakkuk 2:4', 'Behold, his soul is puffed up. It is not upright in him, but the righteous will live by his faith.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Behold, his soul is puffed up. It is not upright in him, but the righteous will live by his ___.", "answer": "faith"}', true, 7),
  ((select id from w), 'sequence', 'Put these pivotal passages in the order they appear in the book of Habakkuk.',
   'Habakkuk 1:2-4; 2:1-4; 2:14; 3:17-19', 'The prophet''s complaint; Yahweh''s answer; the earth filled with glory; rejoicing despite total loss', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The prophet''s complaint (1:2-4)", "Yahweh''s answer: \"the righteous will live by his faith\" (2:1-4)", "The earth filled with the knowledge of Yahweh''s glory (2:14)", "Rejoicing despite total loss (3:17-19)"], "correct_order": [0, 1, 2, 3]}', true, 8)
;

-- ===================== HABAKKUK — HARD TIER =====================
with w as (select id from public.world where book_slug = 'habakkuk')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word: in his opening complaint, what does Habakkuk cry out to Yahweh?',
   'Habakkuk 1:2', 'Yahweh, how long will I cry, and you will not hear? I cry out to you ''Violence!'' and will you not save?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh, how long will I cry, and you will not hear? I cry out to you ''___!'' and will you not save?", "answer": "Violence"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what does Habakkuk say Yahweh shows him, besides iniquity?',
   'Habakkuk 1:3', 'Why do you show me iniquity, and look at perversity? For destruction and violence are before me.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Why do you show me iniquity, and look at ___? For destruction and violence are before me.", "answer": "perversity"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: who does Habakkuk say the wicked surround, causing justice to come out perverted?',
   'Habakkuk 1:4', 'Therefore the law is paralyzed, and justice never prevails; for the wicked surround the righteous; therefore justice comes out perverted.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Therefore the law is paralyzed, and justice never prevails; for the wicked surround the ___; therefore justice comes out perverted.", "answer": "righteous"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what does Yahweh tell Habakkuk to write and make plain on tablets?',
   'Habakkuk 2:2', 'Yahweh answered me, ''Write the vision, and make it plain on tablets, that he who runs may read it.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh answered me, ''Write the ___, and make it plain on tablets, that he who runs may read it.''", "answer": "vision"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what kind of time does Habakkuk 2:3 say the vision is yet for?',
   'Habakkuk 2:3', 'For the vision is yet for the appointed time, and it hurries toward the end, and won''t prove false. Though it takes time, wait for it, because it will surely come. It won''t delay.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For the vision is yet for the ___ time, and it hurries toward the end, and won''t prove false. Though it takes time, wait for it, because it will surely come. It won''t delay.", "answer": "appointed"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: according to Habakkuk 2:14, what will the earth be, with the knowledge of Yahweh''s glory?',
   'Habakkuk 2:14', 'For the earth will be filled with the knowledge of Yahweh''s glory, as the waters cover the sea.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For the earth will be ___ with the knowledge of Yahweh''s glory, as the waters cover the sea.", "answer": "filled"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what does Habakkuk 3:19 say Yahweh makes his feet like?',
   'Habakkuk 3:19', 'Yahweh, the Lord, is my strength. He makes my feet like deer''s feet, and enables me to go in high places.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh, the Lord, is my strength. He makes my feet like ___ feet, and enables me to go in high places.", "answer": "deer''s"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: according to Habakkuk 2:4, the righteous will live by his what?',
   'Habakkuk 2:4', 'Behold, his soul is puffed up. It is not upright in him, but the righteous will live by his faith.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Behold, his soul is puffed up. It is not upright in him, but the righteous will live by his ___.", "answer": "faith"}', true, 8),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Habakkuk 1:2; 2:4; 3:18', 'The prophet''s complaint; the righteous will live by his faith; rejoicing in Yahweh', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["\"Yahweh, how long will I cry, and you will not hear?\" — the prophet''s opening complaint (1:2)", "\"The righteous will live by his faith.\" — Yahweh''s answer (2:4)", "\"Yet I will rejoice in Yahweh.\" — the closing resolution (3:18)"], "correct_order": [0, 1, 2]}', true, 9)
;

-- ===================== ZEPHANIAH — EASY TIER =====================
with w as (select id from public.world where book_slug = 'zephaniah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'According to Zephaniah 1:14, who cries out bitterly on that day?',
   'Zephaniah 1:14', 'The great day of Yahweh is near. It is near and hurries greatly, the voice of the day of Yahweh. The mighty man cries there bitterly.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The mighty man", "The children", "The priests", "The false prophets"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Zephaniah 1:15, besides a day of wrath, what kind of day does the text call that day?',
   'Zephaniah 1:15', 'That day is a day of wrath, a day of distress and anguish, a day of trouble and ruin, a day of darkness and gloom, a day of clouds and blackness,', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["A day of darkness and gloom", "A day of celebration", "A day of rain", "A day of rest"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Zephaniah 2:3, who is told to seek Yahweh?',
   'Zephaniah 2:3', 'Seek Yahweh, all you humble of the land, who have kept his ordinances. Seek righteousness. Seek humility. It may be that you will be hidden in the day of Yahweh''s anger.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["All the humble of the land", "Only the priests", "Only the king", "Only the prophets"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Zephaniah 3:14, who is told to sing?',
   'Zephaniah 3:14', 'Sing, daughter of Zion! Shout, Israel! Be glad and rejoice with all your heart, daughter of Jerusalem.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The daughter of Zion", "The elders", "The priests", "The shepherds"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Zephaniah 3:15, what title does the text give Yahweh?',
   'Zephaniah 3:15', 'Yahweh has taken away your judgments. He has thrown out your enemy. The King of Israel, Yahweh, is among you. You will not be afraid of evil any more.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The King of Israel", "The King of Nations", "The Judge of the Earth", "The Shepherd of Zion"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Zephaniah 3:17, besides rejoicing over you with joy, what else does Yahweh do?',
   'Zephaniah 3:17', 'Yahweh, your God, is among you, a mighty one who will save. He will rejoice over you with joy. He will calm you in his love. He will rejoice over you with singing.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Calm you in his love", "Punish your enemies", "Rebuild the temple", "Send rain"], "correct_index": 0}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: according to Zephaniah 3:17, how does Yahweh rejoice over his people a second time in the verse?',
   'Zephaniah 3:17', 'Yahweh, your God, is among you, a mighty one who will save. He will rejoice over you with joy. He will calm you in his love. He will rejoice over you with singing.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Yahweh, your God, is among you, a mighty one who will save. He will rejoice over you with joy. He will calm you in his love. He will rejoice over you with ___.", "answer": "singing"}', true, 7),
  ((select id from w), 'sequence', 'Put these pivotal passages in the order they appear in the book of Zephaniah.',
   'Zephaniah 1:14-15; 2:3; 3:14-15; 3:17', 'The day of Yahweh announced; the call to seek Yahweh; Zion''s coming joy; Yahweh rejoices over his people', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The Day of Yahweh announced (1:14-15)", "The call to seek Yahweh (2:3)", "Zion''s coming joy (3:14-15)", "Yahweh rejoices over his people (3:17)"], "correct_order": [0, 1, 2, 3]}', true, 8)
;

-- ===================== ZEPHANIAH — HARD TIER =====================
with w as (select id from public.world where book_slug = 'zephaniah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word: how does Zephaniah 1:14 say the mighty man cries out on that day?',
   'Zephaniah 1:14', 'The great day of Yahweh is near. It is near and hurries greatly, the voice of the day of Yahweh. The mighty man cries there bitterly.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "The great day of Yahweh is near. It is near and hurries greatly, the voice of the day of Yahweh. The mighty man cries there ___.", "answer": "bitterly"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: besides wrath, what does Zephaniah 1:15 say that day is a day of trouble and what?',
   'Zephaniah 1:15', 'That day is a day of wrath, a day of distress and anguish, a day of trouble and ruin, a day of darkness and gloom, a day of clouds and blackness,', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "That day is a day of wrath, a day of distress and anguish, a day of trouble and ___, a day of darkness and gloom, a day of clouds and blackness,", "answer": "ruin"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: according to Zephaniah 2:3, what have the humble of the land kept?',
   'Zephaniah 2:3', 'Seek Yahweh, all you humble of the land, who have kept his ordinances. Seek righteousness. Seek humility. It may be that you will be hidden in the day of Yahweh''s anger.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Seek Yahweh, all you humble of the land, who have kept his ___. Seek righteousness. Seek humility. It may be that you will be hidden in the day of Yahweh''s anger.", "answer": "ordinances"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: according to Zephaniah 3:14, besides the daughter of Zion, who is told to shout?',
   'Zephaniah 3:14', 'Sing, daughter of Zion! Shout, Israel! Be glad and rejoice with all your heart, daughter of Jerusalem.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Sing, daughter of Zion! Shout, ___! Be glad and rejoice with all your heart, daughter of Jerusalem.", "answer": "Israel"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: according to Zephaniah 3:15, what has Yahweh taken away?',
   'Zephaniah 3:15', 'Yahweh has taken away your judgments. He has thrown out your enemy. The King of Israel, Yahweh, is among you. You will not be afraid of evil any more.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh has taken away your ___. He has thrown out your enemy. The King of Israel, Yahweh, is among you. You will not be afraid of evil any more.", "answer": "judgments"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: according to Zephaniah 3:17, what does Yahweh do to you in his love?',
   'Zephaniah 3:17', 'Yahweh, your God, is among you, a mighty one who will save. He will rejoice over you with joy. He will calm you in his love. He will rejoice over you with singing.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh, your God, is among you, a mighty one who will save. He will rejoice over you with joy. He will ___ you in his love. He will rejoice over you with singing.", "answer": "calm"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: according to Zephaniah 3:17, how does Yahweh rejoice over his people a second time in the verse?',
   'Zephaniah 3:17', 'Yahweh, your God, is among you, a mighty one who will save. He will rejoice over you with joy. He will calm you in his love. He will rejoice over you with singing.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh, your God, is among you, a mighty one who will save. He will rejoice over you with joy. He will calm you in his love. He will rejoice over you with ___.", "answer": "singing"}', true, 7),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Zephaniah 1:14; 2:3; 3:17', 'The day of Yahweh announced; the call to seek Yahweh; Yahweh rejoices over his people', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["\"The great day of Yahweh is near.\" — the day of Yahweh announced (1:14)", "\"Seek Yahweh, all you humble of the land...\" — the call to seek Yahweh (2:3)", "\"He will rejoice over you with singing.\" — Yahweh rejoices over his people (3:17)"], "correct_order": [0, 1, 2]}', true, 8)
;

-- ===================== HAGGAI — EASY TIER =====================
with w as (select id from public.world where book_slug = 'haggai')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'According to Haggai 1:2, what title does Yahweh use for himself in this message?',
   'Haggai 1:2', 'This is what Yahweh of Armies says: These people say, ''The time hasn''t yet come, the time for Yahweh''s house to be built.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Yahweh of Armies", "The God of Abraham", "The Holy One of Israel", "The Lord Most High"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Haggai 1:4, what kind of houses does Yahweh say the people live in while his house lies waste?',
   'Haggai 1:4', 'Is it a time for you yourselves to dwell in your paneled houses, while this house lies waste?', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Paneled houses", "Tents", "Houses of cedar", "Palaces"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Haggai 1:8, where does Yahweh tell the people to go to get wood?',
   'Haggai 1:8', '''Go up to the mountain, bring wood, and build the house. I will take pleasure in it, and I will be glorified,'' says Yahweh.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Up to the mountain", "To the riverbank", "To the marketplace", "To Lebanon"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Haggai 1:12, whose words did the people obey, besides Yahweh''s voice?',
   'Haggai 1:12', 'Then Zerubbabel the son of Shealtiel and Joshua the son of Jehozadak, the high priest, with all the remnant of the people, obeyed Yahweh their God''s voice, and the words of Haggai the prophet, as Yahweh their God had sent him; and the people feared Yahweh.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The words of Haggai the prophet", "The words of Zechariah", "The words of Ezra", "The words of Malachi"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Haggai 1:13, who delivered Yahweh''s reassurance to the people?',
   'Haggai 1:13', 'Then Haggai, Yahweh''s messenger, spoke Yahweh''s message to the people, saying, ''I am with you,'' says Yahweh.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Haggai, Yahweh''s messenger", "Zerubbabel", "Joshua the high priest", "An angel"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Haggai 2:9, what does Yahweh promise to give in that place, besides greater latter glory?',
   'Haggai 2:9', '''The latter glory of this house will be greater than the former,'' says Yahweh of Armies; ''and in this place I will give peace,'' says Yahweh of Armies.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Peace", "Silver and gold", "Rain", "Victory over enemies"], "correct_index": 0}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: in Haggai 2:4, what does Yahweh repeatedly tell Zerubbabel, Joshua, and the people of the land to be?',
   'Haggai 2:4', '''Yet now be strong, Zerubbabel,'' says Yahweh. ''Be strong, Joshua son of Jehozadak, the high priest. Be strong, all you people of the land,'' says Yahweh, ''and work, for I am with you,'' says Yahweh of Armies.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "''Yet now be ___, Zerubbabel,'' says Yahweh. ''Be strong, Joshua son of Jehozadak, the high priest. Be strong, all you people of the land,'' says Yahweh, ''and work, for I am with you,'' says Yahweh of Armies.", "answer": "strong"}', true, 7),
  ((select id from w), 'sequence', 'Put these pivotal passages in the order they appear in the book of Haggai.',
   'Haggai 1:2, 1:4; 1:8; 1:12-13; 2:4, 2:9', 'The people''s excuse and the Lord''s rebuke; the command to rebuild; the people obey; be strong and the latter glory', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The people''s excuse and the Lord''s rebuke (1:2, 1:4)", "The command to rebuild (1:8)", "The people obey (1:12-13)", "Be strong, and the latter glory (2:4, 2:9)"], "correct_order": [0, 1, 2, 3]}', true, 8)
;

-- ===================== HAGGAI — HARD TIER =====================
with w as (select id from public.world where book_slug = 'haggai')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word: according to Haggai 1:2, what do the people say has not yet come, for Yahweh''s house?',
   'Haggai 1:2', 'This is what Yahweh of Armies says: These people say, ''The time hasn''t yet come, the time for Yahweh''s house to be built.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "This is what Yahweh of Armies says: These people say, ''The time hasn''t yet come, the time for Yahweh''s ___ to be built.''", "answer": "house"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: according to Haggai 1:4, what kind of houses does Yahweh say the people dwell in?',
   'Haggai 1:4', 'Is it a time for you yourselves to dwell in your paneled houses, while this house lies waste?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Is it a time for you yourselves to dwell in your ___ houses, while this house lies waste?", "answer": "paneled"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what does Yahweh command the people to bring, in Haggai 1:8?',
   'Haggai 1:8', '''Go up to the mountain, bring wood, and build the house. I will take pleasure in it, and I will be glorified,'' says Yahweh.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''Go up to the mountain, bring ___, and build the house. I will take pleasure in it, and I will be glorified,'' says Yahweh.", "answer": "wood"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what title does Haggai 1:12 give Haggai, whose words the people obeyed?',
   'Haggai 1:12', 'Then Zerubbabel the son of Shealtiel and Joshua the son of Jehozadak, the high priest, with all the remnant of the people, obeyed Yahweh their God''s voice, and the words of Haggai the prophet, as Yahweh their God had sent him; and the people feared Yahweh.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Then Zerubbabel the son of Shealtiel and Joshua the son of Jehozadak, the high priest, with all the remnant of the people, obeyed Yahweh their God''s voice, and the words of Haggai the ___, as Yahweh their God had sent him; and the people feared Yahweh.", "answer": "prophet"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what title does Haggai 1:13 give Haggai himself?',
   'Haggai 1:13', 'Then Haggai, Yahweh''s messenger, spoke Yahweh''s message to the people, saying, ''I am with you,'' says Yahweh.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Then Haggai, Yahweh''s ___, spoke Yahweh''s message to the people, saying, ''I am with you,'' says Yahweh.", "answer": "messenger"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what divine title closes Haggai 2:4''s call to work, for I am with you?',
   'Haggai 2:4', '''Yet now be strong, Zerubbabel,'' says Yahweh. ''Be strong, Joshua son of Jehozadak, the high priest. Be strong, all you people of the land,'' says Yahweh, ''and work, for I am with you,'' says Yahweh of Armies.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''Yet now be strong, Zerubbabel,'' says Yahweh. ''Be strong, Joshua son of Jehozadak, the high priest. Be strong, all you people of the land,'' says Yahweh, ''and work, for I am with you,'' says Yahweh of ___.", "answer": "Armies"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: according to Haggai 2:9, where will Yahweh give peace?',
   'Haggai 2:9', '''The latter glory of this house will be greater than the former,'' says Yahweh of Armies; ''and in this place I will give peace,'' says Yahweh of Armies.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''The latter glory of this house will be greater than the former,'' says Yahweh of Armies; ''and in this ___ I will give peace,'' says Yahweh of Armies.", "answer": "place"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: according to Haggai 2:9, how does Yahweh say the latter glory of the house compares to the former?',
   'Haggai 2:9', '''The latter glory of this house will be greater than the former,'' says Yahweh of Armies; ''and in this place I will give peace,'' says Yahweh of Armies.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''The latter glory of this house will be ___ than the former,'' says Yahweh of Armies; ''and in this place I will give peace,'' says Yahweh of Armies.", "answer": "greater"}', true, 8),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Haggai 1:4; 1:13; 2:9', 'The Lord''s rebuke; reassurance after the people obey; the promise of latter glory', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["\"Is it a time for you yourselves to dwell in your paneled houses, while this house lies waste?\" — the Lord''s rebuke (1:4)", "\"I am with you,\" says Yahweh. — reassurance after the people obey (1:13)", "\"The latter glory of this house will be greater than the former.\" — the promise of latter glory (2:9)"], "correct_order": [0, 1, 2]}', true, 9)
;
