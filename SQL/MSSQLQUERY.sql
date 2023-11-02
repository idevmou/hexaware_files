-- CREATE TABLE emp_db(
--	emp_id INT,
--	emp_name VARCHAR(100),
--	emp_sal INT,
--	emp_dpt VARCHAR(30)
-- );


--SELECT * FROM emp_db;

--INSERT INTO emp_db VALUES(01, 'Mouli', 35000, 'Data Intergration');
--INSERT INTO emp_db VALUES(02, 'Kamali', 34000, 'Digital Assurance');


--DROP TABLE IF EXISTS dept;
--DROP TABLE IF EXISTS salgrade;
--DROP TABLE IF EXISTS emp;

CREATE TABLE salgrade(
grade int not null primary key,
losal decimal(10,2),
hisal decimal(10,2));

CREATE TABLE dept(
deptno int not null primary key,
dname varchar(50) not null,
location varchar(50) not null);

CREATE TABLE emp(
empno int not null primary key,
ename varchar(50) not null,
job varchar(50) not null,
mgr int,
hiredate date,
sal decimal(10,2),
comm decimal(10,2),
deptno int not null);

--Inserting the values for dept

insert into dept values (10,'Accounting','New York');

insert into dept values (20,'Research','Dallas');

insert into dept values (30,'Sales','Chicago');

insert into dept values (40,'Operations','Boston');

--Inserting the values for emp

insert into emp values (7369,'SMITH','CLERK',7902,'1993-6-13',800,0.00,20);

insert into emp values (7499,'ALLEN','SALESMAN',7698,'1998-8-15',1600,300,30);

insert into emp values (7521,'WARD','SALESMAN',7698,'1996-3-26',1250,500,30);

insert into emp values (7566,'JONES','MANAGER',7839,'1995-10-31',2975,null,20);

insert into emp values (7698,'BLAKE','MANAGER',7839,'1992-6-11',2850,null,30);

insert into emp values (7782,'CLARK','MANAGER',7839,'1993-5-14',2450,null,10);

insert into emp values (7788,'SCOTT','ANALYST',7566,'1996-3-5',3000,null,20);

insert into emp values (7839,'KING','PRESIDENT',null,'1990-6-9',5000,0,10);

insert into emp values (7844,'TURNER','SALESMAN',7698,'1995-6-4',1500,0,30);

insert into emp values (7876,'ADAMS','CLERK',7788,'1999-6-4',1100,null,20);

insert into emp values (7900,'JAMES','CLERK',7698,'2000-6-23',950,null,30);

insert into emp values (7934,'MILLER','CLERK',7782,'2000-1-21',1300,null,10);

insert into emp values (7902,'FORD','ANALYST',7566,'1997-12-5',3000,null,20);

insert into emp values (7654,'MARTIN','SALESMAN',7698,'1998-12-5',1250,1400,30);

--Inserting values for salgrade

insert into salgrade values (1,700,1200);

insert into salgrade values (2,1201,1400);

insert into salgrade values (3,1401,2000);

insert into salgrade values (4,2001,3000);

insert into salgrade values (5,3001,99999);

SELECT * FROM[dbo].[dept];

SELECT * FROM [dbo].[salgrade];

SELECT * FROM [dbo].[emp];

DROP TABLE salgrade;

Select * from [dbo].[emp] a where empno <>( select max(empno) from [dbo].[emp] b where a.empno=b.empno);

WITH dup AS (
				SELECT ROW_NUMBER() OVER(PARTITION BY ename ORDER BY empno) as dup_val,
				ename,
				empno
				FROM [dbo].[emp]
			)
			SELECT * FROM dup
			WHERE dup_val > 1;

SELECT *, sal/12 AS 'sal per month'
FROM [dbo].[emp];

SELECT TOP 1 *
FROM [dbo].[emp];

SELECT TOP 1 * 
FROM [dbo].[emp]
ORDER BY ename DESC;

-- three highest salary

SELECT DISTINCT TOP 3 *
FROM [dbo].[emp]
ORDER BY sal DESC;

-- Odd and Even rows in the table

SELECT *
FROM [dbo].[emp]
WHERE empno % 2 = 0;


SELECT *
FROM (
		SELECT ROW_NUMBER()
		OVER
		(ORDER BY empno) AS RowNum, *
		FROM [dbo].[emp]
	 ) AS tabl1
WHERE RowNum % 2 = 0; --even

SELECT *
FROM (
		SELECT ROW_NUMBER()
		OVER
		(ORDER BY empno) AS RowNum, *
		FROM [dbo].[emp]
	 ) AS tabl1
WHERE RowNum % 2 = 1; --odd

SELECT * 
FROM [dbo].[emp]
WHERE sal = (
				SELECT RANK()
				OVER
				(ORDER BY sal DESC)
				AS val
				FROM [Hexaware].[dbo].[emp]
			);

USE sampleDb;

SELECT * FROM [dbo].[emp];
SELECT * FROM [dbo].[dept];
SELECT * FROM [dbo].[salgrade];
SELECT * FROM [dbo].[emp_db];