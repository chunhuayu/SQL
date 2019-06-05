# SELECT 'a literal SQL string;'  this is a standard SQL a literal string is represented by a series of characters enclosed
# in shigle quote marks. in the orderer version of MySQL double quotes marks may be used instead. 
# Note: If you need to use a single quote in your string you should use two single quotes to represent the one.
# String handling tends to be platform specific in SQL. 
# A simple thing like concatenating two strings together can be very different on different platforms. 
# Standard SQL provides a concatenation operator.  SELECT 'This'||'&'||'that'
# SQLite, Postgres and many other systems support this standard.  
# MySQL uses a function. SELECT CONCAT ('this','&','that')
# Microsoft SQL uses a non-standard operator.   SELECT 'This' + '&' + 'that'


# LENGTH  : length function is not the standard SQL function 
# world.db

SELECT LENGTH('string');
SELECT Name, LENGTH(Name) AS Len FROM City ORDER BY Len DESC;


# SUBSTR(released, 1, 4)-------1 represent the first letter , 4 represent the length of substr letter
# album.db

SELECT SUBSTR('this string', 6);
SELECT released,
    SUBSTR(released, 1, 4) AS year,
    SUBSTR(released, 6, 2) AS month,
    SUBSTR(released, 9, 2) AS day
  FROM album
  ORDER BY released
;

# TRIM, by default, trim the spaces
# :memory:

SELECT '   string   ';
SELECT TRIM('   string   ');                   # remove space from the both sides of string that means the beginning and end
SELECT TRIM('   string   string   ');
SELECT LTRIM('   string   ');                  # remove space from left side
SELECT RTRIM('   string   ');                  # remove space from right side
SELECT '...string...';          
SELECT TRIM('...string...', '.');              # the second argument represents to remove '.' from the string


# UPPER/LOWER       for normalizing the strings for further used
# world.db

SELECT 'StRiNg';
SELECT 'StRiNg' = 'string';
SELECT LOWER('StRiNg') = LOWER('string');
SELECT UPPER('StRiNg') = UPPER('string');
SELECT UPPER(Name) FROM City ORDER BY Name;
SELECT LOWER(Name) FROM City ORDER BY Name;

