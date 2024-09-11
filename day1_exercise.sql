create database Academy;

use Academy;

create table Student(
StudentID int primary key,
FirstName varchar(100) not null,
LastName varchar(100),
Age int check (Age >= 18),
Email varchar(255) not null unique
);

insert into Student (StudentID, FirstName, LastName, Age, Email) values
(1, 'John', 'Doe', 20, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
(3, 'Michael', 'Brown', 19, 'michael.brown@example.com');

alter table Student
add EnrollmentDate Date;

alter table Student
modify Email varchar(300);

alter table Student
drop column LastName;