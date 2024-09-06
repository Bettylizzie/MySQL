use companydb;

select sum(Salary) as TotalSalary
from Employee2;

select avg(Salary) as TotalSalary
from Employee2;

-- Find the latest hire date for each department
select DepartmentID, max(HireDate) as LatestHireDate
from employees
group by DepartmentID;

SELECT * FROM employee2
WHERE Salary > 70000;

select departmentID, count(*) as employeecount
from employees
group by DepartmentID
having count(*) >= 2;

select * from employee2
where department = 'HR' and Salary >= 50000;

select * from employee2
where not department='HR';

select * from employees
where DepartmentID in (101,102,103);

select * from employee2
where Salary between 60000 and 70000;

select * from employee2
where Name like 'G%';

select * from employee2
where Name like '%E';

select * from employee2
where Name like '%ace%';
