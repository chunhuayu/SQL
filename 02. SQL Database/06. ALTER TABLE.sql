/*
SQL ALTER TABLE Statement
The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

ALTER TABLE - ADD Column
To add a column in a table, use the following syntax:

Syntax:
ALTER TABLE table_name
ADD column_name datatype;

The following SQL adds an "Email" column to the "Customers" table, add an "Date0fBirth" column to "Persons" table.
*/


ALTER TABLE Customers
ADD Email varchar(255);

ALTER TABLE Persons
ADD DateOfBirth date;

/*
ALTER TABLE - DROP COLUMN
To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):

Syntax:
ALTER TABLE table_name
DROP COLUMN column_name;
The following SQL deletes the "Email" column from the "Customers" table:
*/

ALTER TABLE Customers
DROP COLUMN Email;

/*
ALTER TABLE - ALTER/MODIFY COLUMN
To change the data type of a column in a table, use the following syntax:

Syntax: SQL Server / MS Access:

ALTER TABLE table_name
ALTER COLUMN column_name datatype;


Syntax: My SQL / Oracle (prior version 10G):

ALTER TABLE table_name
MODIFY COLUMN column_name datatype;


Syntax: Oracle 10G and later:

ALTER TABLE table_name
MODIFY column_name datatype;
*/

/*
Change Data Type Example
Now we want to change the data type of the column named "DateOfBirth" in the "Persons" table.

We use the following SQL statement:
Notice that the "DateOfBirth" column is now of type year and is going to hold a year in a two- or four-digit format.
*/

ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;

/*
DROP COLUMN Example
Next, we want to delete the column named "DateOfBirth" in the "Persons" table.

We use the following SQL statement:
*/

ALTER TABLE Persons
DROP COLUMN DateOfBirth;


-- ALTER TABLE
-- test.db

CREATE TABLE test ( a TEXT, b TEXT, c TEXT );
INSERT INTO test VALUES ( 'one', 'two', 'three');
INSERT INTO test VALUES ( 'two', 'three', 'four');
INSERT INTO test VALUES ( 'three', 'four', 'five');
SELECT * FROM test;

ALTER TABLE test ADD d TEXT;                    # add d column which is not assigned value, that is NULL
ALTER TABLE test ADD e TEXT DEFAULT 'panda';    # add e column which has default value = 'panda'

DROP TABLE test;                                # delete table test

