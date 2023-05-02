SELECT *
FROM actor;

-- columns to query belong in select key word and table to query in FROM keyword
SELECT first_name, last_name
FROM actor;

-- Adding condition with where
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- '%' means grab anything after condition, no matter how long is it
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

 -- '_' as per mean 1 character long
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J__';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Ke%_h';

SELECT *
FROM payment;


-- greater than > less than < greate than or equal & less than or equal <= >=
-- not equal to <>
SELECT customer_id, amount
FROM payment
WHERE amount > 2;

SELECT customer_id, amount
FROM payment
WHERE amount < 7;

SELECT customer_id, amount
FROM payment
WHERE amount = 7.99;

SELECT customer_id, amount
FROM payment
WHERE amount <> 7;


-- keyword between checks between to values
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3 AND 7;

SELECT customer_id, amount
FROM payment
WHERE amount > 3 AND amount < 7;

-- combining conditions
SELECT *
FROM payment
WHERE amount > 3 AND amount <> 7.99;

-- aggregaters 
SELECT *
FROM payment;

SELECT sum(amount)
FROM payment;

SELECT AVG(amount)
FROM payment;

SELECT count(amount)
FROM payment;

SELECT MAX(amount) AS max_payment
FROM payment;

SELECT MIN(amount) AS min_payment
FROM payment;

SELECT * 
FROM payment;

SELECT amount, count(amount) AS counts
FROM payment
GROUP BY amount;

SELECT customer_id, sum(amount)
FROM payment
GROUP BY customer_id;

SELECT *
FROM payment;

SELECT customer_id, count(customer_id)
FROM customer
GROUP BY customer_id;

SELECT customer_id, count(customer_id) AS purchases
FROM payment
GROUP BY customer_id
HAVING count(customer_id) > 5
