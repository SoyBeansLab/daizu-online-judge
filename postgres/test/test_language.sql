\c doj;

INSERT INTO languages (language, version, base_image, compile_command, execute_command) VALUES (
  'C++',
  'g++ 9.2.1',
  'gnu_g++',
  'g++ Main.cpp',
  './a.out'
);
INSERT INTO languages (language, version, base_image, compile_command, execute_command) VALUES (
  'C',
  'gcc 9.2.1',
  'gnu_gcc',
  'gcc Main.c',
  './a.out'
);
INSERT INTO languages (language, version, base_image, compile_command, execute_command) VALUES (
  'Python3',
  'Python 3.8.4',
  'python3',
  'python Main.py',
  ''
);
