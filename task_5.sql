## My first very data 
# Write a script that inserts a single row in the table customer (database alx_book_store) in your MySQL server.

# Use database alx_book_store
USE alx_book_store;

# Insert data into table customers
INSERT INTO TABLE customers(customer_id, customer_name, email, address)
VALUE(1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Hapiness Ave');