import sqlite3
from sqlite3 import Error
from connection import create_connection

def insert_author(conn, authors: dict):
    sql = 'INSERT INTO authors (name) VALUES (?)'
    cursor = conn.cursor()
    cursor.execute(sql, [authors['name']])
    conn.commit()
    return cursor.lastrowid

def insert_category(conn, categories: dict):
    sql = 'INSERT INTO catergories (name) VALUES (?)'
    cursor = conn.cursor()
    cursor.execute(sql, [categories['name']])
    conn.commit()
    return cursor.lastrowid

def insert_book(conn, books: dict):
    sql = ''' INSERT INTO books (name, published, author_id, category_id) VALUES (?, ?, ?, ?) '''
    cursor = conn.cursor()

    author_id = insert_author(conn, {books['author']})
    category_id = insert_category(conn, {books['category']})
    cursor.execute(sql, [books['name'], books['published'], author_id, category_id])
    conn.commit()
    return cursor.lastrowid

def main():
    database = 'bims.db'
    conn = create_connection()

    if conn:
        with conn:
            insert_book(conn, {
            'name': 'The Bee Book',
            'published': '2016-03-01',
            'author': 'Emma Tennant',
            'category': 'Science'
            })
        with conn:
            pass
        with conn:
            pass

if __name__ == '__main__':
    main()
