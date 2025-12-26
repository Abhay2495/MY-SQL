-- MYSQL STORED PROCEDURES
-- SELECT * FROM products;
-- SELECT * FROM customers;

-- DELIMITER $$

-- CREATE PROCEDURE CreatePersonTable()
-- BEGIN
--     -- drop persons table 
--     DROP TABLE IF EXISTS persons;
--     
--     -- create persons table
--     CREATE TABLE persons(
--         id INT AUTO_INCREMENT PRIMARY KEY,
--         first_name VARCHAR(255) NOT NULL,
--         last_name VARCHAR(255) NOT NULL
--     );
--     
--     -- insert data into the persons table
--     INSERT INTO persons(first_name, last_name)
--     VALUES('John','Doe'),
-- 		  ('Jane','Doe');
-- 	
--     -- retrieve data from the persons table
--     SELECT id, first_name, last_name 
--     FROM persons;
-- END $$

-- DELIMITER ;


-- Create Procedure+
-- DELIMITER //

-- CREATE PROCEDURE GetOfficeByCountry(
-- 	IN countryName VARCHAR(255)
-- )
-- BEGIN
-- 	SELECT * 
--  	FROM offices
-- 	WHERE country = countryName;
-- END //

-- DELIMITER ;
-- CALL GetOfficeByCountry('USA');

-- DELIMITER $$

-- CREATE PROCEDURE GetOrderCountByStatus (
-- 	IN  orderStatus VARCHAR(25),
-- 	OUT total INT
-- )
-- BEGIN
-- 	SELECT COUNT(orderNumber)
-- 	INTO total
-- 	FROM orders
-- 	WHERE status = orderStatus;
-- END$$

-- DELIMITER ;

-- CALL GetOrderCountByStatus('In Process',@total);
-- SELECT @total AS total_in_process;

-- DELIMITER $$

-- CREATE PROCEDURE SetCounter(
-- 	INOUT counter INT,
--     IN inc INT
-- )
-- BEGIN
-- 	SET counter = counter + inc;
-- END$$

-- DELIMITER ;

-- DELIMITER $$

-- CREATE PROCEDURE GetTotalOrder()
-- BEGIN
-- 	DECLARE totalOrder INT DEFAULT 0;
--     
-- 	SELECT 
-- 		COUNT(*)
-- 	INTO totalOrder FROM
-- 		orders;
--     
-- 	SELECT totalOrder;
-- END$$

-- DELIMITER ;

-- CALL GetTotalOrder();

-- SHOW PROCEDURE STATUS WHERE db = 'classicmodels';

-- SHOW PROCEDURE STATUS LIKE '%pattern%'

-- SHOW PROCEDURE STATUS LIKE '%pattern%'

-- SHOW PROCEDURE STATUS LIKE '%Order%'  

-- listing 

-- SELECT 
--     routine_name
-- FROM
--     information_schema.routines
-- WHERE
--     routine_type = 'PROCEDURE'
--         AND routine_schema = '<database_name>';


-- DELIMITER $$ 

-- CREATE PROCEDURE GetCustomerShipping(
--   IN pCustomerNumber INT, 
--   OUT pShipping VARCHAR(50)
-- ) 
-- BEGIN 
-- 	DECLARE customerCountry VARCHAR(100);
-- 	SELECT 
-- 	  country INTO customerCountry 
-- 	FROM 
-- 	  customers 
-- 	WHERE 
-- 	  customerNumber = pCustomerNumber;

-- 	CASE customerCountry 
-- 		WHEN 'USA' THEN 
-- 			SET pShipping = '2-day Shipping';
-- 		WHEN 'Canada' THEN 
-- 			SET pShipping = '3-day Shipping';
-- 		ELSE 
-- 			SET pShipping = '5-day Shipping';
-- 	END CASE;
-- END$$ 

-- DELIMITER ;


-- DELIMITER $$ 

-- CREATE PROCEDURE GetCustomerShipping(
--   IN pCustomerNumber INT, 
--   OUT pShipping VARCHAR(50)
-- ) 
-- BEGIN  
-- 	DECLARE customerCountry VARCHAR(100);
-- 	SELECT 
-- 	  country INTO customerCountry 
-- 	FROM 
-- 	  customers 
-- 	WHERE 
-- 	  customerNumber = pCustomerNumber;

-- 	CASE customerCountry 
-- 		WHEN 'USA' THEN 
-- 			SET pShipping = '2-day Shipping';
-- 		WHEN 'Canada' THEN 
-- 			SET pShipping = '3-day Shipping';
-- 		ELSE 
-- 			SET pShipping = '5-day Shipping';
-- 	END CASE;
-- END$$ 

-- DELIMITER ;

-- LOOP statement 
-- DELIMITER //

