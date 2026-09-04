-- Gen2Rev challenge ingest: Zechariah (World 38) and Malachi (World 39) -- EASY and HARD tiers
-- Generated from docs/content/zechariah-easy.md, docs/content/zechariah-hard.md,
--   docs/content/malachi-easy.md, docs/content/malachi-hard.md
-- All four briefs: theological review approved, independent verbatim-text QA pass
--   (docs/CONTENT_REVIEW_LOG.md rows 38e/38h/39e/39h; docs/QA_SIGNOFF.md same rows).
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/zechariah-malachi.sql are untouched by this file.
--
-- FINAL SQL ingest file of the entire 39-book Old Testament difficulty-tier rollout.
--
-- Structural rules carried forward from the medium brief and reaffirmed/extended by the easy/hard
-- briefs:
--   Zechariah: 9:9, 11:12-13, 12:10, 13:7 and chapters 9-14 as a whole, plus 3:8-10/6:12-13
--     ("the Branch"), are permanently excluded at every tier -- scope stays limited to chs. 1-8.
--   Malachi: 1:2-3 and 2:10-16 are permanently excluded at every tier. Malachi 4:4-6 (Elijah's
--     return) is preserved as boss/capstone material at every tier -- the deliberate capstone of
--     the entire 39-book Old Testament arc; the hard tier's closing boss item (4:6) is the literal
--     last verse of the Old Testament in this product's canonical order.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).

