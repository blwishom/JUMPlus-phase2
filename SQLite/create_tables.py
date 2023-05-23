# from connection import create_connection


def create_table(conn):
    # SQL TRANSACTIONS
    authors = ''' CREATE TABLE IF NOT EXIST Author (
        id INT PRIMARY KEY,
        name TEXT
    ); '''

    categories = ''' CREATE TABLE IF NOT EXIST Category (
        id INT PRIMARY KEY,
        name TEXT
    ); '''

    books = ''' CREATE TABLE IF NOT EXIST Book (
        id INT PRIMARY KEY,
        name TEXT,
        published DATE,
        FOREIGN KEY (author_id)
            REFERENCES Author (id)
        FOREIGN KEY (category_id)
            REFERENCES Category (id)
    ); '''

create_table(authors)
create_table(categories)
create_table(books)
