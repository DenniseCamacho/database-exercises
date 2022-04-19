USE codeup_test_db;

SELECT 'will be deleted' AS prefix , a.* FROM albums a WHERE artist = 'One Singer';
SELECT 'will be deleted' AS prefix , a.* FROM albums a WHERE release_date > 1991;
SELECT 'will be deleted' AS prefix , a.* FROM albums a WHERE genre = 'disco';

#Make sure to put appropriate captions before each SELECT.