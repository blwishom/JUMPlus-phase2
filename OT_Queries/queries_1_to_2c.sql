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
SELECT count(DISTINCT country_id) as Countries_With_Loctions
FROM locations;

-- # Query 2a
SELECT product_name as Product_Name, list_price as List_Price--
FROM products
WHERE list_price between 100 and 150;

-- # Query 2b
SELECT products.product_name as Product_Name, products.list_price as List_Price, product_categories.category_name as Category_Name
FROM products
JOIN product_categories
	ON products.category_id = product_categories.category_id;

-- # Query 2c
SELECT products.product_name, products.list_price
FROM products
JOIN inventories
	ON products.product_id = inventories.product_id
JOIN product_categories
	ON product_categories.category_id = products.category_id
JOIN warehouses
	ON warehouses.warehouse_id = inventories.warehouse_id
WHERE quantity > 100 and warehouse_name = 'Toronto' and category_name = 'CPU';

-- # Query 3a
SELECT avg(list_price) as Avg_List_Price
FROM products;

-- # Query 3b
SELECT product_categories.category_name as Category_Name, round(avg(list_price), 2) as Avg_List_Price
FROM products
JOIN product_categories
	ON products.category_id = product_categories.category_id
GROUP BY Category_Name;

-- Query 4a
SELECT list_price as List_Price, count(list_price) as Count_of_List_Price
FROM products
GROUP BY list_price
ORDER BY list_price desc
LIMIT 2;


