CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

SELECT users.name AS user_name,
       roles.name AS role_name
FROM users,
     roles;


USE employees;
SELECT last_name, salary
FROM employees
         NATURAL JOIN salaries;

SELECT salary
FROM salaries s
         JOIN dept_emp de ON s.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN employees e ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Research';

SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees e
         NATURAL JOIN dept_emp de
         NATURAL JOIN departments d
WHERE d.dept_name = 'Research';

SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees salaries
         JOIN dept_emp;

