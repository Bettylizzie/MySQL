USE CompanyDB;


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(101, 'Human Resources'),
(102, 'Information Technology'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales'),
(106, 'Operations'),
(107, 'Customer Service'),
(108, 'Legal'),
(109, 'Research and Development'),
(110, 'Administration');


INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate) VALUES
(1, 'Kamau', 'Njenga', 101, '2020-01-15'),
(2, 'Wanjiku', 'Wambui', 102, '2019-06-23'),
(3, 'Omondi', 'Odhiambo', 103, '2018-08-10'),
(4, 'Atieno', 'Achieng', 104, '2021-03-11'),
(5, 'Njeri', 'Wangari', 105, '2017-05-19'),
(6, 'Mwangi', 'Kimani', 106, '2016-09-30'),
(7, 'Amina', 'Mohamed', 107, '2022-07-12'),
(8, 'Kiplagat', 'Koech', 108, '2021-12-05'),
(9, 'Muthoni', 'Gathoni', 109, '2020-11-20'),
(10, 'Otieno', 'Ochieng', 110, '2019-04-22');



INSERT INTO Projects (ProjectID, ProjectName, StartDate) VALUES
(1001, 'Project A', '2023-01-01'),
(1002, 'Project B', '2023-02-15'),
(1003, 'Project C', '2023-03-20'),
(1004, 'Project D', '2023-04-10'),
(1005, 'Project E', '2023-05-25'),
(1006, 'Project F', '2023-06-30'),
(1007, 'Project G', '2023-07-14'),
(1008, 'Project H', '2023-08-01'),
(1009, 'Project I', '2023-09-05'),
(1010, 'Project J', '2023-10-10');




INSERT INTO Assignments (AssignmentID, EmployeeID, ProjectID, Role) VALUES
(1, 1, 1001, 'Manager'),
(2, 2, 1002, 'Developer'),
(3, 3, 1003, 'Analyst'),
(4, 4, 1004, 'Designer'),
(5, 5, 1005, 'Sales Lead'),
(6, 6, 1006, 'Operations Manager'),
(7, 7, 1007, 'Customer Support'),
(8, 8, 1008, 'Security'),
(9, 9, 1009, 'Researcher'),
(10, 10, 1010, 'Admin');
