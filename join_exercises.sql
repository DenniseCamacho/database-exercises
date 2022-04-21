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
SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS Name
    FROM departments d
    JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees e ON e.emp_no = dm.emp_no
    WHERE to_date LIKE '9%'
    AND gender = 'F'
    ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT title AS 'Titles', COUNT(title) AS 'Total'
FROM titles
GROUP BY title;

SELECT title AS 'Titles', COUNT(title) AS 'Total'
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
WHERE dept_no = 'd009'
AND t.to_date LIKE '9%'
AND de.to_date LIKE '9%'
GROUP BY title;


# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
       CONCAT(first_name, ' ', last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM departments d
        JOIN dept_manager dm ON d.dept_no = dm.dept_no
        JOIN employees e ON dm.emp_no = e.emp_no
        JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9%'
AND s.to_date LIKE '9%'
ORDER BY dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e2.first_name, ' ', e2.last_name) AS 'Employee',
       d.dept_name AS 'Department',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Manager'

FROM employees e
    JOIN dept_emp de on e.emp_no = de.emp_no
    JOIN departments d on d.dept_no = de.dept_no
    JOIN dept_manager dm on d.dept_no = dm.dept_no
    JOIN employees e2 ON dm.emp_no = e.emp_no
WHERE dm.to_date LIKE '9%'
ORDER BY Manager DESC, Department;

