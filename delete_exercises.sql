USE codeup_test_db;

# use select statements before delete to ensure you are selecting the correct
# information.
DELETE a.*
FROM albums a
WHERE artist = 'One Singer';
#select * from albums where artist like '%One Singer%';
# select 'words' as caption, albums.* from albums where artist = 'One Singer';
#DELETE FROM albums a WHERE artist = 'One Singer';
DELETE a.*
FROM albums a
WHERE release_date > 1991;
#DELETE FROM albums a WHERE release_date > 1991;
DELETE a.*
FROM albums a
WHERE genre = 'disco';
#DELETE FROM albums a WHERE genre = 'disco';
# Convert the SELECT statements to DELETE.

SELECT *
from albums a
WHERE genre = 'disco';