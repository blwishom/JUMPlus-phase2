-- ************************SEE JOINS AND SUBQUERIES EXERCISE PNG FOR QUERY QUESTIONS************************

-- use sakila;

-- -- select * from category;
-- -- select * from film;

-- # Query #1
-- SELECT title as Title, rating as Rating, name as Category_Name
-- FROM film
-- JOIN category
-- 	ON film.film_id = category.category_id
-- WHERE rating != 'PG-13';

-- # Query #2
-- SELECT first_name as First_Name, last_name as Last_Name, count(film_id) as Total_Films
-- FROM actor
-- JOIN film_actor
-- 	ON actor.actor_id = film_actor.film_id
-- GROUP BY film_actor.film_id
-- ORDER BY Total_Films desc;

-- # Query #3
-- SELECT title as Title, sum(inventory.film_id) as Inventory
-- FROM film
-- JOIN inventory
-- 	ON film.film_id = inventory.film_id
-- GROUP BY inventory.film_id;

-- # Query #4
-- SELECT avg(replacement_cost)
-- FROM film
-- WHERE rating = 'PG-13';

-- SELECT title as Title, replacement_cost as Replacement_Cost_Above_Avg
-- FROM film
-- WHERE replacement_cost > (
-- 	SELECT avg(replacement_cost)
-- 	FROM film
-- 	WHERE rating = 'PG-13'
--     )
-- ORDER BY replacement_cost;
