use companydb;
select employeeid,firstname,lastname,departmentid,
row_number() over (partition by departmentid order by lastname) as row_num
from employees;

update employees set departmentid = 102 where employeeid = 11;
insert into employees (employeeid, lastname, departmentid, hiredate, salary, phonenumber, email, personal_email) values
(19, 'Andres', 102, '2022-1-18',20000,079846327, 'asegfdh@k', 'sdyhd@h' ),
(20, 'Andre', 102, '2022-1-18',20000,079846387, 'asegfdh@k', 'sdyhd@h');

update employees set Salary = 60000 where employeeid = 19;
update employees set Salary = 60000 where employeeid = 20;

-- update employees set salary = 60000 where employeeid = 19 or 20;

select employeeid,firstname,lastname,departmentid,salary,
rank() over (partition by departmentid order by salary) as ranks
from employees;

select employeeid,firstname,lastname,departmentid,salary,
sum(salary) over (partition by departmentid) as total_salary
from employees;

select employeeid,firstname,lastname,departmentid,salary,
avg(Salary) over (order by employeeid rows between 2 preceding and current row) as moving_avg
from employees;
