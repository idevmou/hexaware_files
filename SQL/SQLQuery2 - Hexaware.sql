create table [dbo].[emp_new]

(
    empno    int,

    ename    varchar(100),

    job    varchar(100),

    mgr    int,

    hiredate    date,

    sal    int,

    comm    varchar(100),

    deptno    int,

    email_id    varchar(200)

)

-- inserting the records

insert into [dbo].[emp_new] values('7839','KING','PRESIDENT','','1981-11-17','5000','','10','');

insert into [dbo].[emp_new] values('7698','BLAKE','MANAGER','7839','1981-05-01','2850','','30','blake@gmail.com');

insert into [dbo].[emp_new] values('7782','CLARK','MANAGER','7839','1981-06-09','2450','','10','');

insert into [dbo].[emp_new] values('7566','JONES','MANAGER','7839','1981-04-02','2975','','20','');

insert into [dbo].[emp_new] values('7788','SCOTT','ANALYST','7566','1982-12-09','3000','','20','');

insert into [dbo].[emp_new] values('7902','FORD','ANALYST','7566','1981-12-03','3000','','20','');

insert into [dbo].[emp_new] values('7369','SMITH','CLERK','7902','1980-12-17','800','','20','');

insert into [dbo].[emp_new] values('7499','ALLEN','SALESMAN','7698','1981-02-20','1600','300','30','');

insert into [dbo].[emp_new] values('7521','WARD','SALESMAN','7698','1981-02-22','1250','500','30','');

insert into [dbo].[emp_new] values('7654','MARTIN','SALESMAN','7698','1981-09-28','1250','1400','30','');

insert into [dbo].[emp_new] values('7844','TURNER','SALESMAN','7698','1981-09-08','1500','0','30','turner@turner.com');

insert into [dbo].[emp_new] values('7876','ADAMS','CLERK','7788','1983-01-12','1100','','20','');

insert into [dbo].[emp_new] values('7900','JAMES','CLERK','7698','1981-12-03','950','','30','');

insert into [dbo].[emp_new] values('7934','MILLER','CLERK','7782','1982-01-23','1300','','10','');




insert into [dbo].[emp_new] values('7844','TURNER','SALESMAN','7698','1981-09-08','1500','0','30','turner@turner.com');

insert into [dbo].[emp_new] values('7876','ADAMS','CLERK','7788','1983-01-12','1100','','20','');

insert into [dbo].[emp_new] values('7900','JAMES','CLERK','7698','1981-12-03','950','','30','');

insert into [dbo].[emp_new] values('7934','MILLER','CLERK','7782','1982-01-23','1300','','10','');

insert into [dbo].[emp_new] values('7788','SCOTT','ANALYST','7566','1982-12-09','3000','','20','');

insert into [dbo].[emp_new] values('7902','FORD','ANALYST','7566','1981-12-03','3000','','20','');
insert into [dbo].[emp_new] values('7902','SCOTT','ANALYST','7566','1981-12-03','3000','','20','');
USE Hexaware;

SELECT * FROM emp_new;

SELECT job,
COUNT(*) AS counts
FROM emp_new 
GROUP BY job
HAVING count(*) > 1;


SELECT * FROM emp_new;

SELECT ename, COUNT(*)
FROM emp_new
WHERE ename = (
    SELECT ename, ROW_NUMBER() OVER (PARTITION BY ename ORDER BY ename) AS counts
    FROM emp_new
);

WITH MOU AS (
SELECT *, ROW_NUMBER() OVER(PARTITION BY ename) AS rn
FROM emp_new
)
DELETE FROM MOU WHERE rn > 1;

SELECT * FROM emp_new;


select
ename,
count(*)
from [hexaware].[dbo].[emp_new]
group by ename
having count(*) = 1




delete from dup_value_table

where dup_instance > 1

SELECT A.empno, A.ename, A.mgr, B.ename
FROM emp_new A, emp_new B
WHERE A.mgr = B.empno


SELECT e1.empno,e1.ename,e1.mgr,  e1.ename, e2.ename as mgr1, e3.ename as mgr2
FROM emp_new e1
JOIN emp_new e2 ON e1.mgr = e2.empno
JOIN emp_new e3 ON e2.mgr = e3.empno
WHERE e1.empno = e1.empno;

