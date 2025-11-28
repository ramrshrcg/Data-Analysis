select *  from Employees

create index IX on Employees(salary desc)

CREATE INDEX IX_A on dbo.Employees(firstname)

drop index Employees.IX_A 