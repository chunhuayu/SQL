# DROP TABLE
# :memory:
# delete a table = DROP TABLE
# delete a table with conditions = DROP TABLE IF ...

CREATE TABLE test ( a TEXT, b TEXT );
INSERT INTO test VALUES ( 'one', 'two' );
SELECT * FROM test;
DROP TABLE test;
DROP TABLE IF EXISTS test;