USE Hexaware;

CREATE table [dbo].[dept]
(
	DEPTNO INT NOT NULL,
	DNAME VARCHAR(100),
	LOC_ID INT
);

create table [dbo].[loc]

(

    LOC_ID        INT NOT NULL,

     LOC_NAME    VARCHAR(100),

     Country        VARCHAR(100),

    Currency    VARCHAR(3)

)

create table [dbo].[dept]

(

    DEPTNO    INT NOT NULL,

     DNAME    VARCHAR(100),

     LOC_ID    INT

)


insert into [dbo].[dept] values('10', 'ACCOUNTING', '1');

insert into [dbo].[dept] values('20', 'RESEARCH', '2');

insert into [dbo].[dept] values('30', 'SALES', '3');

insert into [dbo].[dept] values('40', 'OPERATIONS', '4');

insert into [dbo].[dept] values('50', 'OPERATIONS', '5');

insert into [dbo].[dept] values('60', 'OPERATIONS', '6');

insert into [dbo].[dept] values('70', 'RESEARCH', '6');

insert into [dbo].[dept] values('80', 'SALES', '7');

insert into [dbo].[dept] values('90', 'SALES', '5');


insert into [dbo].[loc] values('1', 'New York', 'USA', 'USD');

insert into [dbo].[loc] values('2', 'Dallas', 'USA', 'USD');

insert into [dbo].[loc] values('3', 'Chicago', 'USA', 'USD');

insert into [dbo].[loc] values('4', 'Boston', 'USA', 'USD');

insert into [dbo].[loc] values('5', 'Mumbai', 'India', 'INR');

insert into [dbo].[loc] values('6', 'Bangalore', 'India', 'INR');

insert into [dbo].[loc] values('7', 'Chennai', 'India', 'INR');





create table [hexaware].[dbo].[emp]

(

empno    int,

ename    varchar(100),

job    varchar(100),

mgr    int,

hiredate    date,

sal    int,

comm    varchar(100),

deptno    int,

email_id    varchar(200)

)

insert into [dbo].[emp] values('7839','KING','PRESIDENT','','1981-11-17','5000','','10','');

insert into [dbo].[emp] values('7698','BLAKE','MANAGER','7839','1981-05-01','2850','','30','blake@learnvinit.com');

insert into [dbo].[emp] values('7782','CLARK','MANAGER','7839','1981-06-09','2450','','10','');

insert into [dbo].[emp] values('7566','JONES','MANAGER','7839','1981-04-02','2975','','20','');

insert into [dbo].[emp] values('7788','SCOTT','ANALYST','7566','1982-12-09','3000','','20','');

insert into [dbo].[emp] values('7902','FORD','ANALYST','7566','1981-12-03','3000','','20','');

insert into [dbo].[emp] values('7369','SMITH','CLERK','7902','1980-12-17','800','','20','');

insert into [dbo].[emp] values('7499','ALLEN','SALESMAN','7698','1981-02-20','1600','300','30','');

insert into [dbo].[emp] values('7521','WARD','SALESMAN','7698','1981-02-22','1250','500','30','');

insert into [dbo].[emp] values('7654','MARTIN','SALESMAN','7698','1981-09-28','1250','1400','30','');

insert into [dbo].[emp] values('7844','TURNER','SALESMAN','7698','1981-09-08','1500','0','30','turner@learnvinit.com');

insert into [dbo].[emp] values('7876','ADAMS','CLERK','7788','1983-01-12','1100','','20','');

insert into [dbo].[emp] values('7900','JAMES','CLERK','7698','1981-12-03','950','','30','');

insert into [dbo].[emp] values('7934','MILLER','CLERK','7782','1982-01-23','1300','','10','');

insert into [dbo].[emp] values('7788','SCOTT','ANALYST','7566','1982-12-09','3000','','20','');

insert into [dbo].[emp] values('7902','FORD','ANALYST','7566','1981-12-03','3000','','20','');

