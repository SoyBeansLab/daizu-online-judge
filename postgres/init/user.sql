DROP DATABASE IF EXISTS doj_user;
CREATE DATABASE doj_user;
\c doj_user;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  username VARCHAR(16) PRIMARY KEY,
);
