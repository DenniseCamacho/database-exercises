USE employees;

# Update your queries for employees whose names start
# and end with 'E'. Use concat() to combine their first
# and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name like 'E%E';

# Find all employees born on Christmas — 842 rows.
SELECT COUNT(*)
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;
#or
SELECT COUNT(*)
FROM employees
WHERE birth_date
LIKE '%-12-25';

# 4.Find all employees hired in the 90s and born on Christmas — 362 rows.

SELECT COUNT(*)
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25
AND hire_date LIKE '199%';

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;


SELECT  *
FROM employees
WHERE last_name LIKE '%e%'
   OR first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY  emp_no DESC, last_name DESC, first_name DESC;



SELECT last_name FROM employees
WHERE last_name LIKE 'E%';


SELECT last_name FROM employees
WHERE last_name LIKE '%q%';


SELECT *
FROM employees
WHERE first_name LIKE 'Irena'
   OR first_name LIKE 'Vidya'
   OR first_name LIKE 'Maya';


SELECT first_name
FROM employees
WHERE gender = 'M'
  AND first_name IN ('Irena', 'Vidya', 'Maya');


SELECT *
FROM employees
WHERE last_name like 'E%'
   OR last_name like '%E';


SELECT *
FROM employees
WHERE last_name like 'E%'
  AND last_name like '%E';


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

