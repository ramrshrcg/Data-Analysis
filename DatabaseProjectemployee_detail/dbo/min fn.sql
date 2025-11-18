-- min max 
select * from dbo.Sales


select min(quantity) as min_quantity from dbo.Sales

select min(saledate) as recent_sale from dbo.sales

SELECT min(paymentmethod) as min_pay from dbo.sales 
-- in sql min return the small chacter as a<b<c so min () return  a 
-- and  ignore null values 


SELECT storeid, min(totalamount) as min_amount from dbo.sales
GROUP by storeid
