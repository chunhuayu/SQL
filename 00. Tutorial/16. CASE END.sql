# Case ... END
# test.db

CREATE TABLE booltest (a INTEGER, b INTEGER);
INSERT INTO booltest VALUES (1, 0);
SELECT * FROM booltest;

SELECT
    CASE WHEN a THEN 'true' ELSE 'false' END as boolA,
    CASE WHEN b THEN 'true' ELSE 'false' END as boolB
    FROM booltest
;
# when a is non-zero return 'true', else 'false'
# when b is non-zero return 'true', else 'false'


SELECT
  CASE a WHEN 1 THEN 'true' ELSE 'false' END AS boolA,
  CASE b WHEN 1 THEN 'true' ELSE 'false' END AS boolB 
  FROM booltest
;
# when the value of a is 1, return 'true' else 'false'
# when the value of b is 1, return 'true' else 'false'

DROP TABLE booltest;
