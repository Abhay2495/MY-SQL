-- show databases;


-- select From Statement 
-- SELECT customerNumber,
-- orderNumber,
-- orderDate
-- FROM orders;

-- how to use the MySQL SELECT statement without referencing any table. 

-- order by asc, desc and NULL
-- select
-- lastName,
-- firstName,
-- officeCode
-- from employees 
-- order by reportsTo 

-- WHERE 

-- -- Where clause with the AND opertar
-- -- Where clause with the OR opertar

-- -- Where Clause with the Between operator
-- SELECT 
--     lastname, 
--     firstname, 
--     jobtitle,
--     officeCode
-- FROM
--     employees
-- WHERE
--     officeCode BETWEEN 1 AND 3
--  order by officeCode;
--  
--  -- where clause with the Like operator
--  select
-- 	firstName,
--     lastName
-- From
-- 	employees
-- Where 
-- 	lastName like '%son'
-- order by firstName;

-- -- Where clause with the In oper
-- SELECT 
--     firstName, 
--     lastName, 
--     officeCode
-- FROM
--     employees
-- WHERE
--     officeCode IN (7, 6, 5)
-- ORDER BY 
--     officeCode;
--     
--     
-- -- where clause with the IS NULL operater
-- SELECT 
--     lastName, 
--     firstName, 
--     reportsTo
-- FROM
--     employees
-- WHERE
--     reportsTo IS NULL;
--     
-- -- where clause with the comparison operater
-- Select
-- 	lastName,
--     firstName,
-- 	jobtitle ,
--     officeCode
-- FROM
-- 	employees
-- WHERE 
-- 	 jobtitle <> 'sales Rep' AND
--     officeCode <= 3
    
-- MySQl Distinct 
-- SELECT DISTINCT 
-- 	State, city	
-- from
--     customers
-- Where 
-- state is not Null
-- order by 
-- 	state,
--     city
    
-- AND operation
-- SELECT 
--     customername, 
--     country, 
--     state,
--     creditLimit
-- FROM
--     customers
-- WHERE
--     country = 'USA' AND 
--     state = 'CA'AND
--     creditLimit >100000;


-- OR operator 
-- SELECT    
-- 	customername, 
-- 	country,
--     creditLimit
-- FROM    
-- 	customers
-- WHERE country = 'USA' 
-- 	OR country = 'France'
--     AND creditLimit > 100000
      
-- IN operator
-- SELECT 
--     officeCode, 
--     city, 
--     phone, 
--     country
-- FROM
--     offices
-- WHERE
--     -- country IN ('USA' , 'France');
--     country='USA' OR country='France';

-- NOT IN operater
-- select officeCode,
-- 	city,
-- 	phone
-- FROM 
-- 	offices
-- WHERE
-- country NOT IN ('USA' ,'France')
-- order by
-- city;

	-- BETWEEN operter
-- select 
-- productCode,
-- productName,
-- buyPrice
-- From
-- products
-- where 
-- buyPrice between 50 
-- -- show databases;


-- -- select From Statement 
-- SELECT customerNumber,
-- orderNumber,
-- orderDate
-- FROM orders;

-- -- how to use the MySQL SELECT statement without referencing any table. 

-- -- order by asc, desc and NULL
-- -- select
-- -- lastName,
-- -- firstName,
-- -- officeCode
-- -- from employees 
-- -- order by reportsTo 

-- -- WHERE 

-- -- Where clause with the AND opertar
-- -- Where clause with the OR opertar

-- -- Where Clause with the Between operator
-- SELECT 
--     lastname, 
--     firstname, 
--     jobtitle,
--     officeCode
-- FROM
--     employees
-- WHERE
--     officeCode BETWEEN 1 AND 3
--  order by officeCode;
--  
--  -- where clause with the Like operator
--  select
-- 	firstName,
--     lastName
-- From
-- 	employees
-- Where 
-- 	lastName like '%son'
-- order by firstName;

-- -- Where clause with the In oper
-- SELECT 
--     firstName, 
--     lastName, 
--     officeCode
-- FROM
--     employees
-- WHERE
--     officeCode IN (7, 6, 5)
-- ORDER BY 
--     officeCode;
--     
--     
-- -- where clause with the IS NULL operater
-- SELECT 
--     lastName, 
--     firstName, 
--     reportsTo
-- FROM
--     employees
-- WHERE
--     reportsTo IS NULL;
--     
-- -- where clause with the comparison operater
-- Select
-- 	lastName,
--     firstName,
-- 	jobtitle ,
--     officeCode
-- FROM
-- 	employees
-- WHERE 
-- 	 jobtitle <> 'sales Rep' AND
--     officeCode <= 3
    
-- MySQl Distinct 
-- SELECT DISTINCT 
-- 	State, city	
-- from
--     customers
-- Where 
-- state is not Null
-- order by 
-- 	state,
--     city
    
-- AND operation
-- SELECT 
--     customername, 
--     country, 
--     state,
--     creditLimit
-- FROM
--     customers
-- WHERE
--     country = 'USA' AND 
--     state = 'CA'AND
--     creditLimit >100000;


