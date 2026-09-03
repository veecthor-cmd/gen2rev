-- Gen2Rev challenge ingest: Ezra (World 15) and Nehemiah (World 16) -- EASY and HARD tiers
-- Generated from docs/content/ezra-easy.md, docs/content/ezra-hard.md,
--   docs/content/nehemiah-easy.md, docs/content/nehemiah-hard.md
-- All four briefs: theological review approved-with-changes (Nehemiah-hard: approved), independent
--   verbatim-text QA pass complete -- docs/CONTENT_REVIEW_LOG.md rows 15e/15h/16e/16h,
--   docs/QA_SIGNOFF.md same rows; docs/reviews/ezra-easy-review.md, docs/reviews/ezra-hard-review.md,
--   docs/reviews/nehemiah-easy-review.md, docs/reviews/nehemiah-hard-review.md.
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/ezra-nehemiah-esther.sql are untouched by this file.
--
-- Structural rules carried forward from the medium briefs and reaffirmed by the easy/hard briefs:
--   Ezra: 9:1-2, 10:3, 10:10-12, and 10:44 remain permanently excluded from challenge-ready content
--     at every tier (Kachi Okere, 2026-08-25).
--   Nehemiah: 13:23-27 (and its 13:25 violent clause specifically) stays excluded from both
--     challenge-ready content and the Scene 5 description at every tier; Nehemiah 9:4-37's
--     historical-review prayer stays unselected at every tier.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).
--   Boss items 9-10 in each (book, tier) pair are exact reuses of the already-reviewed medium-tier
--     difficulty-ladder content (Level 3 sequence + Level 4 quotation-match for easy tiers, Level 3
--     sequence + Level 5 multiple-choice for hard tiers), per the pattern established in
--     docs/content/genesis-easy.md -- deliberately, to keep the boss battle's most dramatic beats
--     consistent across tiers and keep new-verse review scope tight.

