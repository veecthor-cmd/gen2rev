-- Gen2Rev challenge ingest: Isaiah (World 23) -- EASY and HARD tiers
-- Generated from docs/content/isaiah-easy.md, docs/content/isaiah-hard.md
-- Both briefs: theological review approved (docs/reviews/isaiah-easy-review.md,
--   docs/reviews/isaiah-hard-review.md), independent verbatim-text QA pass
--   (docs/CONTENT_REVIEW_LOG.md rows 23e/23h, docs/QA_SIGNOFF.md same rows).
-- Medium-tier rows (difficulty_tier = 'medium', no difficulty_tier column at all in that file)
--   already in the DB from docs/ingest/isaiah.sql are untouched by this file.
--
-- Both tiers reuse the same 8 pivotal passages already approved in docs/content/isaiah.md, no new
--   passages. Isaiah 7:14, 9:6-7, and all of Isaiah 53 remain excluded entirely in every tier.
-- difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--   keep their own varied ranks).
--
-- QA fix applied: Isaiah 38:1's reported-speech quote nesting is printed here as WEB actually nests
--   it (outer double-quote around "Yahweh says, ...", inner single-quote around 'Set your house in
--   order...'), confirmed 2026-09-03 against live ebible.org and biblehub.com WEB text. Both content
--   briefs display this item with the nesting reversed (outer single/inner double); the words
--   themselves are unchanged, only the quote-character nesting is corrected here per the QA note.

with w as (select id from public.world where book_slug = 'isaiah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== ISAIAH — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Isaiah 1:18, what does Yahweh say sins ''as scarlet'' will become?',
   'Isaiah 1:18', '''Come now, and let''s reason together,'' says Yahweh: ''Though your sins are as scarlet, they shall be as white as snow. Though they are red like crimson, they shall be as wool.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["white as snow", "black as coal", "green as grass", "gray as ash"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Isaiah 1:17, who does the text say to defend?',
   'Isaiah 1:17', 'Learn to do well. Seek justice. Relieve the oppressed. Defend the fatherless. Plead for the widow.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the fatherless", "the king", "the priests", "the wealthy"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Isaiah 2:4, what will the nations beat their swords into?',
   'Isaiah 2:4', 'He will judge between the nations, and will decide concerning many peoples. They shall beat their swords into plowshares, and their spears into pruning hooks. Nation shall not lift up sword against nation, neither shall they learn war any more.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["plowshares", "shields", "chariots", "crowns"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'What do the seraphim call out to one another in Isaiah 6:3?',
   'Isaiah 6:3', 'One called to another, and said, ''Holy, holy, holy, is Yahweh of Armies! The whole earth is full of his glory!''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Holy, holy, holy, is Yahweh of Armies!", "Glory, glory, glory!", "Worthy, worthy, worthy!", "Amen, amen, amen!"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'How does Isaiah respond to Yahweh''s call, ''Whom shall I send''?',
   'Isaiah 6:8', 'I heard the Lord''s voice, saying, ''Whom shall I send, and who will go for us?'' Then I said, ''Here I am. Send me!''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Here I am. Send me!", "I am not worthy.", "Send my brother instead.", "I will pray about it."], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Isaiah 12:2, what does the speaker call God?',
   'Isaiah 12:2', 'Behold, God is my salvation. I will trust, and will not be afraid; for Yah, Yahweh, is my strength and song; and he has become my salvation.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["my salvation", "my king", "my rock", "my shepherd"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'In Isaiah 38:1, who comes to tell Hezekiah he will die?',
   'Isaiah 38:1', 'In those days Hezekiah was sick and near death. Isaiah the prophet, the son of Amoz, came to him, and said to him, "Yahweh says, ''Set your house in order, for you will die, and not live.''"', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Isaiah the prophet", "Nathan the prophet", "an angel", "the high priest"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'According to Isaiah 40:31, those who wait for Yahweh will mount up with wings like what?',
   'Isaiah 40:31', 'but those who wait for Yahweh will renew their strength. They will mount up with wings like eagles. They will run, and not be weary. They will walk, and not faint.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["eagles", "doves", "sparrows", "hawks"], "correct_index": 0}', false, 8),
  ((select id from w), 'multiple_choice', 'According to Isaiah 41:10, what does Yahweh tell his people not to be?',
   'Isaiah 41:10', 'Don''t you be afraid, for I am with you. Don''t be dismayed, for I am your God. I will strengthen you. Yes, I will help you. Yes, I will uphold you with the right hand of my righteousness.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["afraid", "silent", "hungry", "alone"], "correct_index": 0}', false, 9),
  ((select id from w), 'multiple_choice', 'According to Isaiah 55:6, when does the text say to seek Yahweh?',
   'Isaiah 55:6', 'Seek Yahweh while he may be found. Call on him while he is near.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["while he may be found", "at the new moon", "on the Sabbath only", "in the morning only"], "correct_index": 0}', true, 10),
  ((select id from w), 'sequence', 'Put these moments of Isaiah''s call vision in the order they happen in the text.',
   'Isaiah 6:1; 6:3; 6:6-7; 6:8', 'In the year that King Uzziah died, I saw the Lord sitting on a throne, high and lifted up; and his train filled the temple.; One called to another, and said, ''Holy, holy, holy, is Yahweh of Armies! The whole earth is full of his glory!''; Then one of the seraphim flew to me, having a live coal in his hand, which he had taken with the tongs from off the altar. He touched my mouth with it, and said, "Behold, this has touched your lips; and your iniquity is taken away, and your sin forgiven."; I heard the Lord''s voice, saying, ''Whom shall I send, and who will go for us?'' Then I said, ''Here I am. Send me!''', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Isaiah sees the Lord seated high on a throne", "The seraphim cry, \"Holy, holy, holy, is Yahweh of Armies!\"", "A seraph touches Isaiah''s lips with a live coal", "Isaiah answers Yahweh''s call: \"Here I am. Send me!\""], "correct_order": [0, 1, 2, 3]}', true, 11),
  ((select id from w), 'multiple_choice', 'According to Isaiah 55:9, whose ways does the text say are higher than human ways?',
   'Isaiah 55:9', 'For as the heavens are higher than the earth, so are my ways higher than your ways, and my thoughts than your thoughts.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Yahweh''s", "the king''s", "the prophet''s", "the priest''s"], "correct_index": 0}', true, 12),

  -- ===================== ISAIAH — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 1:16, about putting away evil.',
   'Isaiah 1:16', 'Wash yourselves. Make yourself clean. Put away the evil of your doings from before my eyes. Cease to do evil.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Wash yourselves. Make yourself clean. Put away the evil of your doings from before my ___. Cease to do evil.", "answer": "eyes"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 2:3, about where the law goes out from.',
   'Isaiah 2:3', 'Many peoples shall go and say, ''Come, let''s go up to the mountain of Yahweh, to the house of the God of Jacob; and he will teach us of his ways, and we will walk in his paths.'' For the law shall go out of Zion, and Yahweh''s word from Jerusalem.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Many peoples shall go and say, ''Come, let''s go up to the mountain of Yahweh, to the house of the God of Jacob; and he will teach us of his ways, and we will walk in his paths.'' For the law shall go out of ___, and Yahweh''s word from Jerusalem.", "answer": "Zion"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 6:4, about what filled the house.',
   'Isaiah 6:4', 'The foundations of the thresholds shook at the voice of him who called, and the house was filled with smoke.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "The foundations of the thresholds shook at the voice of him who called, and the house was filled with ___.", "answer": "smoke"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah''s self-description in Isaiah 6:5.',
   'Isaiah 6:5', 'Then I said, ''Woe is me! For I am undone, because I am a man of unclean lips and I live among a people of unclean lips, for my eyes have seen the King, Yahweh of Armies!''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Then I said, ''Woe is me! For I am undone, because I am a man of unclean ___ and I live among a people of unclean lips, for my eyes have seen the King, Yahweh of Armies!''", "answer": "lips"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 12:4, about proclaiming Yahweh''s name.',
   'Isaiah 12:4', 'In that day you will say, ''Give thanks to Yahweh! Call on his name! Declare his doings among the peoples! Proclaim that his name is exalted!''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "In that day you will say, ''Give thanks to Yahweh! Call on his name! Declare his doings among the peoples! Proclaim that his name is ___!''", "answer": "exalted"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 38:1, what Yahweh tells Hezekiah to do.',
   'Isaiah 38:1', 'In those days Hezekiah was sick and near death. Isaiah the prophet, the son of Amoz, came to him, and said to him, "Yahweh says, ''Set your house in order, for you will die, and not live.''"', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "In those days Hezekiah was sick and near death. Isaiah the prophet, the son of Amoz, came to him, and said to him, \"Yahweh says, ''Set your house in ___, for you will die, and not live.''\"", "answer": "order"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 40:29, about who Yahweh gives power to.',
   'Isaiah 40:29', 'He gives power to the weak. He increases the strength of him who has no might.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He gives power to the ___. He increases the strength of him who has no might.", "answer": "weak"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 41:10''s second line.',
   'Isaiah 41:10', 'Don''t you be afraid, for I am with you. Don''t be dismayed, for I am your God. I will strengthen you. Yes, I will help you. Yes, I will uphold you with the right hand of my righteousness.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Don''t you be afraid, for I am with you. Don''t be ___, for I am your God. I will strengthen you. Yes, I will help you. Yes, I will uphold you with the right hand of my righteousness.", "answer": "dismayed"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 55:7, about Yahweh''s mercy.',
   'Isaiah 55:7', 'Let the wicked forsake his way, and the unrighteous man his thoughts. Let him return to Yahweh, and he will have mercy on him, to our God, for he will freely pardon.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Let the wicked forsake his way, and the unrighteous man his thoughts. Let him return to Yahweh, and he will have mercy on him, to our God, for he will freely ___.", "answer": "pardon"}', false, 9),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 6:2, about the seraphim''s wings.',
   'Isaiah 6:2', 'Above him stood the seraphim. Each one had six wings. With two he covered his face. With two he covered his feet. With two he flew.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Above him stood the seraphim. Each one had ___ wings. With two he covered his face. With two he covered his feet. With two he flew.", "answer": "six"}', true, 10),
  ((select id from w), 'sequence', 'Put these four quotations in the order they occur across the book of Isaiah.',
   'Isaiah 2:4; 6:8; 40:31; 55:8', 'They shall beat their swords into plowshares, and their spears into pruning hooks.; Here I am. Send me!; They will mount up with wings like eagles.; For my thoughts are not your thoughts, and your ways are not my ways,', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["They shall beat their swords into plowshares, and their spears into pruning hooks.", "Here I am. Send me!", "They will mount up with wings like eagles.", "For my thoughts are not your thoughts, and your ways are not my ways,"], "correct_order": [0, 1, 2, 3]}', true, 11),
  ((select id from w), 'recall', 'Fill in the missing word from Isaiah 55:9.',
   'Isaiah 55:9', 'For as the heavens are higher than the earth, so are my ways higher than your ways, and my thoughts than your thoughts.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For as the heavens are higher than the earth, so are my ways ___ than your ways, and my thoughts than your thoughts.", "answer": "higher"}', true, 12)
;
