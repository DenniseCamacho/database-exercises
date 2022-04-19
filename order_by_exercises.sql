USE employees;

# Modify your first query to order by first name.
# The first result should be Irena Flexer
# and the last result should be Vidya Awdeh.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;

# Update the query to order by first name and then last name.
# The first result should now be
# Irena Acton and the last should be Vidya Zweizig.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you
#     order by last name before first name.
#     Your first result should still be
#     Irena Acton but now the last result should be Maya Zyda.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# Update your queries for employees with 'e'
# in their last name to sort the results by
# their employee number. Make sure the employee
# numbers are in the correct order.
SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT last_name FROM employees
WHERE last_name LIKE 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT last_name FROM employees
WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya',
# or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name LIKE 'Irena'
   OR first_name LIKE 'Vidya'
   OR first_name LIKE 'Maya';

# Add a condition to the previous query to
# find everybody with those names who is also male — 441 rows.
SELECT first_name
FROM employees
WHERE gender = 'M'
  AND first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name like 'E%'
   OR last_name like '%E';

# Duplicate the previous query and update it
# to find all employees whose last name
# starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name like 'E%'
  AND last_name like '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

