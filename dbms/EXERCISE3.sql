
-- aggregation
SELECT  COUNT(E.Emp_Id), S.PROJECT FROM EMPLOYEE AS E 
INNER JOIN SALARY AS S ON E.Emp_Id = S.Emp_Id 
GROUP BY S.PROJECT;

SELECT PROJECT, COUNT(Emp_Id) AS EMPLOYEE_COUNT FROM SALARY 
GROUP BY PROJECT 
ORDER BY EMPLOYEE_COUNT DESC;

-- SELECT SECOND HIGHEST 
SELECT MAX(SALARY) AS SECOND_HIGHEST FROM SALARY 
WHERE SALARY < (SELECT MAX(SALARY) FROM SALARY);