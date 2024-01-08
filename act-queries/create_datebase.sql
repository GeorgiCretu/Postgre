-- create the database
CREATE DATABASE sales;

-- REMEMBER USE THIS DATABASE
-- Make sure all the tables are stored correctly in the new database.

CREATE TABLE
    salesman (
        salesman_id         SMALLINT PRIMARY KEY,
        salesman_name       NAME,
        salesman_city       NAME,
        salesman_comission  DECIMAL(3, 2)
    );

CREATE TABLE
    customer (
        customer_id     SMALLINT PRIMARY KEY,
        customer_name   NAME,
        customer_city   NAME,
        customer_grade  SMALLINT,
        salesman_id     SMALLINT REFERENCES salesman(salesman_id)
    );

CREATE TABLE
    purchase (
        purchase_id     INT PRIMARY KEY,
        purchase_amount DECIMAL(10,2),
        purchase_date   DATE,
        customer_id     SMALLINT REFERENCES customer(customer_id),
        salesman_id     SMALLINT REFERENCES salesman(salesman_id)
    );