-- Gen2Rev challenge ingest: Jonah (World 32), Micah (World 33), Nahum (World 34) -- EASY and HARD tiers
-- Generated from docs/content/jonah-easy.md, docs/content/jonah-hard.md,
--   docs/content/micah-easy.md, docs/content/micah-hard.md,
--   docs/content/nahum-easy.md, docs/content/nahum-hard.md.
-- All six briefs: theological review approved, independent verbatim-text QA pass complete
--   (docs/CONTENT_REVIEW_LOG.md rows 32e/32h/33e/33h/34e/34h; docs/QA_SIGNOFF.md same rows).
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/jonah-micah-nahum.sql are untouched by this file.
--
-- Structural rules carried forward from the medium briefs and reaffirmed/extended by the easy/hard
-- briefs:
--   Micah 5:1-5 (the "ruler from Bethlehem" oracle unit) is permanently excluded in every tier — no
--     verse from Micah 5 appears anywhere in this file.
--   Nahum 2-3's graphic destruction imagery (including 3:3-6 and 3:10) is permanently excluded in
--     every tier; only Nahum 3:19 is used from chapter 3, at narrative-summary framing, and no verse
--     from chapter 2 appears anywhere in this file.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).

-- ===================== JONAH — EASY TIER (World 32) =====================
with w as (select id from public.world where book_slug = 'jonah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'According to Jonah 1:2, what city did God tell Jonah to go to?',
   'Jonah 1:2', 'Arise, go to Nineveh, that great city, and preach against it, for their wickedness has come up before me.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Nineveh", "Tarshish", "Joppa", "Jerusalem"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'Where did Jonah try to sail to, instead of going to Nineveh?',
   'Jonah 1:3', 'But Jonah rose up to flee to Tarshish from the presence of Yahweh. He went down to Joppa, and found a ship going to Tarshish; so he paid its fare, and went down into it, to go with them to Tarshish from the presence of Yahweh.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Tarshish", "Egypt", "Babylon", "Damascus"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'What did the sailors do to figure out who was responsible for the storm?',
   'Jonah 1:7', 'They all said to each other, ''Come! Let''s cast lots, that we may know who is responsible for this evil that is on us.'' So they cast lots, and the lot fell on Jonah.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Cast lots", "Prayed to Yahweh", "Asked the ship''s captain", "Read the stars"], "correct_index": 0}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what did Yahweh prepare to swallow up Jonah?',
   'Jonah 1:17', 'Yahweh prepared a huge fish to swallow up Jonah, and Jonah was in the belly of the fish three days and three nights.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Yahweh prepared a huge ___ to swallow up Jonah, and Jonah was in the belly of the fish three days and three nights.", "answer": "fish"}', false, 4),
  ((select id from w), 'multiple_choice', 'How did Jonah get out of the fish?',
   'Jonah 2:10', 'Then Yahweh spoke to the fish, and it vomited out Jonah on the dry land.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The fish vomited him onto dry land", "He cut his way out", "The fish died", "Sailors rescued him"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'How many days did Jonah say Nineveh had, before it would be overthrown?',
   'Jonah 3:4', 'Jonah began to enter into the city a day''s journey, and he cried out, and said, ''In forty days, Nineveh will be overthrown!''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Forty", "Seven", "Three", "A hundred"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'What did the people of Nineveh do after Jonah''s warning?',
   'Jonah 3:5', 'The people of Nineveh believed God; and they proclaimed a fast and put on sackcloth, from their greatest even to their least.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Believed God, fasted, and put on sackcloth", "Ignored him and carried on as before", "Drove him out of the city", "Attacked him"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'What did God provide to give Jonah shade?',
   'Jonah 4:6', 'Yahweh God prepared a vine and made it to come up over Jonah, that it might be a shade over his head to deliver him from his discomfort.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["A vine", "A tree", "A tent", "A rock"], "correct_index": 0}', false, 8),
  ((select id from w), 'multiple_choice', 'What did Jonah tell the sailors to do, to calm the storm?',
   'Jonah 1:12', 'He said to them, ''Take me up, and throw me into the sea. Then the sea will be calm for you; for I know that because of me this great storm is on you.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Throw him into the sea", "Turn the ship around", "Pray to his God", "Throw the cargo overboard"], "correct_index": 0}', true, 9),
  ((select id from w), 'sequence', 'Put these events of Jonah''s story in the order they occur in the book.',
   'Jonah 1:2; 1:3; 1:4-7; 1:15-17; 3:4-5; 4:1-6', 'God calls Jonah to Nineveh; Jonah flees toward Tarshish instead; a storm hits the ship and the sailors cast lots; Jonah is thrown into the sea and swallowed by a fish; Nineveh hears Jonah''s warning and repents; Jonah sits outside the city, angry, under a vine', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["God calls Jonah to Nineveh (1:2)", "Jonah flees toward Tarshish instead (1:3)", "A storm hits the ship, and the sailors cast lots (1:4-7)", "Jonah is thrown into the sea and swallowed by a fish (1:15-17)", "Nineveh hears Jonah''s warning and repents (3:4-5)", "Jonah sits outside the city, angry, under a vine (4:1-6)"], "correct_order": [0, 1, 2, 3, 4, 5]}', true, 10),
  ((select id from w), 'multiple_choice', 'According to Jonah 4:11, what was Yahweh concerned about, more than Jonah''s plant?',
   'Jonah 4:11', 'Shouldn''t I be concerned for Nineveh, that great city, in which are more than one hundred twenty thousand persons who can''t discern between their right hand and their left hand, and also many animals?', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The great city of Nineveh and its many people", "The sailors on the ship", "The fish that swallowed Jonah", "Jonah''s own health"], "correct_index": 0}', true, 11)
;

-- ===================== JONAH — HARD TIER (World 32) =====================
with w as (select id from public.world where book_slug = 'jonah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word from Jonah''s answer to the sailors about who he feared.',
   'Jonah 1:9', 'He said to them, ''I am a Hebrew, and I fear Yahweh, the God of heaven, who has made the sea and the dry land.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He said to them, ''I am a ___, and I fear Yahweh, the God of heaven, who has made the sea and the dry land.''", "answer": "Hebrew"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what did the ship''s captain call Jonah when he found him asleep?',
   'Jonah 1:6', 'So the ship master came to him, and said to him, ''What do you mean, sleeper? Arise, call on your God! Maybe your God will notice us, so that we won''t perish.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "So the ship master came to him, and said to him, ''What do you mean, ___? Arise, call on your God!''", "answer": "sleeper"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word from Jonah''s prayer about where he went down to.',
   'Jonah 2:6', 'I went down to the bottoms of the mountains. The earth barred me in forever; yet you have brought my life up from the pit, Yahweh my God.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I went down to the bottoms of the ___. The earth barred me in forever; yet you have brought my life up from the pit, Yahweh my God.", "answer": "mountains"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word from Jonah''s prayer about what he will look toward again.',
   'Jonah 2:4', 'I said, ''I have been banished from your sight; yet I will look again toward your holy temple.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I said, ''I have been banished from your sight; yet I will look again toward your holy ___.''", "answer": "temple"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word describing how great a city Nineveh was.',
   'Jonah 3:3', 'So Jonah arose, and went to Nineveh, according to Yahweh''s word. Now Nineveh was an exceedingly great city, three days'' journey across.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Now Nineveh was an exceedingly great city, three days'' ___ across.", "answer": "journey"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word from the Ninevite king''s proclamation of hope.',
   'Jonah 3:9', 'Who knows whether God will not turn and relent, and turn away from his fierce anger, so that we might not perish?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Who knows whether God will not turn and relent, and turn away from his fierce anger, so that we might not ___?", "answer": "perish"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word from Jonah''s prayer describing God''s character.',
   'Jonah 4:2', '...for I knew that you are a gracious God and merciful, slow to anger, and abundant in loving kindness, and you relent of doing harm.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...for I knew that you are a gracious God and merciful, slow to anger, and abundant in loving ___.", "answer": "kindness"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Jonah''s wish to die rather than live.',
   'Jonah 4:3', 'Therefore now, Yahweh, take, I beg you, my life from me, for it is better for me to die than to live.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Therefore now, Yahweh, take, I beg you, my life from me, for it is better for me to ___ than to live.", "answer": "die"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word from Jonah''s plea to the sailors about what was on them.',
   'Jonah 1:12', 'He said to them, ''Take me up, and throw me into the sea. Then the sea will be calm for you; for I know that because of me this great storm is on you.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...for I know that because of me this great ___ is on you.", "answer": "storm"}', true, 9),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Jonah 1:9; 3:9; 4:3', 'Jonah''s answer to the sailors; the Ninevite king''s proclamation; Jonah''s wish to die', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["''I am a Hebrew, and I fear Yahweh, the God of heaven, who has made the sea and the dry land.'' — Jonah''s answer to the sailors (1:9)", "''Who knows whether God will not turn and relent, and turn away from his fierce anger, so that we might not perish?'' — the Ninevite king''s proclamation (3:9)", "''It is better for me to die than to live.'' — Jonah''s despairing wish (4:3)"], "correct_order": [0, 1, 2]}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s closing question about Nineveh.',
   'Jonah 4:10-11', 'Yahweh said, ''You have been concerned for the vine, for which you have not labored, neither made it grow; which came up in a night and perished in a night. Shouldn''t I be concerned for Nineveh, that great city, in which are more than one hundred twenty thousand persons who can''t discern between their right hand and their left hand, and also many animals?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...in which are more than one hundred twenty thousand persons who can''t discern between their right hand and their left hand, and also many ___?", "answer": "animals"}', true, 11)
