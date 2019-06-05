/* 
AUTO INCREMENT Field
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.

Often this is the primary key field that we would like to be created automatically every time a new record is inserted.
*/

-- Syntax for MySQL
-- The following SQL statement defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:

CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);

-- MySQL uses the AUTO_INCREMENT keyword to perform an auto-increment feature.

/*
By default, the starting value for AUTO_INCREMENT is 1, and it will increment by 1 for each new record.

To let the AUTO_INCREMENT sequence start with another value, use the following SQL statement:
*/

ALTER TABLE Persons AUTO_INCREMENT=100;

/* 
To insert a new record into the "Persons" table, 
we will NOT have to specify a value for the "Personid" column (a unique value will be added automatically):
*/

INSERT INTO Persons (FirstName,LastName)
VALUES ('Lars','Monsen');

/*
The SQL statement above would insert a new record into the "Persons" table. 
The "Personid" column would be assigned a unique value. 
The "FirstName" column would be set to "Lars" and the "LastName" column would be set to "Monsen".
*/

/* 
Syntax for SQL Server
The following SQL statement defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:


CREATE TABLE Persons (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

/*
The MS SQL Server uses the IDENTITY keyword to perform an auto-increment feature.
In the example above, the starting value for IDENTITY is 1, and it will increment by 1 for each new record.
Tip: To specify that the "Personid" column should start at value 10 and increment by 5, change it to IDENTITY(10,5).
To insert a new record into the "Persons" table, 
we will NOT have to specify a value for the "Personid" column (a unique value will be added automatically):
*/

INSERT INTO Persons (FirstName,LastName)
VALUES ('Lars','Monsen');

/*
The SQL statement above would insert a new record into the "Persons" table. 
The "Personid" column would be assigned a unique value. 
The "FirstName" column would be set to "Lars" and the "LastName" column would be set to "Monsen".
*/

