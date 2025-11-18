-- not, betweeen, in operator

SELECT * from dbo.EmployeeRecords

SELECT * from dbo.EmployeeRecords 
where  not FirstName ='John' and not Salary = 60000

SELECT * from dbo.EmployeeRecords 
where  not LastName ='Miller' and not Department= 'Finance '

-- between
SELECT * from dbo.EmployeeRecords
where Salary BETWEEN 75000 and 80000

SELECT * from dbo.EmployeeRecords
where Salary>=75000 and Salary<=80000

SELECT * from dbo.EmployeeRecords
where not Salary BETWEEN 75000 and 80000

-- in
SELECT * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'IT'

SELECT * from dbo.EmployeeRecords
where Department in ('HR ', 'IT')

SELECT * from dbo.EmployeeRecords
where   Department  not in ('HR ', 'it')
