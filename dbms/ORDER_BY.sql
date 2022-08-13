-- SELECT column-list 

-- FROM table_name 

-- WHERE condition 

-- ORDER BY column1, column2, .. columnN;

-- youngest first
SELECT id, name, age FROM CUSTOMERS 
WHERE age BETWEEN 5 and 40
ORDER BY age ASC;

-- group by

-- SELECT column1, column2 ... columnN

-- FROM table_name

-- WHERE conditions 

-- GROUP BY column1, column2 ... columnN

-- ORDER BY column1, column2 ... columnN;


SELECT name, COUNT(*) 
FROM CUSTOMERS 
GROUP BY name ORDER BY name; 

SELECT name, SUM(SALARY) FROM CUSTOMERS 
GROUP BY name ORDER BY name;
