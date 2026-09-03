-- Gen2Rev challenge ingest: Jeremiah (World 24) and Lamentations (World 25) -- EASY and HARD tiers
-- Generated from docs/content/jeremiah-easy.md, docs/content/jeremiah-hard.md,
--   docs/content/lamentations-easy.md, docs/content/lamentations-hard.md
-- All four briefs: theological review approved-with-changes, independent verbatim-text QA pass
--   (docs/CONTENT_REVIEW_LOG.md rows 24e/24h/25e/25h, docs/QA_SIGNOFF.md same rows).
-- Medium-tier rows (no difficulty_tier column, i.e. legacy medium-only rows) already in the DB from
--   docs/ingest/jeremiah-lamentations.sql are untouched by this file.
--
-- Structural rules carried forward from the medium brief and reaffirmed/extended by the easy/hard
-- briefs:
--   Jeremiah: Jeremiah 1:5 and Jeremiah 31:31-34 are recall/fill-in-blank only, never multiple
--     choice, in every tier; Jeremiah 39:6-7 (Zedekiah's sons killed, his eyes put out) excluded
--     entirely in every tier; no item references the New Testament temple-cleansing quotation of
--     Jeremiah 7, or claims later fulfillment/present-day applicability for the New Covenant
--     promise; the cistern imprisonment (Jer 37-38) grades only who rescued Jeremiah and that he
--     did so, never the mud or the threat of death directly.
--   Lamentations: Lamentations 3:1-17, Lamentations 5:22, and Lamentations 2:20 / 4:10
--     (cannibalism-during-siege material) excluded entirely in every tier.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).

