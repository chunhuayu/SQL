/*
SQL ANY and ALL Operators

The ANY and ALL operators are used with a WHERE or HAVING clause.
The ANY operator returns true if any of the subquery values meet the condition.

The ALL operator returns true if all of the subquery values meet the condition.

ANY Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
(SELECT column_name FROM table_name WHERE condition);

ALL Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
(SELECT column_name FROM table_name WHERE condition);
Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).
*/

/*
Demo Database
Below is a selection from the "Products" table in the Northwind sample database:

ProductID	ProductName	SupplierID	CategoryID	Unit	Price
1	Chais	1	1	10 boxes x 20 bags	18
2	Chang	1	1	24 - 12 oz bottles	19
3	Aniseed Syrup	1	2	12 - 550 ml bottles	10
4	Chef Anton's Cajun Seasoning	2	2	48 - 6 oz jars	22
5	Chef Anton's Gumbo Mix	2	2	36 boxes	21.35
And a selection from the "OrderDetails" table:

OrderDetailID	OrderID	ProductID	Quantity
1	10248	11	12
2	10248	42	10
3	10248	72	5
4	10249	14	9
5	10249	51	40
*/

/*
The ANY operator returns TRUE if any of the subquery values meet the condition.
The following SQL statement returns TRUE and lists the productnames if it finds ANY records in the OrderDetails table 
that quantity = 10:
*/

SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);

/* The following SQL statement returns TRUE and lists the productnames if it finds ANY records in the OrderDetails table 
   that quantity > 99:
*/

SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity > 99);

/*
SQL ALL Example
The ALL operator returns TRUE if all of the subquery values meet the condition.

The following SQL statement returns TRUE and lists the productnames 
if ALL the records in the OrderDetails table has quantity = 10:
*/

SELECT ProductName
FROM Products
WHERE ProductID = ALL (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);
