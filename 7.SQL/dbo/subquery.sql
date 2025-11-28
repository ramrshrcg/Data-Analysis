

SELECT * from Customers

SELECT * from Orders

select customer_name from Customers 
where  customer_id in ( 
    select DISTINCT customer_id from orders 
    where order_date between '2024-08-01' and '2024-08-31'
)


select customer_name from Customers 
where  customer_id in ( 
    select DISTINCT customer_id from orders 
    where order_date not  between '2024-08-01' and '2024-08-31'
)

SELECT * from Customers
where customer_id in (
    select customer_id from orders where amount >=120
)

select * from employees 

select * from employees 
where salary > (
    select AVG(Salary) from  Employees

)

select AVG(Salary)[avg salary] from  Employees
