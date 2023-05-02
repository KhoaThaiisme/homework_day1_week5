SELECT count(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg'
-- 2 last name Wahlberg

SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
-- 5607 times 

SELECT film_id, count(*) AS film FROM inventory
GROUP BY film_id
having count(*) = (SELECT max(film) FROM 
(SELECT film_id, count(*) AS film FROM inventory GROUP BY film_id) inventory)
-- every film has equally 8 times

SELECT count(last_name)
FROM customer
WHERE last_name LIKE 'Williams'
-- 1 customer has last name of Williams

SELECT staff_id
FROM rental
GROUP BY staff_id
ORDER BY count(*) desc;
-- staff id number 1 has more rental sale than the other

SELECT count(DISTINCT district) AS district
FROM address;
-- district has 378 different districts

SELECT film_id
FROM film_actor
GROUP BY film_id
ORDER BY count(film_id) DESC;
-- film with id of 508 have the most of actors

SELECT last_name
FROM customer
GROUP BY last_name, store_id
having last_name LIKE '%es' AND store_id = 1;
-- 13 customer have last name end with 'es'

SELECT amount, count(amount) AS count, customer_id, count(customer_id) AS customer_count
FROM payment
GROUP BY amount, customer_id
HAVING amount > 250 and customer_id BETWEEN 380 AND 430;


SELECT rating, count(rating)
FROM film
GROUP BY rating
ORDER BY rating;
--pg-13 has the most movies of 223

