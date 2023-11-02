USE ecommerceDB;

SELECT * FROM [dbo].[Order];

-- ////////////////// Data Cleansing ////////////////////////////////

-- 1. Removing Duplicates

SELECT * FROM [dbo].[Customers]

-- Cleasing on Customers table

--- Remove the unwanted column in a table Customers

ALTER TABLE [dbo].[Customers]
DROP COLUMN supplierid;

DELETE FROM [dbo].[Customers]
WHERE Id IN (
	SELECT Id
	FROM [dbo].[Customers]
	GROUP BY Id 
	HAVING COUNT(*) > 1
);

--  Combining the "FirstName" and "LastName" to get "FullName"

ALTER TABLE [dbo].[Customers]
ADD FullName VARCHAR(100);

UPDATE [dbo].[Customers]
SET [FullName] = [FirstName] + ' ' +  [LastName];

 ----------------------------------------------------------------------
DELETE FROM [dbo].[Customers]
WHERE FullName IN (
	SELECT FullName
	FROM [dbo].[Customers]
	GROUP BY FullName 
	HAVING COUNT(*) > 1
);

DELETE FROM [dbo].[Customers]
WHERE Phone IN (
	SELECT Phone
	FROM [dbo].[Customers]
	GROUP BY Phone 
	HAVING COUNT(*) > 1
);

SELECT * FROM [dbo].[Order]

SELECT * FROM [dbo].[OrderItem]

SELECT * FROM [dbo].[Product]

-- Cleasing on order table
DELETE FROM [dbo].[Order]
WHERE id IN (
	SELECT id 
	FROM [dbo].[Order]
	GROUP BY id
	HAVING COUNT(*) > 1
);

DELETE FROM [dbo].[Order]
WHERE OrderNumber IN (
	SELECT OrderNumber 
	FROM [dbo].[Order]
	GROUP BY OrderNumber
	HAVING COUNT(*) > 1
);

-- Cleasing on orderitem table

DELETE FROM [dbo].[OrderItem]
WHERE Id IN (
	SELECT Id
	FROM [dbo].[OrderItem]
	GROUP BY Id
	HAVING COUNT(*) > 1
);

-- Cleasing on product table

DELETE FROM [dbo].[Product]
WHERE Id IN (
	SELECT Id
	FROM [dbo].[Product]
	GROUP BY Id
	HAVING COUNT(*) > 1
);

DELETE FROM [dbo].[Product]
WHERE ProductName IN (
	SELECT ProductName
	FROM [dbo].[Product]
	GROUP BY ProductName
	HAVING COUNT(*) > 1
);

-- 2. Removing leading and trailing spaces

-- using the dynamic SQL to remove the space[LTRIM and RTRIM] from entire table.

UPDATE [dbo].[Customers]
SET FullName = TRIM(FullName);


UPDATE [dbo].[Product]
SET ProductName = TRIM(ProductName);


UPDATE [dbo].[Product]
SET Package = TRIM(Package);

-- 3. Converting data types

-- indentify the current data types.

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = '[dbo].[Customers]'

-- 4. Handling missing values

-- tables order and products has missing and null values

-- in order table has FK_ORDERITE_REFERENCE_ORDER constraints so,

DELETE FROM [dbo].[Order]
WHERE STATUSS IS NULL; 

DELETE FROM [dbo].[Product]
WHERE Package = ''; 

SELECT * FROM [dbo].Customers;

-- 5. Standardizing values

UPDATE [dbo].[Customers]
SET Country = UPPER('USA')
WHERE Country = LOWER('usa')

UPDATE [dbo].[Customers]
SET Country = UPPER('UK')
WHERE Country = LOWER('uk')

-- 6. Handling outliers

-- no outliers is detected.

-- ////////////////////////////////////////////////////////////////// --

-- ///////////////////////// Data Analysis //////////////////////////// ---

-- What are the total sales revenue and the total number of orders for each month?

SELECT * FROM [dbo].[Order];

SELECT FORMAT(OrderDate, 'yyyy-MM') AS 'Date by Month',
SUM(TotalAmount) AS 'Total Revenue',
COUNT(*) AS 'Number of Orders'
FROM [dbo].[Order]
GROUP BY FORMAT(OrderDate, 'yyyy-MM');

-- What are the top 5 best-selling products in terms of quantity and revenue?

SELECT * FROM [dbo].[OrderItem];

SELECT TOP 5 P.ProductName, OI.ProductId, SUM(OI.Quantity) AS 'Quantity', SUM(O.TotalAmount) AS 'Revenue' FROM [dbo].[Order] O
INNER JOIN [dbo].[OrderItem] OI ON OI.OrderId = O.Id 
INNER JOIN [dbo].[Product] P ON P.Id = OI.ProductId
GROUP BY P.ProductName, OI.Quantity, OI.ProductId, O.Id
ORDER BY OI.Quantity DESC, SUM(O.TotalAmount) DESC;

-- Who are the top 10 customers in terms of total spending?

SELECT * FROM [dbo].[Customers]

SELECT * FROM [dbo].[Order]

SELECT TOP 10 C.Id, C.FullName AS 'Customer Name', SUM(O.TotalAmount) AS 'Total Amount' FROM [dbo].[Customers] C
INNER JOIN [dbo].[Order] O ON O.CustomerId = C.Id
GROUP BY C.Id, C.FullName
ORDER BY SUM(O.TotalAmount) DESC;

-- What is the average order value for each month?

SELECT * FROM [dbo].[Order];

SELECT FORMAT(OrderDate, 'yyyy-MM') AS 'Date by Month',
AVG(TotalAmount) AS 'Average Values'
FROM [dbo].[Order]
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY AVG(TotalAmount) DESC;

-- What is the customer retention rate for the given period (e.g. month, quarter, year)?

DECLARE @StartDate DATE = '2012-01-01';
DECLARE @EndDate DATE = '2015-01-01';

SELECT 
    COUNT(DISTINCT retained_customers.CustomerID) AS RetainedCustomers,
    COUNT(DISTINCT all_customers.CustomerID) AS TotalCustomers,
    CASE WHEN COUNT(DISTINCT all_customers.CustomerID) > 0
         THEN CAST(COUNT(DISTINCT retained_customers.CustomerID) AS FLOAT) / COUNT(DISTINCT all_customers.CustomerID)
         ELSE 0
    END AS RetentionRate
FROM
    (
        SELECT CustomerID
        FROM [dbo].[Order]
        WHERE OrderDate >= @StartDate AND OrderDate <= @EndDate
    ) AS retained_customers
INNER JOIN
    (
        SELECT CustomerID
        FROM [dbo].[Order]
        WHERE OrderDate < @StartDate
    ) AS all_customers
ON retained_customers.CustomerID = all_customers.CustomerID;

-- Which category of products generates the highest revenue?

SELECT * FROM [dbo].[OrderItem]

SELECT * FROM [dbo].[Product]

SELECT
	TOP 1
    P.ProductName,
    SUM(OI.Quantity * OI.UnitPrice) AS TotalRevenue
FROM
    Product P
    INNER JOIN OrderItem OI ON P.ID = OI.ProductID
GROUP BY
    P.ProductName
ORDER BY
    TotalRevenue DESC;


-- //////////////////////////////////////////////////////////////////// --

