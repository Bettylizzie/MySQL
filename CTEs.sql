use companydb;

with employeeSalaries as(
 select employeeid,firstname, lastname, salary, departmentid
 from employees
 where salary>50000
 )
 select
 departmentid,
 avg(Salary) as avg_salary
 from employeeSalaries
 group by departmentid;