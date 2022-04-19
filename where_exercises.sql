USE employees;
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# Find all employees with first names 'Irena', 'Vidya',
# or 'Maya' — 709 rows (Hint: Use IN).
