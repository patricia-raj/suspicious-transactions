-- Query all columns and rows from the tables
SELECT * 
FROM card_holder;

SELECT * 
FROM credit_card;

SELECT * 
FROM merchant_category;

SELECT * 
FROM merchant;

SELECT * 
FROM transaction;




-- Query transaction less than $2.0
SELECT *
FROM transaction
WHERE amount < 2.0;


-- Group transaction by credit card and transaction amount less than $2.0
SELECT credit_card, count(*)
FROM transaction
WHERE amount < 2.0
GROUP BY credit_card;
