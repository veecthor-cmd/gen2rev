-- Gen2Rev challenge ingest: Esther (World 17) and Job (World 18) -- EASY and HARD tiers
-- Generated from docs/content/esther-easy.md, docs/content/esther-hard.md,
--   docs/content/job-easy.md, docs/content/job-hard.md
-- Both books: theological review approved-with-changes, independent verbatim-text QA pass complete
--   (docs/reviews/esther-easy-review.md, docs/reviews/esther-hard-review.md,
--    docs/reviews/job-easy-review.md, docs/reviews/job-hard-review.md;
--    docs/CONTENT_REVIEW_LOG.md rows 17e/17h/18e/18h; docs/QA_SIGNOFF.md same rows).
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/ezra-nehemiah-esther.sql and docs/ingest/job-psalms.sql are untouched by this file.
--
-- Structural rules carried forward from the medium brief and reaffirmed by the easy/hard briefs:
--   Esther: Esther 2:7, 2:15, and 2:17 are recall/fill-in-blank only, never multiple choice, in
--     every tier; Esther 9:6-10 (Haman's ten sons named) and Esther 9:16 (the 75,000 casualty
--     figure) are excluded entirely in every tier.
--   Job: Job 1:21, Job 19:25-27, and Job 42:6 are recall/fill-in-blank only, never multiple choice,
--     in every tier; "The Satan" figure (Job 1:6-12) may only be used in recall/fill-in-blank or
--     narrative-fact multiple-choice about actions/dialogue, never an identity question; Job 42:7
--     (the rebuke of the friends) is never a standalone graded item; Job 3-37, Behemoth/Leviathan
--     (Job 40:15-41:34), and Job 1:18-19 (the child-death report) are excluded entirely in every
--     tier.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).

