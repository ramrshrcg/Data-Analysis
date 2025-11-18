
SELECT * from dbo.Sales

SELECT  max(totalamount) as maxamount from dbo.Sales

SELECT max(paymentmethod ) as max_payment_method from dbo.Sales
-- In SQL Server, when you apply MAX() to a text (VARCHAR) column, it returns the value that is highest in alphabetical order (lexicographically) — not the most frequent or longest value.
 
--   maximium sales in each pid
select productID, MAX(quantity) as maxquantity from dbo.Sales
GROUP by productID

-- maximum total amount for all distinct date in sale column
SELECT SaleDate, max(TotalAmount) as totalsale from dbo.Sales
GROUP by SaleDate


