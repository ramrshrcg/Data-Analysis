--copying from table to table (existing to new one)
-- Case 1: the  new table  doesnot exists
-- case 2: The new table may exist 

--case 1: 
SELECT * from dbo.Sales 
SELECT * from Sales 

--- this will create a exact copy from sales table to the new_table1. The structure and record  will remains the same  as that of old table 
---All columns are copied
select * into new_table1 from dbo.Sales 
select * from new_table1

--for copying only some part of table eg. 2 columns 
drop table new_table1
select ProductID, Quantity into new_table1 from Sales
SELECT * from new_table1

-- case 2: the structure/table already exists
select top 0 * into new_table2 from sales --to copy the structure no data 

select * FROM new_table2

insert into new_table2  select * from Sales


-- copying certains columns 
select * into new_table3 from sales where 1=0 -- to copy only structure
select * FROM new_table3

insert into new_table3 (ProductID, SaleDate) SELECT  ProductID, SaleDate from Sales
select * FROM new_table3


insert into new_table3 (Quantity, TotalAmount) SELECT  Quantity, TotalAmount from Sales 

INSERT INTO new_table3 (Quantity, TotalAmount, CustomerID)
SELECT Quantity, TotalAmount, CustomerID
FROM Sales;

drop TABLE new_table3




