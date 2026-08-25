-- Gen2Rev challenge ingest: Numbers (World 4) and Deuteronomy (World 5) -- EASY and HARD tiers
-- Generated from docs/content/numbers-easy.md, docs/content/numbers-hard.md,
--   docs/content/deuteronomy-easy.md, docs/content/deuteronomy-hard.md
-- All four briefs: theological review approved-with-changes, independent verbatim-text QA pass
--   (docs/reviews/numbers-easy-review.md, docs/reviews/numbers-hard-review.md,
--    docs/reviews/deuteronomy-easy-review.md, docs/reviews/deuteronomy-hard-review.md;
--    docs/qa/numbers-easy-verbatim-qa.md, docs/qa/numbers-hard-verbatim-qa.md,
--    docs/qa/deuteronomy-easy-verbatim-qa.md, docs/qa/deuteronomy-hard-verbatim-qa.md).
-- Medium-tier rows (difficulty_tier = 'medium') already in the DB from
--   docs/ingest/numbers-deuteronomy.sql are untouched by this file.
--
-- Structural rules carried forward from the medium brief and reaffirmed/extended by the easy/hard
-- briefs:
--   Numbers: Korah's rebellion (16, incl. 16:46-48 aftermath) and the bronze serpent (21) scenes use
--     recall/fill-in-blank/sequence format only, never multiple choice; Numbers 23:19 and 24:17 are
--     recall-only, never multiple choice; Numbers 25 (Baal Peor) excluded entirely in every tier.
--   Deuteronomy: Deuteronomy 30:19-20 is recall/fill-in-blank-only, never multiple choice, in every
--     tier; Deuteronomy 5:9-10 and 6:8-9 (hard tier) are recall-only, never multiple choice; the Ten
--     Commandments are referenced by chapter:verse only, never by ordinal number, in every tier;
--     Deuteronomy 28's curse list is excluded entirely in every tier.
--   difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (medium rows, untouched,
--     keep their own varied ranks).

