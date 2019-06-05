/*
The SQL MIN() and MAX() Functions

The MIN() function returns the smallest value of the selected column.

The MAX() function returns the largest value of the selected column.

MIN() Syntax
   SELECT MIN(column_name)
   FROM table_name
   WHERE condition;

MAX() Syntax
   SELECT MAX(column_name)
   FROM table_name
   WHERE condition;

Demo Database
Below is a selection from the "Products" table in the Northwind sample database:

ProductID	ProductName	SupplierID	CategoryID	Unit	Price
1	Chais	1	1	10 boxes x 20 bags	18
2	Chang	1	1	24 - 12 oz bottles	19
3	Aniseed Syrup	1	2	12 - 550 ml bottles	10
4	Chef Anton's Cajun Seasoning	2	2	48 - 6 oz jars	22
5	Chef Anton's Gumbo Mix	2	2	36 boxes	21.35
*/

-- MIN() Example. The following SQL statement finds the price of the cheapest product:

SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- MAX() Example. The following SQL statement finds the price of the most expensive product:

SELECT MAX(Price) AS LargestPrice
FROM Products;
