## Write a script that prints the full description of the table books from the database alx_book_store in your MySQL server.

## let use the database alx_book_store
USE alx_book_store;

# let print table books description
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE, COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'books' AND TABLE_SCHEMA = 'alx_book_store';