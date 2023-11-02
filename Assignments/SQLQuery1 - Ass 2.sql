-- Question – 01
-- Find count of jobs type in each dept.

SELECT dept.DNAME AS 'Departments', COUNT(emp.job) AS 'Job_roles'
FROM dept
INNER JOIN emp 
ON emp.deptno = dept.deptno
GROUP BY dept.DNAME;

-- Question – 02
-- Query to find emp manager name and his manager for employees working in India

USE Hexaware;
SELECT e1.empno AS Empno,
e1.ename AS Ename,
DENSE_RANK() OVER(ORDER BY e1.ename) AS ManagerNo,
e2.ename AS Manager_Name,
e2.empno AS "Manager's Manager ID",
e3.ename AS "Manager's Manager Name",
l.Country AS Country_Name
FROM emp e1
INNER JOIN emp e2 ON e1.mgr = e2.empno
INNER JOIN emp e3 ON e2.mgr = e3.empno
INNER JOIN dept dept ON e1.deptno = dept.deptno
INNER JOIN loc l ON l.LOC_ID = dept.LOC_ID
WHERE l.Country = 'India';

-- Question – 03
-- Find Average Salary for each Dept in India for each job type.

SELECT e.ename, d.DNAME, e.job, AVG(e.sal) AS Average_Salery
FROM emp e
INNER JOIN dept d ON e.deptno = d.deptno
INNER JOIN loc l ON d.LOC_ID = l.LOC_ID
WHERE l.Country = 'India'
GROUP BY e.ename, d.DNAME, e.job;


-- Question – 04
-- Compare Salary for same job type in India and US

SELECT d.dname AS deptname, e.job, 
    'INR' AS currency_in_inr, e.sal AS sal_in_india, 
    'USD' AS currency_in_usd, e.sal AS sal_in_usa
FROM emp e
JOIN dept d ON e.deptno = d.deptno
JOIN loc l ON d.loc_id = l.loc_id
WHERE l.country = 'India'
UNION
SELECT d.dname AS deptname, e.job, 
    'INR' AS currency_in_inr, e.sal*72.5 AS sal_in_india, 
    'USD' AS currency_in_usd, e.sal AS sal_in_usa
FROM emp e
JOIN dept d ON e.deptno = d.deptno
JOIN loc l ON d.loc_id = l.loc_id
WHERE l.country = 'USA'
ORDER BY job, deptname;

-- Question – 05
-- Using SQL query Print “hexaware” like

SELECT SUBSTR('hexaware', LEVEL, 1)
FROM DUAL
CONNECT BY LEVEL <= LENGTH('hexaware');

-- Question – 06
-- Find the employees in India and US having same job role getting second highest salary in each country by job role.

SELECT Country, job,empno,ename,sal
FROM (
SELECT e.empno, e.ename, e.sal, e.job, l.Country,
ROW_NUMBER() OVER (PARTITION BY l.Country, e.job ORDER BY e.sal DESC) AS rn
FROM emp e
INNER JOIN dept d ON e.deptno = d.deptno
INNER JOIN loc l ON d.LOC_ID = l.LOC_ID
WHERE l.Country IN ('India', 'USA')
) AS sub
WHERE rn = 2
GROUP BY Country, job,empno,ename,sal
ORDER BY sal DESC;





SELECT MAX(sal)
FROM emp e
WHERE sal < (SELECT MAX(SAL) FROM emp e)
 














SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM loc;
