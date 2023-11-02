-- Using the Hexaware database for informatica operations
USE Hexaware;

-- Creating the Sample_File
CREATE TABLE Sample_File(
	Col1 VARCHAR(10),
	Col2 VARCHAR(10)
);

-- Creating the Dept
CREATE TABLE Dept(
	Dept_id INT,
	Dept_name VARCHAR(20)
);

SELECT * FROM [dbo].[Sample_File];
SELECT * FROM [dbo].[Dept];

-- Inserting the values

INSERT INTO 
	[dbo].[Sample_File]
VALUES 
	('A','A'),
	('A','A'),
	('A','B'),
	('B','A'),
	('B','B'),
	('B','B');

INSERT INTO 
	[dbo].[Dept]
VALUES 
	(10,'Sales'),
	(20,'Finance');

-- ----------------------------------------------------------------------------------------------------------

-- Case 1: Splitting Records
-- Approach 1 
-- Source - Flat File Source
-- Created the file in informatica designer

SELECT * INTO unique_target_table_FF_new FROM Sample_File WHERE 1 = 2;
SELECT * INTO duplicate_target_table_FF_new FROM Sample_File WHERE 1 = 2;

SELECT * FROM unique_target_table_FF;
SELECT * FROM duplicate_target_table_FF;

SELECT * FROM unique_target_table_FF_new;
SELECT * FROM duplicate_target_table_FF_new;


SELECT Col1, Col2
FROM [dbo].[Sample_File]
GROUP BY Col1, Col2;

-- Approach 2 - SQL Server Source
-- Source - MS SQL Server

SELECT * FROM unique_target_table;
SELECT * FROM duplicate_target_table;

-- query to check unique records
SELECT Col1, Col2, COUNT(*) AS Uniques
FROM Sample_File
GROUP BY col1, Col2
HAVING COUNT(*) = 1;

-- query to check duplicate records
SELECT Col1, Col2, COUNT(*) AS Duplicate
FROM Sample_File
GROUP BY col1, Col2
HAVING COUNT(*) > 1;

-- query to get uniques and all duplicate records
SELECT
    t.Col1,
    t.Col2,
    ISNULL(d.RecordType, 'Unique') AS RecordType
FROM
    Sample_File t
LEFT JOIN (
    SELECT
        Col1,
        Col2,
        'Duplicate' AS RecordType
    FROM
        Sample_File
    GROUP BY
        Col1, Col2
    HAVING
        COUNT(*) > 1
) d ON t.Col1 = d.Col1 AND t.Col2 = d.Col2;

-- Case 1: Incremental Loading

SELECT * FROM Dept;

SELECT * INTO Dept_trgt_update FROM Dept WHERE 1 = 2;

SELECT * FROM Dept_trgt_update;

-- filter SQ override
SELECT Dept_id, Dept_name
FROM Dept
WHERE Dept_id NOT IN (SELECT DEPT_ID FROM Dept_trgt_update)

-- Creating the Dept
CREATE TABLE dept_target_table(
	Dept_id INT,
	Dept_name VARCHAR(20),
	CREATED_DATE DATETIME,
	UPDATED_DATE DATETIME
);

SELECT * FROM dept_target_table;

INSERT INTO 
	[dbo].[Dept]
VALUES 
	(10,'Sales Executive'),
	(30,'Finance Mastry');
