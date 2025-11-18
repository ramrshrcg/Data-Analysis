--having clause
SELECT * from dbo.Sales

--having clasuse is similar to where clause but 
--where is uuse for individual rows but having clause is use for group by clause



--total sales, average sales, total quantity , average quantity for each disticnt quantity

select productid, sum(TotalAmount) as [total_sale_amt],
AVG(TotalAmount) [avg_sale_amt], 
sum(Quantity)[total_quantity],
AVG(Quantity)[avg_qty]
from dbo.Sales
GROUP by ProductID 
HAVING sum(TotalAmount) <700 and sum(Quantity)=21

/*
select productid, sum(TotalAmount) as [total_sale_amt],
AVG(TotalAmount) [avg_sale_amt], 
sum(Quantity)[total_quantity],
AVG(Quantity)[avg_qty]
from dbo.Sales
GROUP by ProductID 
WHERE sum(TotalAmount) <700 and sum(Quantity)=21
*/

--difference between where and having clasuse

select * from dbo.Sales

--filter total amount less than 160
select * from dbo.Sales where TotalAmount <=160


select * from dbo.Sales


--for each product category , find total sales, filer sum of sales <=700
select ProductID, sum(TotalAmount)[sum of  sales] from dbo.Sales 
GROUP by ProductID 
having SUM(TotalAmount)<=700

select  sum(TotalAmount)[sum of  sales] from dbo.Sales 
where TotalAmount<=161
GROUP by ProductID
HAVING sum(TotalAmount ) >=250