-- ************************SEE SAKILA QUERIES EXERCISE PNG FOR QUERY QUESTIONS************************
use sakila;
SELECT *
FROM rental;

-- # Query #1
SELECT customer_id as Customer_ID, count(rental_id) as Rentals
FROM rental
GROUP BY customer_id
ORDER BY Rentals desc
LIMIT 5;

-- #Query #2
SELECT district as District, count(address) as Total_Addresses
FROM address
GROUP BY District;

-- # Query #3
SELECT title, rental_rate, replacement_cost
FROM film
WHERE (rental_rate < 1) or (replacement_cost < 15);

-- # Query #4
SELECT customer_id, sum(amount) as 'Total_Amount_Spent'
FROM payment
GROUP BY customer_id
HAVING sum(amount) > 150;

-- # Query #5
SELECT customer_id, first_name
FROM customer
WHERE LENGTH(first_name) >= 3 AND first_name LIKE '%o';
