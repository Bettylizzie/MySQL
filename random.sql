select count(distinct cust_name) from customer
where grade>1;

select city, max(grade) from customer
group by city;

row_number() over (partition by departmentid order by lastname) as row_num
