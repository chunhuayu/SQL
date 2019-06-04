# numeric types
# database.db

# demonstrates comparing two REAL numbers
SELECT A, B, A = B FROM 
  ( SELECT 
    ( ( .1 + .2 ) * 10 ) as A,
    ( 1.0 + 2.0 ) as B
  );

# typeof
# :memory:

SELECT TYPEOF( 1 + 1 );
SELECT TYPEOF( 1 + 1.0 );
SELECT TYPEOF('panda');
SELECT TYPEOF('panda' + 'koala');

# INTEGER division
# :memory:

SELECT 1 / 2;
SELECT 1.0 / 2;
SELECT CAST(1 AS REAL) / 2;
SELECT 17 / 5;
SELECT 17 / 5, 17 % 5;


# ROUND()
# :memory:

SELECT 2.55555;
SELECT ROUND(2.55555);
SELECT ROUND(2.55555, 3);
SELECT ROUND(2.55555, 0);
