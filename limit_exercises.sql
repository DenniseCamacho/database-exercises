USE employees;
SELECT DISTINCT title FROM titles;

# List the first 10 distinct last name sorted
#     in descending order.
select DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10 OFFSET 0;

# Create a query to get the top 5
# salaries and display just the employees
# number from the salaries table.
# The employee number results should be:
# 36219
# 254466
# 492164
# 66793
# 492164
SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 5;