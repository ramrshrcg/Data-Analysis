--common table expression (CTE)

SELECT * from Employees

SELECT * into #temp1 from Employees


SELECT * from #temp1


---ex1
with cte as (
    SELECT * from #temp1 
)
SELECT * from cte


---ex 2
with  test_cte as(
    SELECT employeeid, salary, hiredate from #temp1
)
SELECT * from test_cte


--ex3 
with cte1 as(
    select * from #temp1 where employeeid in (2, 3, 4, 5)
)
update #temp1 set EmployeeID= 101 where EmployeeID in (select distinct EmployeeID from cte1)

select * from #temp1 

----ex 4
with cte2 as (
    select * from #temp1 where EmployeeID=1
)
delete from #temp1 where employeeid in ( select distinct employeeid from cte2)
SELECT * from #temp1