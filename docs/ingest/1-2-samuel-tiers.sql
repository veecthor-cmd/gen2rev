-- Gen2Rev challenge ingest: 1 Samuel (World 9) and 2 Samuel (World 10) -- difficulty tiers (easy/hard)
-- Generated from docs/content/1-samuel-easy.md, docs/content/1-samuel-hard.md,
--                docs/content/2-samuel-easy.md, docs/content/2-samuel-hard.md
-- All four briefs: theological review approved-with-changes (all required/blocking fixes applied),
-- verbatim-text QA pass (2026-08-20). See docs/reviews/ and docs/qa/ for the underlying review/QA docs.
-- Template/schema reference: docs/ingest/1-2-samuel.sql (original medium-tier ingestion for these two books).
--
-- CRITICAL: 2 Samuel chapter 11 is never challenge-ready content, in any tier, per Kachi Okere's
-- 2026-08-08 human-escalated bounding decision (docs/reviews/2-samuel-review.md addendum). No row
-- below draws on 2 Samuel chapter 11; 2 Samuel chapter 12 selections are limited to {12:1, 12:7, 12:13}.
--
-- difficulty_rank: 1 for every easy-tier row, 5 for every hard-tier row (flat per-tier value, not
-- item-by-item as in the original medium ingest).

-- 1 Samuel, Easy Tier (World 9) -- 11 items: 8 regular + 3 boss
with w as (select id from public.world where book_slug = '1-samuel')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'What did Samuel say when he ran to Eli, thinking Eli had called him?', '1 Samuel 3:4-5', 'Yahweh called Samuel. He said, ''Here I am.'' He ran to Eli and said, ''Here I am; for you called me.'' He said, ''I didn''t call. Lie down again.'' He went and lay down.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Here I am; for you called me.", "I heard something and came to see what you needed.", "Why do you call me, father?", "I am not worthy."], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to 1 Samuel 3:10, what did Samuel say when Yahweh came, stood, and called him?', '1 Samuel 3:10', 'Yahweh came, and stood, and called as at other times, ''Samuel! Samuel!'' Then Samuel said, ''Speak; for your servant hears.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Speak; for your servant hears.", "I don''t understand, Lord.", "I am ready now, Lord.", "Who is calling me?"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'What did the elders of Israel ask Samuel for?', '1 Samuel 8:5', 'They said to him, ''Behold, you are old, and your sons don''t walk in your ways. Now make us a king to judge us like all the nations.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a king", "more judges", "a new prophet", "a temple"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to 1 Samuel 8:7, whom did Yahweh say the people had rejected as their king?', '1 Samuel 8:7', 'Yahweh said to Samuel, ''Listen to the voice of the people in all that they tell you; for they have not rejected you, but they have rejected me as the king over them.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Yahweh", "Samuel", "Eli", "Saul"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'What did Samuel do to Saul when he anointed him?', '1 Samuel 10:1', 'Then Samuel took the vial of oil and poured it on his head, then kissed him and said, ''Hasn''t Yahweh anointed you to be prince over his inheritance?''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["poured oil on his head and kissed him", "crowned him with gold", "gave him a sword", "built him a throne"], "correct_index": 0}', false, 5),
  ((select id from w), 'multiple_choice', 'Who anointed David with the horn of oil, in the middle of his brothers?', '1 Samuel 16:13', 'Then Samuel took the horn of oil and anointed him in the middle of his brothers. Then Yahweh''s Spirit came mightily on David from that day forward. So Samuel rose up and went to Ramah.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Samuel", "Eli", "Saul", "Jonathan"], "correct_index": 0}', false, 6),
  ((select id from w), 'multiple_choice', 'According to 1 Samuel 17:45, in whose name did David say he came against Goliath?', '1 Samuel 17:45', 'Then David said to the Philistine, ''You come to me with a sword, with a spear, and with a javelin; but I come to you in the name of Yahweh of Armies, the God of the armies of Israel, whom you have defied.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Yahweh of Armies", "King Saul", "his father Jesse", "the prophet Samuel"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'What did David call Saul, explaining to his men why he wouldn''t harm him?', '1 Samuel 24:6', 'He said to his men, ''Yahweh forbid that I should do this thing to my lord, Yahweh''s anointed, to stretch out my hand against him, since he is Yahweh''s anointed.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["Yahweh''s anointed", "an enemy", "a false king", "a friend"], "correct_index": 0}', false, 8),
  ((select id from w), 'multiple_choice', 'According to 1 Samuel 17:49-50, what did David use to defeat Goliath?', '1 Samuel 17:49-50', 'David put his hand in his bag, took a stone and slung it, and struck the Philistine in his forehead. The stone sank into his forehead, and he fell on his face to the earth. So David prevailed over the Philistine with a sling and with a stone, and struck the Philistine and killed him; but there was no sword in David''s hand.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a sling and a stone", "a spear and a shield", "his bare hands", "a bow and arrow"], "correct_index": 0}', true, 9),
  ((select id from w), 'sequence', 'Put these beats of David''s rise in the order they happen in the text.', '1 Samuel 16:13; 17:49-50; 18:1,3; 24:6', '1 Samuel 16:13; 1 Samuel 17:49-50; 1 Samuel 18:1,3; 1 Samuel 24:6', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["David is anointed by Samuel in the middle of his brothers", "David defeats Goliath with a sling and a stone", "Jonathan makes a covenant with David", "Saul pursues David, but David spares Saul''s life in a cave"], "correct_order": [0, 1, 2, 3]}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word: what did Jonathan and David make with each other, because Jonathan loved David as his own soul?', '1 Samuel 18:3', 'Then Jonathan and David made a covenant, because he loved him as his own soul.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Then Jonathan and David made a ___, because he loved him as his own soul.", "answer": "covenant"}', true, 11)
