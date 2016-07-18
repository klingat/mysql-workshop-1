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


create table hotel_rooms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_of_room ENUM("regular room", "suite", "penthouse", "janitor closet", "public laundry room", "gym"),
    occupancy INT,
    date_available DATETIME,
    private_kitchen ENUM("yes", "no"),
    number_of_windows INT,
    carpet ENUM("yes", "no"),
    rentable ENUM("yes", "no"),
    comment VARCHAR(500)
);

insert hotel_rooms(type_of_room, occupancy, date_available, private_kitchen, number_of_windows, carpet, rentable, comment) values
("regular room", 2, "2016-06-25", "no", 2, "yes", "yes", "1 queen bed");


insert into barn_with_chickens(type, date_born) values
    ("chick", "2016-06-15"),
    ("chick", "2016-06-16"),
    ("rooster", "2016-01-16"),
    ("hen", "2016-01-28"),
    ("hen", "2015-12-30"),
    ("rooster", "2016-03-01"),
    ("chick", "2016-06-09"),
    ("chick", "2016-06-07");



+----+--------------+-----------+---------------------+-----------------+-------------------+--------+----------+-------------+
| id | type_of_room | occupancy | date_available      | private_kitchen | number_of_windows | carpet | rentable | comment     |
+----+--------------+-----------+---------------------+-----------------+-------------------+--------+----------+-------------+
|  1 | regular room |         2 | 2016-06-25 00:00:00 | no              |                 2 | yes    | yes      | 1 queen bed |
+----+--------------+-----------+---------------------+-----------------+-------------------+--------+----------+-------------+