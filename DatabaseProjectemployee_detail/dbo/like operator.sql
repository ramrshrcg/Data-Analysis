
-- Create Employees_us table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_us (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');


SELECT * from Employees_US

--wildcars
--%(0, 1 or  mutiple numbers) and _ (represent only 1 numbre)

--questions
--1. find the employee whose last name starts with 's'

select * from Employees_US
where LastName LIKE 's%'

--2. find the employee whose  first name ends with 'a'
select * from Employees_US where FirstName like '%a'

--3. find the employees whose department likes 'eng'
select * from Employees_US where Department like '%eng%'

--4. find the name of employee whose last name is exactly 5 characeter length
SELECT * from Employees_US where LastName like '_____'

--5. find the employee whose first name starts with 'c or d'
SELECT * from Employees_US where FirstName like '[cd]%'

--6. find those employee whose last name contain 'son'
SELECT * from Employees_US where LastName like '%son%'

-- 7. find the employee whose firstname contain 'i '  in the second character
select * from Employees_US where firstname like '_i%'

--8.  find employee whose last name starts with any latter betn a to l 
SELECT * from Employees_US WHERE LastName like  '[a-l]%'  

--9. find employees whose firstname doesnot contains 'o'
SELECT * from Employees_US where FirstName not like '%o%'

--10. find the employees whose last name ends  with 'a' and exactly 5 char length 
select * from Employees_US where LastName like '____a'

--11. find the employee whose departments starts with 'mar' and ends with 'ing'
SELECT * from Employees_US where Department like  'mar%ing'

--12. find the employees where firstnamem has 'a' in 3rd position
select * from Employees_US WHERE FirstName like '__a%' 

--13. find the employee whose last name starts with 'Br' or "Dl"
SELECT * from Employees_US where LastName LIKE 'br%' or LastName like 'bl%'

--14. find the employee whose first name starts with vowel 
select * from employees_us WHERE FirstName like '[aeiou]%'

--15. find the employee whose firstname doesnot start with consonent
select * from employees_us where FirstName  not like '[^aeiou]%'
select * from employees_us where FirstName not  like '[bcdfghjklmnpqrstvwxyz]%'


--16. find the employee whose firstname  starts with consonent
select * from employees_us where FirstName   like '[^aeiou]%'
select * from employees_us where FirstName   like '[bcdfghjklmnpqrstvwxyz]%'
