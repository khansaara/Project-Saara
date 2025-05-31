-- a) Employees who joined in the last 6 months
SELECT NAME, JOINING_DATE
FROM employees
WHERE JOINING_DATE >= CURRENT_DATE - INTERVAL '6 months';

-- b) Count of employees per department
SELECT DEPARTMENT, COUNT(*) AS Total_Employees
FROM employees
GROUP BY DEPARTMENT;

-- c) Department with highest average salary
SELECT DEPARTMENT
FROM employees
GROUP BY DEPARTMENT
ORDER BY AVG(SALARY) DESC
LIMIT 1;

-- d) Employees with the same salary as another
SELECT NAME, SALARY
FROM employees
WHERE SALARY IN (
  SELECT SALARY
  FROM employees
  GROUP BY SALARY
  HAVING COUNT(*) > 1
);