

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(50),
    Rating DECIMAL(3, 1)
);

-- Insert data into the Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);

SELECT * from Products

--example 1
--add a column to categorize each product into categorise into high, medium and low
SELECT * ,
CASE 
    when price >500 then 'High'
    when  price  <=500 and price >= 200 then 'Medium'
    else 'Low'
end as [Price Category]
 from products 

 --example 2
 -- provide priority to each category and sort the data according to that priority

 SELECT *  from products 
 ORDER by 
 case 
    when category in ('Electronics') then 1
    when category in ('Furniture') then 2
    else 3
END


--------------------------------------------------------------------------------
--nested case statement 
--categorize into different groups

select * from  Products

--group the data based on column category  and price into diffferernt categories in affordable and premium 
select *,
case 
    when Category= 'Electronics' then 
        case 
            when price >=30 then 'Premium'
            else 'Affordable'
        end
    when Category= 'Furniture' then 
        case
            when price>= 250 then 'Premium'
            else 'Afffordable'
        end 
    else 
        case 
            when price >=25 then 'Premium '
            else 'Affordable'
        END
end as [Groups]
from Products

------------

select *,
case 
    when Category= 'Electronics' then 
        case 
            when price >=30 then 'Premium'
            else 'Affordable'
        end
    when Category= 'Furniture' then 
        case
            when price>= 250 then 'Premium'
            else 'Afffordable'
        end 
    when Category = 'Accessories' then 
        case 
            when price >=25 then 'Premium '
            else 'Affordable'
        END
end as [Groups]
from Products