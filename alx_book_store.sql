import mysql.connector

alx_book_store = mysql.connector.connect(
    host="penguin@penguin--Zbook",
    user="root",
    password="myPass12345",
    database="alx_book_store"  import mysql.connector

alx_book_store = mysql.connector.connect(
    host="penguin@penguin--Zbook",
    user="root",
    password="myPass12345",
    database="alx_book_store"  
)

mycursor = alx_book_store.cursor()
mycursor.execute(""" 
  CREATE TABLE Books(
    book_id INT 
    title VARCHAR(130)
    author_id INT (Foreign Key)
    price DOUBLE
    publication_date DATE
    PRIMARY KEY (book_id)
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
  )
  CREATE TABLE Authors(
    author_id INT 
    author_name VARCHAR(215)
    PRIMARY KEY (author_id)
  )
  CREATE TABLE Customers(
    customer_id INT 
    customer_name VARCHAR(215)
    email VARCHAR(215)
    address TEXT
    PRIMARY KEY (customer_id)
  )
  CREATE TABLE Orders(
    order_id INT 
    customer_id INT 
    order_date DATE
    PRIMARY KEY (order_id)
    FOREIGN KEY (customer_od) REFERENCES Customers (customer_id)
  )
  CREATE TABLE Order_details(
    orderdetailid INT  
    order_id INT 
    book_id INT 
    quantity DOUBLE
    PRIMARY KEY (orderdetailid)
    FOREUGN KEY (order_id) REFERENCES Orders (order_id)
    FOREIGN KEY (book_id) REFERNCES Books (book_id)
  )
""")



mycursor.close()
alx_book_store.close()
)

mycursor = alx_book_store.cursor()
mycursor.execute(""" 
  CREATE TABLE Books(
    book_id INT 
    title VARCHAR(130)
    author_id INT (Foreign Key)
    price DOUBLE
    publication_date DATE
    PRIMARY KEY (book_id)
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
  )
  CREATE TABLE Authors(
    author_id INT 
    author_name VARCHAR(215)
    PRIMARY KEY (author_id)
  )
  CREATE TABLE Customers(
    customer_id INT 
    customer_name VARCHAR(215)
    email VARCHAR(215)
    address TEXT
    PRIMARY KEY (customer_id)
  )
  CREATE TABLE Orders(
    order_id INT 
    customer_id INT 
    order_date DATE
    PRIMARY KEY (order_id)
    FOREIGN KEY (customer_od) REFERENCES Customers (customer_id)
  )
  CREATE TABLE Order_details(
    orderdetailid INT  
    order_id INT 
    book_id INT 
    quantity DOUBLE
    PRIMARY KEY (orderdetailid)
    FOREUGN KEY (order_id) REFERENCES Orders (order_id)
    FOREIGN KEY (book_id) REFERNCES Books (book_id)
  )
""")



mycursor.close()
alx_book_store.close()
