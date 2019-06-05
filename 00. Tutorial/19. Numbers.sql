# numeric types: in SQL, there are two basic categories of numeric types, real and integer(there is no fractional part)
# database.db
# integer type : three types in total. integer(precision), decimal(precision,scale), money(precision,scale)
# real type: two typical types in total. real(precision), float(precision)

# demonstrates comparing two REAL numbers
SELECT A, B, A = B FROM 
  ( SELECT 
    ( ( .1 + .2 ) * 10 ) as A,
    ( 1.0 + 2.0 ) as B
  );
  
# This should be equivalent. .1 plus .2 is .3 times 10, is 3.0, and if I compare A to B as I do here, 
# you'll notice that I get a false result, because they are not identical because by using decimals, 
# I'm using the floating point engine, and floating point numbers sacrifice accuracy for precision. 
# And this is why we use integers, or fixed precision, for financial calculations.



# typeof : returns a string that indicates the datatype of the expression.
# The only return values are: "null", "integer", "real", "text", or "blob". 
# :memory:

SELECT TYPEOF( 1 + 1 );
SELECT TYPEOF( 1 + 1.0 );
SELECT TYPEOF('panda');
SELECT TYPEOF('panda' + 'koala');

# INTEGER division
# :memory:

SELECT 1 / 2;                              # 0
SELECT 1.0 / 2;                            # 0.5
SELECT CAST(1 AS REAL) / 2;
SELECT 17 / 5;
SELECT 17 / 5, 17 % 5;   # % remainder


# syntax: ROUND(number, num_digits)
# :memory:

SELECT 2.55555;
SELECT ROUND(2.55555);         # output: 3.0, by default, the num_digits=1 , (the number of digits)
SELECT ROUND(2.55555, 3);
SELECT ROUND(2.55555, 0);
