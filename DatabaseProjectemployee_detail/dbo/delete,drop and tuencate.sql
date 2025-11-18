--delete, drop and truncate table 
 SELECT * from dbo.Employees

 SELECT * into #2 from dbo.Employees

 select * from #2

 delete from #2
 WHERE LastName=''  or Department ='0'

--  truncate delete all the records but the sturucture of table still remains untouched
TRUNCATE table #2

-- /DROP table and structure removed
drop TABLE #2

-- delete statement is used inorder to remove certain column using where and conditions
-- but if we use delete without any where condition then the all the records wilbe removed but the table strucutre remains untouched
