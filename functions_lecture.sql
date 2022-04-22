USE codeup_test_db;
SELECT UPPER(CONCAT('Hello', TRIM(' world   ')));

#yr1999-05month-01day
SELECT CURTIME();
SELECT UNIX_TIMESTAMP('2022-01-24'); #seconds since
SELECT *
FROM albums
WHERE release_date < NOW();

#Aggregate functions.
SELECT COUNT(*)
FROM albums
WHERE sales > 24000000;

SELECT COUNT(DISTINCT genre)
FROM albums;

SELECT MAX(sales)
FROM albums;
SELECT MIN(sales)
FROM albums;

SELECT MIN(sales)
FROM albums
WHERE genre = '%Pop%';

SELECT SUM(sales)
FROM albums;
SELECT ROUND(AVG(sales))
FROM albums;

SELECT RAND();