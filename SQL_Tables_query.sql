create table employees (
emp_no INTEGER Not null,
birth_date DATE not null,
first_name VARCHAR not null,
last_name VARCHAR not null,
gender VARCHAR not null,
hire_date DATE not null,
primary key (emp_no));

create table departments(
dept_no VARCHAR not null,
dept_name VARCHAR not null,
primary key (dept_no),
unique (dept_name));

create table dept_manager(
dept_no VARCHAR not null,
emp_no INTEGER not null,
from_date Date not null,
to_date Date not null,
primary key (emp_no, dept_no),
foreign key (dept_no) References departments (dept_no),
foreign key (emp_no) References employees (emp_no));


create table dept_employees(
emp_no Int not null,
dept_no VARCHAR not null,
from_date Date not null,
to_date Date not null,
foreign key (emp_no) References employees (emp_no),
foreign key (dept_no) References departments (dept_no),
primary key(emp_no, dept_no));

create table titles (
emp_no Int not null,
title VARCHAR not null,
from_date Date not null,
to_date Date not null,
foreign key (emp_no) references employees (emp_no),
primary key (emp_no, title, from_date));

create table salaries (
emp_no INT not null,
salary INT not null,
from_date date not null,
to_date date not null,
foreign key (emp_no) references employees (emp_no),
primary key (emp_no, from_date)); 