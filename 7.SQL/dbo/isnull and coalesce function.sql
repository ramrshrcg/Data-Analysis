
-- is null function
--coalesce function

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);


select * from Customers

select * , 
ISNULL(Email, 'unknown') as [final_email]
from Customers


--coalease function search for the first non null value and return it 
--COALESCE ( expression1, expression2, expression3, ... )
 
select * from Customers

select firstname, LastName, coalesce(email, PhoneNumber, Address, 'no  infornation provided') as [primary contact] from Customers