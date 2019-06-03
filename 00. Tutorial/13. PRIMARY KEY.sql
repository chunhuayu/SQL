# ID column with PRIMARY KEY is unique and automatically populated
# :memory:

CREATE TABLE test (
  id INTEGER PRIMARY KEY,  
  a INTEGER,
  b TEXT
);                         # id column with primary key constraint allows system to generate a unique sequential number
INSERT INTO test (a, b) VALUES ( 10, 'a' );
INSERT INTO test (a, b) VALUES ( 11, 'b' );
INSERT INTO test (a, b) VALUES ( 12, 'c' );
SELECT * FROM test;       # id column is automatically generated a sequential numbers 1, 2, 3 

