ALTER USER hr IDENTIFIED BY hr ACCOUNT UNLOCK;

CREATE USER infa IDENTIFIED BY infa;

GRANT dba TO infa;

CREATE TABLE core.emp_details AS SELECT * FROM hr.employees WHERE 1=2;

SELECT ROUND(65.726,-1)FROM DUAL;