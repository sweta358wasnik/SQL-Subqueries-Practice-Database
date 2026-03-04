Create database learning_subqueries;
use learning_subqueries;
Create table Employees(
EmployeeID INt PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
DepartmentID INT,
JoinDate Date,
Salary DECIMAL(10, 2)
);
Create table Departments (
DepartmentID INT primary key,
DepartmentName varchar(100)
);
create  table Orders(
OrderID INT PRIMARY KEY,
EmployeeId INT,
OrderDate DATE,
TotalAmount Decimal(10,2),
foreign key (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE table Products(
ProductId INt Primary Key,
ProductName varchar(100),
Category varchar(50),
Price DECIMAL(10,2)
);
Create table Customers(
CustomerId Int primary key,
CustomerName varchar(100),
ContactName varchar(100),
Country varchar(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),
(2, 'IT'),
(3, 'HR');

-- Employees (15 Indian employees)
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, JoinDate, Salary) VALUES
(101, 'Anushka', 'Dharme', 1, '2020-01-15', 55000.00),
(102, 'Harshal', 'Pimpalghare', 2, '2019-03-12', 65000.00),
(103, 'Prachee', 'Meshram', 1, '2021-06-01', 52000.00),
(104, 'Prashik', 'Meshram', 3, '2018-11-25', 60000.00),
(105, 'Pritish', 'Adak', 2, '2022-04-17', 71000.00),
(106, 'Riya', 'Potwar', 1, '2020-07-23', 48000.00),
(107, 'Shreya', 'Chanore', 2, '2021-01-10', 68000.00),
(108, 'Shweta', 'Wasnik', 3, '2020-09-05', 59000.00),
(109, 'Sumit', 'Patel', 1, '2019-12-19', 57000.00),
(110, 'Utkarsh', 'Deshmukh', 2, '2022-02-08', 72000.00),
(111, 'Vineet', 'Makeshwar', 1, '2021-08-30', 53000.00),
(112, 'Riya', 'Manusmare', 3, '2020-10-12', 62000.00),
(113, 'Sahil', 'Khan', 2, '2023-01-15', 75000.00),
(114, 'Trupti', 'Wasade', 1, '2022-06-04', 51000.00),
(115, 'Vaibhav', 'Pisudde', 3, '2021-03-09', 61000.00);

-- Products (10)
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1, 'Notebook', 'Stationery', 45.00),
(2, 'Pen', 'Stationery', 10.00),
(3, 'Mouse', 'Electronics', 450.00),
(4, 'Keyboard', 'Electronics', 700.00),
(5, 'USB Cable', 'Accessories', 150.00),
(6, 'Water Bottle', 'Household', 120.00),
(7, 'Mobile Charger', 'Electronics', 500.00),
(8, 'Stapler', 'Stationery', 60.00),
(9, 'Laptop Stand', 'Accessories', 800.00),
(10, 'Coffee Mug', 'Household', 200.00);

-- Customers (5)
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country) VALUES
(1, 'Tata Enterprises', 'Ramesh Iyer', 'India'),
(2, 'Reliance Retail', 'Geeta Patel', 'India'),
(3, 'Infosys Ltd', 'Vinod Sharma', 'India'),
(4, 'Wipro Solutions', 'Sonal Agarwal', 'India'),
(5, 'HCL Technologies', 'Naveen Rao', 'India');