insert into [hexaware].[dbo].[emp] values('8839', 'Reshma Palla', 'Senior Manager', '7839', '2022-10-22', '20000', '', '10', 'reshma_palla@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8698', 'Prashant Kumar', 'Manager', '8839', '2022-06-23', '15000', '', '70', 'prashant_kumar@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8882', 'Pritam Kumar', 'Manager', '8839', '2022-06-23', '15000', '4000', '80', 'pritam_kumar@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8566', 'Samarth Gupta', 'Team Lead', '8882', '2022-05-02', '12000', '', '50', 'samarth_gupta@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8888', 'Swathi Pradeep', 'Team Lead', '8882', '2022-05-02', '12000', '', '60', 'swathi_pradeep@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8902', 'Chaitanya Bathuru ', 'Research Scholar2', '8698', '2022-12-06', '14500', '', '70', 'chaitanya_bathuru_@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8369', 'Chetan Kumar Chowdam', 'Sales Rep2', '8882', '2022-12-06', '11000', '2500', '80', 'chetan_kumar_chowdam@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8499', 'Mouli S', 'Research Scholar', '8902', '2022-06-23', '12500', '', '70', 'mouli_s@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8521', 'Sreelakshmi Nagineni', 'Research Scholar', '8902', '2022-06-23', '12500', '', '70', 'sreelakshmi_nagineni@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8654', 'Rajeev Kumar', 'Research Scholar', '8902', '2022-06-23', '12500', '', '70', 'rajeev_kumar@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8844', 'Rithika R', 'Sales Rep', '8369', '2022-05-02', '10000', '2000', '90', 'rithika_r@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8886', 'Sahithi Mangi', 'Staff', '8934', '2022-12-06', '5000', '', '50', 'sahithi_mangi@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8900', 'Ume Salma Shaik', 'Operation Lead', '8888', '2022-05-02', '7000', '', '60', 'ume_salma_shaik@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8934', 'Vikas Tripathi ', 'PMO Lead', '8888', '2022-05-02', '6000', '', '60', 'vikas_tripathi_@learnvinit.com');

insert into [hexaware].[dbo].[emp] values('8886', 'Varun Dhawan', 'Staff', '8934', '2022-12-05', '5000', '', '50', 'varun_dhawan@learnvinit.com');

SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM loc;

SELECT dept.DNAME AS 'Departments', COUNT(*) AS 'Emp_counts'
FROM dept
JOIN emp 
ON emp.deptno = dept.deptno
GROUP BY dept.DNAME;

select

dept.dname,

count(job) as "Count_of_Emp_by_Dept"

from [dbo].[emp] emp

INNER JOIN [dbo].[dept] dept ON emp.deptno = dept.[DEPTNO]

group by dept.dname

order by dept.dname


SELECT dept.DNAME AS 'Departments', COUNT(emp.job) AS 'Job_roles'
FROM dept
INNER JOIN emp 
ON emp.deptno = dept.deptno
GROUP BY dept.DNAME;