with w as (select id from public.world where book_slug = 'jeremiah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== JEREMIAH — EASY TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word: what did Yahweh appoint Jeremiah to be, to the nations?',
   'Jeremiah 1:5', 'Before I formed you in the womb, I knew you. Before you were born, I sanctified you. I have appointed you a prophet to the nations.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Before I formed you in the womb, I knew you. Before you were born, I sanctified you. I have appointed you a prophet to the ___.", "answer": "nations"}', false, 1),
  ((select id from w), 'multiple_choice', 'What excuse did Jeremiah give when Yahweh first called him?',
   'Jeremiah 1:6', 'Then I said, ''Ah, Lord Yahweh! Behold, I don''t know how to speak; for I am a child.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["I am a child", "I am unworthy", "I am blind", "I am sick"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'What repeated phrase did Jeremiah say the people were wrongly trusting in?',
   'Jeremiah 7:3-4', '''Amend your ways and your doings, and I will cause you to dwell in this place. Don''t trust in lying words, saying, "Yahweh''s temple, Yahweh''s temple, Yahweh''s temple, are these."''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Yahweh''s temple, Yahweh''s temple, Yahweh''s temple", "Peace, peace", "The day of Yahweh, the day of Yahweh", "Holy, holy, holy"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'What did Yahweh compare the house of Israel to, at the potter''s house?',
   'Jeremiah 18:6', '''House of Israel, can''t I do with you as this potter?'' says Yahweh. ''Behold, as the clay in the potter''s hand, so are you in my hand, house of Israel.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Clay in a potter''s hand", "Sheep without a shepherd", "A vine without a vinedresser", "Gold refined by fire"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'What did the prophet Hananiah do to the yoke-bar on Jeremiah''s neck?',
   'Jeremiah 28:10-11', 'Then Hananiah the prophet took the bar from off the prophet Jeremiah''s neck, and broke it.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Broke it off", "Put it on himself", "Burned it", "Buried it"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'Who did the king command to rescue Jeremiah from the dungeon?',
   'Jeremiah 38:10', 'Then the king commanded Ebedmelech the Ethiopian, saying, ''Take from here thirty men with you, and take up Jeremiah the prophet out of the dungeon, before he dies.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Ebedmelech the Ethiopian", "Baruch the scribe", "Nebuzaradan the captain of the guard", "Zedekiah the king himself"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'In whose reign as king of Judah was Jerusalem''s wall finally breached by Babylon?',
   'Jeremiah 39:1-2', 'In the ninth year of Zedekiah king of Judah, in the tenth month, Nebuchadnezzar king of Babylon and all his army came against Jerusalem, and besieged it. In the eleventh year of Zedekiah, in the fourth month, the ninth day of the month, a breach was made in the city.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Zedekiah", "Josiah", "Jehoiakim", "Hezekiah"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'What did Nebuchadnezzar personally command concerning Jeremiah?',
   'Jeremiah 39:11-12', 'Now Nebuchadnezzar king of Babylon commanded Nebuzaradan the captain of the guard concerning Jeremiah, saying, ''Take him and take care of him. Do him no harm; but do to him even as he tells you.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Take care of him and do him no harm", "Send him into exile with the other captives", "Put him in prison", "Have him killed"], "correct_index": 0}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word from the New Covenant promise: where will Yahweh write his law?',
   'Jeremiah 31:33', '''But this is the covenant that I will make with the house of Israel after those days,'' says Yahweh: ''I will put my law in their inward parts, and I will write it in their heart. I will be their God, and they shall be my people.''', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "''But this is the covenant that I will make with the house of Israel after those days,'' says Yahweh: ''I will put my law in their inward parts, and I will write it in their ___. I will be their God, and they shall be my people.''", "answer": "heart"}', false, 9),
  ((select id from w), 'sequence', 'Put these scenes of Jeremiah''s life in the order they occur in the text.',
   'Jeremiah 1; 7; 18; 28; 37-38; 39', 'The Call of Jeremiah; The Temple Sermon; The Potter''s House; Jeremiah and Hananiah; Jeremiah imprisoned in the cistern; The Fall of Jerusalem.', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The Call of Jeremiah (Jer 1)", "The Temple Sermon (Jer 7)", "The Potter''s House (Jer 18)", "Jeremiah and Hananiah (Jer 28)", "Jeremiah imprisoned in the cistern (Jer 37-38)", "The Fall of Jerusalem (Jer 39)"], "correct_order": [0, 1, 2, 3, 4, 5]}', true, 10),
  ((select id from w), 'sequence', 'Put these quotations in the order they occur in the text, matching each to its reference.',
   'Jeremiah 1:9-10; 18:6; 28:9', 'Then Yahweh said to me, ''Behold, I have put my words in your mouth.''; ''Behold, as the clay in the potter''s hand, so are you in my hand, house of Israel.''; ''The prophet who prophesies of peace, when the word of the prophet will happen, then the prophet will be known, that Yahweh has truly sent him.''', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Jer 1:9-10 — ''Behold, I have put my words in your mouth.''", "Jer 18:6 — ''As the clay in the potter''s hand, so are you in my hand, house of Israel.''", "Jer 28:9 — ''The prophet who prophesies of peace... then the prophet will be known, that Yahweh has truly sent him.''"], "correct_order": [0, 1, 2]}', true, 11),
  ((select id from w), 'multiple_choice', 'According to the temple sermon, what earlier place did Yahweh point to as a precedent, where he had already let worship be destroyed?',
   'Jeremiah 7:12', '''But go now to my place which was in Shiloh, where I caused my name to dwell at the first, and see what I did to it for the wickedness of my people Israel.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Shiloh", "Bethel", "Dan", "Gilgal"], "correct_index": 0}', true, 12),

  -- ===================== JEREMIAH — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word: where did Yahweh say he knew Jeremiah, before he was born?',
   'Jeremiah 1:5', 'Before I formed you in the womb, I knew you. Before you were born, I sanctified you. I have appointed you a prophet to the nations.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Before I formed you in the ___, I knew you. Before you were born, I sanctified you. I have appointed you a prophet to the nations.", "answer": "womb"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s promise to make Jeremiah a fortified city against the whole land.',
   'Jeremiah 1:18', '''For behold, I have made you today a fortified city, an iron pillar, and bronze walls against the whole land—against the kings of Judah, against its princes, against its priests, and against the people of the land.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''For behold, I have made you today a fortified city, an iron pillar, and bronze ___ against the whole land—against the kings of Judah, against its princes, against its priests, and against the people of the land.''", "answer": "walls"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what god did the people burn incense to, per the temple sermon''s indictment?',
   'Jeremiah 7:9-11', '''Will you steal, murder, commit adultery, swear falsely, burn incense to Baal, and walk after other gods that you have not known...''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''Will you steal, murder, commit adultery, swear falsely, burn incense to ___, and walk after other gods that you have not known...''", "answer": "Baal"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what earlier place did Yahweh point to as a precedent, where he had already let worship be destroyed?',
   'Jeremiah 7:12', '''But go now to my place which was in Shiloh, where I caused my name to dwell at the first, and see what I did to it for the wickedness of my people Israel.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''But go now to my place which was in ___, where I caused my name to dwell at the first, and see what I did to it for the wickedness of my people Israel.''", "answer": "Shiloh"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what did Yahweh say the house of Israel is, in his hand?',
   'Jeremiah 18:6', '''House of Israel, can''t I do with you as this potter?'' says Yahweh. ''Behold, as the clay in the potter''s hand, so are you in my hand, house of Israel.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''House of Israel, can''t I do with you as this potter?'' says Yahweh. ''Behold, as the clay in the potter''s hand, so are you in my ___, house of Israel.''", "answer": "hand"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: whose son was Hananiah the prophet?',
   'Jeremiah 28:1', 'That same year, in the beginning of the reign of Zedekiah king of Judah, in the fourth year, in the fifth month, Hananiah the son of Azzur, the prophet, who was of Gibeon, spoke to me in Yahweh''s house, in the presence of the priests and of all the people, saying,', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "That same year, in the beginning of the reign of Zedekiah king of Judah, in the fourth year, in the fifth month, Hananiah the son of ___, the prophet, who was of Gibeon, spoke to me in Yahweh''s house, in the presence of the priests and of all the people, saying,", "answer": "Azzur"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: where had Jeremiah been cast, per Ebedmelech''s appeal to the king?',
   'Jeremiah 38:9', '''My lord the king, these men have done evil in all that they have done to Jeremiah the prophet, whom they have cast into the dungeon. He is likely to die in the place where he is, because of the famine; for there is no more bread in the city.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''My lord the king, these men have done evil in all that they have done to Jeremiah the prophet, whom they have cast into the ___. He is likely to die in the place where he is, because of the famine; for there is no more bread in the city.''", "answer": "dungeon"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: whose son was Gedaliah, to whom Jeremiah was committed?',
   'Jeremiah 39:14', '...sent and took Jeremiah out of the court of the guard, and committed him to Gedaliah the son of Ahikam, the son of Shaphan, that he should bring him home. So he lived among the people.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...sent and took Jeremiah out of the court of the guard, and committed him to Gedaliah the son of ___, the son of Shaphan, that he should bring him home. So he lived among the people.", "answer": "Ahikam"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word from the New Covenant promise: from least to what will they all know Yahweh?',
   'Jeremiah 31:34', '''They will no longer each teach his neighbor... for they will all know me, from their least to their greatest,'' says Yahweh, ''for I will forgive their iniquity, and I will remember their sin no more.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''They will no longer each teach his neighbor... for they will all know me, from their least to their ___,'' says Yahweh, ''for I will forgive their iniquity, and I will remember their sin no more.''", "answer": "greatest"}', false, 9),
  ((select id from w), 'sequence', 'Put these beats of Jeremiah''s life in the order they occur in the text.',
   'Jeremiah 1:4-5; 1:6-9; 7:1-15; 18:1-6; 28; 37-38; 39; 31:31-34', 'Yahweh calls Jeremiah before he was formed in the womb; Jeremiah objects that he is a child, Yahweh touches his mouth; Jeremiah confronts the people at the temple gate; Yahweh sends Jeremiah to the potter''s house; Hananiah breaks the yoke-bar and dies within the year; Jeremiah is imprisoned in the cistern and rescued by Ebedmelech; Jerusalem''s wall is breached, Nebuchadnezzar orders Jeremiah protected; Yahweh promises a new covenant written on the heart.', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["Yahweh calls Jeremiah before he was formed in the womb (Jer 1:4-5)", "Jeremiah objects that he is a child; Yahweh touches his mouth (Jer 1:6-9)", "Jeremiah confronts the people at the temple gate (Jer 7:1-15)", "Yahweh sends Jeremiah to the potter''s house (Jer 18:1-6)", "Hananiah breaks the yoke-bar and dies within the year (Jer 28)", "Jeremiah is imprisoned in the cistern and rescued by Ebedmelech (Jer 37-38)", "Jerusalem''s wall is breached; Nebuchadnezzar orders Jeremiah protected (Jer 39)", "Yahweh promises a new covenant written on the heart (Jer 31:31-34)"], "correct_order": [0, 1, 2, 3, 4, 5, 6, 7]}', true, 10),
  ((select id from w), 'sequence', 'Put these quotations in the order they occur in the text, matching each to its reference.',
   'Jeremiah 1:9-10; 18:6; 28:9', 'Then Yahweh said to me, ''Behold, I have put my words in your mouth.''; ''Behold, as the clay in the potter''s hand, so are you in my hand, house of Israel.''; ''The prophet who prophesies of peace, when the word of the prophet will happen, then the prophet will be known, that Yahweh has truly sent him.''', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["Jer 1:9-10 — ''Behold, I have put my words in your mouth.''", "Jer 18:6 — ''As the clay in the potter''s hand, so are you in my hand, house of Israel.''", "Jer 28:9 — ''The prophet who prophesies of peace... then the prophet will be known, that Yahweh has truly sent him.''"], "correct_order": [0, 1, 2]}', true, 11),
  ((select id from w), 'recall', 'Fill in the missing word: what did Yahweh promise Jeremiah he would escape with, in the day of danger?',
   'Jeremiah 39:17-18', '''But I will deliver you in that day,'' says Yahweh; ''and you will not be given into the hand of the men of whom you are afraid. For I will surely save you. You won''t fall by the sword, but you will escape with your life, because you have put your trust in me,'' says Yahweh.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''But I will deliver you in that day,'' says Yahweh; ''and you will not be given into the hand of the men of whom you are afraid. For I will surely save you. You won''t fall by the sword, but you will escape with your ___, because you have put your trust in me,'' says Yahweh.", "answer": "life"}', true, 12)
;

with w as (select id from public.world where book_slug = 'lamentations')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== LAMENTATIONS — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Lamentations 1:1, what has the city become, having once been great among the nations?',
   'Lamentations 1:1', 'How the city sits solitary, that was full of people! She has become as a widow, who was great among the nations! She who was a princess among the provinces has become a slave!', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["A widow", "A queen", "A prisoner", "A beggar"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Lamentations 1:2, what does the city do in the night?',
   'Lamentations 1:2', 'She weeps bitterly in the night. Her tears are on her cheeks.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Weeps bitterly", "Sings mournfully", "Prays silently", "Sleeps peacefully"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'What does the city ask of everyone who passes by, in Lamentations 1:12?',
   'Lamentations 1:12', '''Is it nothing to you, all you who pass by? Look, and see if there is any sorrow like my sorrow, which is brought on me, with which Yahweh has afflicted me in the day of his fierce anger.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Whether any sorrow compares to hers", "For food", "For forgiveness", "For shelter"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Lamentations 3:18, what does the speaker say had perished, at his lowest point?',
   'Lamentations 3:18', 'I said, ''My strength has perished, along with my expectation from Yahweh.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["His strength and his hope in Yahweh", "His family", "His wealth", "His health"], "correct_index": 0}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: Yahweh''s mercies are new every what?',
   'Lamentations 3:21-23', 'This I recall to my mind; therefore I have hope. It is because of Yahweh''s loving kindnesses that we are not consumed, because his mercies don''t fail. They are new every morning. Great is your faithfulness.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "This I recall to my mind; therefore I have hope. It is because of Yahweh''s loving kindnesses that we are not consumed, because his mercies don''t fail. They are new every ___. Great is your faithfulness.", "answer": "morning"}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Lamentations 5:19, how long does Yahweh''s throne last?',
   'Lamentations 5:19', 'You, Yahweh, remain forever. Your throne is from generation to generation.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["From generation to generation", "For one thousand years", "Until the exile ends", "It is not stated in this verse"], "correct_index": 0}', false, 6),
  ((select id from w), 'sequence', 'Put these three pivotal passages in the order they appear in the book.',
   'Lamentations 1; 3; 5', 'The opening lament; the turn to hope; the closing plea.', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The opening lament (ch. 1)", "The turn to hope (ch. 3)", "The closing plea (ch. 5)"], "correct_order": [0, 1, 2]}', true, 7),
  ((select id from w), 'sequence', 'Put these quotations in the order they occur in the text, matching each to its reference.',
   'Lamentations 1:12; 3:22-23; 5:21', '''Is it nothing to you, all you who pass by?''; ''His mercies don''t fail. They are new every morning.''; ''Turn us to yourself, Yahweh, and we will be turned.''', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Lam 1:12 — ''Is it nothing to you, all you who pass by?''", "Lam 3:22-23 — ''His mercies don''t fail. They are new every morning.''", "Lam 5:21 — ''Turn us to yourself, Yahweh, and we will be turned.''"], "correct_order": [0, 1, 2]}', true, 8),
  ((select id from w), 'multiple_choice', 'What does the book''s closing plea ask Yahweh to do?',
   'Lamentations 5:21', '''Turn us to yourself, Yahweh, and we will be turned. Renew our days as of old.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Turn us back to you, and renew our days as of old", "Rebuild the temple immediately", "Send a new prophet", "Destroy Babylon"], "correct_index": 0}', true, 9),

  -- ===================== LAMENTATIONS — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word: what has the princess among the provinces become?',
   'Lamentations 1:1', 'How the city sits solitary, that was full of people! She has become as a widow, who was great among the nations! She who was a princess among the provinces has become a slave!', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "How the city sits solitary, that was full of people! She has become as a widow, who was great among the nations! She who was a princess among the provinces has become a ___!", "answer": "slave"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what does the city have no one to do for her, among all her lovers?',
   'Lamentations 1:2', 'She weeps bitterly in the night. Her tears are on her cheeks. Among all her lovers she has no one to comfort her. All her friends have dealt treacherously with her. They have become her enemies.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "She weeps bitterly in the night. Her tears are on her cheeks. Among all her lovers she has no one to ___ her. All her friends have dealt treacherously with her. They have become her enemies.", "answer": "comfort"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: in the day of his fierce what did Yahweh afflict her?',
   'Lamentations 1:12', '''Is it nothing to you, all you who pass by? Look, and see if there is any sorrow like my sorrow, which is brought on me, with which Yahweh has afflicted me in the day of his fierce anger.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''Is it nothing to you, all you who pass by? Look, and see if there is any sorrow like my sorrow, which is brought on me, with which Yahweh has afflicted me in the day of his fierce ___.''", "answer": "anger"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what bitter plant does the speaker remember, along with his affliction?',
   'Lamentations 3:19-20', 'Remember my affliction and my misery, the wormwood and the bitterness. My soul still remembers them, and is bowed down within me.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Remember my affliction and my misery, the ___ and the bitterness. My soul still remembers them, and is bowed down within me.", "answer": "wormwood"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what does the speaker say his soul will do in Yahweh, since Yahweh is his portion?',
   'Lamentations 3:24', '''Yahweh is my portion,'' says my soul. ''Therefore I will hope in him.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''Yahweh is my portion,'' says my soul. ''Therefore I will ___ in him.''", "answer": "hope"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: forsaken for so long a what?',
   'Lamentations 5:20', 'Why do you forget us forever, and forsake us for so long a time?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Why do you forget us forever, and forsake us for so long a ___?", "answer": "time"}', false, 6),
  ((select id from w), 'sequence', 'Put these beats across all three passages in the order they occur in the text.',
   'Lamentations 1:1; 1:2; 1:12; 3:18; 3:21-23; 3:24; 5:19; 5:20; 5:21', 'The city sits solitary; she weeps bitterly in the night; she asks all who pass by to look at her sorrow; the speaker''s strength and hope have perished; he recalls Yahweh''s mercies and turns to hope; ''Yahweh is my portion,'' he says; Yahweh''s throne remains forever; why have you forgotten us so long?; turn us back to yourself, Yahweh.', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["The city sits solitary (Lam 1:1)", "She weeps bitterly in the night (Lam 1:2)", "She asks all who pass by to look at her sorrow (Lam 1:12)", "The speaker''s strength and hope have perished (Lam 3:18)", "He recalls Yahweh''s mercies and turns to hope (Lam 3:21-23)", "''Yahweh is my portion,'' he says (Lam 3:24)", "Yahweh''s throne remains forever (Lam 5:19)", "Why have you forgotten us so long? (Lam 5:20)", "Turn us back to yourself, Yahweh (Lam 5:21)"], "correct_order": [0, 1, 2, 3, 4, 5, 6, 7, 8]}', true, 7),
  ((select id from w), 'sequence', 'Put these quotations in the order they occur in the text, matching each to its reference.',
   'Lamentations 1:12; 3:22-23; 5:21', '''Is it nothing to you, all you who pass by?''; ''His mercies don''t fail. They are new every morning.''; ''Turn us to yourself, Yahweh, and we will be turned.''', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["Lam 1:12 — ''Is it nothing to you, all you who pass by?''", "Lam 3:22-23 — ''His mercies don''t fail. They are new every morning.''", "Lam 5:21 — ''Turn us to yourself, Yahweh, and we will be turned.''"], "correct_order": [0, 1, 2]}', true, 8),
  ((select id from w), 'recall', 'Fill in the missing word: because of what will we not be consumed?',
   'Lamentations 3:21-23', 'This I recall to my mind; therefore I have hope. It is because of Yahweh''s loving kindnesses that we are not consumed, because his mercies don''t fail. They are new every morning. Great is your faithfulness.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "This I recall to my mind; therefore I have hope. It is because of Yahweh''s loving kindnesses that we are not ___, because his mercies don''t fail. They are new every morning. Great is your faithfulness.", "answer": "consumed"}', true, 9)
;
