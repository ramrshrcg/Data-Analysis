---lead function 

create database [Profit DB]

use [profit db]

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);


select * from ProfitData

--to add the profit for the next motnth 

select *,
LEAD( Profit) OVER(PARTITION by Product order by MonthNumber) as [next_month]
 from ProfitData


select *,
LEAD( Profit) OVER(PARTITION by Product order by MonthName) as [next_month]
from ProfitData


select MonthNumber, MonthName , sum(profit) [total profit],
lead(sum(profit)) OVER (order by MonthNumber) as [next_month_profit]
from ProfitData 
group by MonthNumber, MonthName 
order by MonthNumber


-----------------------------------------------------------------------------------------------

--lag function 
--lag() over( -.-.-.-  )

select * from ProfitData

-- to find the column that shows previous month profit 

select * ,
lag(profit) over( PARTITION by Product order by MonthNumber) as [previous month profit ]
from ProfitData


select * from ProfitData


select monthname,monthnumber,  sum(profit) [total profit],
lag(sum(profit)) over (PARTITION by monthname order by monthnumber) as [previous_month_profit]
from ProfitData
GROUP by  MonthNumber,monthname
order by monthnumber