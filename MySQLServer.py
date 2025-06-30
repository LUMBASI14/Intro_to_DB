import mysql.connector 
from mysql.connector import errorcode

def create_database():
  connections = None
  cursor = None
  database = alx_book_store

  try:
    connections = mysql.connector.connect(
      host="localhost",
      user="root@localhot", 
      password="Navalayo@1970"
    )
    connections.cursor()
    
    create_databse = f"CREATE DATABASE IF NOT EXISTS {database}"
    cursor.execute(create_database)
    print(f"Database {database} created successfully!")

  except mysql.connector.Error as err:
    print(f"an unexpected error occurred: {err}")
  except Exception as e:
    print(f"can't create a database due to unknown error {e]")
  finaally :
    if cursor:
            cursor.close()
        if cnx and cnx.is_connected():
            cnx.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
  create_database()