with w as (select id from public.world where book_slug = 'numbers')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== NUMBERS — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Numbers 1:1-3, what did Yahweh command Moses and Aaron to do?',
   'Numbers 1:1-3', 'Yahweh spoke to Moses in the wilderness of Sinai, in the Tent of Meeting, on the first day of the second month, in the second year after they had come out of the land of Egypt, saying, ''Take a census of all the congregation of the children of Israel, by their families, by their fathers'' houses, according to the number of the names, every male, one by one, from twenty years old and upward, all who are able to go out to war in Israel. You and Aaron shall count them by their divisions.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Take a census of all the fighting-age men of Israel", "Build the Tent of Meeting", "Cross the Jordan River", "Offer a burnt offering"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to Numbers 2:1-2, how did Yahweh tell each Israelite to camp?',
   'Numbers 2:1-2', 'Yahweh spoke to Moses and to Aaron, saying, ''The children of Israel shall encamp every man by his own standard, with the banners of their fathers'' houses. They shall encamp around the Tent of Meeting at a distance from it.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Every man by his own standard, with his father''s house''s banner", "In one single unmarked camp", "Scattered at random through the wilderness", "Only the priests could camp near the Tent of Meeting"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to the spies'' report in Numbers 13:27-28, what did the land flow with?',
   'Numbers 13:27-28', 'We came to the land where you sent us. Surely it flows with milk and honey, and this is its fruit. However, the people who dwell in the land are strong, and the cities are fortified and very large. Moreover, we saw the children of Anak there.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Milk and honey", "Wine and oil", "Gold and silver", "Bread and water"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Numbers 14:24, which of the twelve spies did Yahweh promise to bring into the land?',
   'Numbers 14:24', 'But my servant Caleb, because he had another spirit with him, and has followed me fully, him I will bring into the land into which he went. His offspring shall possess it.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Caleb", "Aaron", "Korah", "Balaam"], "correct_index": 0}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word from Korah''s challenge to Moses and Aaron''s authority.',
   'Numbers 16:1-3', '...They assembled themselves together against Moses and against Aaron, and said to them, ''You take too much on yourself, since all the congregation are holy, everyone of them, and Yahweh is among them! Why do you lift yourselves up above Yahweh''s assembly?''', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "...They assembled themselves together against Moses and against Aaron, and said to them, ''You take too much on yourself, since all the congregation are holy, everyone of them, and Yahweh is among them! Why do you lift yourselves up above Yahweh''s ___?''", "answer": "assembly"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: what material did Moses use to make the serpent Yahweh commanded?',
   'Numbers 21:8-9', 'Yahweh said to Moses, ''Make a venomous snake, and set it on a pole. It shall happen that everyone who is bitten, when he sees it, shall live.'' Moses made a serpent of bronze, and set it on the pole. If a serpent had bitten any man, when he looked at the serpent of bronze, he lived.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Yahweh said to Moses, ''Make a venomous snake, and set it on a pole. It shall happen that everyone who is bitten, when he sees it, shall live.'' Moses made a serpent of ___, and set it on the pole. If a serpent had bitten any man, when he looked at the serpent of bronze, he lived.", "answer": "bronze"}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Numbers 22:27-28, what did Yahweh do so the donkey could speak to Balaam?',
   'Numbers 22:27-28', 'The donkey saw Yahweh''s angel, and she lay down under Balaam. Balaam''s anger burned, and he struck the donkey with his staff. Yahweh opened the mouth of the donkey, and she said to Balaam, ''What have I done to you, that you have struck me these three times?''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Opened the donkey''s mouth", "Gave the donkey wings", "Turned the donkey invisible", "Sent an angel to speak for the donkey"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'According to Numbers 13:33, how did the spies describe themselves next to the people they saw in the land?',
   'Numbers 13:33', 'There we saw the Nephilim, the sons of Anak, who come from the Nephilim. We were in our own sight as grasshoppers, and so we were in their sight.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Like grasshoppers", "Like giants", "Like ants", "Like eagles"], "correct_index": 0}', false, 8),
  ((select id from w), 'sequence', 'Put these events of Korah''s rebellion and its aftermath in the order they occur in the text.',
   'Numbers 16:1-3; 16:31-32; 26:11', 'Now Korah... with Dathan and Abiram... took some men... They assembled themselves together against Moses and against Aaron, and said to them, ''You take too much on yourself, since all the congregation are holy, everyone of them, and Yahweh is among them! Why do you lift yourselves up above Yahweh''s assembly?''; As he finished speaking all these words, the ground that was under them split apart. The earth opened its mouth and swallowed them up with their households, all of Korah''s men, and all their goods.; Notwithstanding, the sons of Korah didn''t die.', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["Korah, joined by Dathan and Abiram and 250 leaders, challenges Moses and Aaron''s authority", "The ground opens and swallows Korah''s household along with all his men and goods", "The text later notes that the sons of Korah did not die"], "correct_order": [0, 1, 2]}', true, 9),
  ((select id from w), 'sequence', 'Put these events of the Balaam episode''s climax in the order they occur in the text.',
   'Numbers 22:27-28; 22:31', 'The donkey saw Yahweh''s angel, and she lay down under Balaam. Balaam''s anger burned, and he struck the donkey with his staff. Yahweh opened the mouth of the donkey, and she said to Balaam, ''What have I done to you, that you have struck me these three times?''; Then Yahweh opened the eyes of Balaam, and he saw Yahweh''s angel standing in the way, with his sword drawn in his hand; and he bowed his head, and fell on his face.', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["The donkey speaks and rebukes Balaam after he strikes her three times", "Yahweh opens Balaam''s eyes and he sees the angel standing in the way with his sword drawn"], "correct_order": [0, 1]}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word from Balaam''s oracle about Yahweh''s unchanging word.',
   'Numbers 23:19', 'God is not a man, that he should lie, nor a son of man, that he should repent. Has he said, and he won''t do it? Or has he spoken, and he won''t make it good?', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "God is not a man, that he should lie, nor a son of man, that he should repent. Has he said, and he won''t do it? Or has he spoken, and he won''t make it ___?", "answer": "good"}', true, 11),
  ((select id from w), 'multiple_choice', 'According to Numbers 10:35, what did Moses say whenever the ark went forward?',
   'Numbers 10:35', 'When the ark went forward, Moses said, ''Rise up, Yahweh, and let your enemies be scattered! Let those who hate you flee before you!''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Rise up, Yahweh, and let your enemies be scattered!", "Stop and make camp.", "Turn back to the wilderness.", "Sound the trumpets and rest here."], "correct_index": 0}', true, 12),

  -- ===================== NUMBERS — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word: how far from the Tent of Meeting did Yahweh instruct Israel to encamp?',
   'Numbers 2:1-2', 'Yahweh spoke to Moses and to Aaron, saying, ''The children of Israel shall encamp every man by his own standard, with the banners of their fathers'' houses. They shall encamp around the Tent of Meeting at a distance from it.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh spoke to Moses and to Aaron, saying, ''The children of Israel shall encamp every man by his own standard, with the banners of their fathers'' houses. They shall encamp around the Tent of Meeting at a ___ from it.''", "answer": "distance"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what does Numbers 1:47 say happened to the Levites, unlike the rest of the tribes?',
   'Numbers 1:47', 'But the Levites after the tribe of their fathers were not counted among them.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "But the Levites after the tribe of their fathers were not ___ among them.", "answer": "counted"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word from the people''s despairing complaint at Kadesh-barnea.',
   'Numbers 14:1-4', 'All the congregation lifted up their voice, and cried; and the people wept that night. All the children of Israel murmured against Moses and against Aaron. The whole congregation said to them, ''We wish that we had died in the land of Egypt, or that we had died in this wilderness! Why does Yahweh bring us to this land, to fall by the sword? Our wives and our little ones will be captured or killed! Wouldn''t it be better for us to return into Egypt?'' They said to one another, ''Let''s choose a leader, and let''s return into Egypt.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "All the congregation lifted up their voice, and cried; and the people wept that night. All the children of Israel murmured against Moses and against Aaron. The whole congregation said to them, ''We wish that we had died in the land of ___, or that we had died in this wilderness! Why does Yahweh bring us to this land, to fall by the sword? Our wives and our little ones will be captured or killed! Wouldn''t it be better for us to return into Egypt?'' They said to one another, ''Let''s choose a leader, and let''s return into Egypt.''", "answer": "Egypt"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word from Caleb and Joshua''s exhortation to the people not to fear the land''s inhabitants.',
   'Numbers 14:9', 'Only don''t rebel against Yahweh, neither fear the people of the land; for they are bread for us. Their defense is removed from over them, and Yahweh is with us. Don''t fear them.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Only don''t rebel against Yahweh, neither fear the people of the land; for they are ___ for us. Their defense is removed from over them, and Yahweh is with us. Don''t fear them.", "answer": "bread"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word from Yahweh''s promise, through Moses, about who is holy, during Korah''s rebellion.',
   'Numbers 16:5', 'In the morning, Yahweh will show who are his, and who is holy, and will cause him to come near to him...', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "In the morning, Yahweh will show who are his, and who is holy, and will cause him to come ___ to him...", "answer": "near"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word from the people''s plea to Moses after Yahweh sent venomous snakes.',
   'Numbers 21:6-7', 'Yahweh sent venomous snakes among the people, and they bit the people. Many people of Israel died. The people came to Moses, and said, ''We have sinned, because we have spoken against Yahweh and against you. Pray to Yahweh, that he take away the serpents from us.'' Moses prayed for the people.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh sent venomous snakes among the people, and they bit the people. Many people of Israel died. The people came to Moses, and said, ''We have sinned, because we have spoken against Yahweh and against you. Pray to Yahweh, that he take away the ___ from us.'' Moses prayed for the people.", "answer": "serpents"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word from Balaam''s statement to Balak about his prophetic limits.',
   'Numbers 22:38', 'Balaam said to Balak, ''Behold, I have come to you. Have I now any power at all to speak anything? I will speak the word that God puts in my mouth.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Balaam said to Balak, ''Behold, I have come to you. Have I now any power at all to speak anything? I will speak the ___ that God puts in my mouth.''", "answer": "word"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Balaam''s oracle about a coming ruler.',
   'Numbers 24:17', 'I see him, but not now. I see him, but not near. A star will come out of Jacob. A scepter will rise out of Israel, and shall strike through the corners of Moab, and crush all the sons of Sheth.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I see him, but not now. I see him, but not near. A ___ will come out of Jacob. A scepter will rise out of Israel, and shall strike through the corners of Moab, and crush all the sons of Sheth.", "answer": "star"}', false, 8),
  ((select id from w), 'sequence', 'Put these events of Korah''s rebellion and its aftermath in the order they occur in the text.',
   'Numbers 16:1-3; 16:31-32; 26:11', 'Now Korah, the son of Izhar, the son of Kohath, the son of Levi, with Dathan and Abiram, the sons of Eliab, and On, the son of Peleth, sons of Reuben, took some men. They rose up before Moses, with some of the children of Israel, two hundred fifty princes of the congregation, called to the assembly, men of renown. They assembled themselves together against Moses and against Aaron, and said to them, ''You take too much on yourself, since all the congregation are holy, everyone of them, and Yahweh is among them! Why do you lift yourselves up above Yahweh''s assembly?''; As he finished speaking all these words, the ground that was under them split apart. The earth opened its mouth and swallowed them up with their households, all of Korah''s men, and all their goods.; Notwithstanding, the sons of Korah didn''t die.', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["Korah, joined by Dathan and Abiram and 250 leaders, challenges Moses and Aaron''s authority", "The ground opens and swallows Korah''s household along with all his men and goods", "The text later notes that the sons of Korah did not die"], "correct_order": [0, 1, 2]}', true, 9),
  ((select id from w), 'sequence', 'Put these events of the Balaam episode''s climax in the order they occur in the text.',
   'Numbers 22:27-28; 22:31', 'The donkey saw Yahweh''s angel, and she lay down under Balaam. Balaam''s anger burned, and he struck the donkey with his staff. Yahweh opened the mouth of the donkey, and she said to Balaam, ''What have I done to you, that you have struck me these three times?''; Then Yahweh opened the eyes of Balaam, and he saw Yahweh''s angel standing in the way, with his sword drawn in his hand; and he bowed his head, and fell on his face.', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["The donkey speaks and rebukes Balaam after he strikes her three times", "Yahweh opens Balaam''s eyes and he sees the angel standing in the way with his sword drawn"], "correct_order": [0, 1]}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word: how many leaders of the congregation joined Korah''s rebellion against Moses and Aaron?',
   'Numbers 16:1-3', 'Now Korah, the son of Izhar, the son of Kohath, the son of Levi, with Dathan and Abiram, the sons of Eliab, and On, the son of Peleth, sons of Reuben, took some men. They rose up before Moses, with some of the children of Israel, two hundred fifty princes of the congregation, called to the assembly, men of renown. They assembled themselves together against Moses and against Aaron, and said to them, ''You take too much on yourself, since all the congregation are holy, everyone of them, and Yahweh is among them! Why do you lift yourselves up above Yahweh''s assembly?''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Now Korah, the son of Izhar, the son of Kohath, the son of Levi, with Dathan and Abiram, the sons of Eliab, and On, the son of Peleth, sons of Reuben, took some men. They rose up before Moses, with some of the children of Israel, two hundred fifty ___ of the congregation, called to the assembly, men of renown. They assembled themselves together against Moses and against Aaron, and said to them, ''You take too much on yourself, since all the congregation are holy, everyone of them, and Yahweh is among them! Why do you lift yourselves up above Yahweh''s assembly?''", "answer": "princes"}', true, 11),
  ((select id from w), 'recall', 'Fill in the missing word: what did Aaron do that stopped the plague among the people?',
   'Numbers 16:46-48', 'Moses said to Aaron, ''Take your censer, put fire from the altar in it, lay incense on it, carry it quickly to the congregation, and make atonement for them; for wrath has gone out from Yahweh! The plague has begun.'' Aaron did as Moses said, and ran into the middle of the assembly. The plague had already begun among the people. He put on the incense, and made atonement for the people. He stood between the dead and the living; and the plague was stayed.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Moses said to Aaron, ''Take your censer, put fire from the altar in it, lay incense on it, carry it quickly to the congregation, and make atonement for them; for wrath has gone out from Yahweh! The plague has begun.'' Aaron did as Moses said, and ran into the middle of the assembly. The plague had already begun among the people. He put on the incense, and made atonement for the people. He stood between the ___ and the living; and the plague was stayed.", "answer": "dead"}', true, 12)
