-- Creating the database

CREATE DATABASE [Hexaware]; 

-- Using the btech-chai-wala database

USE [Hexaware];

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
MAX(p.plan_name) AS plan_name,
MAX(p.plan_price) AS plan_price,
MAX(s.start_date) as start_date,
MAX(s.is_active) AS is_active
FROM [dbo].[customer] c
INNER JOIN [dbo].[subscriptions] s ON c.cust_id = s.cust_id
INNER JOIN [dbo].[plans] p ON s.plan_id = p.plan_id
WHERE DATEDIFF(YEAR, c.cust_dob, GETDATE()) = 21
GROUP BY c.cust_id, c.cust_name, c.cust_city;

-- Question 3
-- How many customers has BTe ch-Chai-Wala with activate subscription as on 5 th May 2021?

SELECT *
FROM [dbo].[customer] c
INNER JOIN [dbo].[subscriptions] s ON c.cust_id = s.cust_id
WHERE s.is_active = 1 AND s.start_date <= '2021-05-05';

-- Question 4
-- What plan start_date values occur after the year 2020 for above dataset (refer section 2.4)?

SELECT p.plan_id, p.plan_name AS 'Plan Name'
FROM [dbo].[plans] p
INNER JOIN [dbo].[subscriptions] s ON p.plan_id = s.plan_id
WHERE YEAR(s.start_date) >= '2020' AND p.plan_name != 'Chrun' AND s.is_active = 1
GROUP BY p.plan_id, p.plan_name;

-- Question 5
-- What is the customer count and percentage breakdown of all 5 plan_name values at 2020-12-31?

SELECT
    [plans].[plan_name],
    Count([subscriptions].[cust_id]) as [cust_count],
    concat(floor(count(*)*100.0/SUM(COUNT(*))OVER()),'.00%') as [cust_percentage_break-up]
FROM [dbo].[subscriptions] [subscriptions]
INNER JOIN [dbo].[plans] [plans] on [subscriptions].[plan_id] = [plans].[plan_id]
WHERE [subscriptions].[is_active] = 1
    AND [subscriptions].[start_date] <= '2020-12-31'
GROUP BY [plans].[plan_name];


-- Question 6
-- How many customers have upgraded to an annual plan between 2020 and 2021?

WITH temp_cust_plan_upgrade AS
(
    SELECT
        s1.cust_id,
        c.cust_name,
        c.cust_city,
        p1.plan_name,
        s1.start_date AS plan_start_date,
        LEAD(p1.plan_price, 1) OVER (PARTITION BY c.cust_name ORDER BY s1.start_date DESC) AS lead_plan_price,
        RANK() OVER (PARTITION BY c.cust_name ORDER BY s1.start_date DESC) AS cust_rank
    FROM [dbo].[subscriptions] s1
    INNER JOIN [dbo].[customer] c ON s1.cust_id = c.cust_id
    INNER JOIN [dbo].[plans] p1 ON s1.plan_id = p1.plan_id
    WHERE YEAR(s1.start_date) IN ('2020', '2021')
)
SELECT
    cust_id, cust_name, cust_city, plan_name
FROM temp_cust_plan_upgrade
WHERE cust_rank = 1
    AND plan_name NOT IN ('Chrun', 'Trail');


-- Question 7
-- How many customers downgraded from a pro monthly to a basic monthly plan in 2020 or 2021?

WITH temp_cust_plan_upgrade AS 
(
	SELECT
	[customer] .[cust_id], [customer] .[cust_name], [customer] .[cust_city] , [plans].[plan_name] ,
	[subscriptions] .[start_date] AS [plan_start_date] ,
	LAG([plans].[plan_price] ,1) OVER(PARTITION BY [customer] .[cust_name] ORDER BY [subscriptions] .[start_date] DESC ) AS [lead_plan_price] ,
	RANK() over(PARTITION BY [customer].cust_name ORDER BY [subscriptions] .start_date DESC) AS cust_rank
	FROM [dbo].[subscriptions] [subscriptions]
	INNER JOIN [dbo].[customer] [customer] ON [subscriptions] .[cust_id] = [customer] .[cust_id]
	INNER JOIN [dbo].[plans] [plans] ON [subscriptions] .[plan_id] = [plans].[plan_id] WHERE [subscriptions] .[is_active] = 1
	AND YEAR([subscriptions].[start_date] ) in ('2020','2021')
)
SELECT COUNT(*) AS 'Number of Customers Downgraded'
FROM temp_cust_plan_upgrade
WHERE plan_name in ('Basic_Monthly');
