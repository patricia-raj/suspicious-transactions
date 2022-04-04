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


-- Group transactions by Card holder
SELECT cardholder_name, transaction.*
FROM transaction 
LEFT JOIN  credit_card ON credit_card.creditcard_no= transaction.credit_card
LEFT JOIN card_holder ON card_holder.cardholder_id = credit_card.cardholder_id;

SELECT credit_card, COUNT(*)
FROM transaction
GROUP BY credit_card;

-- Query transaction less than $2.0
SELECT count(*)
FROM transaction
WHERE amount < 2.0;


SELECT count(*)
FROM transaction 
LEFT JOIN  credit_card ON credit_card.creditcard_no= transaction.credit_card
LEFT JOIN card_holder ON card_holder.cardholder_id = credit_card.cardholder_id
WHERE amount < 2.0;


-- Transactions by credit card with charges less than $2.0
SELECT credit_card, COUNT(*)
FROM transaction
WHERE amount < 2.0
GROUP BY credit_card;


--  Transactions grouped by card holder with the count of transactions charged less than $2.0
SELECT cardholder_name, COUNT(*)
FROM transaction 
LEFT JOIN credit_card ON credit_card.creditcard_no= transaction.credit_card
LEFT JOIN card_holder ON card_holder.cardholder_id = credit_card.cardholder_id
WHERE amount < 2.0
GROUP BY  cardholder_name;


SELECT cardholder_name, transaction.*
FROM transaction 
left JOIN  credit_card ON credit_card.creditcard_no= transaction.credit_card
left JOIN card_holder ON card_holder.cardholder_id = credit_card.cardholder_id
WHERE amount < 2.0
and extract(hour from transaction_date) >= 7 and extract(hour from transaction_date) <= 9;