-- OR operator 
-- SELECT    
-- 	customername, 
-- 	country,
--     creditLimit
-- FROM    
-- 	customers
-- WHERE country = 'USA' 
-- 	OR country = 'France'
--     AND creditLimit > 100000
      
-- IN operator
-- SELECT 
--     officeCode, 
--     city, 
--     phone, 
--     country
-- FROM
--     offices
-- WHERE
--     -- country IN ('USA' , 'France');
--     country='USA' OR country='France';

-- NOT IN operater
-- select officeCode,
-- 	city,
-- 	phone
-- FROM 
-- 	offices
-- WHERE
-- country NOT IN ('USA' ,'France')
-- order by
-- city;

-- BETWEEN operater
-- SELECT 
--     productCode, 
--     productName, 
--     buyPrice
-- FROM
--     products
-- WHERE
--     buyPrice BETWEEN 50 AND 60;

-- SELECT 
--     productCode, 
--     productName, 
--     buyPrice
-- FROM
--     products
-- WHERE
--     buyPrice >= 90 OR buyPrice <= 100;


-- SELECT 
--     productCode, 
--     productName, 
--     buyPrice
-- FROM
--     products
-- WHERE
--     buyPrice NOT BETWEEN 20 AND 100;
    
--     SELECT 
--     productCode, 
--     productName, 
--     buyPrice
-- FROM
--     products
-- WHERE
--     buyPrice < 20 OR buyPrice > 100;


-- SELECT 
--    orderNumber,
--    requiredDate,
--    status
-- FROM 
--    orders
-- WHERE 
--    requireddate BETWEEN 
--      CAST('2003-01-01' AS DATE) AND 
--      CAST('2003-01-31' AS DATE);	


-- Like Operater
-- This example uses the LIKE operator to find employees whose first names start with the letter a
-- SELECT 
--     employeeNumber, 
--     lastName, 
--     firstName
-- FROM
--     employees
-- WHERE
--     firstName LIKE 'b%';


-- This example uses the LIKE operator to find employees whose last names end with the literal string on
-- SELECT 
--     employeeNumber, 
--     lastName, 
--     firstName
-- FROM
--     employees
-- WHERE
--     lastName LIKE '%s%';


-- Like  operater with an underscore(_) 
-- SELECT 
--     employeeNumber, 
--     lastName, 
--     firstName
-- FROM
--     employees
-- WHERE
--     firstname LIKE 't_m';

 -- SELECT 
--     employeeNumber, 
--     lastName, 
--     firstName
-- FROM
--     employees
-- WHERE
--     lastName NOT LIKE 'B%';

-- LIKE operater with the ESCAPE clsd
-- SELECT 
-- 	productCode,
--     productName
-- FROM
-- 	products
-- WHERE 
-- 	productCode LIKE '%\_20';

-- SELECT 
--     productCode, 
--     productName
-- FROM
--     products
-- WHERE
--     productCode LIKE '%$_20%' ESCAPE '$';

-- My SQL limit to get the highest ot lowest roew 
-- SELECT 
--     customerNumber, 
--     customerName, 
--     creditLimit
-- FROM
--     customers

-- ORDER BY 
--     creditLimit, 
--     customerNumber desc
-- LIMIT 5;

-- My SQL Limit clause for pagination
-- SELECT 
--     customerNumber, 
--     customerName
-- FROM
--     customers
-- ORDER BY customerName    
-- LIMIT 10, 10;

-- MySqQL LIMIT to get  the nth heighest or lowest vale
-- SELECT 
--     customerName, 
--     creditLimit
-- FROM
--     customers
-- ORDER BY 
--     creditLimit DESC    
-- LIMIT 2,2;

-- SELECT 
--     customerName, 
--     creditLimit
-- FROM
--     customers
-- ORDER BY 
--     creditLimit ASC;

-- Liimit & DIstincn
-- SELECT DISTINCT
--     state
-- FROM
--     customers
-- WHERE	
--     state IS NOT NULL 
-- order by state ASC
-- LIMIT 10;

-- IS NULL 
-- SELECT 
--     customerName, 
--     country, 
--     salesrepemployeenumber
-- FROM
--     customers
-- WHERE
--     salesrepemployeenumber IS NULL
-- ORDER BY 
--     customerName;

-- IS NULL Operater
 
 -- IS NOT NULL Operater
--  SELECT 
--     customerName, 
--     country, 
--     salesrepemployeenumber
-- FROM
--     customers
-- WHERE
--     salesrepemployeenumber IS NOT NULL
-- ORDER BY 
--    customerName;

-- column Aliases
-- SELECT 
--     CONCAT_WS(', ', lastName, firstname)
-- FROM
--     employees;

-- SELECT
-- 	orderNumber `Order no.`,
-- 	SUM(priceEach * quantityOrdered) Total
-- FROM
-- 	orderdetails
-- GROUP BY
-- 	`Order no.`
-- HAVING
-- 	total > 60000;

-- SELECT 
--     e.firstName, 
--     e.lastName
-- FROM
--     employees e
-- ORDER BY e.firstName;

