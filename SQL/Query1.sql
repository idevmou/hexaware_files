-- Database: newDb

-- DROP DATABASE IF EXISTS "newDb";

CREATE DATABASE "newDb"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
CREATE TABLE emp(ID INT, Name CHAR(100), Email CHAR(60));

DROP TABLE emp;

-- Creating the three tables called customers, orders and shippers

CREATE TABLE customers(customerId INT, customerName CHAR(200), contactName CHAR(200), address CHAR(200), country CHAR(100));
CREATE TABLE orders(orderId INT, customerId INT, orderDate DATE, shipperId INT);
CREATE TABLE shippers(shipperId INT, shipperName CHAR(200), phone INT);

-- Inserting the values into the customer table

INSERT INTO customers values(01, 'Mouli Sankar', 'Mouli', 'Anthiyur', 'India');
INSERT INTO customers values(02, 'Kamali Sekar', 'Kamali', 'Bhavani', 'India');
INSERT INTO customers values(03, 'Sundaravel Ramachadran', 'Sundar', 'Salem', 'India');
INSERT INTO customers values(04, 'Ashok Selevaraj', 'Ashok', 'Coimbatore', 'India');
INSERT INTO customers values(05, 'Mark Zuckburg', 'Mark', 'Boston', 'USA');
INSERT INTO customers values(06, 'Billgates', 'Bill', 'Valley', 'USA');
INSERT INTO customers values(07, 'Sundar Pichai', 'Pichai', 'Delhi', 'India');
INSERT INTO customers values(08, 'Ramesh Kumar', 'Ramesh', 'Erode', 'India');
INSERT INTO customers values(09, 'Kushal Sarkar', 'Kushal', 'Nepal', 'India-Nepal');
INSERT INTO customers values(10, 'Mike Ben', 'Majitha', 'Austraoor', 'Australia');
INSERT INTO customers values(11, 'Naren Den', 'Naren', 'Antaoor', 'Antartica');
INSERT INTO customers values(12, 'Rayan Bold', 'Rayan', 'Kimjoo', 'South Africa');
INSERT INTO customers values(13, 'Messi Kooker', 'Messi', 'Chicago', 'America');


-- Inserting the values into the orders table

INSERT INTO orders VALUES(01, 04, '2020-05-20', 011);
INSERT INTO orders VALUES(02, 07, '2020-05-23', 012);
INSERT INTO orders VALUES(03, 01, '2020-05-20', 013);
INSERT INTO orders VALUES(04, 04, '2020-06-25', 014);
INSERT INTO orders VALUES(05, 08, '2023-11-20', 015);
INSERT INTO orders VALUES(06, 03, '2020-07-20', 016);
INSERT INTO orders VALUES(07, 10, '2020-05-17', 017);
INSERT INTO orders VALUES(08, 02, '2020-06-11', 018);
INSERT INTO orders VALUES(09, 13, '2020-08-09', 019);
INSERT INTO orders VALUES(10, 09, '2022-05-27', 020);
INSERT INTO orders VALUES(11, 06, '2023-03-04', 021);
INSERT INTO orders VALUES(12, 13, '2022-02-11', 022);
INSERT INTO orders VALUES(13, 01, '2021-01-02', 023);

-- Inserting the values into the shipper table

INSERT INTO shippers VALUES(001, 'BlueDart', 345673343);
INSERT INTO shippers VALUES(002, 'HCL', 87458757);
INSERT INTO shippers VALUES(003, 'Flipkart', 8745543);
INSERT INTO shippers VALUES(004, 'Amazon', 98765654);
INSERT INTO shippers VALUES(005, 'Messho', 12397);
INSERT INTO shippers VALUES(006, 'DHL', 43678345);
INSERT INTO shippers VALUES(007, 'BlueDart', 987653445);
INSERT INTO shippers VALUES(008, 'HCL', 67445);
INSERT INTO shippers VALUES(009, 'Amazon', 8444545);
INSERT INTO shippers VALUES(0010, 'Flipkart', 27363672);
INSERT INTO shippers VALUES(0011, 'Bucket', 74653);
INSERT INTO shippers VALUES(0012, 'ShopIt', 74583);
INSERT INTO shippers VALUES(0013, 'BuyAnything', 874578);

