DROP DATABASE IF EXISTS language;
CREATE DATABASE language;
\c language;

DROP TABLE IF EXISTS languages;
CREATE TABLE languages (
  language VARCHAR(16) PRIMARY KEY,
  version VARCHAR(32) NOT NULL,
  base_image VARCHAR(16) NOT NULL,  -- base image of docker
  compile_command VARCHAR(64),
  execute_command VARCHAR(64)
);
