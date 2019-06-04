# LENGTH
# world.db

SELECT LENGTH('string');
SELECT Name, LENGTH(Name) AS Len FROM City ORDER BY Len DESC;

# SUBSTR
# album.db

SELECT SUBSTR('this string', 6);
SELECT released,
    SUBSTR(released, 1, 4) AS year,
    SUBSTR(released, 6, 2) AS month,
    SUBSTR(released, 9, 2) AS day
  FROM album
  ORDER BY released
;

# TRIM
# :memory:

SELECT '   string   ';
SELECT TRIM('   string   ');
SELECT TRIM('   string   string   ');
SELECT LTRIM('   string   ');
SELECT RTRIM('   string   ');
SELECT '...string...';
SELECT TRIM('...string...', '.');


# UPPER/LOWER
# world.db

SELECT 'StRiNg';
SELECT 'StRiNg' = 'string';
SELECT LOWER('StRiNg') = LOWER('string');
SELECT UPPER('StRiNg') = UPPER('string');
SELECT UPPER(Name) FROM City ORDER BY Name;
SELECT LOWER(Name) FROM City ORDER BY Name;