;

with w as (select id from public.world where book_slug = 'deuteronomy')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  -- ===================== DEUTERONOMY — EASY TIER =====================
  ((select id from w), 'multiple_choice', 'According to Deuteronomy 5:6-7, what does Yahweh say Israel shall have none of, before him?',
   'Deuteronomy 5:6-7', 'I am Yahweh your God, who brought you out of the land of Egypt, out of the house of bondage. You shall have no other gods before me.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Other gods", "Other kings", "Other prophets", "Other laws"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'What does Deuteronomy 5:16 command?',
   'Deuteronomy 5:16', 'Honor your father and your mother, as Yahweh your God commanded you, that your days may be long and that it may go well with you in the land which Yahweh your God gives you.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Honor your father and your mother", "Observe the Sabbath day, to keep it holy", "You shall not give false testimony against your neighbor", "You shall not covet your neighbor''s wife"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to Deuteronomy 6:6-7, where does Moses say these words shall be?',
   'Deuteronomy 6:6-7', 'These words, which I command you today, shall be on your heart; and you shall teach them diligently to your children, and shall talk of them when you sit in your house, and when you walk by the way, and when you lie down, and when you rise up.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["On your heart", "Written on stone tablets only", "In the ark of the covenant only", "In the Tent of Meeting only"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to Deuteronomy 11:26-28, what did Moses set before the people?',
   'Deuteronomy 11:26-28', 'Behold, I set before you today a blessing and a curse: the blessing, if you listen to the commandments of Yahweh your God, which I command you today; and the curse, if you do not listen to the commandments of Yahweh your God, but turn away out of the way which I command you today, to go after other gods which you have not known.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["A blessing and a curse", "A song and a prayer", "A census and a map", "A feast and a fast"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to Deuteronomy 31:2-3, how old did Moses say he was?',
   'Deuteronomy 31:2-3', '...I am one hundred twenty years old today. I can no more go out and come in. Yahweh has said to me, ''You shall not go over this Jordan.'' Yahweh your God himself will go over before you. He will destroy these nations from before you, and you shall dispossess them. Joshua will go over before you, as Yahweh has spoken.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["120 years old", "80 years old", "100 years old", "40 years old"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'According to Deuteronomy 31:7-8, who did Moses call to speak to in the sight of all Israel?',
   'Deuteronomy 31:7-8', 'Moses called to Joshua, and said to him in the sight of all Israel, ''Be strong and courageous, for you shall go with this people into the land which Yahweh has sworn to their fathers to give them; and you shall cause them to inherit it. Yahweh himself is who goes before you. He will be with you. He will not fail you nor forsake you. Don''t be afraid. Don''t be discouraged.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Joshua", "Aaron", "Caleb", "Eleazar"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to Deuteronomy 34:4-5, what did Yahweh show Moses?',
   'Deuteronomy 34:4-5', 'Yahweh said to him, ''This is the land which I swore to Abraham, to Isaac, and to Jacob, saying, "I will give it to your offspring." I have caused you to see it with your eyes, but you shall not go over there.'' So Moses the servant of Yahweh died there in the land of Moab, according to Yahweh''s word.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["The land he swore to Abraham, Isaac, and Jacob", "The city of Jerusalem", "The Ark of the Covenant", "The tablets of the Law"], "correct_index": 0}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: what does Deuteronomy 34:7 say about Moses'' strength when he died at 120?',
   'Deuteronomy 34:7', 'Moses was one hundred twenty years old when he died. His eye was not dim, nor his strength gone.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Moses was one hundred twenty years old when he died. His eye was not dim, nor his strength ___.", "answer": "gone"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word from the Shema, Israel''s central confession of faith.',
   'Deuteronomy 6:4-5', 'Hear, Israel: Yahweh is our God. Yahweh is one. You shall love Yahweh your God with all your heart, with all your soul, and with all your might.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Hear, Israel: Yahweh is our God. Yahweh is one. You shall love Yahweh your God with all your heart, with all your soul, and with all your ___.", "answer": "might"}', true, 9),
  ((select id from w), 'recall', 'Fill in the missing word closing the book of Deuteronomy, about Moses'' unique status.',
   'Deuteronomy 34:10', 'Since then, there has not arisen a prophet in Israel like Moses, whom Yahweh knew face to face,', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Since then, there has not arisen a ___ in Israel like Moses, whom Yahweh knew face to face,", "answer": "prophet"}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word from Moses'' charge to ''choose life.''',
   'Deuteronomy 30:19-20', 'I call heaven and earth to witness against you today that I have set before you life and death, the blessing and the curse. Therefore choose life, that you may live, you and your descendants, to love Yahweh your God, to obey his voice, and to cling to him; for he is your life, and the length of your days, that you may dwell in the land which Yahweh swore to your fathers, to Abraham, to Isaac, and to Jacob, to give them.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "I call heaven and earth to witness against you today that I have set before you life and death, the blessing and the curse. Therefore choose life, that you may live, you and your ___, to love Yahweh your God, to obey his voice, and to cling to him; for he is your life, and the length of your days, that you may dwell in the land which Yahweh swore to your fathers, to Abraham, to Isaac, and to Jacob, to give them.", "answer": "descendants"}', true, 11),
  ((select id from w), 'multiple_choice', 'According to Deuteronomy 34:1, where did Moses go up to see the promised land?',
   'Deuteronomy 34:1', 'Moses went up from the plains of Moab to Mount Nebo, to the top of Pisgah, that is opposite Jericho. Yahweh showed him all the land of Gilead to Dan,', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Mount Nebo", "Mount Sinai", "Mount Carmel", "Mount Horeb"], "correct_index": 0}', true, 12),

  -- ===================== DEUTERONOMY — HARD TIER =====================
  ((select id from w), 'recall', 'Fill in the missing word: where does Deuteronomy 5:2 say Yahweh made his covenant with Israel?',
   'Deuteronomy 5:2', 'Yahweh our God made a covenant with us in Horeb. Yahweh didn''t make this covenant with our fathers, but with us, even us, who are all of us here alive today.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh our God made a covenant with us in ___. Yahweh didn''t make this covenant with our fathers, but with us, even us, who are all of us here alive today.", "answer": "Horeb"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what does Deuteronomy 5:9-10 say Yahweh shows to those who love him and keep his commandments?',
   'Deuteronomy 5:9-10', 'You shall not bow yourself down to them, nor serve them, for I, Yahweh your God, am a jealous God, visiting the iniquity of the fathers on the children and on the third and on the fourth generation of those who hate me and showing loving kindness to thousands of those who love me and keep my commandments.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "You shall not bow yourself down to them, nor serve them, for I, Yahweh your God, am a jealous God, visiting the iniquity of the fathers on the children and on the third and on the fourth generation of those who hate me and showing loving kindness to ___ of those who love me and keep my commandments.", "answer": "thousands"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word from Deuteronomy 6:8-9''s instruction about binding these words as a sign.',
   'Deuteronomy 6:8-9', 'You shall bind them for a sign on your hand, and they shall be for frontlets between your eyes. You shall write them on the door posts of your house and on your gates.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "You shall bind them for a sign on your ___, and they shall be for frontlets between your eyes. You shall write them on the door posts of your house and on your gates.", "answer": "hand"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: what did Moses set before the people, along with a curse?',
   'Deuteronomy 11:26-28', 'Behold, I set before you today a blessing and a curse: the blessing, if you listen to the commandments of Yahweh your God, which I command you today; and the curse, if you do not listen to the commandments of Yahweh your God, but turn away out of the way which I command you today, to go after other gods which you have not known.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Behold, I set before you today a ___ and a curse: the blessing, if you listen to the commandments of Yahweh your God, which I command you today; and the curse, if you do not listen to the commandments of Yahweh your God, but turn away out of the way which I command you today, to go after other gods which you have not known.", "answer": "blessing"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word from Deuteronomy 30:11 and 14, about the nearness of the commandment.',
   'Deuteronomy 30:11, 14', 'For this commandment which I command you today is not too hard for you or too distant. ...But the word is very near to you, in your mouth and in your heart, that you may do it.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "For this commandment which I command you today is not too hard for you or too distant. ...But the word is very ___ to you, in your mouth and in your heart, that you may do it.", "answer": "near"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word from Moses'' charge to the people in Deuteronomy 31:6.',
   'Deuteronomy 31:6', 'Be strong and courageous. Don''t be afraid or scared of them, for Yahweh your God himself is who goes with you. He will not fail you nor forsake you.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Be strong and courageous. Don''t be afraid or scared of them, for Yahweh your God himself is who goes with you. He will not fail you nor ___ you.", "answer": "forsake"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what does Deuteronomy 34:6 say no one knows about Moses'' burial place?',
   'Deuteronomy 34:6', 'He buried him in the valley in the land of Moab opposite Beth Peor, but no man knows where his tomb is to this day.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "He buried him in the valley in the land of Moab opposite Beth Peor, but no man knows where his ___ is to this day.", "answer": "tomb"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word from Deuteronomy 34:9, about Joshua''s commissioning.',
   'Deuteronomy 34:9', 'Joshua the son of Nun was full of the spirit of wisdom, for Moses had laid his hands on him. The children of Israel listened to him, and did as Yahweh commanded Moses.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Joshua the son of Nun was full of the spirit of wisdom, for Moses had laid his ___ on him. The children of Israel listened to him, and did as Yahweh commanded Moses.", "answer": "hands"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word from the Shema, Israel''s central confession of faith.',
   'Deuteronomy 6:4-5', 'Hear, Israel: Yahweh is our God. Yahweh is one. You shall love Yahweh your God with all your heart, with all your soul, and with all your might.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Hear, Israel: Yahweh is our God. Yahweh is one. You shall love Yahweh your God with all your heart, with all your soul, and with all your ___.", "answer": "might"}', true, 9),
  ((select id from w), 'recall', 'Fill in the missing word closing the book of Deuteronomy, about Moses'' unique status.',
   'Deuteronomy 34:10', 'Since then, there has not arisen a prophet in Israel like Moses, whom Yahweh knew face to face.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Since then, there has not arisen a ___ in Israel like Moses, whom Yahweh knew face to face.", "answer": "prophet"}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word from Moses'' charge to ''choose life.''',
   'Deuteronomy 30:19-20', 'I call heaven and earth to witness against you today that I have set before you life and death, the blessing and the curse. Therefore choose life, that you may live, you and your descendants, to love Yahweh your God, to obey his voice, and to cling to him; for he is your life, and the length of your days, that you may dwell in the land which Yahweh swore to your fathers, to Abraham, to Isaac, and to Jacob, to give them.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "I call heaven and earth to ___ against you today that I have set before you life and death, the blessing and the curse. Therefore choose life, that you may live, you and your descendants, to love Yahweh your God, to obey his voice, and to cling to him; for he is your life, and the length of your days, that you may dwell in the land which Yahweh swore to your fathers, to Abraham, to Isaac, and to Jacob, to give them.", "answer": "witness"}', true, 11),
  ((select id from w), 'recall', 'Fill in the missing word from Deuteronomy 5:22, about how the Ten Commandments were given to Moses.',
   'Deuteronomy 5:22', 'Yahweh spoke these words to all your assembly on the mountain out of the middle of the fire, of the cloud, and of the thick darkness, with a great voice. He added no more. He wrote them on two stone tablets, and gave them to me.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh spoke these words to all your assembly on the mountain out of the middle of the fire, of the cloud, and of the thick darkness, with a great voice. He added no more. He wrote them on two ___ tablets, and gave them to me.", "answer": "stone"}', true, 12)
;
