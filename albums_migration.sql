USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INT unsigned,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR(150),
    PRIMARY KEY (id)
);