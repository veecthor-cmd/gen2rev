-- Gen2Rev world rows for the Old Testament expansion, Wave 2 (worlds 23-27)
-- Isaiah, Jeremiah, Lamentations, Ezekiel, Daniel
-- Content: docs/content/*.md | Review: docs/CONTENT_REVIEW_LOG.md | QA: docs/QA_SIGNOFF.md
-- Flavor text style matches the existing 22 worlds' one-line evocative pattern.

insert into public.world (book_slug, sequence_order, title, flavor_text, icon_ref)
values
  ('isaiah', 23, 'Isaiah', 'A prophet''s voice across four kings and a nation''s conscience.', 'book-isaiah'),
  ('jeremiah', 24, 'Jeremiah', 'Wept for a city that would not listen until it was too late.', 'book-jeremiah'),
  ('lamentations', 25, 'Lamentations', 'How the city sits solitary — grief given words.', 'book-lamentations'),
  ('ezekiel', 26, 'Ezekiel', 'Visions by a foreign river, and bones that live again.', 'book-ezekiel'),
  ('daniel', 27, 'Daniel', 'A furnace, a den of lions, and a faith that would not bend.', 'book-daniel')
;
