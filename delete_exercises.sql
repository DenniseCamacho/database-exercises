USE codeup_test_db;

DELETE a.* FROM albums a WHERE artist = 'One Singer';
#select * from albums where artist like '%One Singer%';
# select 'words' as caption, albums.* from albums where artist = 'One Singer';
#DELETE FROM albums a WHERE artist = 'One Singer';
DELETE a.* FROM albums a WHERE release_date > 1991;
DELETE a.* FROM albums a WHERE genre = 'disco';
# Convert the SELECT statements to DELETE.