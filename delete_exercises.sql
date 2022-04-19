USE codeup_test_db;

DELETE a.* FROM albums a WHERE artist = 'One Singer';
DELETE a.* FROM albums a WHERE release_date > 1991;
DELETE a.* FROM albums a WHERE genre = 'disco';

# Convert the SELECT statements to DELETE.