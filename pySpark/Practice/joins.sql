-- -- get cities in countries that contain the letter 'g'
-- -- LEFT JOIN
-- SELECT city.city as city, country.country as country, count(city) as city_total
-- FROM city
-- LEFT JOIN country
-- 	ON city.city_id = country.country_id
-- WHERE country LIKE '%g%'
-- GROUP BY country.country_id;

-- select * from country where country like '%g%';

-- -- get customer's name with amount of rentals and total price for the rentals and the rental date

-- SELECT customer.first_name, customer.last_name, count(rental.customer_id),  sum(payment.amount), rental.rental_date
-- FROM customer
-- LEFT JOIN rental
-- 	ON customer.customer_id = rental.rental_id
-- LEFT JOIN payment
-- 	ON rental.rental_id = payment.payment_id
-- GROUP BY customer.customer_id
-- ORDER BY payment.amount desc;

-- -- get cities addresses districts and postal codes
-- SELECT city.city, address.address, address.district, address.postal_code
-- FROM city
-- JOIN address
-- 	ON city.city_id = address.address_id;
