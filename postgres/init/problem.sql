DROP DATABASE IF EXISTS problem;
CREATE DATABASE problem;
\c problem;

DROP TABLE IF EXISTS problems;
CREATE TABLE problems (
  problem_id VARCHAR(8) UNIQUE NOT NULL,
  problem_name VARCHAR(16) NOT NULL,
  time_limit INTEGER NOT NULL,  -- sec
  memory_limit INTEGER NOT NULL,  -- MB
  score INTEGER NOT NULL,
  problem_text TEXT,
  problem_constraint TEXT,
  problem_input TEXT,
  problem_output TEXT,
  input_example TEXT,
  output_example TEXT,
);
CREATE INDEX ON problems (problem_id);
