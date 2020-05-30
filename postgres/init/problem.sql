\c doj;

DROP TABLE IF EXISTS problems;
CREATE TABLE problems (
  problem_id VARCHAR(8) PRIMARY KEY,
  contest_id VARCHAR(8) NOT NULL,
  problem_order VARCHAR(4) NOT NULL,
  problem_name VARCHAR(16) NOT NULL,
  time_limit INTEGER NOT NULL,  -- sec
  memory_limit INTEGER NOT NULL,  -- MB
  score INTEGER NOT NULL,
  problem_detail TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

