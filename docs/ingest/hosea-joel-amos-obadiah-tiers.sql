-- Gen2Rev challenge ingest: Hosea (World 28), Joel (World 29), Amos (World 30), Obadiah (World 31)
--   -- EASY and HARD tiers
-- Generated from docs/content/hosea-easy.md, docs/content/hosea-hard.md,
--   docs/content/joel-easy.md, docs/content/joel-hard.md,
--   docs/content/amos-easy.md, docs/content/amos-hard.md,
--   docs/content/obadiah-easy.md, docs/content/obadiah-hard.md.
-- All eight briefs: theological review complete, independent verbatim-text QA pass complete
--   (docs/CONTENT_REVIEW_LOG.md rows 28e/28h/29e/29h/30e/30h/31e/31h;
--    docs/QA_SIGNOFF.md same rows).
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/hosea-joel-amos-obadiah.sql are untouched by this file.
--
-- Structural rules carried forward from the medium briefs and reaffirmed by the easy/hard briefs:
--   Hosea: 1:2, 1:10, 3:1, 3:5, and 6:1-3 are restricted to recall/fill-in-blank format only,
--     never multiple_choice, in every tier. Hosea 6:1-3's graded/blanked token is never "third" or
--     "day". Hosea 11:1's multiple-choice or recall item tests only "who is called God's son in this
--     verse, in its own context" — no NT figure, event, or fulfillment claim in any option or blank.
--   Amos: 9:11-12 is excluded entirely, and the second sentence of Amos 2:7 is never quoted, in
--     every tier.
--   Obadiah: this book's easy and hard tiers are intentionally thin (6 items each, no distinct
--     boss-battle structure), per the medium brief's own precedent for a book this short — no verse
--     beyond the 6 already reviewed at medium (Obadiah 3, 4, 10, 12, 15, 17) appears in either tier.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).