;

-- 1 Samuel, Hard Tier (World 9) -- 11 items: 8 regular + 3 boss
with w as (select id from public.world where book_slug = '1-samuel')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word: what does 1 Samuel 3:1 say there were not many of, in the days before Samuel''s call?', '1 Samuel 3:1', 'The child Samuel ministered to Yahweh before Eli. Yahweh''s word was rare in those days. There were not many visions, then.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh''s word was rare in those days. There were not many ___, then.", "answer": "visions"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: where did Yahweh let none of Samuel''s words fall, as Samuel grew?', '1 Samuel 3:19', 'Samuel grew, and Yahweh was with him and let none of his words fall to the ground.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Samuel grew, and Yahweh was with him and let none of his words fall to the ___.", "answer": "ground"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what did all the people shout after Samuel presented Saul to them?', '1 Samuel 10:24', 'Samuel said to all the people, ''Do you see him whom Yahweh has chosen, that there is no one like him among all the people?'' All the people shouted and said, ''Long live the king!''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "All the people shouted and said, ''Long live the ___!''", "answer": "king"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: over what nation had Yahweh rejected Saul from being king, per Yahweh''s words to Samuel?', '1 Samuel 16:1', 'Yahweh said to Samuel, ''How long will you mourn for Saul, since I have rejected him from being king over Israel? …''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Yahweh said to Samuel, ''How long will you mourn for Saul, since I have rejected him from being king over ___? …''", "answer": "Israel"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: what physical description does 1 Samuel 16:12 give of David when he was brought before Samuel?', '1 Samuel 16:12', 'He sent, and brought him in. Now he was ruddy, with a handsome face and good appearance. Yahweh said, ''Arise! Anoint him, for this is he.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Now he was ___, with a handsome face and good appearance. Yahweh said, ''Arise! Anoint him, for this is he.''", "answer": "ruddy"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: how many cubits and a span was Goliath''s height, per 1 Samuel 17:4?', '1 Samuel 17:4', 'A champion out of the camp of the Philistines named Goliath of Gath, whose height was six cubits and a span…', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...whose height was ___ cubits and a span…", "answer": "six"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what did David choose from the brook, five of them, before facing Goliath?', '1 Samuel 17:40', 'He took his staff in his hand, and chose for himself five smooth stones out of the brook, and put them in the pouch of his shepherd''s bag which he had.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...chose for himself five smooth ___ out of the brook...", "answer": "stones"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: in 1 Samuel 24:11, David says there is neither evil nor disobedience in his what?', '1 Samuel 24:11', 'Moreover, my father, behold, yes, see the skirt of your robe in my hand; for in that I cut off the skirt of your robe and didn''t kill you, know and see that there is neither evil nor disobedience in my hand. I have not sinned against you, though you hunt for my life to take it.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...know and see that there is neither evil nor disobedience in my ___.", "answer": "hand"}', false, 8),
  ((select id from w), 'sequence', 'Put these beats of David''s rise in the order they happen in the text.', '1 Samuel 16:13; 17:49-50; 18:1,3; 24:6', '1 Samuel 16:13; 1 Samuel 17:49-50; 1 Samuel 18:1,3; 1 Samuel 24:6', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["David is anointed by Samuel in the middle of his brothers", "David defeats Goliath with a sling and a stone", "Jonathan makes a covenant with David", "Saul pursues David, but David spares Saul''s life in a cave"], "correct_order": [0, 1, 2, 3]}', true, 9),
  ((select id from w), 'multiple_choice', 'According to 1 Samuel 24:17, what did Saul say about David after David spared his life in the cave?', '1 Samuel 24:17', 'He said to David, ''You are more righteous than I; for you have done good to me, whereas I have done evil to you.''', 'WEB', 5, 'hard',
   '{"type": "multiple_choice", "options": ["That David was more righteous than he was", "That David should be executed for treason", "That David was unfit to be king", "That David had betrayed him"], "correct_index": 0}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word: per 1 Samuel 17:47, into what will Yahweh give the Philistine?', '1 Samuel 17:47', '...for the battle is Yahweh''s, and he will give you into our hand.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...for the battle is Yahweh''s, and he will give you into our ___.", "answer": "hand"}', true, 11)
