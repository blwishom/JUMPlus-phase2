from connection import create_connection

def all_books(conn):
    sql = "SELECT * FROM book"
    cursor = conn.cursor()
    cursor.execute(sql)
    return cursor.fetchall()

def select_book(conn, book_id):
    sql = "SELECT * FROM book WHERE id = ?"
    cursor = conn.cursor()
    cursor.execute(sql, [book_id])
    return cursor.fetchone()


def select_author(conn, value=None, column=None):
    cursor = conn.cursor()

    if column == "name":
        sql = "SELECT id, name FROM author WHERE name = ?"
        cursor.execute(sql, [value])

    elif column == "id":
         sql = "SELECT id, name FROM author WHERE id = ?"
         cursor.execute(sql, [value])

    else: 
        sql = "SELECT id, name FROM author"
        cursor.execute(sql)

    return  cursor.fetchone()


def select_category(conn, value=None, column=None):
    cursor = conn.cursor()

    if column == "name":
        sql = "SELECT id, name FROM category WHERE name = ?"
        cursor.execute(sql, [value])

    elif column == "id":
        sql = "SELECT id, name FROM category WHERE id = ?"
        cursor.execute(sql, [value])

    else: 
        sql = "SELECT id, name FROM category"
        cursor.execute(sql)

    return  cursor.fetchone()

def main():
    database = "bims.db"
    conn = create_connection(database)

    sql = "SELECT * FROM book"
    cursor = conn.cursor()
    cursor.execute(sql)
    print(cursor.fetchone())


if __name__ == "__main__":
    main()