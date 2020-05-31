\c doj;

DROP TABLE IF EXISTS registrations;
CREATE TABLE registrations (
  contest_id VARCHAR(8) REFERENCES contests(contest_id),
  username VARCHAR(16),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
