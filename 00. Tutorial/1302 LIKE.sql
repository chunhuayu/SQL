/*
The SQL LIKE Operator
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

% - The percent sign represents zero, one, or multiple characters
_ - The underscore represents a single character

Note: MS Access uses an asterisk (*) instead of the percent sign (%), and a question mark (?) instead of the underscore (_).

The percent sign and the underscore can also be used in combinations!

LIKE Syntax
   SELECT column1, column2, ...
   FROM table_name
   WHERE columnN LIKE pattern;

Tip: You can also combine any number of conditions using AND or OR operators.

Demo Database
Below is a selection from the "Customers" table in the Northwind sample database:

CustomerID	CustomerName	ContactName	Address	City	PostalCode	Country
1 Alfreds Futterkiste  Maria Anders  Obere Str. 57	Berlin	12209	Germany
2 Ana Trujillo Emparedados y helados Ana Trujillo Avda. de la Constitución 2222  México D.F.	05021	Mexico
3 Antonio Moreno Taquería	Antonio Moreno	Mataderos 2312	 México D.F.	05023	Mexico
4 Around the Horn	Thomas Hardy	120 Hanover Sq.	London	WA1 1DP	UK
5 Berglunds snabbköp	Christina Berglund	Berguvsvägen 8	Luleå	S-958 22	Sweden

SQL LIKE Examples
The following SQL statement selects all customers with a CustomerName starting with "a":
*/

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

-- The following SQL statement selects all customers with a CustomerName ending with "a":

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

-- The following SQL statement selects all customers with a CustomerName that have "or" in any position:

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

-- The following SQL statement selects all customers with a CustomerName that have "r" in the second position:

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

-- The following SQL statement selects all customers with a CustomerName that starts with "a" and are at least 3 characters 
-- in length:

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

-- The following SQL statement selects all customers with a ContactName that starts with "a" and ends with "o":

SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';

-- The following SQL statement selects all customers with a CustomerName that does NOT start with "a":

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';