with w as (select id from public.world where book_slug = 'hosea')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== HOSEA — EASY =====================
  ((select id from w), 'multiple_choice', 'According to Hosea 1:3, what was the name of the woman Hosea married?',
   'Hosea 1:3', 'So he went and took Gomer the daughter of Diblaim; and she conceived, and bore him a son.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Gomer", "Ruth", "Rahab", "Tamar"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Hosea 1:4, what name did Yahweh tell Hosea to give his first son?',
   'Hosea 1:4', 'Yahweh said to him, ''Call his name Jezreel, for yet a little while, and I will avenge the blood of Jezreel on the house of Jehu, and will cause the kingdom of the house of Israel to cease.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Jezreel", "Lo-Ruhamah", "Lo-Ammi", "Ephraim"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Hosea 2:16, what does Yahweh say Israel will call him, instead of ''my master''?',
   'Hosea 2:16', '''It will be in that day,'' says Yahweh, ''that you will call me "my husband," and no longer call me "my master."''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["my husband", "my king", "my father", "my shepherd"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Hosea 3:2, what price did Hosea pay to buy back his wife?',
   'Hosea 3:2', 'So I bought her for myself for fifteen pieces of silver and a homer and a half of barley.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["fifteen pieces of silver and a homer and a half of barley", "thirty pieces of silver", "a field", "nothing"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Hosea 4:2, which of these does the text list?',
   'Hosea 4:2', 'There is cursing, lying, murder, stealing, and committing adultery; they break boundaries, and bloodshed causes bloodshed.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["murder", "dancing", "fasting", "building altars"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Hosea 6:6, what does Yahweh say he desires instead of sacrifice?',
   'Hosea 6:6', 'For I desire mercy, and not sacrifice; and the knowledge of God more than burnt offerings.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["mercy", "silver", "obedience", "incense"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Hosea 11:1, who did Yahweh call ''my son,'' called out of Egypt?',
   'Hosea 11:1', 'When Israel was a child, then I loved him, and called my son out of Egypt.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Israel", "Moses", "David", "Isaac"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'According to Hosea 11:8, what does Yahweh ask about Ephraim?',
   'Hosea 11:8', 'How can I give you up, Ephraim? How can I hand you over, Israel? How can I make you like Admah? How can I make you like Zeboiim? My heart is turned within me, my compassion is aroused.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["\"How can I give you up?\"", "\"How can I forget you?\"", "\"How can I bless you?\"", "\"How can I save you?\""], "correct_index": 0}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word: what does Yahweh say he sent Hosea to take a wife of?',
   'Hosea 1:2', 'When Yahweh spoke at first by Hosea, Yahweh said to Hosea, ''Go, take for yourself a wife of prostitution and children of unfaithfulness; for the land commits great adultery, forsaking Yahweh.''', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "When Yahweh spoke at first by Hosea, Yahweh said to Hosea, ''Go, take for yourself a wife of ___ and children of unfaithfulness; for the land commits great adultery, forsaking Yahweh.''", "answer": "prostitution"}', true, 9),
  ((select id from w), 'recall', 'Fill in the missing word: what will the children of Israel be called, reversing ''you are not my people''?',
   'Hosea 1:10', 'Yet the number of the children of Israel will be as the sand of the sea, which can''t be measured or counted; and it will come to pass that, in the place where it was said to them, ''You are not my people,'' they will be called ''sons of the living God.''', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Yet the number of the children of Israel will be as the sand of the sea, which can''t be measured or counted; and it will come to pass that, in the place where it was said to them, ''You are not my people,'' they will be called ''sons of the living ___.''", "answer": "God"}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word: besides Yahweh their God, who will the children of Israel seek as their king?',
   'Hosea 3:5', 'Afterward the children of Israel shall return and seek Yahweh their God, and David their king, and shall come with trembling to Yahweh and to his blessings in the last days.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Afterward the children of Israel shall return and seek Yahweh their God, and ___ their king, and shall come with trembling to Yahweh and to his blessings in the last days.", "answer": "David"}', true, 11),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say Yahweh will do to us, after he has torn us to pieces?',
   'Hosea 6:1-3', 'Come! Let''s return to Yahweh; for he has torn us to pieces, and he will heal us; he has injured us, and he will bind up our wounds. After two days he will revive us. On the third day he will raise us up, and we will live before him. Let''s acknowledge Yahweh. Let''s press on to know Yahweh. As surely as the sun rises, Yahweh will appear. He will come to us like the rain, like the spring rain that waters the earth.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Come! Let''s return to Yahweh; for he has torn us to pieces, and he will ___ us; he has injured us, and he will bind up our wounds. After two days he will revive us. On the third day he will raise us up, and we will live before him. Let''s acknowledge Yahweh. Let''s press on to know Yahweh. As surely as the sun rises, Yahweh will appear. He will come to us like the rain, like the spring rain that waters the earth.", "answer": "heal"}', true, 12)
;

