-- Creating a table

USE Hexaware;

create table [dbo].[hexaware_emp_batch02]
(
empno int,
ename varchar(100),
job varchar(100),
mgr int,
hiredate date,
sal int,
comm varchar(100),
deptno int,
email_id varchar(200)
)

-- Inserting the values

insert into [dbo].[hexaware_emp_batch02] values('7839','KING','PRESIDENT','','1981-11-17','5000','','10','');
insert into [dbo].[hexaware_emp_batch02] values('7698','BLAKE','MANAGER','7839','1981-05-01','2850','','30','blake@gmail.com');
insert into [dbo].[hexaware_emp_batch02] values('7782','CLARK','MANAGER','7839','1981-06-09','2450','','10','');
insert into [dbo].[hexaware_emp_batch02] values('7566','JONES','MANAGER','7839','1981-04-02','2975','','20','');
insert into [dbo].[hexaware_emp_batch02] values('7788','SCOTT','ANALYST','7566','1982-12-09','3000','','20','');
insert into [dbo].[hexaware_emp_batch02] values('7902','FORD','ANALYST','7566','1981-12-03','3000','','20','');
insert into [dbo].[hexaware_emp_batch02] values('7369','SMITH','CLERK','7902','1980-12-17','800','','20','');
insert into [dbo].[hexaware_emp_batch02] values('7499','ALLEN','SALESMAN','7698','1981-02-20','1600','300','30','');
insert into [dbo].[hexaware_emp_batch02] values('7521','WARD','SALESMAN','7698','1981-02-22','1250','500','30','');
insert into [dbo].[hexaware_emp_batch02] values('7654','MARTIN','SALESMAN','7698','1981-09-28','1250','1400','30','');
insert into [dbo].[hexaware_emp_batch02] values('7844','TURNER','SALESMAN','7698','1981-09-08','1500','0','30','turner@turner.com');
insert into [dbo].[hexaware_emp_batch02] values('7876','ADAMS','CLERK','7788','1983-01-12','1100','','20','');
insert into [dbo].[hexaware_emp_batch02] values('7900','JAMES','CLERK','7698','1981-12-03','950','','30','');
insert into [dbo].[hexaware_emp_batch02] values('7934','MILLER','CLERK','7782','1982-01-23','1300','','10','');
insert into [dbo].[hexaware_emp_batch02] values('7788','SCOTT','ANALYST','7566','1982-12-09','3000','','20','');
insert into [dbo].[hexaware_emp_batch02] values('7902','FORD','ANALYST','7566','1981-12-03','3000','','20','');

SELECT * FROM [dbo].[hexaware_emp_batch02];

-- Question – 01
-- select Unique records from EMP Table.

SELECT DISTINCT * FROM [dbo].[hexaware_emp_batch02];

-- Question – 02
-- delete duplicate records from emp
-- (hint - using RowID and correlated sub-query).

WITH duplicate_remove AS(
SELECT
ROW_NUMBER() OVER (PARTITION BY ename ORDER BY empno) AS dup_values,
empno,
ename
FROM [dbo].[hexaware_emp_batch02])
delete from duplicate_remove
where dup_values > 1;

-- Question 3
-- Read top 5 records from emp table

SELECT TOP 5 * 
FROM [dbo].[hexaware_emp_batch02];

-- Question – 04
-- Read last 5 records from EMP Table


SELECT TOP 5 * FROM [dbo].[hexaware_emp_batch02] 
ORDER BY ename DESC;

--Question – 05
--Find Second Highest Salary from EMP table.

SELECT *
FROM [dbo].[hexaware_emp_batch02]
WHERE sal = (
				SELECT MAX(sal) 
				FROM [dbo].[hexaware_emp_batch02]  
				WHERE sal < (SELECT MAX(sal)
							 FROM [dbo].[hexaware_emp_batch02] 
							)
			);