with w as (select id from public.world where book_slug = 'ezra')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== EZRA — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Ezra 1:3, what does the verse say about Yahweh, the God of Israel, in the parentheses?',
   'Ezra 1:3', 'Whoever there is among you of all his people, may his God be with him, and let him go up to Jerusalem, which is in Judah, and build the house of Yahweh, the God of Israel (he is God), which is in Jerusalem.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["he is God", "he is merciful", "he is one", "he is holy"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Ezra 1:7, who had originally taken the temple vessels out of Jerusalem?',
   'Ezra 1:7', 'Also Cyrus the king brought out the vessels of Yahweh''s house, which Nebuchadnezzar had brought out of Jerusalem, and had put in the house of his gods;', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Nebuchadnezzar", "Cyrus", "Darius", "Sheshbazzar"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Ezra 3:4, which feast did the returned exiles keep after rebuilding the altar?',
   'Ezra 3:4', 'They kept the feast of booths, as it is written, and offered the daily burnt offerings by number, according to the ordinance, as the duty of every day required;', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the feast of booths", "Passover", "the feast of weeks", "the Day of Atonement"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Ezra 3:3, what were the returned exiles afraid of?',
   'Ezra 3:3', 'In spite of their fear because of the peoples of the surrounding lands, they set the altar on its base; and they offered burnt offerings on it to Yahweh, even burnt offerings morning and evening.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the peoples of the surrounding lands", "Persian soldiers", "wild animals", "a famine"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Ezra 6:16, how did the people keep the dedication of the finished temple?',
   'Ezra 6:16', 'The children of Israel, the priests, the Levites, and the rest of the children of the captivity, kept the dedication of this house of God with joy.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["with joy", "with mourning", "in complete silence", "only with fasting"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Ezra 7:6, what was Ezra known as?',
   'Ezra 7:6', '...this Ezra went up from Babylon. He was a skilled scribe in the law of Moses, which Yahweh, the God of Israel, had given; and the king granted him all his request, according to Yahweh his God''s hand on him.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a skilled scribe in the law of Moses", "a mighty warrior", "the king''s cupbearer", "a builder of walls"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Ezra 9:3, what did Ezra do when he heard of the people''s unfaithfulness?',
   'Ezra 9:3', 'When I heard this thing, I tore my garment and my robe, and pulled the hair out of my head and of my beard, and sat down confounded.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["he tore his garment and pulled out his hair", "he celebrated with a feast", "he left Jerusalem immediately", "he wrote a letter to the king"], "correct_index": 0}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: according to Ezra 7:9, where did Ezra arrive on the first day of the fifth month?',
   'Ezra 7:9', 'on the first day of the first month he began to go up from Babylon; and on the first day of the fifth month he came to Jerusalem.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "on the first day of the first month he began to go up from Babylon; and on the first day of the fifth month he came to ___.", "answer": "Jerusalem"}', true, 8),
  ((select id from w), 'sequence', 'Put these events of the temple''s rebuilding in the order they occur in the text.',
   'Ezra 3:3; 3:11-13; 4-6; 6:14-16', 'Ezra 3:3; Ezra 3:11-13; Ezra 4-6; Ezra 6:14-16', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The altar is rebuilt in spite of fear of the surrounding peoples", "The temple''s foundation is laid with singing and shouting, joy and weeping mixed together", "Opposition halts the work for years, until Haggai and Zechariah spur the people to resume", "The temple is finished and dedicated with joy"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'sequence', 'Put these three quotations in the order they occur in the text.',
   'Ezra 1:3; 3:11; 7:10', 'Ezra 1:3; Ezra 3:11; Ezra 7:10', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["“...let him go up to Jerusalem, which is in Judah, and build the house of Yahweh...” — Cyrus''s decree (Ezra 1:3)", "“For he is good, for his loving kindness endures forever toward Israel.” — sung as the temple''s foundation was laid (Ezra 3:11)", "“For Ezra had set his heart to seek Yahweh''s law, and to do it, and to teach statutes and ordinances in Israel.” (Ezra 7:10)"], "correct_order": [0, 1, 2]}', true, 10),

  -- ===================== EZRA — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word from Cyrus''s proclamation in Ezra 1:2.',
   'Ezra 1:2', 'Cyrus king of Persia says, ''Yahweh, the God of heaven, has given me all the kingdoms of the earth; and he has commanded me to build him a house in Jerusalem, which is in Judah.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Cyrus king of Persia says, ''Yahweh, the God of heaven, has given me all the kingdoms of the ___; and he has commanded me to build him a house in Jerusalem, which is in Judah.", "answer": "earth"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing number from the inventory of temple vessels, per Ezra 1:9.',
   'Ezra 1:9', 'This is the number of them: thirty platters of gold, one thousand platters of silver, twenty-nine knives,', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "This is the number of them: ___ platters of gold, one thousand platters of silver, twenty-nine knives,", "answer": "thirty"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing name from Ezra 3:8''s account of who resumed the temple work.',
   'Ezra 3:8', 'Now in the second year of their coming to God''s house at Jerusalem, in the second month, Zerubbabel the son of Shealtiel, Jeshua the son of Jozadak, and the rest of their brothers the priests and the Levites... began the work...', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Now in the second year of their coming to God''s house at Jerusalem, in the second month, Zerubbabel the son of ___, Jeshua the son of Jozadak,", "answer": "Shealtiel"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing number from the temple''s specified dimensions, per Ezra 6:3.',
   'Ezra 6:3', '...Concerning God''s house at Jerusalem, let the house be built, the place where they offer sacrifices, and let its foundations be strongly laid, with its height sixty cubits and its width sixty cubits;', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...Concerning God''s house at Jerusalem, let the house be built, the place where they offer sacrifices, and let its foundations be strongly laid, with its height sixty cubits and its width ___ cubits;", "answer": "sixty"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing name from Ezra 6:22''s description of the Persian king.',
   'Ezra 6:22', '...and kept the feast of unleavened bread seven days with joy; because Yahweh had made them joyful, and had turned the heart of the king of Assyria to them, to strengthen their hands in the work of God, the God of Israel''s house.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and kept the feast of unleavened bread seven days with joy; because Yahweh had made them joyful, and had turned the heart of the king of ___ to them, to strengthen their hands in the work of God, the God of Israel''s house.", "answer": "Assyria"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word from Artaxerxes'' decree in Ezra 7:21.',
   'Ezra 7:21', 'I, even I, Artaxerxes the king, make a decree to all the treasurers who are beyond the River, that whatever Ezra the priest, the scribe of the law of the God of heaven, requires of you, it shall be done with all diligence,', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I, even I, Artaxerxes the king, make a decree to all the treasurers who are beyond the ___, that whatever Ezra the priest, the scribe of the law of the God of heaven, requires of you, it shall be done with all diligence,", "answer": "River"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word from the blessing of Ezra 7:27.',
   'Ezra 7:27', 'Blessed be Yahweh, the God of our fathers, who has put such a thing as this in the king''s heart, to beautify Yahweh''s house which is in Jerusalem;', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Blessed be Yahweh, the God of our fathers, who has put such a thing as this in the king''s ___, to beautify Yahweh''s house which is in Jerusalem;", "answer": "heart"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Ezra''s prayer of confession, per Ezra 9:6.',
   'Ezra 9:6', 'My God, I am ashamed and blush to lift up my face to you, my God, for our iniquities have increased over our head, and our guiltiness has grown up to the heavens.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "My God, I am ashamed and blush to lift up my face to you, my God, for our iniquities have increased over our ___, and our guiltiness has grown up to the heavens.", "answer": "head"}', true, 8),
  ((select id from w), 'sequence', 'Put these events of the temple''s rebuilding in the order they occur in the text.',
   'Ezra 3:3; 3:11-13; 4-6; 6:14-16', 'Ezra 3:3; Ezra 3:11-13; Ezra 4-6; Ezra 6:14-16', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["The altar is rebuilt in spite of fear of the surrounding peoples", "The temple''s foundation is laid with singing and shouting, joy and weeping mixed together", "Opposition halts the work for years, until Haggai and Zechariah spur the people to resume", "The temple is finished and dedicated with joy"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'multiple_choice', 'According to Ezra 3:13, why couldn''t the people tell the shout of joy from the sound of weeping?',
   'Ezra 3:13', '...so that the people could not discern the noise of the shout of joy from the noise of the weeping of the people; for the people shouted with a loud shout, and the noise was heard far away.', 'WEB', 5, 'hard',
   '{"type": "multiple_choice", "options": ["Both sounds were loud and mixed together as the foundation was laid", "The weeping stopped before the shouting began", "Only the priests were allowed to make noise", "The text does not say"], "correct_index": 0}', true, 10)
;

with w as (select id from public.world where book_slug = 'nehemiah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== NEHEMIAH — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Nehemiah 1:3, what had happened to Jerusalem''s wall and gates?',
   'Nehemiah 1:3', 'The remnant who are left of the captivity there in the province are in great affliction and reproach. The wall of Jerusalem is also broken down, and its gates are burned with fire.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["the wall was broken down and the gates burned with fire", "the wall was rebuilt and the gates repaired", "the wall was never built", "the gates were opened to all nations"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Nehemiah 2:5, what did Nehemiah ask the king to let him do?',
   'Nehemiah 2:5', 'I said to the king, ''If it pleases the king, and if your servant has found favor in your sight, I ask that you would send me to Judah, to the city of my fathers'' tombs, that I may build it.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["go to Judah to rebuild the city of his fathers'' tombs", "stay in Susa as cupbearer", "build a new palace", "lead the king''s army"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Nehemiah 2:18, what did the people say after hearing about God''s good hand on Nehemiah?',
   'Nehemiah 2:18', 'I told them about the hand of my God which was good on me, and also about the king''s words that he had spoken to me. They said, ''Let''s rise up and build.'' So they strengthened their hands for the good work.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Let''s rise up and build", "We refuse to help", "Let''s ask the king first", "We are too afraid"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Nehemiah 4:17, how did the builders work?',
   'Nehemiah 4:17', 'Those who built the wall, and those who bore burdens loaded themselves; everyone with one of his hands did the work, and with the other held his weapon.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["with one hand doing the work and the other holding a weapon", "only at night", "without any tools", "in complete silence"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Nehemiah 8:10, what were the people told to do since the day was holy?',
   'Nehemiah 8:10', 'Then he said to them, ''Go your way. Eat the fat, drink the sweet, and send portions to him for whom nothing is prepared, for today is holy to our Lord. Don''t be grieved, for the joy of Yahweh is your strength.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["eat the fat, drink the sweet, and send portions to those with nothing prepared", "fast completely", "weep and mourn", "work extra hard"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Nehemiah 8:17, how long had it been since the Feast of Booths was kept so fully?',
   'Nehemiah 8:17', 'All the assembly of those who had come back out of the captivity made temporary shelters and lived in the temporary shelters, for since the days of Joshua the son of Nun to that day the children of Israel had not done so. There was very great gladness.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["since the days of Joshua son of Nun", "since the days of Moses", "since the days of David", "never before at all"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Nehemiah 13:19, what did Nehemiah command to protect the Sabbath?',
   'Nehemiah 13:19', 'It came to pass that when the gates of Jerusalem began to be dark before the Sabbath, I commanded that the doors should be shut, and commanded that they should not be opened until after the Sabbath...', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["that the city gates be shut before the Sabbath began", "that the markets stay open longer", "that the priests leave the city", "that the wall be torn down"], "correct_index": 0}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: according to Nehemiah 9:38, what did the people do with the covenant besides making it?',
   'Nehemiah 9:38', 'Yet for all this, we make a sure covenant, and write it; and our princes, our Levites, and our priests, seal it.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Yet for all this, we make a sure covenant, and ___ it; and our princes, our Levites, and our priests, seal it.", "answer": "write"}', true, 8),
  ((select id from w), 'sequence', 'Put these events of the wall''s rebuilding in the order they occur in the text.',
   'Nehemiah 1:4; 2:5; 4:17; 6:15', 'Nehemiah 1:4; Nehemiah 2:5; Nehemiah 4:17; Nehemiah 6:15', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Nehemiah hears the news of Jerusalem''s broken wall and mourns", "Nehemiah asks the king''s permission to go rebuild", "The people rebuild the wall while holding a weapon in one hand", "The wall is finished in fifty-two days"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'sequence', 'Put these three quotations in the order they occur in the text.',
   'Nehemiah 1:3; 2:5; 6:16', 'Nehemiah 1:3; Nehemiah 2:5; Nehemiah 6:16', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["“The wall of Jerusalem is also broken down, and its gates are burned with fire.” — Nehemiah 1:3", "“...I ask that you would send me to Judah, to the city of my fathers'' tombs, that I may build it.” — Nehemiah 2:5", "“...for they perceived that this work was done by our God.” — Nehemiah 6:16"], "correct_order": [0, 1, 2]}', true, 10),

  -- ===================== NEHEMIAH — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing month name from the opening of Nehemiah 1:1.',
   'Nehemiah 1:1', 'The words of Nehemiah the son of Hacaliah. Now in the month Chislev, in the twentieth year, as I was in Susa the palace,', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "The words of Nehemiah the son of Hacaliah. Now in the month ___, in the twentieth year, as I was in Susa the palace,", "answer": "Chislev"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing title: according to Nehemiah 1:11, what was Nehemiah''s role to the king?',
   'Nehemiah 1:11', '...and grant him mercy in the sight of this man.'' Now I was cup bearer to the king.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and grant him mercy in the sight of this man.'' Now I was ___ to the king.", "answer": "cup bearer"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing month name from Nehemiah 2:1.',
   'Nehemiah 2:1', 'In the month Nisan, in the twentieth year of Artaxerxes the king, when wine was before him, I picked up the wine, and gave it to the king. Now I had not been sad before in his presence.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "In the month ___, in the twentieth year of Artaxerxes the king, when wine was before him, I picked up the wine, and gave it to the king. Now I had not been sad before in his presence.", "answer": "Nisan"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word from Nehemiah 4:6, about the people''s motivation.',
   'Nehemiah 4:6', 'So we built the wall; and all the wall was joined together to half its height, for the people had a mind to work.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "So we built the wall; and all the wall was joined together to half its height, for the people had a mind to ___.", "answer": "work"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing month name: in which month was the wall finished, per Nehemiah 6:15?',
   'Nehemiah 6:15', 'So the wall was finished in the twenty-fifth day of Elul, in fifty-two days.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "So the wall was finished in the twenty-fifth day of ___, in fifty-two days.", "answer": "Elul"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing name: who stood at Ezra''s right hand first, per Nehemiah 8:4?',
   'Nehemiah 8:4', 'Ezra the scribe stood on a pulpit of wood, which they had made for the purpose; and beside him stood Mattithiah, Shema, Anaiah, Uriah, Hilkiah, and Maaseiah, on his right hand...', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Ezra the scribe stood on a pulpit of wood, which they had made for the purpose; and beside him stood ___, Shema, Anaiah, Uriah, Hilkiah, and Maaseiah, on his right hand...", "answer": "Mattithiah"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: from whom did the offspring of Israel separate themselves, per Nehemiah 9:2?',
   'Nehemiah 9:2', 'The offspring of Israel separated themselves from all foreigners and stood and confessed their sins and the iniquities of their fathers.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "The offspring of Israel separated themselves from all ___ and stood and confessed their sins and the iniquities of their fathers.", "answer": "foreigners"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: what day did Nehemiah command the Levites to sanctify, per Nehemiah 13:22?',
   'Nehemiah 13:22', 'I commanded the Levites that they should purify themselves, and that they should come and keep the gates, to sanctify the Sabbath day...', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I commanded the Levites that they should purify themselves, and that they should come and keep the gates, to sanctify the ___ day...", "answer": "Sabbath"}', true, 8),
  ((select id from w), 'sequence', 'Put these events of the wall''s rebuilding in the order they occur in the text.',
   'Nehemiah 1:4; 2:5; 4:17; 6:15', 'Nehemiah 1:4; Nehemiah 2:5; Nehemiah 4:17; Nehemiah 6:15', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["Nehemiah hears the news of Jerusalem''s broken wall and mourns", "Nehemiah asks the king''s permission to go rebuild", "The people rebuild the wall while holding a weapon in one hand", "The wall is finished in fifty-two days"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'multiple_choice', 'According to Nehemiah 8:9-10, why did Nehemiah and Ezra tell the people not to weep?',
   'Nehemiah 8:9-10', '''Today is holy to Yahweh your God. Don''t mourn, nor weep.'' ... ''Don''t be grieved, for the joy of Yahweh is your strength.''', 'WEB', 5, 'hard',
   '{"type": "multiple_choice", "options": ["The day was holy, and the joy of Yahweh was their strength", "The wall was not yet finished", "Ezra had not read the whole Law yet", "The king had ordered a celebration"], "correct_index": 0}', true, 10)
;
