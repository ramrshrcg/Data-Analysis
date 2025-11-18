
SELECT * from [dbo].[EmployeeRecords] 
where lastname ='miller' and employeeID=3

SELECT * from [dbo].[EmployeeRecords] 
where department = 'HR' or department= 'Finance'

SELECT * from [dbo].[EmployeeRecords] 
where (department = 'HR' or department= 'Finance')
and salary=60000