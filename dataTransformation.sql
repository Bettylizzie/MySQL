use companydb;
select distinct
	employeeid,
    trim(firstname) as firstname,
    trim(lastname) as lastname
from employees;

select * 
from employees
where phonenumber and email is not null;