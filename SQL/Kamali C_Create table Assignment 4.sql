CREATE DATABASE [training];

USE training


/*TABLE NAME:regions*/
CREATE TABLE regions (
  region_id int NOT NULL,
  region_name varchar(25),
  PRIMARY KEY (region_id)
);

/*TABLE NAME:countries*/
CREATE TABLE countries (
  country_id char(2) NOT NULL,
  country_name varchar(40),
  region_id int NOT NULL,
  PRIMARY KEY (country_id),
  FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

/*TABLE NAME:locations*/
CREATE TABLE locations (
  location_id int NOT NULL,
  street_address varchar(40),
  postal_code varchar(12),
  city varchar(30) NOT NULL,
  state_province varchar(25),
  country_id char(2) NOT NULL,
  PRIMARY KEY (location_id),
  FOREIGN KEY (country_id) REFERENCES countries(country_id)
);
/*TABLE NAME:departments*/
CREATE TABLE departments (
  department_id int NOT NULL,
  department_name varchar(30) NOT NULL,
  location_id int,
  PRIMARY KEY (department_id),
  FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

/*TABLE NAME:jobs*/
CREATE TABLE jobs (
  job_id int NOT NULL,
  job_title varchar(35) NOT NULL,
  min_salary decimal(8, 2),
  max_salary decimal(8, 2),
  PRIMARY KEY (job_id)
);

/*TABLE NAME:employees*/
CREATE TABLE employees (
  employee_id int NOT NULL,
  first_name varchar(20),
  last_name varchar(25) NOT NULL,
  email varchar(100) NOT NULL,
  phone_number varchar(20),
  hire_date date NOT NULL,
  job_id int NOT NULL,
  salary decimal(8, 2) NOT NULL,
  manager_id int,
  department_id int NOT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (job_id) REFERENCES jobs(job_id),
  FOREIGN KEY (manager_id) REFERENCES employees(employee_id),
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

/*TABLE NAME:dependents*/
CREATE TABLE dependents (
  dependent_id int NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  relationship varchar(25) NOT NULL,
  employee_id int NOT NULL,
  PRIMARY KEY (dependent_id),
  FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);









/*verify the tables
SELECT * FROM dbo.countries
SELECT * FROM dbo.departments
SELECT * FROM  dbo.dependents
SELECT * FROM dbo.employees
SELECT * FROM dbo.jobs
SELECT * FROM dbo.locations
SELECT * FROM dbo.regions
*/

/*Created By DA121 Kamali C*/