-- Gen2Rev challenge ingest: John (World 43)
-- Generated from docs/content/john.md
-- Theological review: docs/reviews/john-review.md (verdict approved-with-changes as of the
-- 2026-09-04 addendum resolving the divinity-claim-bounding escalation).
-- Independent verbatim-text QA: docs/qa/john-verbatim-qa.md (verdict pass-with-corrections;
-- this ingest uses docs/content/john.md's current, QA-corrected text as-is).
-- Medium tier only — difficulty_tier column intentionally omitted (defaults to 'medium').
--
-- Exclusions honored (per docs/content/john.md's Contested Territory section):
--   - John 7:53-8:11 (the pericope adulterae) — never used.
--   - John 3:5 — never used; only John 3:3 is used from that exchange.
--   - John 9:8-41 (the extended interrogation scene) — never used; only 9:1-25 material is used.
--   - John 6:51-58 — never used; only John 6:35 is used from the Bread of Life discourse.
--   - John's "the Jews" hostile-faction language — never used. Note: John 8:31-32's own narrator
--     clause ("Jesus therefore said to those Jews who had believed him") is dropped here and only
--     the quoted speech itself is used as verse_text, using the same bare-quote convention this
--     brief and its QA pass already apply elsewhere to isolate spoken lines from narration (see
--     docs/qa/john-verbatim-qa.md note 1, re: John 1:29 and John 14:6) — the quoted words
--     themselves are unaffected verbatim WEB text, only the narrator lead-in is omitted.
--
-- Structural rule honored: John 1:1, 1:3, 1:14, 8:58, 10:30, and 20:28 appear ONLY as 'recall'
-- type rows below — never 'multiple_choice'. John 20:28 additionally appears once inside a
-- 'sequence' item (explicitly permitted by the brief's own bounding for this verse); 1:1, 1:3,
-- 1:14, 8:58, and 10:30 do not appear in any sequence item, matching the brief's Level 4 ladder
-- example, which deliberately excludes 8:58 and 10:30 from its "I am" statement sequence.

with w as (select id from public.world where book_slug = 'john')
insert into public.challenge (world_id, type, prompt, verse_ref, verse_text, translation, difficulty_rank, answer_key, is_boss_item, sort_order)
values
  -- Scene 1: The Prologue (John 1:1-18)
  ((select id from w), 'recall', 'Fill in the missing word: what was in the beginning, was with God, and was God?', 'John 1:1', 'In the beginning was the Word, and the Word was with God, and the Word was God.', 'WEB', 2,
   '{"type": "recall", "template": "In the beginning was the ___, and the ___ was with God, and the ___ was God.", "answer": "Word"}', false, 1),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text say has been made, without him, that has not been made?', 'John 1:3', 'All things were made through him. Without him, nothing was made that has been made.', 'WEB', 3,
   '{"type": "recall", "template": "All things were made through him. Without him, nothing was made that has been ___.", "answer": "made"}', false, 2),
  ((select id from w), 'recall', 'Fill in the missing word: what did the Word become, and live among us?', 'John 1:14', 'The Word became flesh and lived among us. We saw his glory, such glory as of the only born Son of the Father, full of grace and truth.', 'WEB', 3,
   '{"type": "recall", "template": "The Word became ___ and lived among us. We saw his glory, such glory as of the only born Son of the Father, full of grace and truth.", "answer": "flesh"}', false, 3),
  ((select id from w), 'multiple_choice', 'According to John 1:29, what does John the Baptist call Jesus?', 'John 1:29', 'Behold, the Lamb of God, who takes away the sin of the world!', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["the Lamb of God, who takes away the sin of the world", "the light of the world", "the good shepherd", "the true vine"], "correct_index": 0}', false, 4),

  -- Scene 2: The First Sign: Water into Wine at Cana (John 2:1-11)
  ((select id from w), 'recall', 'Fill in the missing word: what did Jesus'' mother say had run out?', 'John 2:3', 'When the wine ran out, Jesus'' mother said to him, ''They have no wine.''', 'WEB', 1,
   '{"type": "recall", "template": "When the wine ran out, Jesus'' mother said to him, ''They have no ___.''", "answer": "wine"}', false, 5),
  ((select id from w), 'multiple_choice', 'According to John 2:7-8, what did Jesus tell the servants to do first?', 'John 2:7-8', 'Jesus said to them, ''Fill the water pots with water.'' So they filled them up to the brim. He said to them, ''Now draw some out, and take it to the ruler of the feast.''', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["Fill the water pots with water", "Draw water from the well", "Break the empty jars", "Pour out the old wine"], "correct_index": 0}', false, 6),
  ((select id from w), 'recall', 'Fill in the missing word: what does the text call this event, "the beginning of his" what?', 'John 2:11', 'This beginning of his signs Jesus did in Cana of Galilee, and revealed his glory; and his disciples believed in him.', 'WEB', 2,
   '{"type": "recall", "template": "This beginning of his ___ Jesus did in Cana of Galilee, and revealed his glory; and his disciples believed in him.", "answer": "signs"}', false, 7),

  -- Scene 3: Nicodemus and Being "Born Anew" (John 3:1-17)
  ((select id from w), 'recall', 'Fill in the missing word: unless one is born what, he can''t see God''s Kingdom?', 'John 3:3', 'Jesus answered him, ''Most certainly I tell you, unless one is born anew, he can''t see God''s Kingdom.''', 'WEB', 2,
   '{"type": "recall", "template": "Jesus answered him, ''Most certainly I tell you, unless one is born ___, he can''t see God''s Kingdom.''", "answer": "anew"}', false, 8),
  ((select id from w), 'recall', 'Fill in the missing word: what did God so love, that he gave his only born Son?', 'John 3:16', 'For God so loved the world, that he gave his only born Son, that whoever believes in him should not perish, but have eternal life.', 'WEB', 1,
   '{"type": "recall", "template": "For God so loved the ___, that he gave his only born Son, that whoever believes in him should not perish, but have eternal life.", "answer": "world"}', true, 9),
  ((select id from w), 'multiple_choice', 'According to John 3:17, why does the text say God sent his Son into the world?', 'John 3:17', 'For God didn''t send his Son into the world to judge the world, but that the world should be saved through him.', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["That the world should be saved through him", "That the world should be judged by him", "That the world should be ruled by him", "That the world should worship him"], "correct_index": 0}', false, 10),

  -- Scene 4: The Samaritan Woman at the Well (John 4:1-42)
  ((select id from w), 'multiple_choice', 'According to John 4:9, what did the Samaritan woman ask Jesus?', 'John 4:9', 'The Samaritan woman therefore said to him, ''How is it that you, being a Jew, ask for a drink from me, a Samaritan woman?''', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["How is it that you, being a Jew, ask for a drink from me, a Samaritan woman?", "Why do you sit at Jacob''s well alone?", "Where should we worship, Jerusalem or this mountain?", "How can you give me living water without a bucket?"], "correct_index": 0}', false, 11),
  ((select id from w), 'recall', 'Fill in the missing word: whoever drinks the water Jesus gives will never do what again?', 'John 4:14', 'But whoever drinks of the water that I will give him will never thirst again; but the water that I will give him will become in him a well of water springing up to eternal life.', 'WEB', 2,
   '{"type": "recall", "template": "But whoever drinks of the water that I will give him will never ___ again; but the water that I will give him will become in him a well of water springing up to eternal life.", "answer": "thirst"}', false, 12),
  ((select id from w), 'multiple_choice', 'According to John 4:25-26, how does Jesus respond when the woman mentions the coming Messiah?', 'John 4:25-26', 'The woman said to him, ''I know that Messiah is coming, he who is called Christ.'' Jesus said to her, ''I am he, the one who speaks to you.''', 'WEB', 3,
   '{"type": "multiple_choice", "options": ["I am he, the one who speaks to you", "I am the bread of life", "I am the good shepherd", "I am the true vine"], "correct_index": 0}', false, 13),
  ((select id from w), 'recall', 'Fill in the missing word: what did the Samaritans call Jesus, besides "the Christ"?', 'John 4:42', 'They said to the woman, ''Now we believe... we have heard for ourselves, and know that this is indeed the Christ, the Savior of the world.''', 'WEB', 2,
   '{"type": "recall", "template": "They said to the woman, ''Now we believe... we have heard for ourselves, and know that this is indeed the Christ, the ___ of the world.''", "answer": "Savior"}', false, 14),

  -- Scene 5: Feeding the Five Thousand and Walking on Water (John 6:1-21, 35)
  ((select id from w), 'multiple_choice', 'According to John 6:11, what did Jesus do with the loaves after giving thanks?', 'John 6:11', 'Jesus took the loaves, and having given thanks, he distributed to the disciples, and the disciples to those who were sitting down, likewise also of the fish as much as they desired.', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["Distributed them to the disciples, who gave them to those sitting down", "Broke them and gave them to the poor", "Set them aside for the next day", "Blessed them and returned them to the boy"], "correct_index": 0}', false, 15),
  ((select id from w), 'recall', 'Fill in the missing word: how many baskets of leftovers were gathered?', 'John 6:13', 'So they gathered them up, and filled twelve baskets with broken pieces from the five barley loaves, which were left over by those who had eaten.', 'WEB', 1,
   '{"type": "recall", "template": "So they gathered them up, and filled ___ baskets with broken pieces from the five barley loaves, which were left over by those who had eaten.", "answer": "twelve"}', false, 16),
  ((select id from w), 'recall', 'Fill in the missing word: what did Jesus tell the disciples not to be, walking on the water?', 'John 6:20', 'But he said to them, ''It is I. Don''t be afraid.''', 'WEB', 2,
   '{"type": "recall", "template": "But he said to them, ''It is I. Don''t be ___.''", "answer": "afraid"}', false, 17),
  ((select id from w), 'recall', 'Fill in the missing word: what does Jesus call himself, "the ___ of life"?', 'John 6:35', 'Jesus said to them, ''I am the bread of life. Whoever comes to me will not be hungry, and whoever believes in me will never be thirsty.''', 'WEB', 2,
   '{"type": "recall", "template": "Jesus said to them, ''I am the ___ of life. Whoever comes to me will not be hungry, and whoever believes in me will never be thirsty.''", "answer": "bread"}', false, 18),

  -- Scene 6: "I Am the Light of the World" and "The Truth Will Make You Free" (John 8:12, 31-32)
  ((select id from w), 'recall', 'Fill in the missing word: what does Jesus call himself, "the ___ of the world"?', 'John 8:12', 'Again, therefore, Jesus spoke to them, saying, ''I am the light of the world. He who follows me will not walk in the darkness, but will have the light of life.''', 'WEB', 1,
   '{"type": "recall", "template": "Again, therefore, Jesus spoke to them, saying, ''I am the ___ of the world. He who follows me will not walk in the darkness, but will have the light of life.''", "answer": "light"}', false, 19),
  ((select id from w), 'multiple_choice', 'According to John 8:31-32, what will make Jesus''s disciples free?', 'John 8:31-32', 'If you remain in my word, then you are truly my disciples. You will know the truth, and the truth will make you free.', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["The truth", "The Law", "The Temple", "Their ancestry"], "correct_index": 0}', false, 20),

  -- Scene 7: "Before Abraham Was, I Am" (John 8:58)
  ((select id from w), 'recall', 'Fill in the missing word: before whom did Jesus say he existed, "I AM"?', 'John 8:58', 'Jesus said to them, ''Most certainly, I tell you, before Abraham came into existence, I AM.''', 'WEB', 3,
   '{"type": "recall", "template": "Jesus said to them, ''Most certainly, I tell you, before ___ came into existence, I AM.''", "answer": "Abraham"}', false, 21),

  -- Scene 8: The Man Born Blind (John 9:1-25)
  ((select id from w), 'multiple_choice', 'According to John 9:2-3, why does Jesus say the man was born blind?', 'John 9:2-3', 'His disciples asked him, ''Rabbi, who sinned, this man or his parents, that he was born blind?'' Jesus answered, ''This man didn''t sin, nor did his parents, but that the works of God might be revealed in him.''', 'WEB', 3,
   '{"type": "multiple_choice", "options": ["That the works of God might be revealed in him", "Because of his own sin", "Because of his parents'' sin", "Because of a curse from birth"], "correct_index": 0}', false, 22),
  ((select id from w), 'recall', 'Fill in the missing word: in which pool did Jesus tell the blind man to wash?', 'John 9:7', '''Go, wash in the pool of Siloam'' (which means ''Sent''). So he went away, washed, and came back seeing.', 'WEB', 2,
   '{"type": "recall", "template": "''Go, wash in the pool of ___'' (which means ''Sent''). So he went away, washed, and came back seeing.", "answer": "Siloam"}', false, 23),
  ((select id from w), 'recall', 'Fill in the missing word: the healed man said "though I was ___, now I see" — what was he?', 'John 9:25', 'One thing I do know: that though I was blind, now I see.', 'WEB', 2,
   '{"type": "recall", "template": "One thing I do know: that though I was ___, now I see.", "answer": "blind"}', false, 24),

  -- Scene 9: "I Am the Good Shepherd" (John 10:1-30)
  ((select id from w), 'multiple_choice', 'According to John 10:10-11, what does Jesus call himself?', 'John 10:10-11', 'The thief only comes to steal, kill, and destroy. I came that they may have life, and may have it abundantly. I am the good shepherd. The good shepherd lays down his life for the sheep.', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["The good shepherd", "The light of the world", "The true vine", "The door"], "correct_index": 0}', false, 25),
  ((select id from w), 'recall', 'Fill in the missing word: what do Jesus''s sheep hear, and follow him?', 'John 10:27-28', 'My sheep hear my voice, and I know them, and they follow me. I give eternal life to them. They will never perish, and no one will snatch them out of my hand.', 'WEB', 2,
   '{"type": "recall", "template": "My sheep hear my ___, and I know them, and they follow me. I give eternal life to them. They will never perish, and no one will snatch them out of my hand.", "answer": "voice"}', false, 26),
  ((select id from w), 'recall', 'Fill in the missing word: "I and the Father are" what?', 'John 10:30', 'I and the Father are one.', 'WEB', 3,
   '{"type": "recall", "template": "I and the Father are ___.", "answer": "one"}', false, 27),

  -- Scene 10: Raising Lazarus: "I Am the Resurrection and the Life" (John 11:1-44)
  ((select id from w), 'multiple_choice', 'According to John 11:21, what does Martha say to Jesus about her brother''s death?', 'John 11:21', 'Therefore Martha said to Jesus, ''Lord, if you would have been here, my brother wouldn''t have died.''', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["If you would have been here, my brother wouldn''t have died", "You are the resurrection and the life", "Why did you delay in coming?", "My brother is only sleeping"], "correct_index": 0}', false, 28),
  ((select id from w), 'recall', 'Fill in the missing word: Jesus said, "I am the ___ and the life" to Martha.', 'John 11:25-26', 'Jesus said to her, ''I am the resurrection and the life. He who believes in me will still live, even if he dies. Whoever lives and believes in me will never die. Do you believe this?''', 'WEB', 2,
   '{"type": "recall", "template": "Jesus said to her, ''I am the ___ and the life. He who believes in me will still live, even if he dies. Whoever lives and believes in me will never die. Do you believe this?''", "answer": "resurrection"}', false, 29),
  ((select id from w), 'recall', 'Fill in the missing word: the Bible''s shortest verse in most English translations — "Jesus ___."', 'John 11:35', 'Jesus wept.', 'WEB', 1,
   '{"type": "recall", "template": "Jesus ___.", "answer": "wept"}', false, 30),
  ((select id from w), 'multiple_choice', 'According to John 11:43-44, what did Jesus cry out with a loud voice at Lazarus''s tomb?', 'John 11:43-44', 'He cried with a loud voice, ''Lazarus, come out!'' He who was dead came out, bound hand and foot with wrappings... Jesus said to them, ''Free him, and let him go.''', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["Lazarus, come out!", "Rise and walk!", "Peace, be still!", "It is finished!"], "correct_index": 0}', false, 31),

  -- Scene 11: Washing the Disciples' Feet and the New Commandment (John 13:1-35)
  ((select id from w), 'recall', 'Fill in the missing word: what did Jesus take and wrap around his waist?', 'John 13:4-5', 'He took a towel and wrapped a towel around his waist. Then he poured water into the basin, and began to wash the disciples'' feet and to wipe them with the towel.', 'WEB', 2,
   '{"type": "recall", "template": "He took a ___ and wrapped a towel around his waist. Then he poured water into the basin, and began to wash the disciples'' feet and to wipe them with the towel.", "answer": "towel"}', false, 32),
  ((select id from w), 'multiple_choice', 'According to John 13:14-15, what does Jesus tell the disciples they ought to do, having washed their feet?', 'John 13:14-15', 'If I then, the Lord and the Teacher, have washed your feet, you also ought to wash one another''s feet. For I have given you an example, that you should also do as I have done to you.', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["Wash one another''s feet", "Anoint one another with oil", "Pray for one another daily", "Share their possessions"], "correct_index": 0}', false, 33),
  ((select id from w), 'recall', 'Fill in the missing word: what does Jesus call the instruction to love one another?', 'John 13:34', 'A new commandment I give to you, that you love one another. Just as I have loved you, you also love one another.', 'WEB', 1,
   '{"type": "recall", "template": "A new ___ I give to you, that you love one another. Just as I have loved you, you also love one another.", "answer": "commandment"}', false, 34),

  -- Scene 12: The Farewell Discourse (John 14:1-6, 15:1-13)
  ((select id from w), 'multiple_choice', 'According to John 14:2-3, what does Jesus promise to do after preparing a place for his disciples?', 'John 14:2-3', 'In my Father''s house are many homes... I am going to prepare a place for you. If I go and prepare a place for you, I will come again and will receive you to myself.', 'WEB', 3,
   '{"type": "multiple_choice", "options": ["Come again and receive them to himself", "Send the Holy Spirit in his place", "Remain in the Father''s house forever", "Appear only in visions"], "correct_index": 0}', false, 35),
  ((select id from w), 'recall', 'Fill in the missing word: "I am the ___, the truth, and the life."', 'John 14:6', 'I am the way, the truth, and the life. No one comes to the Father, except through me.', 'WEB', 1,
   '{"type": "recall", "template": "I am the ___, the truth, and the life. No one comes to the Father, except through me.", "answer": "way"}', false, 36),
  ((select id from w), 'recall', 'Fill in the missing word: "I am the ___. You are the branches."', 'John 15:5', 'I am the vine. You are the branches. He who remains in me and I in him bears much fruit, for apart from me you can do nothing.', 'WEB', 2,
   '{"type": "recall", "template": "I am the ___. You are the branches. He who remains in me and I in him bears much fruit, for apart from me you can do nothing.", "answer": "vine"}', false, 37),
  ((select id from w), 'multiple_choice', 'According to John 15:13, for whom does someone lay down his life, in the greatest expression of love?', 'John 15:13', 'Greater love has no one than this, that someone lay down his life for his friends.', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["His friends", "His family", "His nation", "His enemies"], "correct_index": 0}', false, 38),

  -- Scene 13: The Crucifixion: Distinctively John's Details (John 19:16-34)
  ((select id from w), 'multiple_choice', 'According to John 19:17-18, where was Jesus positioned among the three crucified?', 'John 19:17-18', 'He went out, bearing his cross, to the place called ''The Place of a Skull''... where they crucified him, and with him two others, on either side one, and Jesus in the middle.', 'WEB', 3,
   '{"type": "multiple_choice", "options": ["In the middle", "On the right side", "On the left side", "Behind the other two"], "correct_index": 0}', false, 39),
  ((select id from w), 'recall', 'Fill in the missing word: what did Jesus say after receiving the vinegar, before giving up his spirit?', 'John 19:30', 'When Jesus therefore had received the vinegar, he said, ''It is finished!'' Then he bowed his head and gave up his spirit.', 'WEB', 1,
   '{"type": "recall", "template": "When Jesus therefore had received the vinegar, he said, ''It is ___!'' Then he bowed his head and gave up his spirit.", "answer": "finished"}', false, 40),
  ((select id from w), 'multiple_choice', 'According to John 19:34, what came out immediately after a soldier pierced Jesus''s side with a spear?', 'John 19:34', 'However, one of the soldiers pierced his side with a spear, and immediately blood and water came out.', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["Blood and water", "Only blood", "Only water", "Nothing"], "correct_index": 0}', false, 41),

  -- Scene 14: The Empty Tomb and Doubting Thomas (John 20:1-29)
  ((select id from w), 'multiple_choice', 'According to John 20:1-2, who did Mary Magdalene run to tell after finding the tomb empty?', 'John 20:1-2', 'Mary Magdalene went early, while it was still dark, to the tomb, and saw that the stone had been taken away from the tomb. Therefore she ran and came to Simon Peter and to the other disciple... and said to them, ''They have taken away the Lord out of the tomb.''', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["Simon Peter and the other disciple", "The chief priests", "The Roman guard", "The other women at the tomb"], "correct_index": 0}', false, 42),
  ((select id from w), 'recall', 'Fill in the missing word: what did Mary call Jesus in Aramaic, meaning "Teacher"?', 'John 20:16', 'Jesus said to her, ''Mary.'' She turned and said to him, ''Rabboni!'' which is to say, ''Teacher!''', 'WEB', 2,
   '{"type": "recall", "template": "Jesus said to her, ''Mary.'' She turned and said to him, ''___!'' which is to say, ''Teacher!''", "answer": "Rabboni"}', false, 43),
  ((select id from w), 'recall', 'Fill in the missing word: what did Thomas say he would not do, without touching Jesus''s wounds?', 'John 20:25', '''Unless I see in his hands the print of the nails, put my finger into the print of the nails, and put my hand into his side, I will not believe.''', 'WEB', 3,
   '{"type": "recall", "template": "''Unless I see in his hands the print of the nails, put my finger into the print of the nails, and put my hand into his side, I will not ___.''", "answer": "believe"}', false, 44),
  ((select id from w), 'recall', 'Fill in the missing word: what did Thomas call Jesus, "My Lord and my ___!"?', 'John 20:28', 'Thomas answered him, ''My Lord and my God!''', 'WEB', 2,
   '{"type": "recall", "template": "Thomas answered him, ''My Lord and my ___!''", "answer": "God"}', true, 45),
  ((select id from w), 'multiple_choice', 'According to John 20:29, who does Jesus say is blessed?', 'John 20:29', 'Jesus said to him, ''Because you have seen me, you have believed. Blessed are those who have not seen and have believed.''', 'WEB', 2,
   '{"type": "multiple_choice", "options": ["Those who have not seen and have believed", "Those who touch his wounds", "Those who saw the empty tomb", "Those who guard the tomb"], "correct_index": 0}', false, 46),

  -- Sequence: three of the "I am" statements, in order (Difficulty Ladder Level 4 example)
  ((select id from w), 'sequence', 'Given three of Jesus''s "I am" statements, place them in the order they occur in the book and match each to its reference.', 'John 6:35; 11:25; 14:6', 'The bread of life; the resurrection and the life; the way, the truth, and the life', 'WEB', 4,
   '{"type": "sequence", "items": ["\"I am the bread of life. Whoever comes to me will not be hungry...\" — feeding the five thousand (6:35)", "\"I am the resurrection and the life. He who believes in me will still live, even if he dies.\" — raising Lazarus (11:25)", "\"I am the way, the truth, and the life. No one comes to the Father, except through me.\" — the farewell discourse (14:6)"], "correct_order": [0, 1, 2]}', false, 47),

  -- Sequence: three quotations, in order
  ((select id from w), 'sequence', 'Given these three quotations, place them in the order they occur in the book and match each to its reference.', 'John 3:16; 13:34; 20:28', 'God''s love for the world; the new commandment; Thomas''s confession', 'WEB', 4,
   '{"type": "sequence", "items": ["\"For God so loved the world, that he gave his only born Son...\" — Nicodemus and being born anew (3:16)", "\"A new commandment I give to you, that you love one another...\" — washing the disciples'' feet (13:34)", "\"My Lord and my God!\" — Thomas''s confession (20:28)"], "correct_order": [0, 1, 2]}', false, 48),

  -- Boss battle (world 43 capstone): all 14 pivotal scenes, in order
  ((select id from w), 'sequence', 'Boss battle: order all fourteen pivotal scenes of John''s Gospel as they appear in the book.', 'John 1-20 (pivotal scenes overview)', 'A mixed-format sequence spanning all fourteen pivotal scenes of John''s Gospel, from the Prologue to the resurrection appearance to Thomas.', 'WEB', 5,
   '{"type": "sequence", "items": ["The Prologue: the Word made flesh (John 1:1-18)", "The first sign: water into wine at Cana (John 2:1-11)", "Nicodemus and being born anew (John 3:1-17)", "The Samaritan woman at the well (John 4:1-42)", "Feeding the five thousand and walking on water (John 6:1-21, 35)", "The light of the world and the truth that sets free (John 8:12, 31-32)", "Before Abraham was, I am (John 8:58)", "The man born blind (John 9:1-25)", "I am the good shepherd (John 10:1-30)", "Raising Lazarus: I am the resurrection and the life (John 11:1-44)", "Washing the disciples'' feet and the new commandment (John 13:1-35)", "The farewell discourse: the way, the truth, and the life, and the true vine (John 14:1-6, 15:1-13)", "The crucifixion: distinctively John''s details (John 19:16-34)", "The empty tomb and doubting Thomas (John 20:1-29)"], "correct_order": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]}', true, 49)
;
