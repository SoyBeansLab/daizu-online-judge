DROP DATABASE IF EXISTS problem;
CREATE DATABASE problem;
\c problem;

DROP TABLE IF EXISTS problems;
CREATE TABLE problems (
  contest_id VARCHAR(8) NOT NULL,
  problem_id VARCHAR(8) PRIMARY KEY,
  problem_order VARCHAR(4) NOT NULL,
  problem_name VARCHAR(16) NOT NULL,
  time_limit INTEGER NOT NULL,  -- sec
  memory_limit INTEGER NOT NULL,  -- MB
  score INTEGER NOT NULL,
  writer VARCHAR(16) NOT NULL,
  problem_detail TEXT
);