with w as (select id from public.world where book_slug = 'zechariah')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== ZECHARIAH — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'What did Yahweh say through Zechariah, calling the people back to him?',
   'Zechariah 1:3', 'Therefore tell them, Yahweh of Armies says: ''Return to me,'' says Yahweh of Armies, ''and I will return to you,'' says Yahweh of Armies.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Return to me, and I will return to you", "Come and see", "Depart from me", "Stay where you are"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'What was Joshua the high priest wearing when he stood before Yahweh''s angel?',
   'Zechariah 3:3', 'Now Joshua was clothed with filthy garments, and was standing before the angel.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Filthy garments", "Rich clothing", "A linen ephod", "Armor"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'What did they set on Joshua''s head after his filthy garments were removed?',
   'Zechariah 3:5', 'I said, ''Let them set a clean turban on his head.'' So they set a clean turban on his head, and clothed him; and Yahweh''s angel was standing by.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["A clean turban", "A crown of gold", "A wreath", "Nothing"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'In the vision, what was the lamp stand made of?',
   'Zechariah 4:2', 'He said to me, ''What do you see?'' I said, ''I have seen, and behold, a lamp stand all of gold, with its bowl on the top of it, and its seven lamps on it; there are seven pipes to each of the lamps which are on the top of it;''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Gold", "Bronze", "Silver", "Clay"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Zechariah 4:6, by what would Zerubbabel accomplish Yahweh''s word?',
   'Zechariah 4:6', 'Then he answered and spoke to me, saying, ''This is Yahweh''s word to Zerubbabel, saying, Not by might, nor by power, but by my Spirit, says Yahweh of Armies.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["By my Spirit", "By might", "By wealth", "By an army"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'What did Zechariah see flying in this vision?',
   'Zechariah 5:2', 'He said to me, ''What do you see?'' I answered, ''I see a flying scroll; its length is twenty cubits, and its width ten cubits.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["A scroll", "A lampstand", "A chariot", "A basket"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'What did Yahweh promise the streets of restored Jerusalem would be full of?',
   'Zechariah 8:5', '''The streets of the city will be full of boys and girls playing in its streets.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Boys and girls playing", "Soldiers marching", "Merchants trading", "Empty silence"], "correct_index": 0}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s command not to oppress the vulnerable.',
   'Zechariah 7:10', 'Don''t oppress the widow, the fatherless, the foreigner, nor the poor; and let none of you devise evil against his brother in your heart.''', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Don''t oppress the widow, the fatherless, the ___, nor the poor; and let none of you devise evil against his brother in your heart.''", "answer": "foreigner"}', true, 8),
  ((select id from w), 'sequence', 'Order Zechariah 3:1-5 as it happens.',
   'Zechariah 3:1-5', 'Joshua stands accused; Yahweh rebukes Satan; the filthy garments are removed; clean garments and a turban are given.', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Joshua the high priest stands before Yahweh''s angel, with Satan standing at his right hand to accuse him (3:1)", "Yahweh rebukes Satan: ''Yahweh rebuke you, Satan!'' (3:2)", "The filthy garments are removed from Joshua (3:4)", "Joshua is clothed with rich clothing and a clean turban is set on his head (3:5)"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'multiple_choice', 'According to Zechariah 8:16-17, what does Yahweh say he hates?',
   'Zechariah 8:16-17', 'These are the things that you shall do: speak every man the truth with his neighbor. Execute the judgment of truth and peace in your gates, and let none of you devise evil in your hearts against his neighbor, and love no false oath; for all these are things that I hate," says Yahweh.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Devising evil against a neighbor, and loving a false oath", "False sacrifices", "Foreign idols", "Broken promises"], "correct_index": 0}', true, 10),

  -- ===================== ZECHARIAH — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word from Zechariah''s opening dating notice.',
   'Zechariah 1:1', 'In the eighth month, in the second year of Darius, Yahweh''s word came to the prophet Zechariah the son of Berechiah, the son of Iddo, saying,', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "In the eighth month, in the second year of ___, Yahweh''s word came to the prophet Zechariah the son of Berechiah, the son of Iddo, saying,", "answer": "Darius"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s question about the fathers and the prophets.',
   'Zechariah 1:5', 'Your fathers, where are they? And the prophets, do they live forever?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Your fathers, where are they? And the ___, do they live forever?", "answer": "prophets"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s rebuke of Satan.',
   'Zechariah 3:2', 'Yahweh said to Satan, ''Yahweh rebuke you, Satan! Yes, Yahweh who has chosen Jerusalem rebuke you! Isn''t this a burning stick plucked out of the fire?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh said to Satan, ''Yahweh rebuke you, Satan! Yes, Yahweh who has chosen ___ rebuke you! Isn''t this a burning stick plucked out of the fire?''", "answer": "Jerusalem"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word from the angel''s words to Joshua after his filthy garments were removed.',
   'Zechariah 3:4', 'He answered and spoke to those who stood before him, saying, ''Take the filthy garments off him.'' To him he said, ''Behold, I have caused your iniquity to pass from you, and I will clothe you with rich clothing.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "To him he said, ''Behold, I have caused your iniquity to pass from you, and I will clothe you with ___ clothing.''", "answer": "rich"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing words from the shout that greets the capstone Zerubbabel brings out.',
   'Zechariah 4:7', 'Who are you, great mountain? Before Zerubbabel you are a plain; and he will bring out the capstone with shouts of Grace, grace, to it!', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Who are you, great mountain? Before Zerubbabel you are a plain; and he will bring out the capstone with shouts of ___, to it!", "answer": "Grace, grace"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word from the curse of the flying scroll.',
   'Zechariah 5:4', '''I will cause it to go out,'' says Yahweh of Armies, ''and it will enter into the house of the thief, and into the house of him who swears falsely by my name; and it will remain in the middle of his house, and will destroy it with its timber and its stones.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''I will cause it to go out,'' says Yahweh of Armies, ''and it will enter into the house of the thief, and into the house of him who swears falsely by my name; and it will remain in the middle of his house, and will destroy it with its timber and its ___.''", "answer": "stones"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s rhetorical question about the remnant.',
   'Zechariah 8:6', 'If it is marvelous in the eyes of the remnant of this people in those days, should it also be marvelous in my eyes?', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "If it is marvelous in the eyes of the remnant of this people in those days, should it also be ___ in my eyes?", "answer": "marvelous"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from the fathers'' repentance after Yahweh''s words overtook them.',
   'Zechariah 1:6', 'But my words and my decrees, which I commanded my servants the prophets, didn''t they overtake your fathers? Then they repented and said, ''Just as Yahweh of Armies determined to do to us, according to our ways and according to our practices, so he has dealt with us.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Then they repented and said, ''Just as Yahweh of Armies determined to do to us, according to our ways and according to our ___, so he has dealt with us.''", "answer": "practices"}', true, 8),
  ((select id from w), 'sequence', 'Put these seven pivotal passages in the order they appear in Zechariah 1-8.',
   'Zechariah 1-8', 'A call to repentance; the vision of Joshua restored; the golden lampstand; the flying scroll; true justice and compassion; the restoration of Jerusalem; speak the truth.', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["A call to repentance: ''Return to me, and I will return to you'' (1:1-6)", "The vision of Joshua the high priest restored from filthy garments to clean ones (3:1-5)", "The golden lampstand: ''Not by might, nor by power, but by my Spirit'' (4:1-7)", "The flying scroll, a curse against thieves and those who swear falsely (5:1-4)", "True justice and compassion for the widow, the fatherless, and the poor (7:8-10)", "The restoration of Jerusalem: streets full of boys and girls playing (8:3-8)", "Speak the truth, love no false oath (8:16-17)"], "correct_order": [0, 1, 2, 3, 4, 5, 6]}', true, 9),
  ((select id from w), 'recall', 'Fill in the missing word from the closing line of the restoration oracle.',
   'Zechariah 8:8', '''I will bring them, and they will dwell within Jerusalem. They will be my people, and I will be their God, in truth and in righteousness.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "They will be my people, and I will be their God, in truth and in ___.''", "answer": "righteousness"}', true, 10)
