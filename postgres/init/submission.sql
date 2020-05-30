\c doj;

DROP TABLE IF EXISTS submittions;
CREATE TABLE submittions (
  submmit_id VARCHAR(8) PRIMARY KEY,
  submit_date TIMESTAMP NOT NULL,
  username VARCHAR(16) NOT NULL,
  problem_id VARCHAR(8) NOT NULL,
  result VARCHAR(4) DEFAULT 'WJ',
  language VARCHAR(8) NOT NULL,
  score INTEGER DEFAULT 0,
  test_case VARCHAR(8),
  source_code TEXT,
  code_size INTEGER,  -- byte
  compile_message TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
