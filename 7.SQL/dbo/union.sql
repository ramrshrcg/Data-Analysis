

create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)



create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)

-- drop TABLE append1

SELECT * from append1
SELECT * from append2

--union 
-- a U b

select * from append1 
union 
select * from append2

select * from append1 
union ALL
select * from append2


-- no of colums need to be same 
-- data types of selected column need to be same 
-- and order need to be same 
select  c1, c2, c3 from append1 
union 
select c1, c2, c3 from append2
 
---wrong

select  c1, c2, c3 from append1 
union 
select c3, C2, c1 from append2