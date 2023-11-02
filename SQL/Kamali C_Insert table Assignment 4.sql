USE training
/*Inserting the value into regions table*/
INSERT INTO regions (region_id, region_name) VALUES (1, 'Europe')
INSERT INTO regions (region_id, region_name) VALUES (2, 'Americas')
INSERT INTO regions (region_id, region_name) VALUES (3, 'Asia')
INSERT INTO regions (region_id, region_name) VALUES (4, 'Middle East and Africa')



/*Inserting the value into countries table*/
INSERT INTO countries (country_id, country_name, region_id) VALUES ('AR', 'Argentina', 2)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('AU', 'Australia', 3)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('BE', 'Belgium', 1)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('BR', 'Brazil', 2)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('CA', 'Canada', 2)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('CH', 'Switzerland', 1)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('CN', 'China', 3)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('DE', 'Germany', 1)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('DK', 'Denmark', 1)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('EG', 'Egypt', 4)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('FR', 'France', 1)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('HK', 'HongKong', 3)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('IL', 'Israel', 4)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('IN', 'India', 3)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('IT', 'Italy', 1)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('JP', 'Japan', 3)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('KW', 'Kuwait', 4)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('MX', 'Mexico', 2)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('NG', 'Nigeria', 4)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('NL', 'Netherlands', 1)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('SG', 'Singapore', 3)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('UK', 'United Kingdom', 1)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('US', 'United States of America', 2)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('ZM', 'Zambia', 4)
INSERT INTO countries (country_id, country_name, region_id) VALUES ('ZW', 'Zimbabwe', 4)



/*Inserting the value into location table*/
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US')
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US')
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US')
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA')
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (2400, '8204 Arthur St', NULL, 'London', NULL, 'UK')
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK')
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE')


/*Inserting the value into departments table*/
INSERT INTO departments (department_id, department_name, location_id) VALUES (1, 'Administration', 1700)
INSERT INTO departments (department_id, department_name, location_id) VALUES (2, 'Marketing', 1800)
INSERT INTO departments (department_id, department_name, location_id) VALUES (3, 'Purchasing', 1700)
INSERT INTO departments (department_id, department_name, location_id) VALUES (4, 'Human Resources', 2400)
INSERT INTO departments (department_id, department_name, location_id) VALUES (5, 'Shipping', 1500)
INSERT INTO departments (department_id, department_name, location_id) VALUES (6, 'IT', 1400)
INSERT INTO departments (department_id, department_name, location_id) VALUES (7, 'Public Relations', 2700)
INSERT INTO departments (department_id, department_name, location_id) VALUES (8, 'Sales', 2500)
INSERT INTO departments (department_id, department_name, location_id) VALUES (9, 'Executive', 1700)
INSERT INTO departments (department_id, department_name, location_id) VALUES (10, 'Finance', 1700)
INSERT INTO departments (department_id, department_name, location_id) VALUES (11, 'Accounting', 1700)




