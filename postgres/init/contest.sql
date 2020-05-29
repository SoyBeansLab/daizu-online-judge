DROP DATABASE IF EXISTS contest;
CREATE DATABASE contest;
\c contest;

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
  update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- update_atを更新するためのfunction
-- http://to-c.hatenablog.com/entry/2017/04/17/225826
CREATE FUNCTION set_update_timestamp() RETURNS OPAQUE AS '
  BEGIN
    new.update_at := ''now'';
    RETURN new;
  END;
' LANGUAGE 'plpgsql';

CREATE TRIGGER update_trigger BEFORE UPDATE ON contests FOR EACH ROW EXECUTE PROCEDURE set_update_timestamp();

