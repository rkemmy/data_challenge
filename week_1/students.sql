create database school;

use school;

create table Students (
 StudentID int primary key auto_increment,
 FirstName varchar(100) not null,
 LastName varchar(100),
 Age int check (Age >= 18),
 Email varchar(255) unique not null
 );

select * from Students;

insert into Students(StudentId, FirstName, LastName, Age, Email)
values(1, 'John', 'Doe', 20, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
(3, 'Michael', 'Brown', 19, 'michael.brown@example.com');

alter table Students add column EnrollmentDate date;
alter table Students modify column Email varchar(300) not null;
alter table Students drop column LastName;
