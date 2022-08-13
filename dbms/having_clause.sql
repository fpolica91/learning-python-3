-- The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions.
-- SELECT column1, column2, ... columnN

-- FROM table_name

-- WHERE [ conditions ]

-- GROUP BY column1, column2, ... columnN

-- HAVING [ conditions ]

-- ORDER BY column1, column2, ... columnN;

-- query to return customers who live in state if more than 1 customer lives in that state

SELECT ADDRESS, COUNT(ID)
FROM CUSTOMERS GROUP BY ADDRESS
HAVING COUNT(ID) > 1;

SELECT NAME, COUNT(ID) FROM CUSTOMERS
GROUP BY NAME HAVING COUNT(ID) > 1;

SELECT ADDRESS, NAME, SUM(SALARY) FROM CUSTOMERS
GROUP BY NAME HAVING SUM(SALARY) > 100000;