# import sys

# sys.path.append('')
# import mysql


import mysql.connector
from pprint import pprint #pretty print formats print statements.. good for sql queries

conn = mysql.connector.connect(
    host = 'localhost',
    username = 'root',
    password = 'root',
    database='<<<DB Name>>>'
)

cursor = conn.cursor()

with conn.cursor() as cursor:
    cursor.execute('''CREATE TABLE pets (
        id INT Primary Key AUTO_INCREMENT,
        name VARCHAR(50) NOT NULL,
        species VARCHAR)(50),
        age INT
        );''')

# # INSERT VALUES
# cursor.execute("INSERT INTO pets (name, species, age) VALUES ('Charlie', 'Cocker Spaniel', 2)")
# cursor.execute("INSERT INTO pets (name, species, age) VALUES ('Toodles', 'Poodle', 4)")
# cursor.execute("INSERT INTO pets (name, species, age) VALUES ('Barky', 'Labrador Retriever', 3)")

# INSERT VALUES MORE DYNAMICALLY USING STRING TEMPLATE SYNTAX
cursor.execute("INSERT INTO pets (name, species, age) VALUES (%s, %s, %s)")
inserts = [('Charlie', 'Cocker Spaniel', 2), ('Toodles', 'Poodle', 4), ('Barky', 'Labrador Retriever', 3)]
conn.commit()

# **********************************               OR               **********************************
sqlDB = """INSERT INTO pets (name, species, age) VALUES (%s, %s, %s)"""
inserts = [('Charlie', 'Cocker Spaniel', 2), ('Toodles', 'Poodle', 4), ('Barky', 'Labrador Retriever', 3)]
cursor.execute(sqlDB, inserts)
conn.commit()



cursor.execute("SELECT * FROM pets")
for row in cursor:
    print(row)

result = cursor.fetchone()
result2 = cursor.fetchall()
print(result)
print(result2)

cursor.execute('SHOW DATABASES')
print(cursor)

for db in cursor:
    print(db)


conn.close()