/*Inserting the value into jobs table*/
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (1, 'Public Accountant', 4200, 9000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES(2, 'Accounting Manager', 8200, 16000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (3, 'Administration Assistant', 3000, 6000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (4, 'President', 20000, 40000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (5, 'Administration Vice President', 15000, 30000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (6, 'Accountant', 4200, 9000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (7, 'Finance Manager', 8200, 16000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (8, 'Human Resources Representative', 4000, 9000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (9, 'Programmer', 4000, 10000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (10, 'Marketing Manager', 9000, 15000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (11, 'Marketing Representative', 4000, 9000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (12, 'Public Relations Representative', 4500, 10500)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (13, 'Purchasing Clerk', 2500, 5500)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (14, 'Purchasing Manager', 8000, 15000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (15, 'Sales Manager', 10000, 20000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (16, 'Sales Representative', 6000, 12000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (17, 'Shipping Clerk', 2500, 5500)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (18, 'Stock Clerk', 2000, 5000)
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES (19, 'Stock Manager', 5500, 8500)




INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('100', 'Steven', 'King', 'steven.king@hexaware.com', '515.123.4567', CONVERT(date,'17-06-1987',105), '4', '24000', NULL, '9');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('101', 'Neena', 'Kochhar', 'neena.kochhar@hexaware.com', '515.123.4568', CONVERT(date,'21-09-1989',105), '5', '17000', '100', '9');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('102', 'Lex', 'De Haan', 'lex.de haan@hexaware.com', '515.123.4569', CONVERT(date,'13-01-1993',105), '5', '17000', '100', '9');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('103', 'Alexander', 'Hunold', 'alexander.hunold@hexaware.com', '590.423.4567', CONVERT(date,'03-01-1990',105), '9', '9000', '102', '6');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('104', 'Bruce', 'Ernst', 'bruce.ernst@hexaware.com', '590.423.4568', CONVERT(date,'21-05-1991',105), '9', '6000', '103', '6');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('105', 'David', 'Austin', 'david.austin@hexaware.com', '590.423.4569', CONVERT(date,'25-06-1997',105), '9', '4800', '103', '6');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('106', 'Valli', 'Pataballa', 'valli.pataballa@hexaware.com', '590.423.4560', CONVERT(date,'05-02-1998',105), '9', '4800', '103', '6');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('107', 'Diana', 'Lorentz', 'diana.lorentz@hexaware.com', '590.423.5567', CONVERT(date,'07-02-1999',105), '9', '4200', '103', '6');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('108', 'Nancy', 'Greenberg', 'nancy.greenberg@hexaware.com', '515.124.4569', CONVERT(date,'17-08-1994',105), '7', '12000', '101', '10');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('109', 'Daniel', 'Faviet', 'daniel.faviet@hexaware.com', '515.124.4169', CONVERT(date,'16-08-1994',105), '6', '9000', '108', '10');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('110', 'John', 'Chen', 'john.chen@hexaware.com', '515.124.4269', CONVERT(date,'28-09-1997',105), '6', '8200', '108', '10');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('111', 'Ismael', 'Sciarra', 'ismael.sciarra@hexaware.com', '515.124.4369', CONVERT(date,'30-09-1997',105), '6', '7700', '108', '10');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('112', 'Jose Manuel', 'Urman', 'jose manuel.urman@hexaware.com', '515.124.4469', CONVERT(date,'07-03-1998',105), '6', '7800', '108', '10');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('113', 'Luis', 'Popp', 'luis.popp@hexaware.com', '515.124.4567', CONVERT(date,'07-12-1999',105), '6', '6900', '108', '10');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('114', 'Den', 'Raphaely', 'den.raphaely@hexaware.com', '515.127.4561', CONVERT(date,'07-12-1994',105), '14', '11000', '100', '3');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('115', 'Alexander', 'Khoo', 'alexander.khoo@hexaware.com', '515.127.4562', CONVERT(date,'18-05-1995',105), '13', '3100', '114', '3');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('116', 'Shelli', 'Baida', 'shelli.baida@hexaware.com', '515.127.4563', CONVERT(date,'24-12-1997',105), '13', '2900', '114', '3');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('117', 'Sigal', 'Tobias', 'sigal.tobias@hexaware.com', '515.127.4564', CONVERT(date,'24-07-1997',105), '13', '2800', '114', '3');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('118', 'Guy', 'Himuro', 'guy.himuro@hexaware.com', '515.127.4565', CONVERT(date,'15-11-1998',105), '13', '2600', '114', '3');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('119', 'Karen', 'Colmenares', 'karen.colmenares@hexaware.com', '515.127.4566', CONVERT(date,'10-08-1999',105), '13', '2500', '114', '3');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('120', 'Matthew', 'Weiss', 'matthew.weiss@hexaware.com', '650.123.1234', CONVERT(date,'18-07-1996',105), '19', '8000', '100', '5');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('121', 'Adam', 'Fripp', 'adam.fripp@hexaware.com', '650.123.2234', CONVERT(date,'10-04-1997',105), '19', '8200', '100', '5');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('122', 'Payam', 'Kaufling', 'payam.kaufling@hexaware.com', '650.123.3234', CONVERT(date,'01-05-1995',105), '19', '7900', '100', '5');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('123', 'Shanta', 'Vollman', 'shanta.vollman@hexaware.com', '650.123.4234', CONVERT(date,'10-10-1997',105), '19', '6500', '100', '5');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('126', 'Irene', 'Mikkilineni', 'irene.mikkilineni@hexaware.com', '650.124.1224', CONVERT(date,'28-09-1998',105), '18', '2700', '120', '5');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('145', 'John', 'Russell', 'john.russell@hexaware.com', NULL, CONVERT(date,'01-10-1996',105), '15', '14000', '100', '8');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('146', 'Karen', 'Partners', 'karen.partners@hexaware.com', NULL, CONVERT(date,'05-01-1997',105), '15', '13500', '100', '8');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('176', 'Jonathon', 'Taylor', 'jonathon.taylor@hexaware.com', NULL, CONVERT(date,'24-03-1998',105), '16', '8600', '100', '8');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('177', 'Jack', 'Livingston', 'jack.livingston@hexaware.com', NULL, CONVERT(date,'23-04-1998',105), '16', '8400', '100', '8');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('178', 'Kimberely', 'Grant', 'kimberely.grant@hexaware.com', NULL, CONVERT(date,'24-05-1999',105), '16', '7000', '100', '8');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('179', 'Charles', 'Johnson', 'charles.johnson@hexaware.com', NULL, CONVERT(date,'04-01-2000',105), '16', '6200', '100', '8');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('192', 'Sarah', 'Bell', 'sarah.bell@hexaware.com', '650.501.1876', CONVERT(date,'04-02-1996',105), '17', '4000', '123', '5');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('193', 'Britney', 'Everett', 'britney.everett@hexaware.com', '650.501.2876', CONVERT(date,'03-03-1997',105), '17', '3900', '123', '5');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('200', 'Jennifer', 'Whalen', 'jennifer.whalen@hexaware.com', '515.123.4444', CONVERT(date,'17-09-1987',105), '3', '4400', '101', '1');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('201', 'Michael', 'Hartstein', 'michael.hartstein@hexaware.com', '515.123.5555', CONVERT(date,'17-02-1996',105), '10', '13000', '100', '2');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('202', 'Pat', 'Fay', 'pat.fay@hexaware.com', '603.123.6666', CONVERT(date,'17-08-1997',105), '11', '6000', '201', '2');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('203', 'Susan', 'Mavris', 'susan.mavris@hexaware.com', '515.123.7777', CONVERT(date,'07-06-1994',105), '8', '6500', '101', '4');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('204', 'Hermann', 'Baer', 'hermann.baer@hexaware.com', '515.123.8888', CONVERT(date,'07-06-1994',105), '12', '10000', '101', '7');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('205', 'Shelley', 'Higgins', 'shelley.higgins@hexaware.com', '515.123.8080', CONVERT(date,'07-06-1994',105), '2', '12000', '101', '11');
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES ('206', 'William', 'Gietz', 'william.gietz@hexaware.com', '515.123.8181', CONVERT(date,'07-06-1994',105), '1', '8300', '205', '11');





INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('1', 'Penelope', 'Gietz', 'Child', '206');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('2', 'Nick', 'Higgins', 'Child', '205');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('3', 'Ed', 'Whalen', 'Child', '200');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('4', 'Jennifer', 'King', 'Child', '100');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('5', 'Johnny', 'Kochhar', 'Child', '101');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('6', 'Bette', 'De Haan', 'Child', '102');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('7', 'Grace', 'Faviet', 'Child', '109');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('8', 'Matthew', 'Chen', 'Child', '110');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('9', 'Joe', 'Sciarra', 'Child', '111');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('10', 'Christian', 'Urman', 'Child', '112');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('11', 'Zero', 'Popp', 'Child', '113');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('12', 'Karl', 'Greenberg', 'Child', '108');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('13', 'Uma', 'Mavris', 'Child', '203');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('14', 'Vivien', 'Hunold', 'Child', '103');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('15', 'Cuba', 'Ernst', 'Child', '104');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('16', 'Fred', 'Austin', 'Child', '105');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('17', 'Helen', 'Pataballa', 'Child', '106');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('18', 'Dan', 'Lorentz', 'Child', '107');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('19', 'Bob', 'Hartstein', 'Child', '201');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('20', 'Lucille', 'Fay', 'Child', '202');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('21', 'Kirsten', 'Baer', 'Child', '204');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('22', 'Elvis', 'Khoo', 'Child', '115');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('23', 'Sandra', 'Baida', 'Child', '116');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('24', 'Cameron', 'Tobias', 'Child', '117');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('25', 'Kevin', 'Himuro', 'Child', '118');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('26', 'Rip', 'Colmenares', 'Child', '119');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('27', 'Julia', 'Raphaely', 'Child', '114');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('28', 'Woody', 'Russell', 'Child', '145');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('29', 'Alec', 'Partners', 'Child', '146');
INSERT INTO dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES ('30', 'Sandra', 'Taylor', 'Child', '176');

--SELECT * FROM dbo.dependents
--SELECT * FROM dbo.employees
/*verify the jobs table*/
--SELECT * FROM jobs
/*verify the departments table*/
--SELECT * FROM dbo.departments
/*verify the location table*/
--SELECT * FROM dbo.locations
/*verify the region table*/
--SELECT * FROM dbo.countries
/*verify the region table*/
-- SELECT * FROM dbo.regions
