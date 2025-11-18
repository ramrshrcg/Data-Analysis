-- insert into
SELECT * from dbo.Employees

INSERT into dbo.Employees 
VALUES (6, 'Ram','Ghimire', 'IT',55000, '2020-01-15')

insert into dbo.Employees (employeeID, firstname, lastname)
VALUES(7, 'hari', 'thapa')

select * from INFORMATION_SCHEMA.COLUMNS
where table_name ='Employees'