with w as (select id from public.world where book_slug = 'esther')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing name: whom did Esther replace as queen, per Esther 2:17?',
   'Esther 2:17', 'The king loved Esther more than all the women, and she obtained favor and kindness in his sight more than all the virgins; so that he set the royal crown on her head, and made her queen instead of Vashti.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "The king loved Esther more than all the women, and she obtained favor and kindness in his sight more than all the virgins; so that he set the royal crown on her head, and made her queen instead of ___.", "answer": "Vashti"}', false, 1),
  ((select id from w), 'multiple_choice', 'What was the name of the cousin who raised Esther?',
   'Esther 2:5', 'There was a certain Jew in the citadel of Susa whose name was Mordecai, the son of Jair, the son of Shimei, the son of Kish, a Benjamite.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Mordecai", "Haman", "Hegai", "Ahasuerus"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'Who refused to bow down to Haman?',
   'Esther 3:2', '...But Mordecai didn''t bow down or pay him homage.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Mordecai", "Esther", "the king", "Hegai"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'What did Haman''s decree order against the Jewish people?',
   'Esther 3:13', 'Letters were sent by couriers into all the king''s provinces, to destroy, to kill, and to cause to perish, all Jews...', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["to destroy them", "to tax them heavily", "to exile them", "to enslave them"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'What was Esther willing to risk by going to the king uninvited?',
   'Esther 4:16', 'Go, gather together all the Jews who are present in Susa, and fast for me, and neither eat nor drink three days, night or day. I and my maidens will also fast the same way. Then I will go in to the king, which is against the law; and if I perish, I perish.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["her own life", "her position as queen only", "nothing, it was safe", "her wealth"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'How did the Jews feel when the king''s counter-decree was announced?',
   'Esther 8:16', 'The Jews had light, gladness, joy, and honor.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["light, gladness, joy, and honor", "afraid and confused", "angry and vengeful", "indifferent"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'What is the name of the festival established to remember the Jews'' deliverance?',
   'Esther 9:26', 'Therefore they called these days ''Purim,'' from the word ''Pur.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Purim", "Passover", "Hanukkah", "Sukkot"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'What happened to Haman in the end?',
   'Esther 7:9-10', '...So they hanged Haman on the gallows that he had prepared for Mordecai.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["he was hanged on the gallows he built for Mordecai", "he was exiled", "he was demoted", "he apologized to Mordecai"], "correct_index": 0}', true, 8),
  ((select id from w), 'sequence', 'Put these events of Esther''s story in the order they occur in the text.',
   'Esther 2; 3; 4; 5-7; 8-9', 'Esther 2; Esther 3; Esther 4; Esther 5-7; Esther 8-9', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Esther becomes queen", "Haman''s decree against the Jews", "Esther decides to approach the king", "Haman''s downfall at the banquet", "the reversal and the establishment of Purim"], "correct_order": [0, 1, 2, 3, 4]}', true, 9),
  ((select id from w), 'multiple_choice', 'According to Esther 9:28, how long were the days of Purim to be kept?',
   'Esther 9:28', '...that these days of Purim should not fail from among the Jews, nor their memory perish from their offspring.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["throughout every generation", "for one year only", "until the next king", "only in the city of Susa"], "correct_index": 0}', true, 10);

with w as (select id from public.world where book_slug = 'esther')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing name: what was Esther''s Hebrew name, per Esther 2:7?',
   'Esther 2:7', 'He brought up Hadassah, that is, Esther, his uncle''s daughter; for she had neither father nor mother.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He brought up ___, that is, Esther, his uncle''s daughter; for she had neither father nor mother.", "answer": "Hadassah"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing name: which of the two plotting eunuchs is named first, alongside Teresh, per Esther 2:21-22?',
   'Esther 2:21-22', 'In those days, while Mordecai was sitting in the king''s gate, two of the king''s eunuchs, Bigthan and Teresh, who were doorkeepers, were angry, and sought to lay hands on the King Ahasuerus. This thing became known to Mordecai...', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "In those days, while Mordecai was sitting in the king''s gate, two of the king''s eunuchs, ___ and Teresh, who were doorkeepers, were angry, and sought to lay hands on the King Ahasuerus. This thing became known to Mordecai...", "answer": "Bigthan"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what did they cast before Haman to choose a date, per Esther 3:7?',
   'Esther 3:7', 'In the first month, which is the month Nisan, in the twelfth year of King Ahasuerus, they cast Pur, that is, the lot, before Haman from day to day, and from month to month, and chose the twelfth month, which is the month Adar.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "In the first month, which is the month Nisan, in the twelfth year of King Ahasuerus, they cast ___, that is, the lot, before Haman from day to day, and from month to month, and chose the twelfth month, which is the month Adar.", "answer": "Pur"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word from Mordecai''s warning to Esther, per Esther 4:14.',
   'Esther 4:14', 'For if you remain silent now, then relief and deliverance will come to the Jews from another place, but you and your father''s house will perish. Who knows if you haven''t come to the kingdom for such a time as this?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For if you remain silent now, then relief and deliverance will come to the Jews from ___ place, but you and your father''s house will perish. Who knows if you haven''t come to the kingdom for such a time as this?", "answer": "another"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing number: how many cubits high did Zeresh suggest the gallows be, per Esther 5:14?',
   'Esther 5:14', 'Then Zeresh his wife and all his friends said to him, ''Let a gallows be made fifty cubits high, and in the morning speak to the king about hanging Mordecai on it...''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Then Zeresh his wife and all his friends said to him, ''Let a gallows be made ___ cubits high, and in the morning speak to the king about hanging Mordecai on it...''", "answer": "fifty"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what couldn''t the king do on that pivotal night, per Esther 6:1?',
   'Esther 6:1', 'On that night, the king couldn''t sleep. He commanded the book of records of the chronicles to be brought, and they were read to the king.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "On that night, the king couldn''t ___. He commanded the book of records of the chronicles to be brought, and they were read to the king.", "answer": "sleep"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what could not be done to a decree sealed with the king''s ring, per Esther 8:8?',
   'Esther 8:8', '...for the writing which is written in the king''s name, and sealed with the king''s ring, may not be reversed by any man.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...for the writing which is written in the king''s name, and sealed with the king''s ring, may not be ___ by any man.", "answer": "reversed"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: to whom were gifts sent during Purim, per Esther 9:22?',
   'Esther 9:22', '...that they should make them days of feasting and gladness, and of sending presents of food to one another, and gifts to the needy.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...that they should make them days of feasting and gladness, and of sending presents of food to one another, and gifts to the ___.", "answer": "needy"}', true, 8),
  ((select id from w), 'sequence', 'Put these events of Esther''s story in the order they occur in the text.',
   'Esther 1; 2; 2:21-23; 3; 4; 5-6; 7; 8; 9', 'Esther 1; Esther 2; Esther 2:21-23; Esther 3; Esther 4; Esther 5-6; Esther 7; Esther 8; Esther 9', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["Vashti deposed, opening the queenship", "Esther made queen", "Mordecai uncovers the eunuchs'' plot against the king", "Haman''s decree against the Jews", "Esther fasts and resolves to approach the king", "Esther''s banquets; Mordecai is honored instead of hanged", "Haman exposed and hanged on his own gallows", "the counter-decree", "the Jews prevail and Purim is established"], "correct_order": [0, 1, 2, 3, 4, 5, 6, 7, 8]}', true, 9),
  ((select id from w), 'sequence', 'Put these three quotations in the order they occur in the text.',
   'Esther 2:20; 6:10; 9:26', 'Esther 2:20; Esther 6:10; Esther 9:26', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["“Esther had not yet made known her relatives nor her people, as Mordecai had commanded her...” — Esther 2:20", "“...do this for Mordecai the Jew, who sits at the king''s gate.” — Esther 6:10", "“Therefore they called these days ''Purim,'' from the word ''Pur.''” — Esther 9:26"], "correct_order": [0, 1, 2]}', true, 10);

with w as (select id from public.world where book_slug = 'job')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'What was the name of the land where Job lived?',
   'Job 1:1', 'There was a man in the land of Uz, whose name was Job.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Uz", "Canaan", "Egypt", "Babylon"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'In God''s speech, which star cluster does God ask Job if he can bind together?',
   'Job 38:31', '''Can you bind the cluster of the Pleiades, or loosen the cords of Orion?''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the Pleiades", "Orion", "the Bear", "the sun"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'What did Yahweh say about Job?',
   'Job 1:8', 'Yahweh said to Satan, ''Have you considered my servant, Job? For there is no one like him in the earth, a blameless and an upright man, one who fears God, and turns away from evil.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["there is no one like him in the earth, blameless and upright", "he is wealthy but wicked", "he doubts God", "he is like all other men"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'Who suggested that Job renounce God and die?',
   'Job 2:9', 'Then his wife said to him, ''Do you still maintain your integrity? Renounce God, and die.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["his wife", "Eliphaz", "Satan", "Elihu"], "correct_index": 0}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what did Job repent in, per Job 42:6?',
   'Job 42:6', 'Therefore I abhor myself, and repent in dust and ashes.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Therefore I abhor myself, and repent in dust and ___.", "answer": "ashes"}', false, 5),
  ((select id from w), 'multiple_choice', 'In God''s speech from the whirlwind, what does God ask Job about first?',
   'Job 38:4', '''Where were you when I laid the foundations of the earth?''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the foundations of the earth", "the number of Job''s sins", "the names of Job''s friends", "the location of Uz"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'In God''s speech, which animal does God describe as having a ''quivering mane'' and being unafraid in battle?',
   'Job 39:19', '''Have you given the horse might? Have you clothed his neck with a quivering mane?''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the horse", "the eagle", "the lion", "the ox"], "correct_index": 0}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: what does Job say he knows lives, per Job 19:25?',
   'Job 19:25', 'But as for me, I know that my Redeemer lives. In the end, he will stand upon the earth.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "But as for me, I know that my ___ lives. In the end, he will stand upon the earth.", "answer": "Redeemer"}', true, 8),
  ((select id from w), 'sequence', 'Put these events of Job''s story in the order they occur in the text.',
   'Job 1:1-3; 1:13-22; 2:7-10; 38:1-7; 42:10-17', 'Job 1:1-3; Job 1:13-22; Job 2:7-10; Job 38:1-7; Job 42:10-17', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Job prosperous and blameless", "loses everything in one day", "afflicted with sores, refuses to curse God", "God speaks to Job from the whirlwind", "Job restored twofold"], "correct_order": [0, 1, 2, 3, 4]}', true, 9),
  ((select id from w), 'multiple_choice', 'What happened to Job''s fortune after he prayed for his friends?',
   'Job 42:10', 'Yahweh restored Job''s prosperity when he prayed for his friends. Yahweh gave Job twice as much as he had before.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Yahweh restored it, giving him twice as much as before", "it stayed the same", "it was given to his friends", "he lost even more"], "correct_index": 0}', true, 10);

with w as (select id from public.world where book_slug = 'job')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word: how does Job 1:1 describe Job''s character, alongside ''upright''?',
   'Job 1:1', 'There was a man in the land of Uz, whose name was Job. That man was blameless and upright, and one who feared God, and turned away from evil.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "There was a man in the land of Uz, whose name was Job. That man was ___ and upright, and one who feared God, and turned away from evil.", "answer": "blameless"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word from Satan''s question to Yahweh, per Job 1:9-10.',
   'Job 1:9-10', 'Then Satan answered Yahweh, and said, ''Does Job fear God for nothing?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Then Satan answered Yahweh, and said, ''Does Job fear God for ___?''", "answer": "nothing"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: how does Job 1:21 conclude Job''s response to his losses?',
   'Job 1:21', 'Naked I came out of my mother''s womb, and naked will I return there. Yahweh gave, and Yahweh has taken away.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Naked I came out of my mother''s womb, and naked will I return there. Yahweh gave, and Yahweh has taken ___.", "answer": "away"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: to where on Job''s body did the sores extend, per Job 2:7?',
   'Job 2:7', 'So Satan went out from the presence of Yahweh, and struck Job with painful sores from the sole of his foot to his head.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "So Satan went out from the presence of Yahweh, and struck Job with painful sores from the sole of his foot to his ___.", "answer": "head"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what does God ask if Job knows about the heavens, per Job 38:33?',
   'Job 38:33', '''Do you know the laws of the heavens?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''Do you know the ___ of the heavens?''", "answer": "laws"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what does the warhorse smell and hear from afar, per Job 39:25?',
   'Job 39:25', '...He smells the battle afar off, the thunder of the captains, and the shouting.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...He smells the battle afar off, the thunder of the captains, and the ___.", "answer": "shouting"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word from Job''s quotation of God''s question back to him, per Job 42:3.',
   'Job 42:3', 'You asked, ''Who is this who hides counsel without knowledge?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "You asked, ''Who is this who hides counsel without ___?''", "answer": "knowledge"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: in what will Job see God, per Job 19:26?',
   'Job 19:26', 'After my skin is destroyed, then I will see God in my flesh.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "After my skin is destroyed, then I will see God in my ___.", "answer": "flesh"}', true, 8),
  ((select id from w), 'sequence', 'Put these events of Job''s story in the order they occur in the text.',
   'Job 1:1-3; 1:6-12; 1:13-22; 2:7-10; 38:1-7; 38:16-18, 38:31-33, 39:19-25; 42:1-6; 42:7-17', 'Job 1:1-3; Job 1:6-12; Job 1:13-22; Job 2:7-10; Job 38:1-7; Job 38:16-18, 38:31-33, 39:19-25; Job 42:1-6; Job 42:7-17', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["Job blameless and prosperous", "the heavenly court; Satan questions Job''s righteousness", "Job loses everything in a single day", "afflicted with sores, refuses to curse God", "God answers Job from the whirlwind about the foundations of the earth", "God''s speech continues through the sea, the cosmos, and the warhorse", "Job answers briefly and repents in dust and ashes", "Yahweh rebukes the friends and restores Job twofold"], "correct_order": [0, 1, 2, 3, 4, 5, 6, 7]}', true, 9),
  ((select id from w), 'sequence', 'Put these three quotations in the order they occur in the text.',
   'Job 1:12; 38:4; 42:6', 'Job 1:12; Job 38:4; Job 42:6', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["“Only on himself don''t stretch out your hand.” — Job 1:12", "“Where were you when I laid the foundations of the earth?” — Job 38:4", "“I abhor myself, and repent in dust and ashes.” — Job 42:6"], "correct_order": [0, 1, 2]}', true, 10);
