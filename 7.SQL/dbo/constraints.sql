--constraints 
--they are the certain conditon that ate to be appleid to the columns that should be followed
--conditions that can be applied on columns of table and these conditions are to be followed while insertig into the column

--1. Not NUll constrainsts

create DATABASE constrainsts

use constrainsts

-- case 1: we will have to create a new table
 CREATE TABLE test_not_null
 (
    EID int NOT null,
    Age TINYINT, 
    First_name varchar(50)
 )


select * from test_not_null

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'test_not_null'

insert into test_not_null VALUES(
    1, 23, 'James'
)

insert into test_not_null VALUES(
    null, 23, 'Rodri'
)
 
-- case 2: table already existed
-- let, we want to make the first_name column not nullable

alter TABLE test_not_null 
alter COLUMN first_name varchar(50)  not null 


insert into test_not_null VALUES(
    1, 23, null
) --Cannot insert the value NULL into column 'First_name', table 'constrainsts.dbo.test_not_null'; column does not allow nulls. INSERT fails.


--if table already contains null value then we cannot change the contstraints to not null 
alter TABLE test_not_null alter column age SMALLINT not null



------------------------------------------------------------------------------------------------------------------------------------------------

--- check constraints
--it checks for certain conditions that can be applied on the columns of the table and if the condition fails then we will not be able to insert into the table 

-- cas1: The table doesnot exists
create table test_check(
    EID int ,
    firstname varchar (50),
    age tinyint check (age>=10)
)

SELECT * FROM test_check

insert into test_check values(1, 'Roman', 20)

insert into test_check values(1, 'Dean', 8) ---


--case 2: The table exist and constraints 

update test_check  set eid =11 where eid=1

alter TABLE test_check 
add check (EID >5)

insert into test_check values(
    1, 'John', 2
)


--------------------------------------------------------------------------------------------------------------------
--unique constraints
--it ensures that the column contains no repeat value 
-- case 1 : table doesnot exist

create table test_unique(
    sid int UNIQUE,
    age int not null,
    firstname varchar (50) not null unique,
    lastname varchar(50)
)

select * from test_unique

insert into  test_unique values ( 1, 10, 'ram', 'thapa')
insert into  test_unique values ( 1, 11, 'shyam', 'thapa') -- duplicate sid=1
insert into  test_unique values (null, 10, 'hari', 'thapa') 
-- unique  constraint allows null value 
insert into  test_unique values (null, 10, 'sita', 'thapa')-- dublicate null

insert into  test_unique values (2, 15, null, 'thapa')



-- case 2: table exist 
truncate table test_unique
 --add unique to last name 
 alter table test_unique
 add unique (lastname)



 insert into  test_unique values (1, 10, 'sita', 'thapa')

insert into  test_unique values (2, 15, null, 'thapa')


------------------------------------------------------------------------

--default constraints
-- case1: table doesnot exists
create table test_default(
    orderId int PRIMARY key,
    pickup varchar(200) DEFAULT 'Store',
    phonenumber int  default 0,
    payment varchar (50) 
)
-- drop table test_default
insert into test_default  values(
    111, null, 98011234, 'esewa'
)
INSERT into test_default (orderId) VALUES (102)

SELECT * from test_default

-- case2: table exist

alter TABLE test_default
add default 'cash'  for payment

insert into test_default(orderId, phonenumber)
VALUES(120, 123123)


--------------
--primary key constraints
insert into test_default values(111, 'store', 123, 'khalti')

--foreign key
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY
);

---

CREATE TABLE sales (
    salesID INT PRIMARY KEY, 
    orderId INT,                
    total_amount INT,
    FOREIGN KEY (orderId) REFERENCES Orders(OrderID)
);

-- drop table sales
select * from sales