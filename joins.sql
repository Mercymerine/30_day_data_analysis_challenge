create database jobdb;

create table departments (
id int primary key,
department_name VARCHAR(100)
);

insert into departments (id, department_name) values
(1, 'HR'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Sales');

drop table if exists employees;

create table if not exists employees(
id int primary key, 
name varchar(100),
manager_id int, -- A foreign key to representthe employee's manager (for self join)
department_id int,
foreign key (department_id) references departments(id)
);

insert into employees(id, name, manager_id, department_id) values
(1, 'John', NULL, 1),
(2, 'Jane', 1, 2),
(3, 'Alice', 1, 3),
(4, 'Bob', 3, 3),
(5, 'Charlie', 2, 4);

-- Inner Join
select e.name as employee_name, d.department_name
from employees e
inner join departments d on e.department_id = d.id;

-- Left join
select e.name as employee_name, d.department_name
from employees e 
left join departments d on e.department_id = d.id;

-- right join
select e.name as employee_name, d.department_name
from employees e 
right join departments d on e.department_id = d.id;

-- full outer join
select e.name as employee_name, d.department_name
from employees e 
left join departments d on e.department_id = d.id
union
select e.name as employee_name, d.department_name
from employees e
right join departments d on e.department_id = d.id;

-- cross join
select e.name as employee_name, d.department_name
from employees e
cross join departments d;

-- self join
select e1.name as employee_name, e2.name as manager_name
from employees e1
left join employees e2 on e1.manager_id = e2.id;





