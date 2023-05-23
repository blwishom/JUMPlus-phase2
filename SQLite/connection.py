import sqlite3
from sqlite3 import Error

# MANUAL CONNECTION
# conn = sqlite3.connect('my_db.db')
# cursor = conn.cursor()

# FUNCTION CONNECTION
def create_connection(db_file):
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Exception as e:
        print(e)
    finally:
        if conn:
            conn.close()

def get_connection(db_file):
    ''' Close the connection after using it '''
    conn = get_connection(db_file)
    try:
        conn = sqlite3.connect(db_file)
        print(sqlite3.version, conn)
    except Exception as e:
        print(e)

    return conn

if __name__ == '__main__':
    create_connection('bims.db')


# MANUAL COMMIT AND CLOSE
# conn.commit()
# conn.close()
