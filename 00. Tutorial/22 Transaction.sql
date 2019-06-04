# transactions
# test.db

CREATE TABLE widgetInventory (
  id INTEGER PRIMARY KEY,
  description TEXT,
  onhand INTEGER NOT NULL
);

CREATE TABLE widgetSales (
  id INTEGER PRIMARY KEY,
  inv_id INTEGER,
  quan INTEGER,
  price INTEGER
);

INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'rock', 25 );
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'paper', 25 );
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'scissors', 25 );

SELECT * FROM widgetInventory;

BEGIN TRANSACTION;
INSERT INTO widgetSales ( inv_id, quan, price ) VALUES ( 1, 5, 500 );
UPDATE widgetInventory SET onhand = ( onhand - 5 ) WHERE id = 1;
END TRANSACTION;

SELECT * FROM widgetInventory;
SELECT * FROM widgetSales;

BEGIN TRANSACTION;
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'toy', 25 );
ROLLBACK;
SELECT * FROM widgetInventory;

# restore database
DROP TABLE widgetInventory;
DROP TABLE widgetSales;

# performance
# test.db

CREATE TABLE test ( id INTEGER PRIMARY KEY, data TEXT );

# copy / paste 1,000 of these ...
INSERT INTO test ( data ) VALUES ( 'this is a good sized line of text.' );

# put this before the 1,000 INSERT statements
BEGIN TRANSACTION;

# put this after the 1,000 INSERT statements
END TRANSACTION;

SELECT COUNT(*) FROM test;

# restore database
DROP TABLE test;

