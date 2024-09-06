create database SchoolDB;
use SchoolDB;
create table Students(
StudentID int primary key,
FirstName varchar(50),
LastName varchar(50),
DateOfBirth date,
ClassID int);

insert into Students(StudentID,FirstName,LastName,DateOfBirth,ClassID)
values(101,'betty','ongati','2000/10/16',1),
(102,'shila','marwa','1998/12/23',2),
(103,'henry','omondi','2004/09/28',3),
(104,'jacob','otieno','1999/07/31',4),
(105,'brianna','ayoo','2004/03/28',5);

select*from students;

create table Classes(
classID int primary key,
ClassName varchar(100));

insert into Classes(ClassID,ClassName)values
(1,'class1'),
(2,'class2'),
(3,'class3');

select* from classes;
-- we are retrieving data from table student where classid is 2
select FirstName,LastName
from Students
where ClassID=2;
set sql_safe_updates=0;
-- we are updating classid 4,5 with classid 2,3 to get the count of students in each class
update students set classid =3 where classid=5;
update students set classid =2 where classid=4;

select classid, count(*) as class
from students
group by classid;

-- we are updating the lastname of students with studentid 3 to smith
update students set lastname='Smith' where studentid=103;

select* from students;

select* from classes;
-- we are changing classid1 to mathematics
update classes set classname='mathematics' where classid=1;
update classes set classname='science' where classid=2;
update classes set classname='english' where classid=3;

delete from students
where studentid=105;

delete from classes where classid>2;
