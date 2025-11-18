--  comment 
/* comment
comment 
comment */

select * from dbo.Employees -- 9 records

-- to see only top records
--like top 2 

SELECT top 2 * from dbo.Employees
select top 2  EmployeeID, FirstName, Salary from dbo.Employees