-- SELECT
-- 	customerName,
-- 	COUNT(o.orderNumber) total
-- FROM
-- 	customers c
-- INNER JOIN orders o ON c.customerNumber = o.customerNumber
-- GROUP BY
-- 	customerName
-- ORDER BY
-- 	total DESC;
-- Below there is the explation for the above query expalination and good understablity
-- SELECT
-- 	customers.customerName,
-- 	COUNT(orders.orderNumber) total
-- FROM
-- 	customers
-- INNER JOIN orders ON customers.customerNumber = orders.customerNumber
-- GROUP BY
-- 	customerName
-- ORDER BY
-- 	total DESC

-- CREATE TABLE members (
--     member_id INT AUTO_INCREMENT,
--     name VARCHAR(100),
--     PRIMARY KEY (member_id)
-- );

-- INSERT INTO members(name)
-- VALUES('John'),('Jane'),('Mary'),('David'),('Amelia');

-- CREATE TABLE committees (
-- committees_id INT AUTO_INCREMENT,
-- name VARCHAR(100),
-- PRIMARY KEY (COMMITTEES_id)
-- );

-- INSERT INTO committees(name)
-- VALUES('John'),('Mary'),('Amelia'),('Joe');

-- INNER JOIN 
-- SELECT 
-- 	m.member_id,
--     m.name AS member,
--     c.committees_id,
--     c.name AS committees
-- FROM
-- 	members m
-- INNER JOIN committees c ON c.name = m.name;

-- SELECT
-- 	m.member_id,
--     m.name AS member,
--     c.committees_id,
--     c.name AS committee
-- FROM 
-- 	members m
-- JOIN committees c USING(name); -- whithout us in INNER it will because its Inbilt

-- LEFT JOIN 
-- SELECT
-- 	m.member_id,
--     m.name AS member,
--     c.committees_id,
--     c.name AS committees
-- FROM
-- 	members m
-- LEFT JOIN committees c USING(name);

-- SELECT 
--     m.member_id, 
--     m.name AS member, 
--     c.committee_id, 
--     c.name AS committee
-- FROM
--     members m
-- LEFT JOIN committees c USING(name)
-- WHERE c.committee_id IS NULL; -- not working 

-- SELF JOIN
-- SELECT 
--     CONCAT(m.lastName, ', ', m.firstName) AS Manager,
--     CONCAT(e.lastName, ', ', e.firstName) AS 'Direct report'
-- FROM
--     employees e
-- INNER JOIN employees m ON 
--     m.employeeNumber = e.reportsTo
-- ORDER BY 
--     Manager;
    
-- USING IFNULL
-- SELECT 
--     IFNULL(CONCAT(m.lastname, ', ', m.firstname),
--             'Top Manager') AS 'Manager',
--     CONCAT(e.lastname, ', ', e.firstname) AS 'Direct report'
-- FROM
--     employees e
-- LEFT JOIN employees m ON 
--     m.employeeNumber = e.reportsto
-- ORDER BY 
--     manager DESC;

-- SELECT 
--     c1.city, 
--     c1.customerName, 
--     c2.customerName
-- FROM
--     customers c1
-- INNER JOIN customers c2 ON 
--     c1.city = c2.city
--     AND c1.customername > c2.customerName
-- ORDER BY 
--     c1.city;


-- GROUP BY 
-- SELECT 
--   status, 
--   COUNT(*) as total
-- FROM 
--   orders 
-- GROUP BY 
--   status;

-- SELECT 
--   status, 
--   SUM(quantityOrdered * priceEach) AS amount 
-- FROM 
--   orders 
--   INNER JOIN orderdetails USING (orderNumber) 
-- GROUP BY 
--   status;
--   
 --  SELECT 
--   orderNumber,
--   SUM(quantityOrdered*priceEach) AS total
--   FROM
--   orderdetails
--   GROUP BY 
--   orderNumber;

-- SELECT 
--   YEAR(orderDate) AS year, 
--   SUM(quantityOrdered * priceEach) AS total 
-- FROM 
--   orders 
--   INNER JOIN orderdetails USING (orderNumber) 
-- WHERE 
--   status = 'Shipped' 
-- GROUP BY 
--   YEAR(orderDate);

-- GROUP BY WITH HAVING Clause
-- SELECT 
--   YEAR(orderDate) AS year, 
--   SUM(quantityOrdered * priceEach) AS total 
-- FROM 
--   orders 
--   INNER JOIN orderdetails USING (orderNumber) 
-- WHERE 
--   status = 'Shipped' 
-- GROUP BY 
--   year 
-- HAVING 
--   year > 2000;

-- GROUP BY MULTIPLY COLUMNS
-- SELECT
-- YEAR(orderDate) AS year,
-- Status,
-- SUM(quantityOrdered * priceEach) AS total
-- FROM 
-- orders
-- INNER JOIN orderdetails USING (orderNumber)
-- GROUP BY 
-- year,
-- status 
-- ORDER BY
-- year

-- HAVING COUNT
-- SELECT
-- product_name,
-- COUNT(id)
-- FROM
-- sales
-- GROUP BY
-- product_name
-- HAVING
-- COUNT(id) = 1;
