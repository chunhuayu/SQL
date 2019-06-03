# 06 Counting Rows
# world.db

SELECT COUNT(*) FROM Country;
SELECT COUNT(*) FROM Country WHERE Population > 1000000;
SELECT COUNT(*) FROM Country WHERE Population > 100000000;
SELECT COUNT(*) FROM Country WHERE Population > 100000000 AND Continent = 'Europe' ;


SELECT COUNT(*) FROM Country;
SELECT COUNT(LifeExpectancy) FROM Country; 
# display the numbers of rows which the value of LifeExpectancy is non-zero
