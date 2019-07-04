DROP DATABASE IF EXISTS problem;
CREATE DATABASE problem;
\c problem;

DROP TABLE IF EXISTS problems;
CREATE TABLE problems (
  contest_id VARCHAR(8) NOT NULL,
  problem_id VARCHAR(8) PRIMARY KEY,
  problem_name VARCHAR(16) NOT NULL,
  time_limit INTEGER NOT NULL,  -- sec
  memory_limit INTEGER NOT NULL,  -- MB
  score INTEGER NOT NULL,
  writer VARCHAR(16) NOT NULL
);

DROP TABLE IF EXISTS problem_details;
CREATE TABLE problem_details (
  problem_id VARCHAR(8) REFERENCES problems,
  problem_text TEXT,
  problem_constraint TEXT,
  problem_input TEXT,
  problem_output TEXT
);
CREATE INDEX ON problem_details (problem_id);

DROP TABLE IF EXISTS problem_io_examples;
CREATE TABLE problem_io_examples (
  problem_id VARCHAR(8) NOT NULL REFERENCES problems,
  input_example TEXT,
  output_example TEXT
);
CREATE INDEX ON problem_io_examples (problem_id);
