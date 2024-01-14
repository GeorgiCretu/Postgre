[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/RVdyhXFQ)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=13328845&assignment_repo_type=AssignmentRepo)
# Basic Queries

# 1. Introduction
In this activity you will practice SQL basic queries introduction.

Start by creating the database using the provided SQL code and inserting the data. Once you've completed these steps, proceed to the query exercises.

### Step 1. Create the database
To create the data base run the code stored in `create_database.sql`.

### Step 2. Insert the data
To insert the data in the data base run the code stored in `insert_data.sql`.

# 2. Queries exercises

1. Display name and commission of all the salesmen.

`` 
SELECT
    salsman_comission
FROM
    salesman;
    
``
<br></br>

2. Retrieve salesman id of all salesmen from orders table without any repeats.

`` 
SELECT DISTINCT
    salesman_id
    purchase_id
FROM
    purchase;

``
<br></br>

3. Display names and city of salesman, who belongs to the city of Paris.

`` 
SELECT
    salesman_name
    salesman_city
FROM
    salesman
WHERE
    salesman_city = `Paris`;

``
<br></br>

4. Display all the information for those customers with a grade of 200.

`` 
SELECT *
FROM customer
WHERE customer_grade = 200;

``
<br></br>

5. Display the order number, order date and the purchase amount for order(s) which will be delivered bythe salesman with ID 5001.

`` 
SELECT 
	purchase_id,
	purchase_date,
	purchase_amount
FROM purchase
WHERE salesman_id = 5001;

``
<br></br>

6. Display all the customers, who are either belongs to the city New York or not had a grade above 100.

`` 
SELECT 
*
FROM customer
WHERE customer_city = 'New York' OR NOT (customer_grade > 100);

``
<br></br>

7. Find those salesmen with all information who gets the commission within a range of 0.12 and 0.14.

`` 
SELECT * 
FROM salesman
WHERE salesman_comission BETWEEN 0.12 AND 0.14;

``
<br></br>

8. Find all those customers with all information whose names are ending with the letter 'n'.

`` 
SELECT *
FROM salesman
WHERE salesman_name LIKE '%n';

``
<br></br>

9. Find those salesmen with all information whose name containing the 1st character is 'N' and the 4th character is 'l' and rests may be any character.

`` 
SELECT *
FROM salesman
WHERE salesman_name LIKE 'N--l%';

``
<br></br>

10. Find that customer with all information who does not get any grade except NULL.

`` 
SELECT *
FROM customer
WHERE customer_grade ISNULL; 

``
<br></br>

11. Find the total purchase amount of all orders.

`` 
SELECT SUM(purchase_amount) AS total_amount
FROM purchase
;

``
<br></br>

12. Find the number of salesman currently listing for
all of their customers.

`` 
SELECT count(salesman_id)
FROM customer;

``
<br></br>

13. Find the highest grade for each of the cities of the customers.

`` 
SELECT
	customer_city MAX(customer_grade)
FROM 
	customer
GROUP BY 
	customer_city;
 
 ``
<br></br>

14. Find the highest purchase amount ordered by the each customer
with their ID and highest purchase amount.

`` 
SELECT customer_id, MAX(purchase_amount) AS purchase_amount_max
FROM purchase
GROUP BY 
customer_id;

``
<br></br>

15. Find the highest purchase amount ordered by the each
customer on a particular date with their ID, order date
and highest purchase amount.

`` 
SELECT 
	MAX(purchase_amount),
	purchase_date
FROM 
	purchase
GROUP BY
	customer_id,
	purchase_date
ORDER BY
	MAX(purchase_amount) DESC;
 
``
<br></br>

16. Find the highest purchase amount on a date '2012-08-17'
for each salesman with their ID.

`` 
SELECT 
	MAX(purchase_amount) AS amount,
	salesman_id,
	purchase_date
FROM 
	purchase
WHERE 
	purchase_date = '2016-08-17'
GROUP BY 
	salesman_id,
	purchase_date;
 
 ``
<br></br>

17. Find the highest purchase amount with their customer ID and order date, for only those customers who have the highest purchase amount in a day is more than 2000.

`` 
SELECT 
	MAX(purchase_amount),
	customer_id,
	purchase_date
FROM
	purchase
WHERE
	purchase_amount >= 2000
GROUP BY
	customer_id,
	purchase_date;
 
 ``
<br></br>

18. Write a SQL statement that counts all orders for a date August 17th, 2012.

`` 
SELECT 
	COUNT(*) AS purchase_date_count
FROM
	purchase
WHERE
	purchase_date = '2012-08-17'; 
 
 ``
<br></br>

19. Find the name and city of those customers and salesmen who lives in the same city. 

`` 
SELECT 
	customer_name ,
	customer_city ,
	salesman_name ,
	salesman_city 

FROM
	customer,
	salesman
WHERE
	salesman_city = salesman_city;
 
 ``
<br></br>

20. Find the names of all customers along with the salesmen who works for them.

`` 
SELECT
customer_name,
salesman_id
FROM
customer
GROUP BY 
customer_name,
salesman_id;

``
<br></br>

21. Display all those orders by the customers not located in the same cities where their salesmen live. 

`` 
SELECT 
	purchase_id,
	customer_name,
	customer_city,
	salesman_name,
	salesman_city,
	*
FROM
	purchase
JOIN 
	customer ON purchase_id = customer_id
JOIN
	salesman ON customer_id = salesman_id
WHERE
	customer_city <> salesman_city;
 
 ``
<br></br>
