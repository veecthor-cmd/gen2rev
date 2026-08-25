-- Gen2Rev world rows for the Old Testament expansion, Wave 1 (worlds 15-22)
-- Ezra, Nehemiah, Esther, Job, Psalms, Proverbs, Ecclesiastes, Song of Solomon
-- Content: docs/content/*.md | Review: docs/CONTENT_REVIEW_LOG.md | QA: docs/QA_SIGNOFF.md
-- Flavor text style matches the existing 14 worlds' one-line evocative pattern.

insert into public.world (book_slug, sequence_order, title, flavor_text, icon_ref)
values
  ('ezra', 15, 'Ezra', 'Exiles return, and a ruined house rises again.', 'book-ezra'),
  ('nehemiah', 16, 'Nehemiah', 'Broken walls rebuilt, brick by brick, in fifty-two days.', 'book-nehemiah'),
  ('esther', 17, 'Esther', 'A queen''s silence broken, for such a time as this.', 'book-esther'),
  ('job', 18, 'Job', 'Everything lost, and a voice answering from the storm.', 'book-job'),
  ('psalms', 19, 'Psalms', 'Songs of shepherd, storm, and thanksgiving.', 'book-psalms'),
  ('proverbs', 20, 'Proverbs', 'Wisdom calling aloud in the street.', 'book-proverbs'),
  ('ecclesiastes', 21, 'Ecclesiastes', 'A search for meaning under the sun.', 'book-ecclesiastes'),
  ('song-of-solomon', 22, 'Song of Solomon', 'A song of love, strong as death.', 'book-songofsolomon')
;
