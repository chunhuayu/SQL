# Constraints
# :memory:
# Constraints create rules governing the behavior of columns in your tables.

CREATE TABLE test ( a TEXT, b TEXT, c TEXT );
INSERT INTO test ( a, b ) VALUES ( 'one', 'two' );
SELECT * FROM test;                                                   # c column is NULL 

CREATE TABLE test ( a TEXT, b TEXT, c TEXT NOT NULL );            
INSERT INTO test ( a, b ) VALUES ( 'one', 'two' );                    # fail to insert row due to the constraint of c column


CREATE TABLE test ( a TEXT, b TEXT, c TEXT DEFAULT 'panda' );         # c column has default value='panda'
INSERT INTO test ( a, b ) VALUES ( 'one', 'two' );                    # succeed in inserting row


CREATE TABLE test ( a TEXT UNIQUE, b TEXT, c TEXT DEFAULT 'panda' );  # a column is unique
INSERT INTO test ( a, b ) VALUES ( 'one', 'two' );                    # succeed in inserting row
INSERT INTO test ( a, b ) VALUES ( 'one', 'two' );           # fail to insert this row due to the constraint of a column


CREATE TABLE test ( a TEXT UNIQUE, b TEXT, c TEXT DEFAULT 'panda' ); 
INSERT INTO test ( a, b ) VALUES ( 'NULL', 'two' );                    
INSERT INTO test ( a, b ) VALUES ( 'NULL', 'two' );          # successfully add two rows, even though they are identical NULL 


CREATE TABLE test ( a TEXT UNIQUE NOT NULL, b TEXT, c TEXT DEFAULT 'panda' );
INSERT INTO test ( a, b ) VALUES ( 'NULL', 'two' );          # failed          
INSERT INTO test ( a, b ) VALUES ( 'NULL', 'two' );          # failed

