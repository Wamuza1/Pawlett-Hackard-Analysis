-- Creating Department table for PH-Employee
 create table department(
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
 Foreign key (dept_no) References department (dept_no),
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
 