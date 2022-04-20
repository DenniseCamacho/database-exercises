USE employees;
SELECT DISTINCT title FROM titles;

# List the first 10 distinct last name sorted
#     in descending order.
select DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10 OFFSET 0;

# Create a query to get the top 5
# salaries and display just the employees
# number from the salaries table.
# The employee number results should be:
# 43624
# 43624
# 254466
# 47978
# 253939
SELECT * FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 0;

# Try to think of your results as batches, sets, or pages. The first five results are
# your first page. The five after that would be your second page, etc. Update the
# previous query to find the tenth page of results. The employee number results should
# 36219
# 254466
# 492164
# 66793
# 492164
# starts with every 5 * 10 = 50... but - 5 because first page is 0? so 5 * 9?
SELECT *
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;

