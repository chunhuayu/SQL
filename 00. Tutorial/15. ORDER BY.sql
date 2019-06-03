# ORDER BY: to sort the result of the queries
# world.db
# default is ascending

SELECT Name FROM Country;
SELECT Name FROM Country ORDER BY Name;              # they are in alphabetical oreder according to ASCII character set
SELECT Name FROM Country ORDER BY Name DESC;         # the order is by descending rather than ascending
SELECT Name FROM Country ORDER BY Name ASC;          # default is ascending
SELECT Name, Continent FROM Country ORDER BY Continent, Name;  
#  the rows is sorted by ascending Continent first, and within the Continent the order is ascending by Name   
SELECT Name, Continent, Region FROM Country ORDER BY Continent DESC, Region, Name;
# the order is descending by Continent, and then ascending by Region, followed by ascending Name.
