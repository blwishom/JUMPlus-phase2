# Query #1
SELECT customer_id, count(rental_id) as 'Count'
FROM rental
ORDER BY 'Count' desc;

#Query #2
SELECT district, count(address)
FROM adress
GROUP BY district;

# Query #3
SELECT title, rental_rate, replacement_cost
FROM film
HAVING rental_rate < 1 or replacement_cost < 15;

# Query #4
SELECT customer_id, sum(amount) as 'Total_Amount_Spent'
FROM payment
HAVING 'Total_Amount_Spent' > 150;

# Query #5
SELECT customer_id, first_name
FROM customer
WHERE LENGTH(first_name) >= 3 AND first_name LIKE '%o';