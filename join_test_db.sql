USE employees;

#Using the example in the Associative Table Joins
# section as a guide, write a query that shows each
# department along with the name of
# the current manager for that department.

SELECT CONCAT(last_name, ' ', first_name) AS full_name
FROM employees
GROUP BY full_name
LIMIT 5;

