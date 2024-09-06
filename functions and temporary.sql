create database JMcompany;
use JMcompany;

create table employees ( firstname varchar(60),lastname varchar(60),
employeeID int primary key,
salary int, Hiredate Date, DepartmentID int);

create table products(ProductID int primary key, ProductName varchar(50), Sale_amount int);
INSERT INTO Products (ProductID, ProductName, Sale_amount) VALUES
(1001, 'Project A', 3000),
(1002, 'Project B', 5000),
(1003, 'Project C', 9000),
(1004, 'Project D', 2500),
(1005, 'Project E', 2900),
(1006, 'Project F', 3000),
(1007, 'Project G', 10000),
(1008, 'Project H', 8000),
(1009, 'Project I', 7000),
(1010, 'Project J', 6500);


insert into sales_table(sale_id,product_id,sale_amount)
values (101, 1001, 3000),
(102, 1002, 5000),
(103, 1003, 9000),
(104, 1004, 2500),
(105, 1005, 2900),
(106, 1006, 3000),
(107, 1007, 10000),
(108, 1008, 8000),
(109, 1009, 7000),
(110, 1010, 6500);

-- Create function to get emp full name
DELIMITER //
CREATE FUNCTION fnGetFullName(FirstName VARCHAR(50), LastName VARCHAR(50))
RETURNS VARCHAR(101) DETERMINISTIC
BEGIN 
    RETURN CONCAT(FirstName, ', ', LastName);
END;//

DELIMITER ;

SELECT fnGetFullName(firstname, lastname) AS Full_Name
FROM employees;


alter function DELIMITER //
CREATE FUNCTION fnGetFullName(FirstName VARCHAR(50), LastName VARCHAR(50))
RETURNS VARCHAR(101) DETERMINISTIC
BEGIN 
    RETURN CONCAT(FirstName, ' ', LastName);
END;//

DELIMITER ;

create table sales_table(
sale_id INT primary key,
    product_id INT,
    sale_amount DECIMAL(10, 2)

);

CREATE TEMPORARY TABLE temp_sales (
    sale_id INT,
    product_id INT,
    sale_amount DECIMAL(10, 2)
);

alter table sale_table add column sale_date Date;

INSERT INTO temp_sales (sale_id, product_id, sale_amount)
SELECT sale_id, product_id, sale_amount
FROM sales_table
WHERE sale_amount BETWEEN 3000 AND 1000;

SELECT * FROM temp_sales;

DELIMITER //
create procedure salary_count(minsalary decimal (10,2))
begin
select employeeID,firstname,salary 
from employees
where salary > minsalary;
end;//
delimiter //

CALL Salary_count(50000.00);

drop procedure salary_count;

DELIMITER //
create procedure salary_count(minsalary decimal (10,2))
begin
select employeeID,firstname,salary 
from employees
where salary > minsalary;
end;//
delimiter //

CALL Salary_count(50000.00);

select * from employees;
set sql_safe_updates=0;
UPDATE Employees
SET Salary = FLOOR(RAND() * 100000) + 1
WHERE Salary IS NULL OR Salary = 0;


