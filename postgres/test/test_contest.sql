\c doj;

-- recent
INSERT INTO contests (contest_id, contest_name, contest_start_date, contest_finish_date, writer, top_content) VALUES (
  'test0001',
  'Welcome Contest',
  make_timestamp(2020, 4, 1, 0, 0, 0),
  make_timestamp(2020, 4, 2, 0, 0, 0),
  'ucpr',
  'これはWelcome Contestです.'
);
INSERT INTO contests (contest_id, contest_name, contest_start_date, contest_finish_date, writer, top_content) VALUES (
  'test0002',
  'Welcome Contest',
  make_timestamp(2020, 4, 20, 0, 0, 0),
  make_timestamp(2020, 4, 21, 0, 0, 0),
  'ucpr',
  'これはWelcome Contestです.'
);

-- current
INSERT INTO contests (contest_id, contest_name, contest_start_date, contest_finish_date, writer, top_content) VALUES (
  'test0003',
  'Welcome Contest',
  current_timestamp,
  current_timestamp + interval '24 hours',
  'ucpr',
  'これはWelcome Contestです.'
);
INSERT INTO contests (contest_id, contest_name, contest_start_date, contest_finish_date, writer, top_content) VALUES (
  'test0004',
  'Welcome Contest',
  current_timestamp,
  current_timestamp + interval '36 hours',
  'ucpr',
  'これはWelcome Contestです.'
);

-- upcoming
INSERT INTO contests (contest_id, contest_name, contest_start_date, contest_finish_date, writer, top_content) VALUES (
  'test0005',
  'Welcome Contest',
  make_timestamp(2020, 9, 9, 0, 0, 0),
  make_timestamp(2020, 9, 10, 0, 0, 0),
  'ucpr',
  'これはWelcome Contestです.'
);
INSERT INTO contests (contest_id, contest_name, contest_start_date, contest_finish_date, writer, top_content) VALUES (
  'test0006',
  'Welcome Contest',
  make_timestamp(2020, 10, 1, 0, 0, 0),
  make_timestamp(2020, 10, 2, 0, 0, 0),
  'ucpr',
  'これはWelcome Contestです.'
);
