-- Creating Department table for PH-Employee
 create table departments(
 dept_no varchar(4) not null,
 dept_name varchar(40) not null,
 primary key (dept_no),
 unique (dept_name)
);
-- Creating employee table for PH-Employee
 Create table employees (
 emp_no int not null,
 birth_date date not null,
 first_name varchar not null,
 last_name varchar not null,
 gender varchar not null,
 hire_date date not null,
 primary key (emp_no)
 );
 
 -- Creating dept_manager tablel for PH- Employee
  Create table dept_manager(
  dept_no varchar(4) not null,
   emp_no int not null,
   from_date date not null,
   to_date date not null,
 Foreign key (emp_no) References employees (emp_no),
 Foreign key (dept_no) References departments (dept_no),
 Primary key (emp_no, dept_no)
 );
 
 -- Creating salaries table for PH-Employee
 create table salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
 );
 
  Create table dept_emp(
   emp_no int not null,
   dept_no varchar(4) not null,
   from_date date not null,
   to_date date not null,
 Foreign key (emp_no) References employees (emp_no),
 Foreign key (dept_no) References departments (dept_no),
 Primary key (emp_no, dept_no)
 );

Create table titles(
    emp_no int not null,
   title varchar not null,
   from_date date not null,
   to_date date not null,
 Foreign key (emp_no) References employees (emp_no),
 Primary key (emp_no , title, from_date)
 );
 
 select * from retirement_info;
drop Table retirement_info;
 -- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;
 