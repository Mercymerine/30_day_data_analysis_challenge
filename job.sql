create database employeedb;

use employeedb;

-- Create the employees table with sample data
create table employees (
id int auto_increment primary key,
name varchar(100),
age int,
salary decimal (10, 2),
department varchar (100),
hire_date date
)

-- Insert 10 sample records
insert into employees (name, age, salary , department, hire_date) values
('Alice', 30, 50000.00, 'HR', '2018-05-10'),
('Bob', 45, 75000.00, 'Engineering', '2015-03-15'),
('Charlie', 25, 45000.00, 'Marketing', '2020-01-20'),
('David', 28, 60000.00, 'Engineering', '2017-06-10'),
('Laura', 35, 80000.00, 'HR', '2014-02-18'),
('Frank', 40, 65000.00, 'Sales', '2016-08-01'),
('Grace', 29, 55000.00, 'Marketing', '2019-11-12'),
('Vincent', 50, 90000.00, 'Sales', '2012-10-20'),
('Ivy', 32, 48000.00, 'HR', '2018-12-05'),
('Jack', 38, 70000.00, 'Engineering', '2016-04-20');


-- Filter the records: name and salary of employees working in a department
select name, salary
from employees
where department = 'HR';

-- Sort the data by salary
select name, age, salary
from employees
order by salary;

-- Find the top 3 highest-paid employees
select name, salary
from employees
order by salary desc
limit 3;

-- Find all distinct departments
select distinct department
from employees;

-- Query data to find employees who are either in department X (e.g engineering and have a aslary greate than 70000)
select name, department, salary
from employees
where department = 'Engineering' OR salary > 70000;

-- Select 2 youngest employess, show name and hire_date
select name, hire_date
from employees
order by age asc
limit 2;

-- Find the distinct department and sort them in alphabetical order
select distinct department
from employees
order by department;