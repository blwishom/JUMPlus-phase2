use ot;

-- # Query 1a
SELECT region_id as Region_ID, count(*) as Count
FROM countries
GROUP BY region_id
ORDER BY Count desc;

-- # Query 1b
SELECT region_name as Region_With_Most_Locations
FROM regions
WHERE region_id = 1;

-- # Query 1c
SELECT state, city, postal_code
FROM locations
WHERE country_id != 'US' AND city LIKE 's%';

-- # Query 1d
SELECT *
FROM locations
WHERE state IS null;

-- # Query 1e
SELECT DISTINCT count(country_id) as Countries_With_Loctions
FROM locations;

-- # Query 2a
SELECT product_name as Product_Name, list_price as List_Price--
FROM products
WHERE list_price between 100 and 150;

-- # Query 2b
SELECT products.product_name as Product_Name, products.list_price as List_Price, product_categories.category_name as Category_Name
FROM products
JOIN product_categories
	ON products.product_id = product_categories.category_id;

-- # Query 2c
SELECT products.product_name, products.list_price, quantity, category_name
FROM products
JOIN inventories
	ON products.product_id = inventories.product_id
JOIN product_categories
	ON inventories.warehouse_id = product_categories.category_id
JOIN warehouses
	ON warehouses.warehouse_id = warehouses.warehouse_id
WHERE quantity > 100 and warehouse_name = 'Toronto' and category_name = 'CPU';
