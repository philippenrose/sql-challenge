--create tables for import
CREATE TABLE departments (
 dept_no VARCHAR (10) NOT NULL,
 dept_name VARCHAR (45) NOT NULL
);

CREATE TABLE salaries (
 emp_no INT NOT NULL,
 salary INT NOT NULL,
 from_date VARCHAR (45) NOT NULL,
 to_date VARCHAR (45) NOT NULL
);

CREATE TABLE titles (
 emp_no INT NOT NULL,
 title VARCHAR (60) NOT NULL,
 from_date VARCHAR (45) NOT NULL,
 to_date VARCHAR (45) NOT NULL
);

CREATE TABLE dept_employee (
 emp_no INT NOT NULL,
 dept_no VARCHAR (10) NOT NULL,
 from_date VARCHAR (45) NOT NULL,
 to_date VARCHAR (45) NOT NULL
);

CREATE TABLE dept_manager (
 dept_no VARCHAR (10) NOT NULL,
 emp_no INT NOT NULL,
 from_date VARCHAR (45) NOT NULL,
 to_date VARCHAR (45) NOT NULL
);

CREATE TABLE employees (
 emp_no INT NOT NULL,
 birth_date VARCHAR (45) NOT NULL,
 first_name VARCHAR (45) NOT NULL,
 last_name VARCHAR (45) NOT NULL,
 gender VARCHAR (2) NOT NULL,
 hire_date VARCHAR (20) NOT NULL
);
