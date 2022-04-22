USE employees;

SELECT emp_no
FROM dept_manager;

SELECT birth_date
FROM employees
WHERE emp_no IN (SELECT emp_no
                 FROM dept_manager);
#birth from everyone
# who has ever been a manager

SELECT CONCAT(first_name, ' ', last_name), birth_date
FROM employees
WHERE emp_no IN (SELECT emp_no
                 FROM dept_manager);
#birth/name from everyone
# who has ever been a manager

USE codeup_test_db;
SELECT *
FROM preferences;

#write a query to get the album id based on album name

INSERT INTO preferences (person_id, album_id)
VALUES ((SELECT id
         FROM persons
         WHERE first_name = 'Tareq'),
        (SELECT id
         FROM albums
         WHERE name = 'Rumors'));

SELECT first_name, name
FROM persons
         JOIN preferences p on persons.id = p.person_id
         JOIN albums a on a.id = p.album_id
WHERE first_name = 'Tareq';

UPDATE preferences
SET album_id = (SELECT id
                FROM albums
                WHERE name = 'Led Zeppelin IV')
WHERE album_id = (SELECT id
                  FROM albums
                  WHERE name = 'Rumors')
  AND person_id = (SELECT id
                   FROM persons
                   WHERE first_name = 'Tareq');

SELECT first_name, name
FROM persons
         JOIN preferences p on persons.id = p.person_id
         JOIN albums a on a.id = p.album_id
WHERE first_name = 'Tareq';