-- CREATE PROCEDURE fillDates(
-- 	IN startDate DATE,
--     IN endDate DATE
-- )
-- BEGIN
-- 	DECLARE currentDate DATE DEFAULT startDate;
--     
-- 	insert_date: LOOP
-- 		-- increase date by one day
-- 		SET currentDate = DATE_ADD(currentDate, INTERVAL 1 DAY);
--         
--         -- leave the loop if the current date is after the end date
--         IF currentDate > endDate THEN
-- 			LEAVE insert_date;
--         END IF;
--         
--         -- insert date into the table
--         INSERT INTO calendars(date, month, quarter, year)
--         VALUES(currentDate, MONTH(currentDate), QUARTER(currentDate), YEAR(currentDate));
-- 		
--     END LOOP;
-- END //

-- DELIMITER ;
-- CALL fillDates('2024-01-01','2024-12-31');


-- WHILE LOOP 
-- DROP TABLE IF EXISTS calendars;

-- CREATE TABLE calendars(
--     date DATE PRIMARY KEY,
--     month INT NOT NULL,
--     quarter INT NOT NULL,
--     year INT NOT NULL
-- );

-- DELIMITER $$

-- CREATE PROCEDURE loadDates(
--     startDate DATE, 
--     day INT
-- )
-- BEGIN
--     
--     DECLARE counter INT DEFAULT 0;
--     DECLARE currentDate DATE DEFAULT startDate;

--     WHILE counter <= day DO
--         CALL InsertCalendar(currentDate);
--         SET counter = counter + 1;
--         SET currentDate = DATE_ADD(currentDate ,INTERVAL 1 day);
--     END WHILE;

-- END$$

-- DELIMITER ;
-- CALL loadDates('2024-01-01',365);

-- SELECT * FROM calendars ORDER BY date DESC ; 



-- DELIMITER $$

-- CREATE PROCEDURE RepeatDemo()
-- BEGIN
--     DECLARE counter INT DEFAULT 1;
--     DECLARE result VARCHAR(100) DEFAULT '';
--     
--     REPEAT
--         SET result = CONCAT(result,counter,',');
--         SET counter = counter + 1;
--     UNTIL counter >= 10
--     END REPEAT;
--     
--     -- display result
--     SELECT result;
-- END$$

-- DELIMITER ;

-- CALL RepeatDemo();


-- Repeat loop
-- DELIMITER $$

-- CREATE PROCEDURE RepeatDemo()
-- BEGIN
--     DECLARE counter INT DEFAULT 1;
--     DECLARE result VARCHAR(100) DEFAULT '';
--     
--     REPEAT
--         SET result = CONCAT(result,counter,',');
--         SET counter = counter + 1;
--     UNTIL counter >= 10
--     END REPEAT;
--     
--     -- display result
--     SELECT result;
-- END$$

-- DELIMITER ;


-- leave statemnet
-- DELIMITER $$

-- CREATE PROCEDURE CheckCredit(
--     inCustomerNumber int
-- )
-- sp: BEGIN
--     
--     DECLARE customerCount INT;

--     -- check if the customer exists
--     SELECT 
--         COUNT(*)
--     INTO customerCount 
--     FROM
--         customers
--     WHERE
--         customerNumber = inCustomerNumber;
--     
--     -- if the customer does not exist, terminate
--     -- the stored procedure
--     IF customerCount = 0 THEN
--         LEAVE sp;
--     END IF;
--     
--     -- other logic
--     -- ...
-- END$$

-- DELIMITER ;


-- CALL RepeatDemo();

-- show Warning statemrnt
-- DROP TABLE IF EXISTS abc;
-- SHOW WARNINGS;


-- Show Error statement
-- SHOW COUNT(*) ERRORS; 

-- DEclare... HANDLER statement
-- CREATE TABLE users (
--     user_id INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(50) UNIQUE NOT NULL,
--     email VARCHAR(50) NOT NULL
-- );

-- DELIMITER //

-- CREATE PROCEDURE insert_user(
-- 	IN p_username VARCHAR(50), 
--     IN p_email VARCHAR(50)
-- )
-- BEGIN
--   -- SQLSTATE for unique constraint violation
--   DECLARE EXIT HANDLER FOR SQLSTATE '23000'
--   BEGIN
--     -- Handler actions when a duplicate username is detected
--     SELECT 'Error: Duplicate username. Please choose a different username.' AS Message;
--   END;

--   -- Attempt to insert the user into the table
--   INSERT INTO users (username, email) VALUES (p_username, p_email);

--   -- If the insertion was successful, display a success message
--   SELECT 'User inserted successfully' AS Message;

-- END //

-- DELIMITER ;

-- SELECT 'Error: Duplicate username. Please choose a different username.' AS Message;

-- SELECT 'User inserted successfully' AS Message;
-- CALL insert_user('jane','jane@example.com');