-- Orders (50 random orders by employees)
INSERT INTO Orders (OrderID, EmployeeID, OrderDate, TotalAmount) VALUES
(1, 101, '2023-01-10', 1200.00),
(2, 102, '2023-01-15', 850.00),
(3, 103, '2023-01-20', 450.00),
(4, 104, '2023-01-25', 2300.00),
(5, 105, '2023-02-01', 950.00),
(6, 106, '2023-02-05', 300.00),
(7, 107, '2023-02-10', 1600.00),
(8, 108, '2023-02-15', 1800.00),
(9, 109, '2023-02-20', 410.00),
(10, 110, '2023-02-25', 920.00),
(11, 111, '2023-03-01', 600.00),
(12, 112, '2023-03-05', 790.00),
(13, 113, '2023-03-10', 1100.00),
(14, 114, '2023-03-15', 980.00),
(15, 115, '2023-03-20', 1230.00),
(16, 101, '2023-03-25', 700.00),
(17, 102, '2023-04-01', 650.00),
(18, 103, '2023-04-05', 770.00),
(19, 104, '2023-04-10', 1900.00),
(20, 105, '2023-04-15', 850.00),
(21, 106, '2023-04-20', 300.00),
(22, 107, '2023-04-25', 1350.00),
(23, 108, '2023-05-01', 1440.00),
(24, 109, '2023-05-05', 1280.00),
(25, 110, '2023-05-10', 1140.00),
(26, 111, '2023-05-15', 1190.00),
(27, 112, '2023-05-20', 1580.00),
(28, 113, '2023-05-25', 650.00),
(29, 114, '2023-06-01', 750.00),
(30, 115, '2023-06-05', 980.00),
(31, 101, '2023-06-10', 510.00),
(32, 102, '2023-06-15', 1290.00),
(33, 103, '2023-06-20', 970.00),
(34, 104, '2023-06-25', 870.00),
(35, 105, '2023-07-01', 1560.00),
(36, 106, '2023-07-05', 1340.00),
(37, 107, '2023-07-10', 890.00),
(38, 108, '2023-07-15', 1090.00),
(39, 109, '2023-07-20', 1160.00),
(40, 110, '2023-07-25', 1010.00),
(41, 111, '2023-08-01', 1190.00),
(42, 112, '2023-08-05', 1220.00),
(43, 113, '2023-08-10', 760.00),
(44, 114, '2023-08-15', 830.00),
(45, 115, '2023-08-20', 940.00),
(46, 101, '2023-08-25', 720.00),
(47, 102, '2023-09-01', 820.00),
(48, 103, '2023-09-05', 1190.00),
(49, 104, '2023-09-10', 1050.00),
(50, 105, '2023-09-15', 1110.00);

select* from departments;
select* from employees;
select* from orders;
select* from products;
select* from customers;
-- single row subquery
Select FirstName
From Employees
Where salary = (select MAX(Salary) From Employees);
-- Multi row subquery
Select FirstName, LastName
from Employees
Where DepartmentId IN (select departmentID
FROM Departments
Where DepartmentName Like 's%');
-- Multi coloumn subquery
Select EmployeeID, FirstName
From Employees
Where (DepartmentId, salary) In (select departmentID, Max(salary)
From Employees
GROUP BY DepartmentID);
-- corelated subque  
Select e.FirstName, e.LastName, e.salary
FROM Employees e
WHERE e.Salary > (select AVG(salary)
FROM Employees
Where DepartmentID = e.DepartmentID);
-- list departments that have more than 5 employees
Select DepartmentName
From Departments
Where DepartmentID IN (select DepartmentID
FROM Employees
Group by DepartmentID
Having COUNT(*) > 5);
-- Find employees who joined after the earliest join date in the company
Select FirstName, LastName, Joindate
from Employees
Where JoinDate > (Select Min(JoinDate) FROM Employees);
-- find employees who have not palced any orders
Select FirstName, LastName
From Employees
Where EmployeeID NOT IN (select EmployeeID FROM Orders);
-- list the products whose prce is hagher than average price of all products
Select ProductName, Price
From Products
Where Price > (select AVG(price) FROM products);
-- Find employees who have placed with a total amount greater than 2000
Select FirstName, LastName
From Employees
Where EmployeeID IN (select EmployeeID
FROM Orders
Where TotalAmount > 2000);
-- 
Select DepartmentName
from Departments
Where DepartmentID = (select DepartmentID
From Employees
Where salary = (Select MAX(Salary) from Employees));
-- 
Select FirstName, LastName
From Employees
Where DepartmentID IN (select DepartmentID
from Departments
Where DepartmentName LIKE '%Sales');
-- find orders placed by employees in the 'Sales' departments
Select OrderID, OrderDate, TotalAmount
From Orders
Where EmployeeID IN (select EmployeeID
From Employees
Where DepartmentID = (select DepartmentID
From Departments
where DepartmentName = 'Sales'));
-- find employees who have placed orders with the highest total amount
Select FirstName, LastName
From Employees
Where EmployeeID IN (Select EmployeeID
FROM Orders
Where totalAmount = (select MAX(TotalAmount) FROM Orders));
-- list employees with the same first name as someone earning above 70000

Select FirstName, LastName
FROM Employees
Where firstName In (select FirstName
FROM Employees
Where Salary > 70000);
-- Find the employees(s) with the lowest salary in the company
Select FirstName, LastName, Salary
from Employees
Where Salary = (select MIN(Salary)
From Employees);
-- list employees who have joined before the 1st order date in the Order table
Select FirstName, LastName, JoinDate
from Employees
Where JoinDate > (select MIN(OrderDate)
from Orders);
-- find the names of employees who palced the most number of orders
Select FirstName, LastName
 FROM Employees
 Where EmployeeID = (select EmployeeID
 From Orders
 GROUP BY EmployeeID
 ORDER BY COUNT(orderID) DESC
 LIMIT 1);
 -- 
