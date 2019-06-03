# Constraints
# :memory:

CREATE TABLE test ( a TEXT, b TEXT, c TEXT );
INSERT INTO test ( a, b ) VALUES ( 'one', 'two' );
SELECT * FROM test;

CREATE TABLE test ( a TEXT, b TEXT, c TEXT NOT NULL );
CREATE TABLE test ( a TEXT, b TEXT, c TEXT DEFAULT 'panda' );
CREATE TABLE test ( a TEXT UNIQUE, b TEXT, c TEXT DEFAULT 'panda' );
CREATE TABLE test ( a TEXT UNIQUE NOT NULL, b TEXT, c TEXT DEFAULT 'panda' );

