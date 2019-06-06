-- The following SQL statement returns the cities (only distinct values) from both the "Customers" and the "Suppliers" table:

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

/*
Note: If some customers or suppliers have the same city, each city will only be listed once, 
because UNION selects only distinct values. Use UNION ALL to also select duplicate values!

SQL UNION ALL Example
The following SQL statement returns the cities (duplicate values also) from both the "Customers" and the "Suppliers" table:
*/

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

/*
SQL UNION With WHERE. The following SQL statement returns the German cities (only distinct values) from both the "Customers" 
and the "Suppliers" table:
*/

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

/*
SQL UNION ALL With WHERE
The following SQL statement returns the German cities (duplicate values also) from both the "Customers" and the "Suppliers" 
table:
*/

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

-- Another UNION Example. The following SQL statement lists all customers and suppliers:

SELECT 'Customer' As Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;

/*
Notice the "AS Type" above - it is an alias. 
SQL Aliases are used to give a table or a column a temporary name. An alias only exists for the duration of the query. 
So, here we have created a temporary column named "Type", 
that list whether the contact person is a "Customer" or a "Supplier".
*/
