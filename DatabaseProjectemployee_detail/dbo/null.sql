-- nulll operator
SELECT * from dbo.Employees

-- null values are thoses values which are left blank during record entry

insert into dbo.Employees
VALUES(8, 'jay', '', 'IT', 73000, '2022-04-04')


insert into dbo.Employees
VALUES(9, 'babuta', 'jee', '0', 44000, '2022-04-04')

-- select * FROM dbo.Employees where Department = null

select * FROM dbo.Employees where Department is NULL

select * FROM dbo.Employees where Department is not NULL