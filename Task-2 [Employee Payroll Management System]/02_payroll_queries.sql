-- a) Employees sorted by salary (descending)
SELECT NAME, SALARY
FROM employees
ORDER BY SALARY DESC;

-- b) Employees with total compensation > 100,000
SELECT NAME, SALARY + BONUS AS Total_Compensation
FROM employees
WHERE (SALARY + BONUS) > 100000;

-- c) Update bonus for Sales employees by 10%
UPDATE employees
SET BONUS = BONUS * 1.10
WHERE DEPARTMENT = 'Sales';

-- d) Net salary after tax
SELECT NAME, 
       SALARY + BONUS AS Gross_Salary,
       (SALARY + BONUS) * (1 - TAX_PERCENTAGE / 100.0) AS Net_Salary
FROM employees;

-- e) Average, Min, Max salary per department
SELECT DEPARTMENT,
       AVG(SALARY) AS Average_Salary,
       MIN(SALARY) AS Min_Salary,
       MAX(SALARY) AS Max_Salary
FROM employees
GROUP BY DEPARTMENT;