;

with w as (select id from public.world where book_slug = 'malachi')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== MALACHI — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Malachi 1:7, what did the priests offer on Yahweh''s altar that he calls polluted?',
   'Malachi 1:7', 'You offer polluted bread on my altar. You say, ''How have we polluted you?'' In that you say, ''Yahweh''s table is contemptible.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Bread", "Wine", "Oil", "Incense"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Malachi 1:11, from where to where would Yahweh''s name be great among the nations?',
   'Malachi 1:11', 'For from the rising of the sun even to its going down, my name is great among the nations, and in every place incense will be offered to my name, and a pure offering; for my name is great among the nations," says Yahweh of Armies.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["From the rising of the sun to its going down", "From Jerusalem to Babylon", "From Egypt to Persia", "From the mountains to the sea"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Malachi 3:1, what will Yahweh''s messenger do?',
   'Malachi 3:1', 'Behold, I send my messenger, and he will prepare the way before me! The Lord, whom you seek, will suddenly come to his temple. Behold, the messenger of the covenant, whom you desire, is coming!" says Yahweh of Armies.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Prepare the way before him", "Build the temple", "Gather the exiles", "Write the Law"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Malachi 3:3, who will the coming refiner purify?',
   'Malachi 3:3', 'and he will sit as a refiner and purifier of silver, and he will purify the sons of Levi, and refine them as gold and silver; and they shall offer to Yahweh offerings in righteousness.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The sons of Levi", "The sons of Judah", "All the nations", "The elders of Israel"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Malachi 3:9, who did Yahweh say was robbing him?',
   'Malachi 3:9', 'You are cursed with the curse; for you rob me, even this whole nation.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["This whole nation", "The priests alone", "The wealthy landowners", "The foreign nations"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Malachi 3:17, how would Yahweh spare those who feared him?',
   'Malachi 3:17', '''They shall be mine,'' says Yahweh of Armies, ''my own possession in the day that I make. I will spare them, as a man spares his own son who serves him.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["As a man spares his own son who serves him", "As a king spares his loyal soldiers", "As a shepherd spares his flock", "As a judge spares the innocent"], "correct_index": 0}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word describing what the proud and wicked will become on the day that comes.',
   'Malachi 4:1', 'For behold, the day comes, burning like a furnace, when all the proud and all who work wickedness will be stubble.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "For behold, the day comes, burning like a furnace, when all the proud and all who work wickedness will be ___.", "answer": "stubble"}', true, 7),
  ((select id from w), 'multiple_choice', 'According to Malachi 4:4, whose law were the people told to remember?',
   'Malachi 4:4', 'Remember the law of Moses my servant, which I commanded to him in Horeb for all Israel, even statutes and ordinances.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The law of Moses", "The law of the prophets", "The law of the king", "The law of Aaron"], "correct_index": 0}', true, 8),
  ((select id from w), 'multiple_choice', 'According to Malachi 4:5, who did Yahweh promise to send before the great and terrible day?',
   'Malachi 4:5', 'Behold, I will send you Elijah the prophet before the great and terrible day of Yahweh comes.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Elijah the prophet", "Moses the lawgiver", "An angel of the covenant", "A king from David''s line"], "correct_index": 0}', true, 9),
  ((select id from w), 'sequence', 'Order the pivotal-passage blocks as they appear in the book of Malachi.',
   'Malachi 1-4', 'Corrupt offerings; the coming messenger; tithing; the book of remembrance; the day of Yahweh; Elijah''s return.', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Corrupt offerings: the priests offer blind, lame, and sick animals (1:6-11)", "The coming messenger who will prepare the way and purify the sons of Levi (3:1-3)", "Tithing: ''Will a man rob God?'' and the invitation to test him (3:6-10)", "The book of remembrance for those who feared Yahweh (3:16-18)", "The day of Yahweh: the sun of righteousness rising with healing in its wings (4:1-3)", "Remembering the Law of Moses and the promise of Elijah''s return (4:4-6)"], "correct_order": [0, 1, 2, 3, 4, 5]}', true, 10),

  -- ===================== MALACHI — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s rebuke of the priests who despise his name.',
   'Malachi 1:6', 'A son honors his father, and a servant his master. If I am a father, then where is my honor? And if I am a master, where is the respect due me?" says Yahweh of Armies to you priests who despise my name.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "says Yahweh of Armies to you priests who despise my ___.", "answer": "name"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word from the priests'' dismissive claim about Yahweh''s table.',
   'Malachi 1:7', 'You offer polluted bread on my altar. You say, ''How have we polluted you?'' In that you say, ''Yahweh''s table is contemptible.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "In that you say, ''Yahweh''s table is ___.''", "answer": "contemptible"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word describing the covenant messenger the people are waiting for.',
   'Malachi 3:1', 'Behold, I send my messenger, and he will prepare the way before me! The Lord, whom you seek, will suddenly come to his temple. Behold, the messenger of the covenant, whom you desire, is coming!" says Yahweh of Armies.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Behold, the messenger of the covenant, whom you ___, is coming!", "answer": "desire"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word describing what the sons of Levi will be refined as.',
   'Malachi 3:3', 'and he will sit as a refiner and purifier of silver, and he will purify the sons of Levi, and refine them as gold and silver; and they shall offer to Yahweh offerings in righteousness.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "and he will purify the sons of Levi, and refine them as gold and ___; and they shall offer to Yahweh offerings in righteousness.", "answer": "silver"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word naming whom the whole nation is robbing.',
   'Malachi 3:9', 'You are cursed with the curse; for you rob me, even this whole nation.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "You are cursed with the curse; for you rob me, even this whole ___.", "answer": "nation"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word describing what those who feared Yahweh will be to him.',
   'Malachi 3:17', '''They shall be mine,'' says Yahweh of Armies, ''my own possession in the day that I make. I will spare them, as a man spares his own son who serves him.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "''They shall be mine,'' says Yahweh of Armies, ''my own ___ in the day that I make.", "answer": "possession"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word describing what the wicked will become under the feet of the righteous.',
   'Malachi 4:3', 'You shall tread down the wicked; for they will be ashes under the soles of your feet in the day that I make," says Yahweh of Armies.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "You shall tread down the wicked; for they will be ___ under the soles of your feet in the day that I make,\" says Yahweh of Armies.", "answer": "ashes"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s statement of his own unchangingness.',
   'Malachi 3:6', 'For I, Yahweh, don''t change; therefore you, sons of Jacob, are not consumed.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For I, Yahweh, don''t ___; therefore you, sons of Jacob, are not consumed.", "answer": "change"}', true, 8),
  ((select id from w), 'recall', 'Fill in the missing word naming what Yahweh will send you before the great and terrible day.',
   'Malachi 4:5', 'Behold, I will send you Elijah the prophet before the great and terrible day of Yahweh comes.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Behold, I will send you Elijah the ___ before the great and terrible day of Yahweh comes.", "answer": "prophet"}', true, 9),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.',
   'Malachi 3:1; 3:10; 4:5', 'The coming messenger; the tithe instruction; the promise of Elijah''s return.', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["''Behold, I send my messenger, and he will prepare the way before me!'' -- Malachi 3:1", "''Bring the whole tithe into the storehouse, that there may be food in my house.'' -- Malachi 3:10", "''Behold, I will send you Elijah the prophet before the great and terrible day of Yahweh comes.'' -- Malachi 4:5"], "correct_order": [0, 1, 2]}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word closing Malachi''s promise of Elijah''s return -- the literal last words of the Old Testament in this product''s canonical order.',
   'Malachi 4:6', 'He will turn the hearts of the fathers to the children and the hearts of the children to their fathers, lest I come and strike the earth with a curse.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He will turn the hearts of the fathers to the children and the hearts of the children to their fathers, lest I come and strike the earth with a ___.", "answer": "curse"}', true, 11)
;