with w as (select id from public.world where book_slug = 'hosea')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== HOSEA — HARD =====================
  ((select id from w), 'recall', 'Fill in the missing word: in what valley will Yahweh break the bow of Israel?',
   'Hosea 1:5', 'It will happen in that day that I will break the bow of Israel in the valley of Jezreel.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "It will happen in that day that I will break the bow of Israel in the valley of ___.", "answer": "Jezreel"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: children of what does the text say Hosea''s wife represents?',
   'Hosea 1:2', 'When Yahweh spoke at first by Hosea, Yahweh said to Hosea, ''Go, take for yourself a wife of prostitution and children of unfaithfulness; for the land commits great adultery, forsaking Yahweh.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "When Yahweh spoke at first by Hosea, Yahweh said to Hosea, ''Go, take for yourself a wife of prostitution and children of ___; for the land commits great adultery, forsaking Yahweh.''", "answer": "unfaithfulness"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what valley does the text name as ''a door of hope''?',
   'Hosea 2:15', 'I will give her vineyards from there, and the valley of Achor for a door of hope; and she will respond there as in the days of her youth, and as in the day when she came up out of the land of Egypt.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I will give her vineyards from there, and the valley of ___ for a door of hope; and she will respond there as in the days of her youth, and as in the day when she came up out of the land of Egypt.", "answer": "Achor"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say Israel loves cakes of, alongside turning to other gods?',
   'Hosea 3:1', 'Yahweh said to me, ''Go again, love a woman loved by another, and an adulteress, even as Yahweh loves the children of Israel, though they turn to other gods, and love cakes of raisins.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh said to me, ''Go again, love a woman loved by another, and an adulteress, even as Yahweh loves the children of Israel, though they turn to other gods, and love cakes of ___.''", "answer": "raisins"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: how does the text say Israel will come to Yahweh and his blessings in the last days?',
   'Hosea 3:5', 'Afterward the children of Israel shall return and seek Yahweh their God, and David their king, and shall come with trembling to Yahweh and to his blessings in the last days.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Afterward the children of Israel shall return and seek Yahweh their God, and David their king, and shall come with ___ to Yahweh and to his blessings in the last days.", "answer": "trembling"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what does Hosea 4:6 say my people are destroyed for lack of?',
   'Hosea 4:6', 'My people are destroyed for lack of knowledge. Because you have rejected knowledge, I will also reject you, that you may be no priest to me. Because you have forgotten your God''s law, I will also forget your children.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "My people are destroyed for lack of ___. Because you have rejected knowledge, I will also reject you, that you may be no priest to me. Because you have forgotten your God''s law, I will also forget your children.", "answer": "knowledge"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say we should press on to know?',
   'Hosea 6:1-3', 'Come! Let''s return to Yahweh; for he has torn us to pieces, and he will heal us; he has injured us, and he will bind up our wounds. After two days he will revive us. On the third day he will raise us up, and we will live before him. Let''s acknowledge Yahweh. Let''s press on to know Yahweh. As surely as the sun rises, Yahweh will appear. He will come to us like the rain, like the spring rain that waters the earth.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Come! Let''s return to Yahweh; for he has torn us to pieces, and he will heal us; he has injured us, and he will bind up our wounds. After two days he will revive us. On the third day he will raise us up, and we will live before him. Let''s acknowledge Yahweh. Let''s press on to know ___. As surely as the sun rises, Yahweh will appear. He will come to us like the rain, like the spring rain that waters the earth.", "answer": "Yahweh"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: what did Yahweh call, out of Egypt, when Israel was a child?',
   'Hosea 11:1', 'When Israel was a child, then I loved him, and called my son out of Egypt.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "When Israel was a child, then I loved him, and called my ___ out of Egypt.", "answer": "son"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word: what does Yahweh say he is, and not man, the Holy One among you?',
   'Hosea 11:9', 'I will not execute the fierceness of my anger. I will not return to destroy Ephraim, for I am God, and not man—the Holy One among you. I will not come in wrath.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I will not execute the fierceness of my anger. I will not return to destroy Ephraim, for I am God, and not ___—the Holy One among you. I will not come in wrath.", "answer": "man"}', false, 9),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say Israel offers as they vowed of their lips?',
   'Hosea 14:2', 'Take words with you, and return to Yahweh. Tell him, ''Forgive all our sins, and accept that which is good; so we offer bulls as we vowed of our lips.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Take words with you, and return to Yahweh. Tell him, ''Forgive all our sins, and accept that which is good; so we offer ___ as we vowed of our lips.''", "answer": "bulls"}', false, 10),
  ((select id from w), 'recall', 'Fill in the missing word: as the sand of what will the number of the children of Israel be?',
   'Hosea 1:10', 'Yet the number of the children of Israel will be as the sand of the sea, which can''t be measured or counted; and it will come to pass that, in the place where it was said to them, ''You are not my people,'' they will be called ''sons of the living God.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yet the number of the children of Israel will be as the sand of the ___, which can''t be measured or counted; and it will come to pass that, in the place where it was said to them, ''You are not my people,'' they will be called ''sons of the living God.''", "answer": "sea"}', true, 11),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Hosea 2:16; 6:6; 11:8', 'The husband/master promise; I desire mercy, not sacrifice; How can I give you up, Ephraim?', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["\"...that you will call me ''my husband,'' and no longer call me ''my master.''\" — the betrothal promise (2:16)", "\"For I desire mercy, and not sacrifice; and the knowledge of God more than burnt offerings.\" — the call to return (6:6)", "\"How can I give you up, Ephraim?... My heart is turned within me, my compassion is aroused.\" — divine compassion (11:8)"], "correct_order": [0, 1, 2]}', true, 12)
