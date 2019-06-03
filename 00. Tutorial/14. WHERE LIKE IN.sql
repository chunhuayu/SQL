# Filtering data
# where clause can allow you to filter your result to get you the rows that you need
# world.db
# Boolean expression in SQL : and, or, not, between, in, any, all 

SELECT * FROM Country;
SELECT Name, Continent, Population FROM Country WHERE Population < 100000 ORDER BY Population DESC;
SELECT Name, Continent, Population FROM Country WHERE Population < 100000 OR Population IS NULL ORDER BY Population DESC;
SELECT Name, Continent, Population FROM Country WHERE Population < 100000 AND Continent = 'Oceania' ORDER BY Population DESC;
SELECT Name, Continent, Population FROM Country WHERE Name LIKE '%island%' ORDER BY Name;
# any letters before island or after island

SELECT Name, Continent, Population FROM Country WHERE Name LIKE '%island' ORDER BY Name;
# any letters before island

SELECT Name, Continent, Population FROM Country WHERE Name LIKE 'island%' ORDER BY Name;
# any letters after island

SELECT Name, Continent, Population FROM Country WHERE Name LIKE '_a%' ORDER BY Name;
# a single letter before a and any letters after a

SELECT Name, Continent, Population FROM Country WHERE Continent IN ( 'Europe', 'Asia' ) ORDER BY Name;

