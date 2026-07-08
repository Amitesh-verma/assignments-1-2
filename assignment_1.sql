create database Assignment1;
use Assignment1;


-- CREATE TABLE--  
-- Create an employees table with emp_id, emp_name, salary, department.
create table employees(
emp_id int primary key,
salary float,
department varchar(50)
); 
drop table employees;
-- Create a students table with student_id as PRIMARY KEY.
create table student(
student_id int primary key
);
-- Create a products table where product_name cannot be NULL.
create table products(
product_name varchar(50) not null
);

-- Create a customers table with UNIQUE email.
create table customers(
email varchar(50) unique,
salary int
);
drop table customers;
-- Create an orders table with PRIMARY KEY and NOT NULL constraints.
create table orders(
order_id int primary key not null
);

-- Create an employees table with DEFAULT salary = 30000.

create table employees(
emp_name varchar(50),
salary int default 30000
);
drop table employees;
-- Create a books table with book_id, title, author, price.
create table books(
book_id int primary key,
title varchar(50),
author varchar(50),
price float
);

-- Create a departments table with department_id as PRIMARY KEY.
create table departments(
departments_id int primary key
);

-- Create a sales table with order_date DATE datatype.
create table sales(
order_date date
);
-- Create an employees table with CHECK (salary > 0).
create table employees (
salary float check (salary >0)
);

-- ALTER TABLE
-- Add a column phone_number to employees table.
alter table employees
add phone_number int primary key;

-- Add a column email to customers table.
alter table customers
add email_id varchar(50); 

-- Modify salary datatype from INT to DECIMAL(10,2).
alter table customers
modify salary decimal(10,2);

-- Increase emp_name size from VARCHAR(50) to VARCHAR(100).
alter table employees
modify emp_name varchar(100);

-- Rename column phone_number to mobile_number.

alter table employees
rename column phone_number to mobile_number;

-- Drop column mobile_number.
alter table employees
drop column mobile_number;

-- Add a UNIQUE constraint on email.

alter table employees
add email varchar(50) unique;

-- Add a NOT NULL constraint on emp_name.
alter table employees
add emp_name varchar(50) not null;

-- Rename table employees to staff.
alter table employees
rename  to staff;

-- Add a joining_date column.
alter table staff
add column joining_date date;


-- CONSTRAINTS 
-- Create a table with PRIMARY KEY constraint.
create table emp(
emp_id int primary key
);
drop table emp;
-- Create a table with FOREIGN KEY referencing departments table.
create table emp(
emp_id int primary key,
emp_name varchar(50)
);
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);
-- Create a table with UNIQUE constraint on email. 
create table emp(
email_id varchar(50) unique
);
-- Create a table with CHECK constraint (age > 18).
create table emp(
email_id varchar(50) unique,
age int check(age >18)
);

-- Create a table with DEFAULT value 'India' for country.
create table emp( 
country varchar(50) default 'india'
);

-- Add PRIMARY KEY to an existing table using ALTER.

alter table emp
add emp_id int primary key;

-- Add FOREIGN KEY to an existing table using ALTER. 

alter table emp
add constraint fk_emp_Department
foreign key(DepartmentID)
REFERENCES Department(DepartmentID);

-- Add CHECK constraint to salary column using ALTER.

alter table emp
add salary float check(salary > 50000);

-- Add DEFAULT value to an existing column using ALTER.
ALTER TABLE emp
ADD CONSTRAINT DF_emp_Country
DEFAULT 'India' FOR Country;

-- Drop a constraint from an existing table using ALTER.

ALTER TABLE emp
DROP PRIMARY KEY;

 -- Advanced ALTER + CONSTRAINTS 
-- Add PRIMARY KEY on emp_id after table creation
ALTER TABLE emp
ADD CONSTRAINT PK_emp
PRIMARY KEY (emp_id);

-- Add UNIQUE constraint on phone_number.
ALTER TABLE emp
add phone_no varchar(10),
add salary float,
add email varchar(50) unique;

ALTER TABLE emp
add constraint uq_emp_phone
unique(phone_no);

desc emp;

-- Add CHECK constraint (salary >= 20000).
ALTER TABLE emp
add constraint ch_emp_salary
check(salary >= 20000);

-- Add FOREIGN KEY between employees and departments.
ALTER TABLE emp
add constraint  fk_emp_dep
foreign key (departmentID) references DEPARTMENTS(departmentID);

-- Rename a constraint.
alter table emp
add constraint ch_emp_salary 
rename ch_emp_sal;

-- Drop UNIQUE constraint from email.
ALTER TABLE emp
DROP CONSTRAINT UQ_emp_email;

-- Drop PRIMARY KEY from a table.
alter table emp
drop primary key;

-- Modify a column from NULL to NOT NULL.
alter table emp
modify column email varchar(50) not null;

desc emp;

-- Modify a column datatype without losing data.
alter table emp
modify column email varchar(100);

-- Add multiple columns in a single ALTER statement
alter table emp
add affress varchar(100),
add dob date,
add gender char(1);