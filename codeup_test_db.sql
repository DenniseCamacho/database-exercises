USE employees;
DESCRIBE employees;

USE codeup_test_db;
DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (ID);
DESCRIBE albums;

SELECT *
FROM albums;

SELECT *
FROM persons;

USE codeup_test_db;

USE codeup_test_db;

DROP TABLE IF EXISTS persons;
CREATE TABLE persons (
                         id int unsigned NOT NULL AUTO_INCREMENT,
                         first_name varchar(25) NOT NULL,
                         album_id int unsigned NOT NULL,
                         PRIMARY KEY (id),
                         KEY album_id (album_id),
                         CONSTRAINT persons_ibfk_1
                             FOREIGN KEY (album_id)
                                 REFERENCES albums (id)
);


INSERT INTO persons(persons.id , persons.first_name, persons.album_id) VALUES
(1,'Olivia',1),
(2,'Santiago',1),
(3,'Tareq',1),
(4,'Anaya', 1);

SELECT *
FROM persons;

#create table w/ person id / and album id.
CREATE TABLE preferences (
    person_id INT UNSIGNED NOT NULL, #the data type definition has to be identical
    album_id INT UNSIGNED NOT NULL,
    CONSTRAINT preferences_person_id_fk
    FOREIGN KEY  (person_id)
    REFERENCES persons(id),
    CONSTRAINT preferences_album_id_fk
    FOREIGN KEY (album_id)
    REFERENCES albums (id)
);

INSERT INTO preferences (person_id, album_id)
VALUES (1, 11), (1, 15), (1, 30),
       (1, 12), (2, 17), (2, 32),
       (2, 13), (3, 21), (3, 33), (3, 26);

SELECT *
FROM preferences;

SELECT first_name AS name,
       a.name AS album
FROM persons p
JOIN preferences pf
ON p.id = pf.person_id JOIN albums a ON pf.album_id = a.id;