SELECT * FROM customers;

-- Altering the customer tables
-- ADD
ALTER TABLE customers
ADD emailaddress CHAR(200);

ALTER TABLE customers
ADD dummy CHAR(100);
-- DROP
ALTER TABLE customers
DROP COLUMN dummy;
-- Updating the values

UPDATE customers
SET emailaddress = 'mouli@mail.com'
WHERE customerId = 1;

-- Delete the values

DELETE FROM customers WHERE customerId = 8;

-- Joins

-- Inner Joins
-- joining the two tables

SELECT customers.customerName, orders.orderId
FROM orders
INNER JOIN customers
ON orders.customerId = customers.customerId;

-- joining the three tables

SELECT customers.customerName, orders.orderId, shippers.shipperId
FROM ((orders
	   INNER JOIN customers ON orders.customerId = customers.customerId)
	   INNER JOIN shippers ON orders.shipperId = shippers.shipperId
	 );


-- Left Join

SELECT customers.customerName, orders.orderId
FROM customers
LEFT JOIN orders
ON customers.customerId = orders.customerId
ORDER BY customers.customerName;

-- Right join

SELECT customers.customerName, orders.orderId
FROM orders
LEFT JOIN customers
ON customers.customerId = orders.customerId
ORDER BY customers.customerName;

-- Full join

SELECT customers.customerName, orders.orderId
FROM orders
FULL JOIN customers
ON customers.customerId = orders.customerId
ORDER BY customers.customerName;

-- Self join

-- adding column for performing the self join and values

ALTER TABLE customers
ADD mentor INT;

UPDATE customers
SET mentor = 13
WHERE customerId = 1;

UPDATE customers
SET mentor = 12
WHERE customerId = 2;
UPDATE customers
SET mentor = 11
WHERE customerId = 3;
UPDATE customers
SET mentor = 10
WHERE customerId = 4;
UPDATE customers
SET mentor = 9
WHERE customerId = 5;
UPDATE customers
SET mentor = 8
WHERE customerId = 6;
UPDATE customers
SET mentor = 7
WHERE customerId = 7;
UPDATE customers
SET mentor = 6
WHERE customerId = 8;
UPDATE customers
SET mentor = 5
WHERE customerId = 9;
UPDATE customers
SET mentor = 4
WHERE customerId = 10;
UPDATE customers
SET mentor = 3
WHERE customerId = 11;
UPDATE customers
SET mentor = 2
WHERE customerId = 12;
UPDATE customers
SET mentor = 1
WHERE customerId = 13;


SELECT c1.customerId, c1.customerName, 'mentor of', c2.customerId, c2.customerName
FROM customers c1, customers c2
WHERE c1.customerId = c2.mentor;

-- Union - it is possible when the all tables must have same number of columns

-- SELECT * FROM orders
-- UNION
-- SELECT * FROM shippers;

-- ////////////////////////////////////////////////////////////////////////////////////////

CREATE TABLE DEPT(
	DEPT_ID INT,
	DEPT_Name VARCHAR(100),
	DEPT_City VARCHAR(200)
);

INSERT INTO DEPT VALUES('1', 'Accounts', 'Hyd');

CREATE TABLE EMP(

 EMP_ID INTEGER,

EName VARCHAR(100),

ECity VARCHAR(100),

EManager INTEGER,

Sal DECIMAL)

INSERT INTO EMP VALUES('8','SriLakshmi','Hyd',NULL,'5000');

SELECT * FROM EMP;


ALTER TABLE EMP
ADD Dept_id INT;

UPDATE EMP
SET Dept_id = '1';

-- COMMIT

SELECT ROUND(TRUNCATE(MOD(1600,10),-1),2) FROM DUAL;


