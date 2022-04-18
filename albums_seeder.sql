USE codeup_test_db;

INSERT INTO albums(artist, name, release_date, sales, genre)
VALUES
    ('Michael Jackson', 'Thriller', 1982,  49200000,
     'pop, post-disco, funk, rock'),
    ('AC/DC', 'Back in Black', 1980, 29500000,
     'hard rock'),
    ('Whitney Houston', 'The Bodyguard', 1992, 32400000,
     'R&B, soul, pop, soundtrack'),
    ('Meat Loaf', 'Bat Out of Hell', 1977, 21700000,
     'hard rock, glam rock, progressive rock'),
    ('Eagles', 'Their Greatest Hits', 1976, 41200000,
     'country rock, soft rock, folk rock'),
    ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24400000,
     'progressive rock'),
    ('Eagles', 'Hotel California', 1976, 31500000,
     'soft rock'),
    ('Bee Gees', 'Saturday Night Fever', 1977, 21600000,
     'disco'),
    ('Fleetwood Mac', 'Rumors', 1977, 27900000,
     'soft rock'),
    ('Shania Twain', 'Come On Over', 1997, 29600000,
     'country, pop');



#
# Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales #(the first two tables). For sales data, use the 'sales certification' column of the tables, not 'claimed #sales'. For artists listed with 'Various Artists', just use the primary artist's name.