SELECT(
SELECT emp.ename, emp.job, emp.sal,dept.[LOC_NAME]
FROM emp
JOIN dept ON emp.DEPTNO = dept.DEPTNO
JOIN loc ON dept.LOC_ID = loc.LOC_ID
WHERE loc.country = 'India'
GROUP BY emp.ename, emp.job;


SELECT MIN(sal) FROM [dbo].[emp]
INNER JOIN dept ON emp.DEPTNO = dept.DEPTNO
INNER JOIN loc ON dept.LOC_ID = loc.LOC_ID

select

t.*

from

(

select

DENSE_RANK() OVER (ORDER BY emp.sal asc) as Row_ID,

emp.ename,

emp.job,

loc.[LOC_NAME],

loc.Currency,

emp.sal

from [dbo].[emp] emp

INNER JOIN [dbo].[dept] dept ON emp.[deptno] = dept.[deptno]

INNER JOIN [dbo].[loc] loc ON loc.[LOC_ID] = dept.[LOC_ID]

where loc.Country='India'

)t

where Row_ID='1'

SELECT * FROM emp;

SELECT sal,
(DENSE_RANK() OVER(ORDER BY sal DESC)) as Salary_DENSE,
(RANK() OVER(ORDER BY sal DESC)) as Salary_RANK,
(ROW_NUMBER() OVER(ORDER BY sal DESC)) as Salary_ROW,
(NTILE(7) OVER(ORDER BY sal DESC)) as Salary_NTILE

FROM [dbo].[emp]
WHERE sal > 6000 or sal < 3000;

select

YEAR([hiredate]) as Year,

month([hiredate]) as month,

NTILE(2) OVER(ORDER BY hiredate) as Sal_NTILE

from [dbo].[emp]

where YEAR([hiredate]) >=2022

and month([hiredate]) <=6

order by Month

SELECT dept.DNAME AS 'Departments', SUM(emp.sal) AS 'Total_Sal'
FROM dept
INNER JOIN emp 
ON emp.deptno = dept.deptno
GROUP BY dept.DNAME;


SELECT dept.DNAME AS 'Departments',emp.job ,SUM(emp.sal) AS 'Total_Sal',
--(DENSE_RANK() OVER(ORDER BY sal DESC)) as Salary_DENSE,
(RANK() OVER(ORDER BY emp.sal DESC)) as Salary_RANK
--(ROW_NUMBER() OVER(ORDER BY sal DESC)) as Salary_ROW
FROM emp emp
JOIN dept ON emp.DEPTNO = dept.DEPTNO
JOIN loc ON dept.LOC_ID = loc.LOC_ID
WHERE loc.country = 'India'
GROUP BY dept.DNAME, emp.job, emp.sal;


USE Hexaware;

CREATE TABLE emp_auto(
	empno INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ename VARCHAR(100),
	city INT
)

SELECT * FROM [dbo].[emp_auto];


exec sp_help [emp_auto]

alter table [emp_auto]

alter column ename varchar(200)

INSERT INTO EMP_AUTO VALUES('Mouli','3');

-- User creation

-- Creating the view

CREATE VIEW v_emp AS
(
	SELECT *
	FROM [dbo].[emp]
	WHERE deptno in (10,20)
)
USE Hexaware;
CREATE VIEW v_emp_USA AS
(
	SELECT e.*, d.DNAME, l.*
	FROM emp e
	INNER JOIN dept d ON d.DEPTNO = e.deptno
	INNER JOIN loc l ON l.LOC_ID = d.LOC_ID
	WHERE l.Country = 'USA'
)

select * from dept;

SELECT CHARINDEX('a','Kamali');
SELECT CONCAT('I am Learning',' SQL');

SELECT 'I am Learning' + 'SQL';
SELECT LTRIM('Mouli ');
SELECT LOWER('MOULI');
SELECT UPPER('kamali');

SELECT LEFT('Mouli',2);

SELECT FORMAT(9876543210, '######-#####');


SELECT PATINDEX('%a%', 'Kamali');
SELECT REPLACE('Moula','a','i');
SELECT REPLICATE('Mouli *** ', 5);
SELECT REVERSE('Kamali');
SELECT RTRIM('Kamali   ');
SELECT SOUNDEX('KamaliUIDFHI');
SELECT QUOTENAME('HI');
SELECT LEN(SPACE('  145643  '));
SELECT SPACE('  145643  ');
SELECT 'Mouli' + SPACE('43') + 'Kamali';
SELECT STR(1900.0000,1,1);
SELECT SUBSTRING('Mouli', 3,2);
SELECT UNICODE('10');
SELECT TRANSLATE('Monday', 'Monday', 'Moulii');

SELECT ABS(1123.89);
SELECT CEILING(1123.89);
SELECT FLOOR(1123.89);
SELECT CEILING(EXP(2));
SELECT LOG(10);
SELECT COS(-60);
SELECT LOG10(60);
SELECT POWER(2,3);
SELECT SQRT(4);
SELECT SQUARE(9);
SELECT SUM(1+2+3);
SELECT PI();
SELECT SIGN(-90);
SELECT ROUND(11.94956,4);
SELECT CURRENT_TIMESTAMP;
SELECT SYSDATETIME();
SELECT GETDATE();
SELECT DATEADD(MONTH,3,'2023-05-12');
SELECT ISDATE('2023-05-92');
SELECT DATE

USE [Hexaware];

SELECT * FROM [dbo].[emp];

SELECT 
    SUM(CASE WHEN sal > 5000 THEN sal * 0.1 ELSE sal * 0.15 END) AS total_commission, 
    (SUM(CASE WHEN sal > 5000 THEN sal * 0.1 ELSE sal * 0.15 END) / SUM(sal)) * 100 AS percent_extra_money
FROM [dbo].[emp]