;

-- 2 Samuel, Easy Tier (World 10) -- 12 items: 8 regular + 4 boss
with w as (select id from public.world where book_slug = '2-samuel')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'multiple_choice', 'According to 2 Samuel 5:3, what did the elders of Israel do with David at Hebron?', '2 Samuel 5:3', 'So all the elders of Israel came to the king to Hebron, and King David made a covenant with them in Hebron before Yahweh; and they anointed David king over Israel.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["made a covenant with him and anointed him king over Israel", "declared war on him", "sent him into exile", "rejected his kingship"], "correct_index": 0}', false, 1),
  ((select id from w), 'multiple_choice', 'According to 2 Samuel 5:4, how long did David reign as king?', '2 Samuel 5:4', 'David was thirty years old when he began to reign, and he reigned forty years.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["forty years", "thirty years", "twenty years", "seventeen years"], "correct_index": 0}', false, 2),
  ((select id from w), 'multiple_choice', 'According to 2 Samuel 6:12, how did David bring up God''s ark into David''s city?', '2 Samuel 6:12', 'So David went and brought up God''s ark from the house of Obed-Edom into David''s city with joy.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["with joy", "with weeping", "in secret", "with fear"], "correct_index": 0}', false, 3),
  ((select id from w), 'multiple_choice', 'According to 2 Samuel 6:14, what was David wearing as he danced before Yahweh?', '2 Samuel 6:14', 'David danced before Yahweh with all his might; and David was clothed in a linen ephod.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["a linen ephod", "royal robes", "armor", "a crown"], "correct_index": 0}', false, 4),
  ((select id from w), 'multiple_choice', 'According to 2 Samuel 7:12, what did Yahweh promise to set up after David''s own days were fulfilled?', '2 Samuel 7:12', 'When your days are fulfilled and you sleep with your fathers, I will set up your offspring after you, who will proceed out of your body, and I will establish his kingdom.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["David''s own offspring, to establish his kingdom", "a new prophet", "a foreign ruler", "the ark''s guardian"], "correct_index": 0}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: per 2 Samuel 7:13, what will Yahweh establish the throne of forever?', '2 Samuel 7:13', 'He will build a house for my name, and I will establish the throne of his kingdom forever.', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "He will build a house for my name, and I will establish the throne of his ___ forever.", "answer": "kingdom"}', false, 6),
  ((select id from w), 'multiple_choice', 'According to 2 Samuel 12:1, how does Nathan''s parable to David begin — what two men were in one city?', '2 Samuel 12:1', 'Yahweh sent Nathan to David. He came to him, and said to him, ''There were two men in one city: the one rich, and the other poor.''', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["two men in one city, one rich and one poor", "a lost sheep and its shepherd", "a vineyard and its workers", "a king and his army"], "correct_index": 0}', false, 7),
  ((select id from w), 'multiple_choice', 'According to 2 Samuel 15:6, what does the text say Absalom did to the men of Israel?', '2 Samuel 15:6', 'Absalom did this sort of thing to all Israel who came to the king for judgment. So Absalom stole the hearts of the men of Israel.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["stole their hearts", "gave them gifts", "threatened them", "ignored them"], "correct_index": 0}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word: what did Nathan call David, confronting him with the parable''s meaning?', '2 Samuel 12:7', 'Nathan said to David, ''You are the man! This is what Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered you out of the hand of Saul.''', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "Nathan said to David, ''You are the ___! This is what Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered you out of the hand of Saul.''", "answer": "man"}', true, 9),
  ((select id from w), 'sequence', 'Put these beats of David''s reign in the order they happen in the text.', '2 Samuel 5; 6; 7; 12:1,7,13; 15-18', '2 Samuel 5; 2 Samuel 6; 2 Samuel 7; 2 Samuel 12:1,7,13; 2 Samuel 15-18', 'WEB', 1, 'easy',
   '{"type": "sequence", "items": ["David is anointed king over all Israel at Hebron", "The ark is brought up to Jerusalem with celebration", "Yahweh gives David the covenant promise through Nathan", "Nathan confronts David, and David confesses", "Absalom rebels against his father"], "correct_order": [0, 1, 2, 3, 4]}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word: what did David cry out as he wept over Absalom''s death?', '2 Samuel 18:33', 'The king was much moved, and went up to the room over the gate and wept. As he went, he said, ''My son Absalom! My son, my son Absalom! I wish I had died instead of you, Absalom, my son, my son!''', 'WEB', 1, 'easy',
   '{"type": "recall", "template": "...I wish I had died instead of you, Absalom, my son, my ___!", "answer": "son"}', true, 11),
  ((select id from w), 'multiple_choice', 'According to 2 Samuel 6:15, besides shouting, how did David and the house of Israel bring up Yahweh''s ark?', '2 Samuel 6:15', 'So David and all the house of Israel brought up Yahweh''s ark with shouting and with the sound of the trumpet.', 'WEB', 1, 'easy',
   '{"type": "multiple_choice", "options": ["with the sound of the trumpet", "with a chariot procession", "in complete silence", "with a military parade"], "correct_index": 0}', true, 12)
