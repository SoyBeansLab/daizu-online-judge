\c doj;

DROP TABLE IF EXISTS submissions;
CREATE TABLE submissions (
  submit_id VARCHAR(8) PRIMARY KEY,
  problem_id VARCHAR(8) REFERENCES problems(problem_id),
  username VARCHAR(16) NOT NULL,
  result VARCHAR(4) DEFAULT 'WJ',
  language VARCHAR(8) REFERENCES languages(language),
  score INTEGER DEFAULT 0,
  code_size INTEGER,  -- byte
  all_test_case INTEGER,
  passed_test_case INTEGER,
  compile_message TEXT,
  source_code TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
