# Write a simple python script that creates the database alx_book_store in your MySQL server.
    # Name of python script should be MySQLServer.py
    #If the database alx_book_store already exists, your script should not fail
    #You are not allowed to use the SELECT or SHOW statements
import mysql.connector


try:
    db = mysql.connector.connect(
                host = "localhost",
                user = "root",
                password = "2PACshakur.",
            )
        # using cursor to perform query statements
    myCursor = db.cursor()
        # assigning a query to create a new dtabase
    sql = 'CREATE DATABASE IF NOT EXISTS alx_book_store'
    if "SELECT" or "SHOW" not in sql:
        myCursor.execute(sql)
    else:
        print("SELECT and SHOW are not allowed to be used")
    myCursor.close()
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error:
    print("You're already have created this database")