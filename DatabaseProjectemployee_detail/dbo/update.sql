-- update 
 SELECT * FROM dbo.Employees

 
 SELECT * into #1 from dbo.Employees

 SELECT * from #1

 UPDATE #1 
 SET Department ='HR' 
 where Department is NULL

 update #1
 set Salary= 67000, HireDate= '2020-05-24'
 where EmployeeID= 7
 