;

with w as (select id from public.world where book_slug = 'joel')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== JOEL — EASY =====================
  ((select id from w), 'multiple_choice', 'According to Joel 1:4, what ate what the great locust left behind?',
   'Joel 1:4', 'What the swarming locust has left, the great locust has eaten. What the great locust has left, the grasshopper has eaten. What the grasshopper has left, the caterpillar has eaten.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the grasshopper", "a bird", "a fish", "nothing"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Joel 1:14, where does Joel tell the people to gather?',
   'Joel 1:14', 'Sanctify a fast. Call a solemn assembly. Gather the elders and all the inhabitants of the land to the house of Yahweh, your God, and cry to Yahweh.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the house of Yahweh", "the city gate", "the mountain", "the marketplace"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Joel 1:15, what does Joel say is ''at hand''?',
   'Joel 1:15', 'Alas for the day! For the day of Yahweh is at hand, and it will come as destruction from the Almighty.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the day of Yahweh", "a great harvest", "a new king", "a famine"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Joel 2:13, what does the text say Yahweh is?',
   'Joel 2:13', 'Tear your heart and not your garments, and turn to Yahweh, your God; for he is gracious and merciful, slow to anger, and abundant in loving kindness, and relents from sending calamity.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["gracious and merciful, slow to anger", "just and severe", "distant and silent", "swift to anger"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Joel 2:28, on whom will Yahweh pour out his Spirit?',
   'Joel 2:28', 'It will happen afterward, that I will pour out my Spirit on all flesh; and your sons and your daughters will prophesy. Your old men will dream dreams. Your young men will see visions.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["all flesh", "only the priests", "only the prophets", "only the king"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Joel 2:29, besides sons, daughters, old men, and young men, who else does the text name?',
   'Joel 2:29', 'And also on the servants and on the handmaids in those days, I will pour out my Spirit.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the servants and handmaids", "the elders and priests", "the farmers and vinedressers", "the soldiers"], "correct_index": 0}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what does Joel say to tell your children about, and have them tell their children?',
   'Joel 1:3', 'Tell your children about it, and have your children tell their children, and their children, another generation.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Tell your children about it, and have your children tell their children, and their children, another ___.", "answer": "generation"}', true, 7),
  ((select id from w), 'sequence', 'Put these three pivotal passages in the order they occur in the book of Joel.',
   'Joel 1:2-15; 2:12-13; 2:28-29', 'The locust plague and the call to lament; the call to return; the promise of the Spirit', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The locust plague and the call to lament", "\"Turn to me with all your heart\" — the call to genuine repentance", "\"I will pour out my Spirit on all flesh\" — the promise of the Spirit"], "correct_order": [0, 1, 2]}', true, 8)
;

