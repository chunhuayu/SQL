# ALTER TABLE
# test.db

CREATE TABLE test ( a TEXT, b TEXT, c TEXT );
INSERT INTO test VALUES ( 'one', 'two', 'three');
INSERT INTO test VALUES ( 'two', 'three', 'four');
INSERT INTO test VALUES ( 'three', 'four', 'five');
SELECT * FROM test;

ALTER TABLE test ADD d TEXT;                    # add d column which is not assigned value, that is NULL
ALTER TABLE test ADD e TEXT DEFAULT 'panda';    # add e column which has default value = 'panda'

DROP TABLE test;                                # delete table test

