USE employees;

# Find all the employees with the same hire date
# as employee 101010 using a subquery.
# 69 Rows

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee',
       hire_date                          AS 'Hire Date'
FROM employees
WHERE emp_no =
      (SELECT emp_no
       WHERE hire_date = '1990-10-22');


# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT title, COUNT(title)
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM employees
                 WHERE first_name = 'Aamod')
GROUP BY title;

# SELECT CONCAT(first_name, ' ', last_name) AS 'Employees Same Name',
#        title AS 'Titles'
# FROM employees, titles
# WHERE emp_no =
#       (
#           SELECT title
#           WHERE first_name = 'Aamod'
#       );

# Find all the current department managers that are female.

SELECT first_name, last_name AS 'Employee Name'
FROM employees
WHERE emp_no IN (SELECT emp_no
                 FROM dept_manager
                 WHERE YEAR(to_date) = '9999%'
                   AND gender = 'F');

# Find all the department names that currently have female managers.
SELECT dept_no
FROM dept_manager
WHERE dept_no IN (SELECT dept_no
                  FROM dept_manager
                  WHERE to_date
                      LIKE '9%'
                    AND emp_no IN (SELECT emp_no
                                   FROM employees
                                   WHERE gender = 'F'));

# Find the first and last name of the employee with the highest salary.
SELECT CONCAT(first_name) AS 'first_name',
       CONCAT(last_name)  AS 'last_name'
FROM employees
WHERE emp_no IN (SELECT emp_no
                 FROM salaries
                 WHERE to_date
                     LIKE '9%'
                   AND salary IN (SELECT MAX(salary)
                                  FROM salaries));

