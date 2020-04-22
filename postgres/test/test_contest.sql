\c contest;

-- recent
INSERT INTO contests VALUES ('test0001', 'Welcome Contest', make_timestamp(2020, 4, 1, 0, 0, 0), make_timestamp(2020, 4, 2, 0, 0, 0), 120, 'ucpr', 'これはWelcome Contestです.', 4);
INSERT INTO contests VALUES ('test0002', 'Welcome Contest', make_timestamp(2020, 4, 20, 0, 0, 0), make_timestamp(2020, 4, 21, 0, 0, 0), 120, 'ucpr', 'これはWelcome Contestです.', 4);

-- current
INSERT INTO contests VALUES ('test0003', 'Welcome Contest', current_timestamp, current_timestamp + interval '24 hours', 120, 'ucpr', 'これはWelcome Contestです.', 4);
INSERT INTO contests VALUES ('test0004', 'Welcome Contest', current_timestamp, current_timestamp + interval '36 hours', 120, 'ucpr', 'これはWelcome Contestです.', 4);

-- upcoming
INSERT INTO contests VALUES ('test0005', 'Welcome Contest', make_timestamp(2020, 9, 9, 0, 0, 0), make_timestamp(2020, 9, 10, 0, 0, 0), 120, 'ucpr', 'これはWelcome Contestです.', 4);
INSERT INTO contests VALUES ('test0006', 'Welcome Contest', make_timestamp(2020, 10, 1, 0, 0, 0), make_timestamp(2020, 10, 2, 0, 0, 0), 120, 'ucpr', 'これはWelcome Contestです.', 4);
