-- Creating the database

CREATE DATABASE [btech-chai-wala]; 

-- Using the btech-chai-wala database

USE [btech-chai-wala];

-- Creating tables plans, subsricptions and customer

-- Creating plans table

CREATE TABLE [dbo].[plans]
(
	plan_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	plan_name VARCHAR(100),
	plan_price DECIMAL
);

-- Creating subscriptions table

CREATE TABLE [dbo].[subscriptions]
(
	subscrip_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	cust_id INT,
	plan_id INT,
	start_date DATE,
	is_active VARCHAR(1)
);

-- Creating customer table

CREATE TABLE [dbo].[customer]
(
	cust_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	cust_name VARCHAR(100),
	cust_city VARCHAR(100),
	cust_dob DATE
);

-- Inserting the values into the plans, subscriptions and customer tables

--plans values

SET IDENTITY_INSERT [dbo].[plans] ON;

INSERT INTO [dbo].[plans](plan_id,plan_name,plan_price) VALUES(1,'Trail',0.00);
INSERT INTO [dbo].[plans](plan_id,plan_name,plan_price) VALUES(2,'Basic_Monthly',499.00);
INSERT INTO [dbo].[plans](plan_id,plan_name,plan_price) VALUES(3,'Pro_Monthly',999.00);
INSERT INTO [dbo].[plans](plan_id,plan_name,plan_price) VALUES(4,'Pro_Annual',11998.00);
INSERT INTO [dbo].[plans](plan_id,plan_name,plan_price) VALUES(5,'Chrun',NULL);

SET IDENTITY_INSERT [dbo].[plans] OFF;

-- subscriptions values

SET IDENTITY_INSERT [dbo].[subscriptions] ON;

INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(1,1,2,'2019-08-01',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(2,1,3,'2019-08-08',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(3,5,1,'2020-01-17',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(4,5,1,'2020-03-17',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(5,5,3,'2021-03-24',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(6,5,3,'2021-03-24',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(7,5,5,'2021-04-29',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(8,5,5,'2022-04-30',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(9,6,1,'2020-05-31',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(10,6,2,'2020-06-07',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(11,9,1,'2020-06-22',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(12,9,3,'2020-06-29',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(13,8,1,'2020-07-06',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(14,8,3,'2020-07-13',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(15,7,1,'2020-08-01',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(16,1,1,'2020-08-07',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(17,7,2,'2020-08-08',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(18,9,4,'2020-08-29',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(19,2,1,'2020-09-20',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(20,2,1,'2020-09-20',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(21,2,4,'2020-09-27',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(22,2,4,'2020-09-27',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(23,6,4,'2020-10-21',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(24,2,1,'2020-11-19',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(25,10,1,'2020-11-19',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(26,2,5,'2020-11-26',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(27,10,5,'2021-11-26',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(28,3,1,'2020-12-15',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(29,3,1,'2020-12-15',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(30,3,2,'2020-12-22',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(31,4,2,'2020-12-22',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(32,4,3,'2021-03-29',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(33,3,3,'2021-03-29',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(34,6,1,'2021-05-31',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(35,6,2,'2021-06-07',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(36,9,1,'2021-06-22',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(37,9,3,'2021-06-29',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(38,8,1,'2021-07-06',0);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(39,8,3,'2021-07-13',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(40,7,1,'2021-08-01',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(41,9,4,'2022-08-29',1);
INSERT INTO [dbo].[subscriptions](subscrip_id, cust_id, plan_id, start_date, is_active) VALUES(42,6,4,'2021-10-21',1);

SET IDENTITY_INSERT [dbo].[subscriptions] OFF;

-- customer values

SET IDENTITY_INSERT [dbo].[customer] ON;

INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(1,'Chaitanya','Bangalore','2021-02-02');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(2,'Harini','Mumbai','2021-07-19');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(3,'Indu','Chennai','2021-01-21');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(4,'Jameela','Hyderabad','2022-05-01');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(5,'Neeha','Bangalore','2020-03-15');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(6,'Reshma','Mumbai','2021-02-02');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(7,'Sahithi','Chennai','2020-11-02');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(8,'Sharmila','Hyderabad','2021-04-22');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(9,'Sreelakshmi','Bangalore','2020-06-17');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(10,'Subasri','Mumbai','2022-01-30');

SET IDENTITY_INSERT [dbo].[customer] OFF;

-- Updating the datas

UPDATE [dbo].[customer]
SET cust_dob = CASE 
                  WHEN cust_id = 1 THEN '2001-02-02'
                  WHEN cust_id = 2 THEN '2001-07-19'
                  WHEN cust_id = 3 THEN '2001-01-21'
                  WHEN cust_id = 4 THEN '2002-05-01'
                  WHEN cust_id = 5 THEN '2000-03-15'
                  WHEN cust_id = 6 THEN '2001-02-02'
                  WHEN cust_id = 7 THEN '2000-11-02'
                  WHEN cust_id = 8 THEN '2001-04-22'
                  WHEN cust_id = 9 THEN '2002-06-17'
                  WHEN cust_id = 10 THEN '2002-01-30'
               END
WHERE cust_id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
AND cust_dob = '2021-02-02';
UPDATE customer
SET cust_dob  = '2000-06-17'
WHERE cust_id = 9
ROLLBACK;

-- Verifying the values inserted properly

SELECT * FROM [dbo].[plans];
SELECT * FROM [dbo].[subscriptions];
SELECT * FROM [dbo].[customer];

-- Analysis Questions
-- Question 2
-- Based on the 10 customers provided in the section 2.4 of this document refer subscriptions & customer table, customers having age 21 as of date get their onboarding dates.

SELECT c.cust_id, 
c.cust_name,
c.cust_city,
p.plan_name,
p.plan_price,
s.start_date,
s.is_active
FROM [dbo].[customer] c
INNER JOIN [dbo].[subscriptions] s ON c.cust_id = s.cust_id
INNER JOIN [dbo].[plans] p ON s.plan_id = p.plan_id
WHERE DATEDIFF(YEAR, c.cust_dob, GETDATE()) = 21 AND s.is_active = 1
GROUP BY c.cust_id, c.cust_name, c.cust_city, p.plan_name, p.plan_price, s.start_date, s.is_active;

-- Question 3
-- How many customers has BTe ch-Chai-Wala with activate subscription as on 5 th May 2021?

SELECT COUNT(DISTINCT c.cust_id) AS 'Count of Customers'
FROM [dbo].[customer] c
INNER JOIN [dbo].[subscriptions] s ON c.cust_id = s.cust_id
WHERE s.is_active = 1 AND s.start_date <= '2021-05-05' AND s.start_date >= '2021-05-05';

-- Question 4
-- What plan start_date values occur after the year 2020 for above dataset (refer section 2.4)?

SELECT p.plan_id, p.plan_name AS 'Plan Name', COUNT(*) AS numbers
FROM [dbo].[plans] p
INNER JOIN [dbo].[subscriptions] s ON p.plan_id = s.plan_id
WHERE YEAR(s.start_date) > '2020'
GROUP BY p.plan_id, p.plan_name;

-- Question 5
-- What is the customer count and percentage breakdown of all 5 plan_name values at 2020-12-31?

WITH customers_next_plan AS(
SELECT 
cust_id, 
plan_id, 
start_date,
LEAD(start_date, 1) OVER(PARTITION BY cust_id ORDER BY start_date) as customers_next_date
FROM [dbo].[subscriptions]
WHERE start_date <= '2020-12-31'),
customer_brkdown AS (
SELECT 
plan_id, 
COUNT(DISTINCT cust_id) AS customers
FROM customers_next_plan
WHERE (customers_next_date IS NOT NULL AND (start_date < '2020-12-31' AND customers_next_date > '2020-12-31'))
OR (customers_next_date IS NULL AND start_date < '2020-12-31')
GROUP BY plan_id)
SELECT plan_id,customers ,
ROUND(100 * CAST(customers AS NUMERIC) / (
SELECT COUNT(DISTINCT cust_id) 
FROM [dbo].[subscriptions]),1) AS percentage
FROM customer_brkdown
GROUP BY plan_id, customers
ORDER BY plan_id;

-- Question 6
-- How many customers have upgraded to an annual plan between 2020 and 2021?

SELECT COUNT(DISTINCT s1.cust_id) AS 'Counts of Customers'
FROM [dbo].[subscriptions] s1
INNER JOIN [dbo].[subscriptions] s2 ON s1.cust_id = s2.cust_id
INNER JOIN [dbo].[plans] p ON s1.plan_id = p.plan_id
WHERE s1.plan_id != s2.plan_id
AND YEAR(s1.start_date) >= '2020' AND YEAR(s2.start_date) <= '2021'
AND p.plan_name = 'Pro_Annual';

-- Question 7
-- How many customers downgraded from a pro monthly to a basic monthly plan in 2020 or 2021?

WITH plan_downgrade AS (
SELECT 
cust_id, 
plan_id, 
start_date,
LEAD(plan_id, 1) OVER(PARTITION BY cust_id ORDER BY plan_id) AS down_plan
FROM [dbo].[subscriptions]
)
SELECT COUNT(*) AS 'Number of Customers Downgraded'
FROM plan_downgrade
WHERE start_date <= '2020-12-31'
AND plan_id = 2 AND down_plan = 1;