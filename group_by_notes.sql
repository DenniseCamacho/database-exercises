USE employees;

select first_name FROM employees GROUP BY first_name;
# SELECT first_name, last_name FROM employees GROUP BY first_name; #[n]
#grouping by first names...doesnt make sense to add last_name
select first_name, AVG(LENGTH(last_name)) FROM employees GROUP BY first_name; #[y]

#find common name
# select concat(first_name, ' ', last_name) from employees;[x];
SELECT CONCAT(first_name, ' ', last_name) FROM employees
GROUP BY first_name, last_name;

SELECT CONCAT(first_name, ' ', last_name), COUNT(*) FROM employees
GROUP BY first_name, last_name;

SELECT CONCAT(first_name, ' ', last_name), COUNT(*)
FROM employees
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;

#min, max, avg, total
SELECT MIN(salary), MAX(salary), AVG(salary), SUM(salary)
FROM salaries;
#COUNT(number of whatever...salary not the sum);