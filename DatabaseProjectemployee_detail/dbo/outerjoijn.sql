--full outer join 
 SELECT * from table1 
 SELECT * from table2

 SELECT * from table1 full OUTER JOIN table2 on  table1.c1= table2.c1 

 -- inner join + right only+ left only 

 SELECT * from table1 full OUTER JOIN table2 on  table1.c2= table2.c3

 ---------------------------------

 --self join
 SELECT * from table1

--  SELECT * from table1  as a inner  join table1 on table1.c1= table1.c1

 SELECT * from TABLE1 as a inner  join table1 as b on a.c1= b.c1
