CREATE TABLE account (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(40),
    created_on DATETIME,
    modified_on DATETIME
);

CREATE TABLE address_book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    name VARCHAR(255),
    created_on DATETIME,
    modified_on DATETIME
);

CREATE TABLE entry (
    id INT AUTO_INCREMENT PRIMARY KEY,
    address_book_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birthday DATETIME,
    type ENUM("home", "work", "other"),
    subtype ENUM("phone", "address", "e-mail")
);

CREATE TABLE barn_with_chickens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type ENUM("rooster", "hen", "chick"),
    date_born DATETIME
);


insert into barn_with_chickens(type, date_born) values
    ("chick", "2016-06-15"),
    ("chick", "2016-06-16"),
    ("rooster", "2016-01-16"),
    ("hen", "2016-01-28"),
    ("hen", "2015-12-30"),
    ("rooster", "2016-03-01"),
    ("chick", "2016-06-09"),
    ("chick", "2016-06-07");

