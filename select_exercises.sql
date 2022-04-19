USE codeup_test_db;

SELECT * FROM albums WHERE release_date > 1991;

SELECT * FROM albums WHERE genre = 'disco';

SELECT * FROM albums WHERE artist = 'Michael Jackson';

SELECT 'The name of all albums by Pink Floyd.' as prefix , a.* FROM albums a WHERE artist = 'Pink Floyd';
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' as prefix , a.release_date FROM albums a WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'The genre for Nevermind' as prefix , a.genre FROM albums a WHERE name = 'Nevermind';
SELECT 'Which albums were released in the 1990s' as prefix , a.* FROM albums a WHERE release_date = 1990;
SELECT 'Which albums had less than 20 million certified sales' as prefix , albums.* FROM albums WHERE sales < 20000000;