CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');
 

 select *,
 FIRST_VALUE(Salary) OVER(order by Salary desc) as [min salary ]
  from EmployeeSalaries


 select *,
 FIRST_VALUE(EmployeeName) OVER(order by Salary desc) as [min salary ],
 FIRST_VALUE(Salary) OVER(order by Salary desc) as [min salary ]
  from EmployeeSalaries

select * 
, FIRST_VALUE(EmployeeID) over (partition by  Department order by salary)
, FIRST_VALUE(Salary) over (partition by  Department order by salary)
from EmployeeSalaries


--------------------------------------------- ----------

--💡 The Importance of the Window Frame ClauseBy default, the window frame for LAST_VALUE() usually extends only from the beginning of the partition up to the current row (RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW).If you use the default frame, LAST_VALUE() will always return the current row's value until the end of the partition is reached, which is usually not the desired result.To make LAST_VALUE() correctly reference the absolute last row of the partition, you must explicitly set the window frame to include all rows up to the end of the partition:S BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING -- This line is key!
-- )
--LAST_VALUE ( column ) OVER (
--     PARTITION BY group_column
--     ORDER BY sort_column
--     ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING -- This line is key!
-- )

--incorrect query
select * 
,last_value(EmployeeName) over ( order by salary desc)
from EmployeeSalaries

--correct
select * 

,last_value(EmployeeName) over ( order by  salary desc ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING )
from EmployeeSalaries