
SELECT 'All albums in your table.' as prefix , albums.name FROM albums WHERE albums.id >= 0;
SELECT 'All albums released before 1980' as prefix , albums.name FROM albums WHERE release_date < 1980;
SELECT 'All albums by Michael Jackson' AS prefix , a.* FROM albums a WHERE artist = 'Michael Jackson';