;

-- 2 Samuel, Hard Tier (World 10) -- 12 items: 8 regular + 4 boss
with w as (select id from public.world where book_slug = '2-samuel')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, difficulty_tier, answer_key, is_boss_item, sort_order)
values
  ((select id from w), 'recall', 'Fill in the missing word: per 2 Samuel 5:10, David grew greater and greater because Yahweh, the God of what, was with him?', '2 Samuel 5:10', 'David grew greater and greater, for Yahweh, the God of Armies, was with him.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "David grew greater and greater, for Yahweh, the God of ___, was with him.", "answer": "Armies"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what did David perceive Yahweh had done, making him king over Israel?', '2 Samuel 5:12', 'David perceived that Yahweh had established him king over Israel, and that he had exalted his kingdom for his people Israel''s sake.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "David perceived that Yahweh had ___ him king over Israel, and that he had exalted his kingdom for his people Israel''s sake.", "answer": "established"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: before whom did David offer burnt offerings and peace offerings, after the ark was set in place?', '2 Samuel 6:17', 'They brought in Yahweh''s ark, and set it in its place in the middle of the tent that David had pitched for it; and David offered burnt offerings and peace offerings before Yahweh.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "They brought in Yahweh''s ark, and set it in its place in the middle of the tent that David had pitched for it; and David offered burnt offerings and peace offerings before ___.", "answer": "Yahweh"}', false, 3),
  ((select id from w), 'recall', 'Fill in the missing word: per 2 Samuel 7:9, what did Yahweh promise to make David''s name like?', '2 Samuel 7:9', 'I have been with you wherever you went, and have cut off all your enemies from before you. I will make you a great name, like the name of the great ones who are on the earth.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...I will make you a great ___, like the name of the great ones who are on the earth.", "answer": "name"}', false, 4),
  ((select id from w), 'recall', 'Fill in the missing word: per 2 Samuel 7:16, how will David''s house and kingdom be made forever before him?', '2 Samuel 7:16', 'Your house and your kingdom will be made sure forever before you. Your throne will be established forever.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Your house and your kingdom will be made ___ forever before you. Your throne will be established forever.", "answer": "sure"}', false, 5),
  ((select id from w), 'recall', 'Fill in the missing word: per 2 Samuel 12:1, what was the first of the two men described in Nathan''s parable to David?', '2 Samuel 12:1', 'Yahweh sent Nathan to David. He came to him, and said to him, ''There were two men in one city: the one rich, and the other poor.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...''There were two men in one city: the one ___, and the other poor.''", "answer": "rich"}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what did Nathan tell David would not happen, after David confessed his sin?', '2 Samuel 12:13', 'David said to Nathan, ''I have sinned against Yahweh.'' Nathan said to David, ''Yahweh also has put away your sin. You will not die.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...''Yahweh also has put away your sin. You will not ___.''", "answer": "die"}', false, 7),
  ((select id from w), 'recall', 'Fill in the missing word: how did David go, as he wept going up the Mount of Olives with his head covered?', '2 Samuel 15:30', 'David went up by the ascent of the Mount of Olives, and wept as he went up; and he had his head covered and went barefoot.', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "David went up by the ascent of the Mount of Olives, and wept as he went up; and he had his head covered and went ___.", "answer": "barefoot"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word: what did Nathan call David, confronting him with the parable''s meaning?', '2 Samuel 12:7', 'Nathan said to David, ''You are the man! This is what Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered you out of the hand of Saul.''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "Nathan said to David, ''You are the ___! This is what Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered you out of the hand of Saul.''", "answer": "man"}', true, 9),
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the text.', '2 Samuel 5:1; 7:16; 12:7', 'Then all the tribes of Israel came to David at Hebron and spoke, saying, ''Behold, we are your bone and your flesh.''; Your house and your kingdom will be made sure forever before you. Your throne will be established forever.; Nathan said to David, ''You are the man! This is what Yahweh, the God of Israel, says: I anointed you king over Israel, and I delivered you out of the hand of Saul.''', 'WEB', 5, 'hard',
   '{"type": "sequence", "items": ["“Behold, we are your bone and your flesh.” — the tribes of Israel to David (2 Samuel 5:1)", "“Your throne will be established forever.” — Yahweh''s covenant promise through Nathan (2 Samuel 7:16)", "“You are the man!” — Nathan to David (2 Samuel 12:7)"], "correct_order": [0, 1, 2]}', true, 10),
  ((select id from w), 'recall', 'Fill in the missing word: what did David cry out as he wept over Absalom''s death?', '2 Samuel 18:33', 'The king was much moved, and went up to the room over the gate and wept. As he went, he said, ''My son Absalom! My son, my son Absalom! I wish I had died instead of you, Absalom, my son, my son!''', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "The king was much moved, and went up to the room over the gate and wept. As he went, he said, ''My son Absalom! My son, my son Absalom! I wish I had died instead of you, Absalom, my son, my ___!''", "answer": "son"}', true, 11),
  ((select id from w), 'recall', 'Fill in the missing word: per 2 Samuel 18:9, between what two things was Absalom hanging when his head caught in the oak?', '2 Samuel 18:9', '...and his head caught hold of the oak, and he was hanging between the sky and earth...', 'WEB', 5, 'hard',
   '{"type": "recall", "template": "...and his head caught hold of the oak, and he was hanging between the sky and ___...", "answer": "earth"}', true, 12)
;
