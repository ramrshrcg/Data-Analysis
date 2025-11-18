-- types of join 
-- 1. inner join 
-- 2, outer JOIN
-- 3. left JOIN 
-- 4. right join 
 

-- inner join 
 
 

use [Sales Database]

--Creating Table1 & insertinting records in Table1
create table table1 (C1 int, C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating Table2 & insertinting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')


 SELECT * from table1 INNER JOIN table2 on table1.c1= table2.C1

 SELECT table1.c1, table1.c2, table2.c3 from table1 INNER JOIN table2 on table1.c1= table2.C1
   -- default the join is innerjoin 

   -- left join
   select * from table1
   SELECT * from table2

 SELECT table1.c1, table1.c2, table2.c3 from table1 LEFT JOIN table2 on table1.c1= table2.C1



 --right join 
 SELECT table2.c1, table2.c3, table1.c2 from table1 RIGHT JOIN table2 on table1.c1= table2.C1

 --left anti and right anti joint 
 --left anti joint
 SELECT * from table1 LEFT JOIN table2 on table1.c1= table2.C1 where table2.C3 is  NULL

 SELECT * from table1 LEFT JOIN table2 on table1.c1= table2.C1 where table2.C3 is NOT NULL


--right anti joint

select * from table1 RIGHT JOIN table2 on table1.c1= table2.c1 where table1.C2 is  null  