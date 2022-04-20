USE employees;


SELECT DISTINCT title
FROM titles;

# Find your query for employees whose last names
# start and end with 'E'. Update the query to find
# just the unique last names that start and end with 'E'
# using GROUP BY. The results should be:

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name
ORDER BY last_name;