;

-- ===================== MICAH — EASY TIER (World 33) =====================
with w as (select id from public.world where book_slug = 'micah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'According to Micah 1:2, who does the prophet call on to listen — ''Hear, you ___, all of you''?',
   'Micah 1:2', 'Hear, you peoples, all of you! Listen, O earth, and all that is therein. Let the Lord Yahweh be witness against you, the Lord from his holy temple.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Peoples", "Kings", "Priests", "Elders"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Micah 1:4, what happens to the mountains when Yahweh comes down?',
   'Micah 1:4', 'The mountains melt under him, and the valleys split apart like wax before the fire, like waters that are poured down a steep place.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["They melt like wax", "They shake and crumble", "They turn to dust", "They sink into the sea"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Micah 4:3, what will the nations beat their swords into?',
   'Micah 4:3', 'They will beat their swords into plowshares, and their spears into pruning hooks. Nation will not lift up sword against nation, neither will they learn war any more.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Plowshares", "Shields", "Tools", "Chains"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Micah 4:4, what two things will every man sit under, safe and unafraid?',
   'Micah 4:4', 'But every man will sit under his vine and under his fig tree. No one will make them afraid, for the mouth of Yahweh of Armies has spoken.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["His vine and his fig tree", "A great oak tree", "His own roof", "A tent"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Micah 4:2, where will ''the law'' go out from?',
   'Micah 4:2', 'Many nations will go and say, ''Come! Let''s go up to the mountain of Yahweh, and to the house of the God of Jacob; and he will teach us of his ways, and we will walk in his paths.'' For the law will go out of Zion, and Yahweh''s word from Jerusalem;', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Zion", "Bethlehem", "Samaria", "Babylon"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Micah 6:8, what three things does Yahweh require?',
   'Micah 6:8', 'He has shown you, O man, what is good. What does Yahweh require of you, but to act justly, to love mercy, and to walk humbly with your God?', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["To act justly, love mercy, and walk humbly with God", "To fast, pray, and give alms", "To offer sacrifices, keep the Sabbath, and tithe", "To build the temple, keep the law, and honor the king"], "correct_index": 0}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: with whom does Yahweh require you to walk humbly?',
   'Micah 6:8', 'He has shown you, O man, what is good. What does Yahweh require of you, but to act justly, to love mercy, and to walk humbly with your God?', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "He has shown you, O man, what is good. What does Yahweh require of you, but to act justly, to love mercy, and to walk humbly with your ___?", "answer": "God"}', false, 7),
  ((select id from w), 'multiple_choice', 'According to Micah 6:6, what does the prophet ask if he should bring before Yahweh?',
   'Micah 6:6', 'How shall I come before Yahweh, and bow myself before the exalted God? Shall I come before him with burnt offerings, with calves a year old?', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Burnt offerings", "Silver and gold", "A written law", "His firstborn son"], "correct_index": 0}', false, 8),
  ((select id from w), 'multiple_choice', 'According to Micah 7:18, what question does the prophet ask about God?',
   'Micah 7:18', 'Who is a God like you, who pardons iniquity, and passes over the disobedience of the remnant of his heritage? He doesn''t retain his anger forever, because he delights in loving kindness.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["''Who is a God like you, who pardons iniquity?''", "''Who can stand before his anger?''", "''Why do the nations rage?''", "''How long, O Lord?''"], "correct_index": 0}', false, 9),
  ((select id from w), 'multiple_choice', 'According to Micah 7:19, where does God cast our sins?',
   'Micah 7:19', 'He will again have compassion on us. He will tread our iniquities under foot. You will cast all their sins into the depths of the sea.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Into the depths of the sea", "Into the wilderness", "Into the fire", "Into the dust"], "correct_index": 0}', false, 10),
  ((select id from w), 'sequence', 'Order the four pivotal passages as they appear in the book of Micah.',
   'Micah 1:2-4; 4:1-4; 6:6-8; 7:18-20', 'Yahweh comes down in judgment, and the mountains melt; nations stream to Zion and beat their swords into plowshares; Yahweh asks what he truly requires: justice, mercy, and humility; the prophet praises the God who pardons and casts sin into the sea', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Yahweh comes down in judgment, and the mountains melt (ch. 1)", "Nations stream to Zion and beat their swords into plowshares (ch. 4)", "Yahweh asks what he truly requires: justice, mercy, and humility (ch. 6)", "The prophet praises the God who pardons and casts sin into the sea (ch. 7)"], "correct_order": [0, 1, 2, 3]}', true, 11)
;

-- ===================== MICAH — HARD TIER (World 33) =====================
with w as (select id from public.world where book_slug = 'micah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word from Micah''s opening summons about where the Lord acts as witness.',
   'Micah 1:2', 'Hear, you peoples, all of you! Listen, O earth, and all that is therein. Let the Lord Yahweh be witness against you, the Lord from his holy temple.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Let the Lord Yahweh be witness against you, the Lord from his holy ___.", "answer": "temple"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what does Yahweh tread on as he comes out of his place?',
   'Micah 1:3', 'For behold, Yahweh comes out of his place, and will come down and tread on the high places of the earth.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For behold, Yahweh comes out of his place, and will come down and tread on the high places of the ___.", "answer": "earth"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what will peoples do toward the mountain of Yahweh''s temple?',
   'Micah 4:1', 'But in the latter days, it will happen that the mountain of Yahweh''s temple will be established on the top of the mountains, and it will be exalted above the hills; and peoples will stream to it.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and it will be exalted above the hills; and peoples will ___ to it.", "answer": "stream"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: from where will Yahweh''s word go out, alongside the law from Zion?',
   'Micah 4:2', 'Many nations will go and say, ''Come! Let''s go up to the mountain of Yahweh, and to the house of the God of Jacob; and he will teach us of his ways, and we will walk in his paths.'' For the law will go out of Zion, and Yahweh''s word from Jerusalem;', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For the law will go out of Zion, and Yahweh''s word from ___;", "answer": "Jerusalem"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what does Micah 6:7 ask if Yahweh would be pleased with, besides rams?',
   'Micah 6:7', 'Will Yahweh be pleased with thousands of rams? With tens of thousands of rivers of oil? Shall I give my firstborn for my disobedience? The fruit of my body for the sin of my soul?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Will Yahweh be pleased with thousands of rams? With tens of thousands of rivers of ___?", "answer": "oil"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: how old were the calves Micah asks if Yahweh wants as an offering?',
   'Micah 6:6', 'How shall I come before Yahweh, and bow myself before the exalted God? Shall I come before him with burnt offerings, with calves a year old?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Shall I come before him with burnt offerings, with calves a year ___?", "answer": "old"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: in what does Yahweh delight, according to Micah 7:18?',
   'Micah 7:18', 'Who is a God like you, who pardons iniquity, and passes over the disobedience of the remnant of his heritage? He doesn''t retain his anger forever, because he delights in loving kindness.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He doesn''t retain his anger forever, because he delights in loving ___.", "answer": "kindness"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: from what days has Yahweh sworn mercy to the fathers?',
   'Micah 7:20', 'You will give truth to Jacob, and mercy to Abraham, as you have sworn to our fathers from the days of old.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...as you have sworn to our fathers from the days of ___.", "answer": "old"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word: whose mouth has spoken the promise of safety under the vine and fig tree?',
   'Micah 4:4', 'But every man will sit under his vine and under his fig tree. No one will make them afraid, for the mouth of Yahweh of Armies has spoken.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "No one will make them afraid, for the mouth of Yahweh of ___ has spoken.", "answer": "Armies"}', true, 9),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Micah 1:4; 6:7; 7:19', 'Yahweh''s coming in judgment; the prophet''s mock-offering questions; the closing hymn of praise', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["''The mountains melt under him, and the valleys split apart like wax before the fire...'' — Yahweh''s coming in judgment (1:4)", "''With tens of thousands of rivers of oil?'' — the prophet''s mock-offering questions (6:7)", "''You will cast all their sins into the depths of the sea.'' — the closing hymn of praise (7:19)"], "correct_order": [0, 1, 2]}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word from Micah 6:8''s statement of what Yahweh requires — a different clause than the easy tier.',
   'Micah 6:8', 'He has shown you, O man, what is good. What does Yahweh require of you, but to act justly, to love mercy, and to walk humbly with your God?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "What does Yahweh require of you, but to act ___, to love mercy, and to walk humbly with your God?", "answer": "justly"}', true, 11)
;

-- ===================== NAHUM — EASY TIER (World 34) =====================
with w as (select id from public.world where book_slug = 'nahum')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'According to Nahum 1:7, what is Yahweh described as being ''in the day of trouble''?',
   'Nahum 1:7', 'Yahweh is good, a stronghold in the day of trouble; and he knows those who take refuge in him.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["A stronghold", "A warrior", "A judge", "A shepherd"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Nahum 1:3, how is Yahweh described in relation to anger?',
   'Nahum 1:3', 'Yahweh is slow to anger, and great in power, and will by no means leave the guilty unpunished.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Slow to anger", "Quick to anger", "Never angry", "Always angry"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Nahum 1:15, what does the messenger on the mountains bring?',
   'Nahum 1:15', 'Behold, on the mountains the feet of him who brings good news, who publishes peace! Keep your feasts, Judah! Perform your vows, for the wicked one will no more pass through you. He is utterly cut off.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Good news and peace", "Silver and gold", "A warning of defeat", "A written law"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Nahum 1:15, who is told to ''keep your feasts'' and ''perform your vows''?',
   'Nahum 1:15', 'Behold, on the mountains the feet of him who brings good news, who publishes peace! Keep your feasts, Judah! Perform your vows, for the wicked one will no more pass through you. He is utterly cut off.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Judah", "Nineveh", "Israel", "Egypt"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Nahum 3:19, what does the text say about Nineveh''s wound?',
   'Nahum 3:19', 'There is no healing your wound, for your injury is fatal. All who hear the report of you clap their hands over you, for who hasn''t felt your endless cruelty?', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["There is no healing it", "It will heal quickly", "It is only a scratch", "It will heal in forty days"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'What does the book of Nahum say will ultimately happen to Nineveh?',
   'Nahum 3', 'The book of Nahum states, without graphic description, that Nineveh''s fall is certain.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["It will fall", "It will repent and be spared", "It will conquer Judah", "It will be rebuilt stronger"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Nahum 1:2, what kind of God does the text call Yahweh?',
   'Nahum 1:2', 'Yahweh is a jealous God and avenges. Yahweh avenges and is full of wrath.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["A jealous God", "A distant God", "A forgetful God", "A silent God"], "correct_index": 0}', true, 7),
  ((select id from w), 'sequence', 'Order the three pivotal passages as they appear in the book of Nahum.',
   'Nahum 1:2-3, 1:7; 1:15; 3:19', 'Yahweh''s character: slow to anger, yet just, and a stronghold for those who take refuge in him; good news and peace for Judah; the certainty of Nineveh''s fall', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Yahweh''s character: slow to anger, yet just — and a stronghold for those who take refuge in him (ch. 1)", "Good news and peace for Judah (1:15)", "The certainty of Nineveh''s fall (ch. 3)"], "correct_order": [0, 1, 2]}', true, 8)
;

-- ===================== NAHUM — HARD TIER (World 34) =====================
with w as (select id from public.world where book_slug = 'nahum')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word: what is Yahweh great in, according to Nahum 1:3?',
   'Nahum 1:3', 'Yahweh is slow to anger, and great in power, and will by no means leave the guilty unpunished.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh is slow to anger, and great in ___, and will by no means leave the guilty unpunished.", "answer": "power"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what does Yahweh know about those who take refuge in him?',
   'Nahum 1:7', 'Yahweh is good, a stronghold in the day of trouble; and he knows those who take refuge in him.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh is good, a stronghold in the day of trouble; and he knows those who take ___ in him.", "answer": "refuge"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what is Yahweh full of, according to Nahum 1:2?',
   'Nahum 1:2', 'Yahweh is a jealous God and avenges. Yahweh avenges and is full of wrath.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh is a jealous God and avenges. Yahweh avenges and is full of ___.", "answer": "wrath"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what happens to the wicked one who will no more pass through Judah?',
   'Nahum 1:15', 'Behold, on the mountains the feet of him who brings good news, who publishes peace! Keep your feasts, Judah! Perform your vows, for the wicked one will no more pass through you. He is utterly cut off.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...for the wicked one will no more pass through you. He is utterly ___.", "answer": "cut off"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: how does Nahum 3:19 describe Nineveh''s injury?',
   'Nahum 3:19', 'There is no healing your wound, for your injury is fatal. All who hear the report of you clap their hands over you, for who hasn''t felt your endless cruelty?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "There is no healing your wound, for your injury is ___.", "answer": "fatal"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what has everyone who hears the report of Nineveh''s fall felt?',
   'Nahum 3:19', 'There is no healing your wound, for your injury is fatal. All who hear the report of you clap their hands over you, for who hasn''t felt your endless cruelty?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "All who hear the report of you clap their hands over you, for who hasn''t felt your endless ___?", "answer": "cruelty"}', false, 6),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Nahum 1:3; 1:7; 3:19', 'Yahweh''s justice; Yahweh''s goodness; the certainty of Nineveh''s fall', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["''Yahweh is slow to anger, and great in power, and will by no means leave the guilty unpunished.'' — Yahweh''s justice (1:3)", "''Yahweh is good, a stronghold in the day of trouble; and he knows those who take refuge in him.'' — Yahweh''s goodness (1:7)", "''There is no healing your wound, for your injury is fatal.'' — the certainty of Nineveh''s fall (3:19)"], "correct_order": [0, 1, 2]}', true, 7),
  ((select id from w), 'recall', 'Fill in the missing word from the book''s own opening superscription.',
   'Nahum 1:1', 'A revelation about Nineveh. The book of the vision of Nahum the Elkoshite.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "A revelation about ___. The book of the vision of Nahum the Elkoshite.", "answer": "Nineveh"}', true, 8)
;
