create database advancesqlquestions
use advancesqlquestions

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, EmployeeName, Salary)
VALUES
(1, 'Alice Smith', 70000.00),
(2, 'Bob Johnson', 85000.00),
(3, 'Carol White', 95000.00),
(4, 'David Brown', 60000.00),
(5, 'Eve Davis', 75000.00),
(6, 'Frank Miller', 90000.00),
(7, 'Grace Lee', 80000.00),
(8, 'Hannah Clark', 62000.00),
(9, 'Ivy Harris', 74000.00),
(10, 'Jack Lewis', 98000.00);


select * from Employees
--2nd highest salary
select max(salary) [2nd highest salary] from Employees where salary<
(select max(salary) from Employees)


---3rd highet salary
select max(salary)[3rd highest salary] from Employees where salary<
(select max(salary) [2nd highest salary] from Employees where salary<
(select max(salary) from Employees))



--using common table expression
with cte as (
    select * ,dense_rank() over (order by salary desc)[dr] from Employees
)
select salary[2nd highest salary] from cte where dr=2

--3rd highest
with cte as (
    select * ,dense_rank() over (order by salary desc)[dr] from Employees
)
select salary[3rd highest salary] from cte where dr=3