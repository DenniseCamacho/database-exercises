USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
    JOIN dept_emp as de
    ON de.emp_no = e.emp_no
    JOIN departments as d
    ON d.dept_no = de.dept_no
    WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# write a query that shows each department
# along with the name of the current manager for that department.

SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS Name
FROM departments d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date LIKE '9%'
ORDER BY dept_name;

# Find the name of all departments currently managed by women.

# Find the current titles of employees currently working in the Customer Service department.

# Find the current salary of all current managers.