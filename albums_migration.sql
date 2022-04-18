USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR(150),
    PRIMARY KEY (id)
);

# INSERT INTO albums (artist, name, release_date, sales, genre)
# VALUES ('Travis Dupri', 'Album01', 2020, 1000000, 'hip hop, rnb'),
#        ('TG AGAPE', 'Album02', 2021, 1000000, 'hip hop'),
#        ('HAVI', 'Album03', 2020, 1000000, 'hip hop, rnb'),
#        ('NOBIGDYL', 'Album04', 2020, 10000000, 'hip hop, rnb, rap'),
#        ('BRIGHT', 'Album05', 2020, 1000000, 'dance, electronica'),
#        ('Kutless', 'Album06', 2020, 1000000, 'alternative rock'),
#        ('Wolves at the Gate', 'Album07', 2020, 1000000, 'heavy metal'),
#        ('Silent Planet', 'Album08', 2020, 1000000, 'heavy metal'),
#        ('Red', 'Album09', 2020, 1000000, 'Rock'),
#        ('Skillet', 'Album10', 2020, 1000000, 'Rock'),
#        ('Skillet', 'Album10', 1992, 1000000, 'Rock');
#
# DELETE FROM albums WHERE release_date < 2000; #deletes all under 2000

SELECT 'albums' as prefix , a.* FROM albums a WHERE release_date > 2021;

DESCRIBE albums;

SHOW CREATE TABLE albums;