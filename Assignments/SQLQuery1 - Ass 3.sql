USE [Hexaware];

-- Creating the table

CREATE TABLE [dbo].[csv_db_informatica] (
	id INTEGER,
	First_Name VARCHAR(100),
	Age	INTEGER
);

ALTER TABLE [dbo].[csv_db_informatica]
ALTER COLUMN Dates DATETIME;

DROP TABLE [dbo].[csv_db_informatica];

SELECT * FROM [dbo].[csv_db_informatica];

SELECT * FROM emp;

SELECT * INTO emp_add
FROM emp
WHERE 1 = 2;

SELECT * FROM emp_add;

-- Creating the table for the sal greater than 5000 and default

SELECT * INTO [dbo].[emp_sal_5000]
FROM [dbo].[emp]
WHERE 1 = 2;

SELECT * INTO [dbo].[emp_sal_default]
FROM [dbo].[emp]
WHERE 1 = 2;

SELECT * FROM emp_sal_5000;
SELECT * FROM emp_sal_default;

SELECT * FROM emp_dept_loc;

ALTER TABLE [dbo].[emp]
ALTER COLUMN hiredate DATETIME;

SELECT * INTO emp_dept_loc_ind_ass
FROM emp_dept_loc_IND
WHERE 1 = 2;

SELECT * INTO emp_dept_loc_USA_ass
FROM emp_dept_loc_USA
WHERE 1 = 2;


ALTER TABLE [dbo].[emp_dept_loc_ind_ass]
ALTER COLUMN hiredate DATETIME;


ALTER TABLE [dbo].[emp_dept_loc_usa_ass]
ALTER COLUMN hiredate DATETIME;

SELECT * FROM [dbo].[emp_dept_loc_ind_ass];
SELECT * FROM [dbo].[emp_dept_loc_USA_ass];

CREATE TABLE students_list (
	ID INTEGER,
	NAME VARCHAR(100),
	SAL INTEGER
);

SELECT * FROM students_list;

SELECT * INTO emp_dept_loc_comm_trgt
FROM emp_dept_loc
WHERE 1 = 2;

SELECT * INTO emp_dept_loc_comm_src
FROM emp_dept_loc
WHERE 1 = 2;

SELECT * FROM emp_dept_loc_comm_trgt;
SELECT * FROM emp_dept_loc_NEW;


-- DROP TABLE emp_dept_loc_comm_trgt;


ALTER TABLE [dbo].[emp_dept_loc_NEW]
ALTER COLUMN comm INTEGER;


ALTER TABLE [dbo].[emp_dept_loc_comm_src]
ALTER COLUMN comm INTEGER;


SELECT * INTO emp_scd_lkp
FROM emp
WHERE 1 = 1;

SELECT * FROM emp_scd_lkp;

UPDATE emp_scd_lkp
SET email_id = 'blake@gmail.com'
WHERE empno = 7698;

SELECT * INTO emp_scd_lkp_target
FROM emp
WHERE 1 = 2;

SELECT * FROM emp_scd_lkp_target;

SELECT * INTO students
FROM students_list
WHERE 1 =2;

SELECT * FROM students;