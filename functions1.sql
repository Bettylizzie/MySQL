use companydb;
DELIMITER $$

CREATE FUNCTION squared(x INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN x * x;
END$$

DELIMITER ;

select squared(3);

SELECT employeeid, squared(employeeid) AS employeeidsquared
FROM employees;

DROP FUNCTION IF EXISTS squared;
select squared(3);

delimiter $$
CREATE PROCEDURE get_high_salary_employees(IN min_salary DECIMAL(10,2))
BEGIN
    SELECT employeeid, firstname, lastname, salary
    FROM employees
    WHERE salary > min_salary;
END$$

DELIMITER ;

CALL get_high_salary_employees(50000);

delimiter $$
CREATE FUNCTION hum( min_salary DECIMAL(10,2))
RETURNS VARCHAR(1000)
deterministic
begin
    return(SELECT salary
    FROM employees
    WHERE salary > min_salary);
end $$
delimiter ;

select * hum;
