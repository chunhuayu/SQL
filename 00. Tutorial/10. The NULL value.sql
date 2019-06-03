# NULL is not a value, is the absence of a value
# test.db

SELECT * FROM test;
DELETE FROM test WHERE a = 3;
SELECT * FROM test WHERE a = 1;
DELETE FROM test WHERE a = 1;


SELECT * FROM test;
SELECT * FROM test WHERE a = NULL;                       # incorrect syntax
SELECT * FROM test WHERE a IS NULL;                      # correct
SELECT * FROM test WHERE a IS NOT NULL;                  # correct
INSERT INTO test ( a, b, c ) VALUES ( 0, NULL, '' );     # '' is empty string.  '' is not NULL
SELECT * FROM test WHERE b IS NULL;
SELECT * FROM test WHERE b = '';
SELECT * FROM test WHERE c = '';
SELECT * FROM test WHERE c IS NULL;

DROP TABLE test;
CREATE TABLE test (
  a INTEGER NOT NULL,
  b TEXT NOT NULL,
  c TEXT
);                                                 # creating table test with constraints

INSERT INTO test VALUES ( 1, 'this', 'that' );     # successfully insert one row
SELECT * FROM test;

INSERT INTO test ( b, c ) VALUES ( 'one', 'two' ); # fail to insert row 
INSERT INTO test ( a, c ) VALUES ( 1, 'two' );     # failed
INSERT INTO test ( a, b ) VALUES ( 1, 'two' );     # successful
DROP TABLE test;

