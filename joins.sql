use companydb;

select employees.FirstName, employees.LastName, departments.DepartmentName
FROM employees
inner join departments on employees.DepartmentID=departments.DepartmentID;

select employees.EmployeeID, employees.FirstName, employees.LastName, projects.ProjectID, projects.ProjectName
FROM employees
cross join projects;

select employees.FirstName, employees.LastName, departments.DepartmentName
from employees
left join departments on employees.DepartmentID=departments.DepartmentID;

select employees.FirstName, employees.LastName, departments.DepartmentName
from employees
right join departments on employees.DepartmentID=departments.DepartmentID;


select employees.FirstName, employees.LastName, departments.DepartmentName
from employees
full join departments on employees.DepartmentID=departments.DepartmentID;