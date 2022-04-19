USE codeup_test_db;
SELECT 'All albums in your table.' as prefix , albums.name FROM albums WHERE albums.id >= 0;
SELECT 'All albums released before 1980' as prefix , albums.name FROM albums WHERE release_date < 1980;
#SELECT * FROM albums
# WHERE release_date < 1980;
# UPDATE albums a #the a after albums is just a shorthand for table. dont have to add a
# SET a.sales = (a.sales * 10);
SELECT 'All albums by Michael Jackson' AS prefix , a.* FROM albums a WHERE artist = 'Michael Jackson';


UPDATE albums SET sales = sales * 10 WHERE sales; #Make all the albums 10 times more popular (sales * 10)
SELECT * FROM albums WHERE sales;
UPDATE albums SET release_date = 1800 WHERE release_date <= 1980;
SELECT * FROM albums WHERE release_date;
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
# UPDATE albums
# SET artist = 'Peter Jackson'
# WHERE artist = 'Michael Jackson';
SELECT * FROM albums;
# where artist = 'Michael Jackson' OR artist = 'Peter Jackson';
# select * albums;