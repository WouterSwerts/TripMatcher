CREATE DATABASE TripMatcher;

USE TripMatcher;

SET DEFAULT_STORAGE_ENGINE = InnoDB;

CREATE TABLE users (
	id int auto_increment,
    name varchar(255),
    email varchar(255),
    password varchar(255),
    PRIMARY KEY(id)
);

INSERT INTO users (name, email, password) VALUES ("wouter swerts", "swerts.wouter@gmail.com", "test");

SELECT * FROM users;

DROP TABLE users;

