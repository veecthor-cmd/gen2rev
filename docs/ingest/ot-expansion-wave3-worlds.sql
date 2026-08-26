-- Gen2Rev world rows for the Old Testament expansion, Wave 3 (worlds 28-39)
-- The 12 Minor Prophets: Hosea through Malachi
-- Content: docs/content/*.md | Review: docs/CONTENT_REVIEW_LOG.md | QA: docs/QA_SIGNOFF.md
-- Flavor text style matches the existing 27 worlds' one-line evocative pattern.

insert into public.world (book_slug, sequence_order, title, flavor_text, icon_ref)
values
  ('hosea', 28, 'Hosea', 'A prophet''s ruined marriage, and a love that would not let go.', 'book-hosea'),
  ('joel', 29, 'Joel', 'A locust plague, a call to return, and a Spirit poured out.', 'book-joel'),
  ('amos', 30, 'Amos', 'A shepherd from Tekoa, and justice rolling down like a river.', 'book-amos'),
  ('obadiah', 31, 'Obadiah', 'The shortest book, and the sharpest word for Edom''s pride.', 'book-obadiah'),
  ('jonah', 32, 'Jonah', 'A reluctant prophet, a great fish, and a city spared.', 'book-jonah'),
  ('micah', 33, 'Micah', 'What does Yahweh require of you? To act justly and walk humbly.', 'book-micah'),
  ('nahum', 34, 'Nahum', 'Nineveh''s fall, and a stronghold in the day of trouble.', 'book-nahum'),
  ('habakkuk', 35, 'Habakkuk', 'A prophet who argued with God, and learned to rejoice anyway.', 'book-habakkuk'),
  ('zephaniah', 36, 'Zephaniah', 'A day of reckoning, and a God who rejoices over you with singing.', 'book-zephaniah'),
  ('haggai', 37, 'Haggai', 'Rebuild the house, and the latter glory will be greater than the former.', 'book-haggai'),
  ('zechariah', 38, 'Zechariah', 'Night visions and a promise: not by might, nor by power, but by my Spirit.', 'book-zechariah'),
  ('malachi', 39, 'Malachi', 'The Old Testament''s last word, closing on the promise of Elijah.', 'book-malachi')
;
