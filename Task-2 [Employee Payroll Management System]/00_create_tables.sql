-- Create database payroll_database
CREATE DATABASE payroll_database;
\c payroll_database

-- Create employees
CREATE TABLE employees (
  EMPLOYEE_ID INT PRIMARY KEY,
  NAME TEXT,
  DEPARTMENT TEXT,
  EMAIL TEXT,
  PHONE_NO NUMERIC,
  JOINING_DATE DATE,
  SALARY NUMERIC,
  BONUS NUMERIC,
  TAX_PERCENTAGE NUMERIC
);