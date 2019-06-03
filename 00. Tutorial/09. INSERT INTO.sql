# INSERT INTO
# test.db
# syntax: INSERT INTO (table name) (columns names) VALUE (assign respondent values )

CREATE TABLE test ( a INTEGER, b TEXT, c TEXT );                 # three columns
SELECT * FROM test;

INSERT INTO test VALUES ( 1, 'This', 'Right here!' ); 
INSERT INTO test ( b, c ) VALUES ( 'That', 'Over there!' ); 
INSERT INTO test DEFAULT VALUES;                                 # empty value
INSERT INTO test ( a, b, c ) SELECT id, name, description from item;   # add rows from item table to test table

