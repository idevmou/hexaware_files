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
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(1,'Chaitanya','Bangalore', '2001-02-02');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(2,'Harini','Mumbai', '2001-07-19');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(3,'Indu','Chennai', '2001-01-21');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(4,'Jameela','Hyderabad', '2002-05-01');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(5,'Neeha','Bangalore', '2000-03-15');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(6,'Reshma','Mumbai', '2001-02-02');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(7,'Sahithi','Chennai', '2000-11-02');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(8,'Sharmila','Hyderabad', '2001-04-22');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(9,'Sreelakshmi','Bangalore', '2000-06-17');
INSERT INTO [dbo].[customer](cust_id, cust_name, cust_city, cust_dob) VALUES(10,'Subasri','Mumbai', '2002-01-30');
SET IDENTITY_INSERT [dbo].[customer] OFF;

-- Verifying the values inserted properly
SELECT * FROM [dbo].[plans];
SELECT * FROM [dbo].[subscriptions];
SELECT * FROM [dbo].[customer];

-- Updating the values
UPDATE [dbo].[subscriptions]
SET start_date = '2020-12-31'
WHERE subscrip_id = 2

ALTER TABLE customer
ADD age AS DATEDIFF(YEAR, cust_dob, GETDATE()) - CASE WHEN DATEADD(YEAR, DATEDIFF(YEAR, cust_dob, GETDATE()), cust_dob) > GETDATE() THEN 1 ELSE 0 END

-- Creating the target table
-- Question01
CREATE TABLE trgt_cust_act_05(
	Cust_ID INTEGER,
	Cust_Name VARCHAR(100),
	Cust_City VARCHAR(100),
	Cust_Age INTEGER,
	Cust_Plan VARCHAR(100)
);

SELECT * FROM [dbo].[trgt_cust_act_05];

-- Question02
-- Creating target table
CREATE TABLE sum_plan_cust
(
	plan_name VARCHAR(100),
	sum_plan_price INTEGER
);

SELECT * FROM [dbo].[sum_plan_cust];

-- Question03
CREATE TABLE trgt_cust_upgrade(
	Cust_ID INTEGER,
	Cust_Name VARCHAR(100),
	Cust_City VARCHAR(100),
	Cust_Age INTEGER,
	Cust_Plan VARCHAR(100),
	Cust_Previous_Plan VARCHAR(100)
);

SELECT * FROM trgt_cust_upgrade;

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

-- Question04
WITH plan_downgrade AS (
    SELECT 
        cust_id, 
        plan_id, 
        start_date,
        LEAD(plan_id, 1) OVER(PARTITION BY cust_id ORDER BY start_date) AS down_plan
    FROM [dbo].[subscriptions]
    WHERE plan_id = 2 AND YEAR(start_date) IN (2020, 2021)
),
customer_info AS (
    SELECT 
        cust_id, 
        cust_name, 
        cust_city, 
        age
    FROM [dbo].[customer]
)
SELECT 
    pd.cust_id, 
    ci.cust_name, 
    ci.cust_city, 
    ci.age, 
    p.plan_name AS cust_plan, 
    p2.plan_name AS cust_previous_plan
FROM plan_downgrade pd
INNER JOIN [dbo].[plans] p ON pd.plan_id = p.plan_id AND p.plan_name = 'Pro_Monthly'
INNER JOIN [dbo].[plans] p2 ON pd.down_plan = p2.plan_id AND p2.plan_name = 'Basic'
INNER JOIN customer_info ci ON pd.cust_id = ci.cust_id
ORDER BY pd.cust_id;

SELECT * FROM trgt_cust_downgrade;

-- Question 05
CREATE TABLE [dbo].[cust_even] 
(
	Cust_ID INTEGER,
	Cust_Name VARCHAR(100),
	Cust_City VARCHAR(100),
	Cust_Age INTEGER,
	Cust_Current_Plan VARCHAR(100),
);

CREATE TABLE [dbo].[cust_odd] 
(
	Cust_ID INTEGER,
	Cust_Name VARCHAR(100),
	Cust_City VARCHAR(100),
	Cust_Age INTEGER,
	Cust_Current_Plan VARCHAR(100),
);

SELECT * FROM [dbo].[cust_even];
SELECT * FROM [dbo].[cust_odd];

-- Question 06
CREATE TABLE trgt_earn(
	plan_name VARCHAR(300),
	year_20 INT,
	year_21 INT,
	year_22 INT
);

SELECT p.plan_name,
       SUM(CASE WHEN YEAR(s.start_date) = 2020 THEN p.plan_price ELSE 0 END) AS sum_20,
       SUM(CASE WHEN YEAR(s.start_date) = 2021 THEN p.plan_price ELSE 0 END) AS sum_21,
       SUM(CASE WHEN YEAR(s.start_date) = 2022 THEN p.plan_price ELSE 0 END) AS sum_22
FROM plans p
INNER JOIN subscriptions s ON p.plan_id = s.plan_id
INNER JOIN customer c ON s.cust_id = c.cust_id
WHERE YEAR(s.start_date) IN (2020, 2021, 2022)
GROUP BY p.plan_name

SELECT * FROM trgt_earn;


ALTER TABLE trgt_earn 
ALTER COLUMN plan_name VARCHAR(100) NOT NULL;

ALTER TABLE trgt_earn
ADD PRIMARY KEY (plan_name);

	SELECT
    [customer].[cust_id],
    [customer].[cust_name],
    [customer].[cust_city],
    [plans].[plan_name],
    [subscriptions].[start_date] as plan_start_date
    FROM [dbo].[subscriptions] [subscriptions]
    INNER JOIN [dbo].[customer] [customer] ON [subscriptions].[cust_id] = [customer].[cust_id]
    INNER JOIN [dbo].[plans] [plans] ON [subscriptions].[plan_id] = [plans].[plan_id]
    WHERE [subscriptions].[is_active] = 1
    AND [subscriptions].[start_date] <= '2021-05-05'


SELECT 
TABLE_CATALOG,
TABLE_SCHEMA,
TABLE_NAME, 
COLUMN_NAME, 
DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'customer' 