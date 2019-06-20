DROP DATABASE IF EXISTS contest;
CREATE DATABASE contest;
\c contest;

DROP TABLE IF EXISTS contests;
CREATE TABLE contests (
  contest_id VARCHAR(8) UNIQUE NOT NULL,
  contest_name VARCHAR(32) NOT NULL,
  contest_date DATETIME NOT NULL,
  contest_time INTEGER NOT NULL,  -- minutes
  writer VARCHAR(8) NOT NULL,
  contest_description TEXT,
  problem_number INTEGER DEFAULT 0 NOT NULL,
  time_limit INTEGER DEFAULT 0 NOT NULL,  -- sec
  memory_limit INTEGER DEFAULT 0 NOT NULL  -- MB
);
CREATE INDEX ON contests (contest_id);
