-- Drop table if exists
DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS credit_card;
DROP TABLE IF EXISTS merchant_category;
DROP TABLE IF EXISTS merchant;
DROP TABLE IF EXISTS transaction;



-- Create new table to import data
CREATE TABLE card_holder (
 	cardholder_id INT PRIMARY KEY,
	cardholder_name VARCHAR(255)
);

CREATE TABLE credit_card (
 	creditcard_no VARCHAR(20) PRIMARY KEY,
	cardholder_id INT,
    FOREIGN KEY (cardholder_id) REFERENCES card_holder(cardholder_id)
);


CREATE TABLE merchant_category (
 	merchantcategory_id INT PRIMARY KEY,
	merchant_category VARCHAR(255)
);


CREATE TABLE merchant (
 	merchant_id INT PRIMARY KEY,
	name VARCHAR(255),
    merchantcategory_id INT,
    FOREIGN KEY (merchantcategory_id) REFERENCES merchant_category(merchantcategory_id)
);

CREATE TABLE transaction (
 	transaction_id INT PRIMARY KEY,
    transaction_date TIMESTAMP,
	credit_card VARCHAR(20),
    merchant_id INT,
    FOREIGN KEY (merchant_id) REFERENCES merchant(merchant_id)
);


