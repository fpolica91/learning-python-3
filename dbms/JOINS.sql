-- SQLite
-- used to combine rows of 2 or more tables based on a common column;
-- INNER JOIN / JOIN: Returns records that have matching values in both tables.
-- LEFT JOIN/ LEFT OUTER JOIN: Returns all records from the left table, and the matched records from the right table.
-- RIGHT JOIN/ RIGHT OUTER JOIN: Returns all records from the right table, and the matched records from the left table.

-- inner join
SELECT table1.column1, table2.column2 ... 

FROM table1

INNER JOIN table2

ON table1.common_field = table2.common_field;

INSERT INTO ORDERS (DATE, CUSTOMER_ID, AMOUNT)
VALUES ('2019-09-08', 10, 500 );

-- SELECT * FROM CUSTOMERS;

SELECT CUSTOMERS.ID, CUSTOMERS.NAME,
CUSTOMERS.ADDRESS, ORDERS.DATE, ORDERS.AMOUNT 
FROM CUSTOMERS 
INNER JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;


-- LEFT JOIN

SELECT CUSTOMERS.ID, CUSTOMERS.NAME, ORDERS.AMOUNT,
ORDERS.DATE FROM CUSTOMERS
LEFT JOIN ORDERS 
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID
ORDER BY CUSTOMERS.ID;

-- RIGHT JOIN
SELECT CUSTOMERS.ID, CUSTOMERS.NAME, ORDERS.AMOUNT,
ORDERS.DATE FROM CUSTOMERS RIGHT JOIN ORDERS
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;
