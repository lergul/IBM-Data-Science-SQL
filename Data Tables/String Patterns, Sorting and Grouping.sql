-- Exercise 1: String Patterns
-- In this exercise, you will go through some SQL problems on String Patterns.
-- 1. Problem: Retrieve all employees whose address is in Elgin,IL.
Select * from employees where address like '%Elgin,IL';

-- 2. Problem: Retrieve all employees who were born during the 1970’s.
SELECT * FROM EMPLOYEES WHERE B_DATE like '197%';

-- 3. Problem: Retrieve all employees in department 5 whose salary is between 60000 and 70000.
select * from employees where dep_id = 5 and (salary between 60000 and 70000);

-- Exercise 2: Sorting
-- In this exercise, you will go through some SQL problems on Sorting.

-- 1. Problem: Retrieve a list of employees ordered by department ID.
Select * from employees order by dep_id;

-- 2.Problem: Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
SELECT F_NAME, L_NAME, DEP_ID FROM EMPLOYEES ORDER BY DEP_ID DESC, L_NAME DESC;

-- 3. Problem: In SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. Retrieve a list of employees ordered by department name, 
-- and within each department ordered alphabetically in descending order by last name.

SELECT D.DEP_NAME , E.F_NAME, E.L_NAME FROM EMPLOYEES as E, DEPARTMENTS as D WHERE E.DEP_ID = D.DEPT_ID_DEP ORDER BY D.DEP_NAME, E.L_NAME DESC;

-- Exercise 3: Grouping
-- In this exercise, you will go through some SQL problems on Grouping.
-- 1. Problem: For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, COUNT(*) FROM EMPLOYEES GROUP BY DEP_ID;

-- 2. Problem: For each department retrieve the number of employees in the department, and the average employee salary in the department.
SELECT DEP_ID, COUNT(*), AVG(salary) FROM EMPLOYEES GROUP BY DEP_ID;

-- 3. Problem: Label the computed columns in the result set of SQL problem 2 (Exercise 3 Problem 2) as NUM_EMPLOYEES and AVG_SALARY.
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES , AVG(salary) AS AVG_SALARY FROM EMPLOYEES GROUP BY DEP_ID;

-- 4. Problem:In SQL problem 3 (Exercise 3 Problem 3), order the result set by Average Salary..
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES , AVG(salary) AS AVG_SALARY FROM EMPLOYEES GROUP BY DEP_ID ORDER BY AVG(salary);

-- 5. Problem: In SQL problem 4 (Exercise 3 Problem 4), limit the result to departments with fewer than 4 employees.
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES , AVG(salary) AS AVG_SALARY FROM EMPLOYEES GROUP BY DEP_ID HAVING COUNT(*)<4 ORDER BY AVG(salary);

