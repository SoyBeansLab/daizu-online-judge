\c doj;

DROP TABLE IF EXISTS contests;
CREATE TABLE contests (
  contest_id VARCHAR(8) PRIMARY KEY,
  contest_name VARCHAR(32) NOT NULL,
  contest_start_date TIMESTAMP NOT NULL,
  contest_finish_date TIMESTAMP NOT NULL,
  contest_time INTEGER,  -- minutes
  writer VARCHAR(8) NOT NULL,
  description TEXT,
  top_content TEXT,
  problem_number INTEGER DEFAULT 0 NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

