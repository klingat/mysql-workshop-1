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