with w as (select id from public.world where book_slug = 'joel')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== JOEL — HARD =====================
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say the vine''s branches are made?',
   'Joel 1:7', 'He has laid my vine waste, and stripped my fig tree. He has stripped its bark, and thrown it away. Its branches are made white.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He has laid my vine waste, and stripped my fig tree. He has stripped its bark, and thrown it away. Its branches are made ___.", "answer": "white"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: in the days of whose does Joel ask if this has ever happened?',
   'Joel 1:2', 'Hear this, you elders, and listen, all you inhabitants of the land! Has this ever happened in your days, or in the days of your fathers?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Hear this, you elders, and listen, all you inhabitants of the land! Has this ever happened in your days, or in the days of your ___?", "answer": "fathers"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: from whom does the text say the day of Yahweh will come as destruction?',
   'Joel 1:15', 'Alas for the day! For the day of Yahweh is at hand, and it will come as destruction from the Almighty.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Alas for the day! For the day of Yahweh is at hand, and it will come as destruction from the ___.", "answer": "Almighty"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: with fasting, weeping, and what else does Yahweh call the people to turn to him?',
   'Joel 2:12', '''Yet even now,'' says Yahweh, ''turn to me with all your heart, and with fasting, and with weeping, and with mourning.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''Yet even now,'' says Yahweh, ''turn to me with all your heart, and with fasting, and with weeping, and with ___.''", "answer": "mourning"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say Yahweh relents from sending?',
   'Joel 2:13', 'Tear your heart and not your garments, and turn to Yahweh, your God; for he is gracious and merciful, slow to anger, and abundant in loving kindness, and relents from sending calamity.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Tear your heart and not your garments, and turn to Yahweh, your God; for he is gracious and merciful, slow to anger, and abundant in loving kindness, and relents from sending ___.", "answer": "calamity"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what will your young men see, per Joel 2:28?',
   'Joel 2:28', 'It will happen afterward, that I will pour out my Spirit on all flesh; and your sons and your daughters will prophesy. Your old men will dream dreams. Your young men will see visions.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "It will happen afterward, that I will pour out my Spirit on all flesh; and your sons and your daughters will prophesy. Your old men will dream dreams. Your young men will see ___.", "answer": "visions"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: besides the servants, on whom else does Yahweh say he will pour out his Spirit?',
   'Joel 2:29', 'And also on the servants and on the handmaids in those days, I will pour out my Spirit.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "And also on the servants and on the ___ in those days, I will pour out my Spirit.", "answer": "handmaids"}', false, 7),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Joel 1:15; 2:13; 2:28', 'The day of Yahweh at hand; the call to genuine repentance; the promise of the Spirit', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["\"Alas for the day! For the day of Yahweh is at hand, and it will come as destruction from the Almighty.\" — the locust plague''s felt significance (1:15)", "\"Tear your heart and not your garments, and turn to Yahweh, your God...\" — the call to genuine repentance (2:13)", "\"I will pour out my Spirit on all flesh...\" — the promise of the Spirit (2:28)"], "correct_order": [0, 1, 2]}', true, 8)
;

with w as (select id from public.world where book_slug = 'amos')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== AMOS — EASY =====================
  ((select id from w), 'multiple_choice', 'According to Amos 1:3, which nation is the first addressed in the judgment-oracle cycle?',
   'Amos 1:3', 'Yahweh says: ''For three transgressions of Damascus, yes, for four, I will not turn away its punishment, because they have threshed Gilead with threshing instruments of iron.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Damascus", "Edom", "Moab", "Israel"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Amos 2:6, what did Israel do to ''the needy,'' per the text?',
   'Amos 2:6', 'Yahweh says: ''For three transgressions of Israel, yes, for four, I will not turn away its punishment, because they have sold the righteous for silver, and the needy for a pair of sandals.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["sold them for a pair of sandals", "gave them bread", "freed them", "taxed them"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Amos 2:7, what does the text say they do to ''the heads of the poor''?',
   'Amos 2:7', 'They trample the heads of the poor into the dust of the earth and deny justice to the oppressed.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["trample them into the dust", "lift them up", "ignore them", "feed them"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Amos 5:12, what does the text say some people ''take'' unjustly?',
   'Amos 5:12', 'For I know how many are your offenses, and how great are your sins—you who afflict the just, who take a bribe, and who turn away the needy in the courts.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a bribe", "a wife", "a house", "a name"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Amos 5:21, what does Yahweh say about the feasts?',
   'Amos 5:21', 'I hate, I despise your feasts, and I can''t stand your solemn assemblies.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["\"I hate, I despise your feasts\"", "\"I love your feasts\"", "\"I ignore your feasts\"", "\"I bless your feasts\""], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Amos 5:24 (WEB), what does Amos say should ''roll on like rivers''?',
   'Amos 5:24', 'But let justice roll on like rivers, and righteousness like a mighty stream.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["justice", "mercy", "wisdom", "peace"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Amos 7:14, what was Amos''s occupation before he was called to prophesy?',
   'Amos 7:14', 'I was no prophet, neither was I a prophet''s son, but I was a herdsman, and a farmer of sycamore figs.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a herdsman and a farmer of sycamore figs", "a priest", "a king''s scribe", "a soldier"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'According to Amos 7:15, what did Yahweh tell Amos to do?',
   'Amos 7:15', 'and Yahweh took me from following the flock, and Yahweh said to me, ''Go, prophesy to my people Israel.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["\"Go, prophesy to my people Israel.\"", "\"Go, build a temple.\"", "\"Go, gather an army.\"", "\"Go, return to Tekoa.\""], "correct_index": 0}', false, 8),
  ((select id from w), 'sequence', 'Put these four pivotal passages in the order they appear in the book of Amos.',
   'Amos 1-2; 5:11-12; 5:21-24; 7:14-15', 'The judgment oracles against the nations and Israel; economic injustice named directly; let justice roll on like rivers; Amos''s own call', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The judgment oracles against the nations — and Israel itself", "Economic injustice named directly", "\"Let justice roll on like rivers\"", "Amos''s own call — \"I was no prophet\""], "correct_order": [0, 1, 2, 3]}', true, 9)
;

with w as (select id from public.world where book_slug = 'amos')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== AMOS — HARD =====================
  ((select id from w), 'recall', 'Fill in the missing word: what did Damascus thresh Gilead with?',
   'Amos 1:3', 'Yahweh says: ''For three transgressions of Damascus, yes, for four, I will not turn away its punishment, because they have threshed Gilead with threshing instruments of iron.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh says: ''For three transgressions of Damascus, yes, for four, I will not turn away its punishment, because they have threshed Gilead with threshing instruments of ___.''", "answer": "iron"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: how long does the text say Edom kept his wrath?',
   'Amos 1:11', 'Yahweh says: ''For three transgressions of Edom, yes, for four, I will not turn away its punishment, because he pursued his brother with the sword and cast off all pity, and his anger raged continually, and he kept his wrath forever.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh says: ''For three transgressions of Edom, yes, for four, I will not turn away its punishment, because he pursued his brother with the sword and cast off all pity, and his anger raged continually, and he kept his wrath ___.''", "answer": "forever"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what did Israel sell the needy for a pair of, per the text?',
   'Amos 2:6', 'Yahweh says: ''For three transgressions of Israel, yes, for four, I will not turn away its punishment, because they have sold the righteous for silver, and the needy for a pair of sandals.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh says: ''For three transgressions of Israel, yes, for four, I will not turn away its punishment, because they have sold the righteous for silver, and the needy for a pair of ___.''", "answer": "sandals"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say is denied to the oppressed?',
   'Amos 2:7', 'They trample the heads of the poor into the dust of the earth and deny justice to the oppressed.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "They trample the heads of the poor into the dust of the earth and deny ___ to the oppressed.", "answer": "justice"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say the guilty built, but will not dwell in?',
   'Amos 5:11', 'Therefore, because you trample on the poor and take taxes from him of wheat, you have built houses of cut stone, but you will not dwell in them.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Therefore, because you trample on the poor and take taxes from him of wheat, you have built houses of cut stone, but you will not ___ in them.", "answer": "dwell"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: where does the text say the needy are turned away?',
   'Amos 5:12', 'For I know how many are your offenses, and how great are your sins—you who afflict the just, who take a bribe, and who turn away the needy in the courts.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For I know how many are your offenses, and how great are your sins—you who afflict the just, who take a bribe, and who turn away the needy in the ___.", "answer": "courts"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what instrument''s music does Yahweh say he will not listen to?',
   'Amos 5:23', 'Take away from me the noise of your songs! I will not listen to the music of your harps.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Take away from me the noise of your songs! I will not listen to the music of your ___.", "answer": "harps"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: what kind of figs was Amos a farmer of?',
   'Amos 7:14', 'I was no prophet, neither was I a prophet''s son, but I was a herdsman, and a farmer of sycamore figs.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I was no prophet, neither was I a prophet''s son, but I was a herdsman, and a farmer of sycamore ___.", "answer": "figs"}', false, 8),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Amos 2:6; 5:24; 7:14', 'The oracle turns on Israel; let justice roll on like rivers; Amos''s own call', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["\"...they have sold the righteous for silver, and the needy for a pair of sandals.\" — the oracle turns onto Israel itself (2:6)", "\"But let justice roll on like rivers, and righteousness like a mighty stream.\" — the book''s best-known line (5:24)", "\"I was no prophet, neither was I a prophet''s son, but I was a herdsman...\" — Amos''s own call (7:14)"], "correct_order": [0, 1, 2]}', true, 9)
;

with w as (select id from public.world where book_slug = 'obadiah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== OBADIAH — EASY =====================
  ((select id from w), 'multiple_choice', 'According to Obadiah 1:3, what has deceived Edom?',
   'Obadiah 1:3', 'The pride of your heart has deceived you, you who dwell in the clefts of the rock, whose habitation is high, who says in his heart, ''Who will bring me down to the ground?''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the pride of your heart", "the wealth of your land", "the strength of your army", "the wisdom of your elders"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Obadiah 1:4, where does the text say Edom''s nest is set?',
   'Obadiah 1:4', '"Though you mount on high as the eagle, and though your nest is set among the stars, I will bring you down from there," says Yahweh.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["among the stars", "in the valley", "on the sea", "in the desert"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Obadiah 1:10, whose violence brings shame on Edom?',
   'Obadiah 1:10', 'For the violence done to your brother Jacob, shame will cover you, and you will be cut off forever.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["your brother Jacob", "a foreign king", "your own people", "the Assyrians"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Obadiah 1:12, what does the text say Edom should not have done in the day of Judah''s disaster?',
   'Obadiah 1:12', 'But don''t look down on your brother in the day of his disaster, and don''t rejoice over the children of Judah in the day of their destruction. Don''t speak proudly in the day of distress.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["looked down on their brother", "helped their brother", "traded with their brother", "warned their brother"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Obadiah 1:15, what is ''near all the nations''?',
   'Obadiah 1:15', 'For the day of Yahweh is near all the nations! As you have done, it will be done to you. Your deeds will return upon your own head.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the day of Yahweh", "a great famine", "a new king", "peace"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Obadiah 1:17, what does the text say will happen on Mount Zion?',
   'Obadiah 1:17', 'But in Mount Zion, there will be those who escape, and it will be holy. The house of Jacob will possess their possessions.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["there will be those who escape, and it will be holy", "a new temple will be built there", "Edom will be defeated there", "Elijah will appear there"], "correct_index": 0}', false, 6)
;

with w as (select id from public.world where book_slug = 'obadiah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== OBADIAH — HARD =====================
  ((select id from w), 'recall', 'Fill in the missing word: to where does Edom ask who will bring him down?',
   'Obadiah 1:3', 'The pride of your heart has deceived you, you who dwell in the clefts of the rock, whose habitation is high, who says in his heart, ''Who will bring me down to the ground?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "The pride of your heart has deceived you, you who dwell in the clefts of the rock, whose habitation is high, who says in his heart, ''Who will bring me down to the ___?''", "answer": "ground"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: who says ''I will bring you down from there''?',
   'Obadiah 1:4', '"Though you mount on high as the eagle, and though your nest is set among the stars, I will bring you down from there," says Yahweh.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "\"Though you mount on high as the eagle, and though your nest is set among the stars, I will bring you down from there,\" says ___.", "answer": "Yahweh"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: for how long does the text say Edom will be cut off?',
   'Obadiah 1:10', 'For the violence done to your brother Jacob, shame will cover you, and you will be cut off forever.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For the violence done to your brother Jacob, shame will cover you, and you will be cut off ___.", "answer": "forever"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: in the day of what should Edom not have rejoiced over the children of Judah?',
   'Obadiah 1:12', 'But don''t look down on your brother in the day of his disaster, and don''t rejoice over the children of Judah in the day of their destruction. Don''t speak proudly in the day of distress.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "But don''t look down on your brother in the day of his disaster, and don''t rejoice over the children of Judah in the day of their ___. Don''t speak proudly in the day of distress.", "answer": "destruction"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: upon whose own what will Edom''s deeds return?',
   'Obadiah 1:15', 'For the day of Yahweh is near all the nations! As you have done, it will be done to you. Your deeds will return upon your own head.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For the day of Yahweh is near all the nations! As you have done, it will be done to you. Your deeds will return upon your own ___.", "answer": "head"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what will the house of Jacob possess?',
   'Obadiah 1:17', 'But in Mount Zion, there will be those who escape, and it will be holy. The house of Jacob will possess their possessions.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "But in Mount Zion, there will be those who escape, and it will be holy. The house of Jacob will possess their ___.", "answer": "possessions"}', false, 6)
;
