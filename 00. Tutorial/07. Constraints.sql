/*
:memory:
Constraints create rules governing the behavior of columns in your tables.

SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table. 
This ensures the accuracy and reliability of the data in the table.
If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be column level or table level. 
Column level constraints apply to a column, and table level constraints apply to the whole table.

The following constraints are commonly used in SQL:

NOT NULL    - Ensures that a column cannot have a NULL value
UNIQUE      - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Uniquely identifies a row/record in another table
CHECK       - Ensures that all values in a column satisfies a specific condition
DEFAULT     - Sets a default value for a column when no value is specified
INDEX.      - Used to create and retrieve data from the database very quickly
*/


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

