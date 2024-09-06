use companydb;
alter table employees add Salary int;

set SQL_SAFE_UPDATES = 0;
update Employees
set Salary = round(rand() * (80000-40000) + 40000, 2);

set SQL_SAFE_UPDATES = 1;
select * from employees;

select DepartmentName,
(select count(*)
from Employees
where Employees.DepartmentID = Departments.DepartmentID) as EmployeeCount
from Departments;

select *
from Employees
where Salary = (select max(Salary)
from employees as e
where e.DepartmentID = Employees.DepartmentID);

select departmentID, AverageSalary
from(SELECT DepartmentID, AVG(Salary) as AverageSalary
from Employees
group by DepartmentID) as AVGSalaries
where AverageSalary > 50000;

select studentid, totalscore
from(select studentid, sum(subjectscores) as totalscore
from results
group by studentid) as Tscores
where totalscore >= 60;
