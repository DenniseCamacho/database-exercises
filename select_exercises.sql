USE codeup_test_db;
 SELECT *
FROM albums
WHERE


SELECT *
FROM albums
WHERE release_date > 1991;

SELECT *
FROM albums
WHERE genre = 'disco';

SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

SELECT 'The name of all albums by Pink Floyd.' as prefix, a.*
FROM albums a
WHERE artist = 'Pink Floyd';
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' as prefix, a.release_date
FROM albums a
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'The genre for Nevermind' as prefix, a.genre
FROM albums a
WHERE name = 'Nevermind';
SELECT 'Which albums were released in the 1990s' as prefix, a.*
FROM albums a
WHERE release_date = 1990;
SELECT 'Which albums had less than 20 million certified sales' as prefix, albums.*
FROM albums
WHERE sales < 20000000;

#SELECT 'words here' AS caption, name
# FROM albums a
# WHERE sales < 20;
#select, from, where
# SELECT 'rock albums' as caption, a.*
# FROM albums a
# where genre like '%Rock%' % is any before any after.. a 'wildcard'
#makes it not as strict...

SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

use employees;
# SELECT first_name AS 'First Name', last_name AS 'Last Name'
SELECT *
FROM employees
WHERE hire_date > 1980;
