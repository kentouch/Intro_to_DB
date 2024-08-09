# creation of a database named alx_book_store
CREATE DATABASE alx_book_store;

#Books: Stores information about books available in the bookstore.
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCING Authors(author_id),
    price DOUBLE NOT NULL,
    publication_date DATE
);

#Authors: Stores information about authors.
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL,
    
);

#Customers: Stores information about customers.
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(130) NOT NULL,
    email VARCHAR(215),
    address TEXT
);

#Orders: Stores information about orders placed by customers
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCING Customers(customer_id),
    order_date DATE
);

#Order_Details: Stores information about the books included in each order.
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCING orders(order_id),
    FOREIGN KEY (book_id) REFERENCING books(book_id),
    quantity DOUBLE
);

