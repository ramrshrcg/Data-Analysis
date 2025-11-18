-- sum, average, groupby ....
SELECT * from dbo.sales

--sum of quantity column 
select sum(quantity) as total_quantity from dbo.Sales

select sum(quantity) as total_quantity, sum(TotalAmount) as total_total_amount  from dbo.Sales

select  AVG(quantity) as avg_qty, sum(Quantity)[total_qty] from dbo.Sales

select productid, AVG(quantity) as avg_qty, sum(Quantity)[total_qty] from dbo.Sales
GROUP by ProductID


select productid, AVG(quantity) as avg_qty, sum(Quantity)[total_qty], AVG(totalamount)[avg_amt], sum(totalamount)[sum_amt] from dbo.Sales
GROUP by ProductID 

-- similarly to min, max fn the sum and average also ignore the null values 

 --sum of amount, qty, avg of qty, amt and qty for distinct product id and store

 SELECT productid, storeid, 
 sum(quantity) [total_qty],
 avg (quantity)[avg_qty],
 sum(totalamount) [sum_amt],
 avg(totalamount) [avg_amt]
 from dbo.sales
 GROUP by storeid,ProductID


--count
SELECT * from dbo.Sales

select count( *)[no of rows] from dbo.Sales

select count(PaymentMethod)[no of rows] from dbo.Sales

SELECT count( distinct productid) [products] from dbo.sales

SELECT count( distinct PaymentMethod) [paymentmethod] from dbo.sales

SELECT paymentmethod, count( distinct PaymentMethod) [paymentmethod] from dbo.sales
GROUP by PaymentMethod

SELECT paymentmethod, count(  PaymentMethod) [paymentmethod] from dbo.sales
GROUP by PaymentMethod
 

SELECT paymentmethod, count(  *) [paymentmethod] from dbo.sales
GROUP by PaymentMethod

SELECT * from dbo.sales
--group by payment methods
select paymentmethod, sum(totalamount) as [total_amt_by_payment_method] from dbo.sales
GROUP by paymentmethod

select salespersonid, sum(totalamount) as [total_amt_by_payment_method] from dbo.sales
GROUP by salespersonid

select saledate, sum(totalamount) as [total_amt_by_payment_method] from dbo.sales
GROUP by saledate

