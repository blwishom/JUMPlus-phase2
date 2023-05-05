

import mysql.connector
from pprint import pprint #pretty print formats print statements.. good for sql queries

conn = mysql.connector.connect(
    host = 'localhost',
    username = 'root',
    password = 'root',
    database='sakila'
)

cursor = conn.cursor()

# Query 1
cursor.execute("""
               SELECT customer_id as Customer_ID, count(rental_id) as Rentals
                FROM rental
                GROUP BY customer_id
                ORDER BY Rentals desc
                LIMIT %s
                """, [5])

# Query 2
cursor.execute("""
                SELECT district as District, count(address) as Total_Addresses
                FROM address
                GROUP BY District
                """)

# Query 3
cursor.execute("""
                SELECT title, rental_rate, replacement_cost
                FROM film
                WHERE (rental_rate < %s) or (replacement_cost < %s)
                """, [1, 15])

# Query 4
cursor.execute("""
                SELECT customer_id, sum(amount) as 'Total_Amount_Spent'
                FROM payment
                GROUP BY customer_id
                HAVING sum(amount) > %s
                """, [150])

# Query 5
cursor.execute("""
                SELECT customer_id, first_name
                FROM customer
                WHERE LENGTH(first_name) >= %s AND first_name LIKE '%s'
                """, [3, '%o'])


for row in cursor:
    print(row)

result = cursor.fetchone()
print(result)

cursor.execute('SHOW DATABASES')
print(cursor)

for db in cursor:
    print(db)


conn.close()
