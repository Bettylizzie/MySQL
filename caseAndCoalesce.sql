use companydb;
select 
employeeid,
firstname,
lastname,
departmentid,
case departmentid
	when 101 then 'HR'
    when 102 then 'IT'
    when 103 then 'Finance'
    else 'Other'
  end as departmentName
from employees;

-- searched case
select 
employeeid,
firstname,
lastname,
salary,
case
	when salary <50000 then 'Low'
    when salary between 50000 and 70000 then 'medium'
    else 'high'
  end as salary_level
from employees;

select
 departmentid,
 sum(case
    when departmentid=101 then salary
    else 0
    end
 ) as spent_101,
 sum(case
     when departmentid=102 then salary
    else 0
    end
 ) as spent_102,
  sum(case
     when departmentid=103 then salary
    else 0
    end
 ) as spent_103
 from employees
 group by departmentid;
 
 alter table employees add column phoneNumber varchar(20);
 
 select
 employeeid,
 firstname,
 lastname,
 coalesce(phoneNumber, 'No phone number') as contactNumber
 from employees
 limit 5;
 
 -- combining columns
 alter table employees add column email varchar(100);
 alter table employees add column personal_email varchar(100);
 
 
 select
 employeeid,
 firstname,
 lastname,
 coalesce(email, personal_email,'No email available') as emailAddress
 from employees;
 
alter table departments add column email varchar(100);
alter table departments add column phonenumber varchar(100);
 
 select departmentName,
 case departmentid
  when 101 then coalesce(phonenumber,'No phone')
  when 102 then coalesce(email,'No email')
  else 'Contact admin'
end as contact_info
from departments;
 