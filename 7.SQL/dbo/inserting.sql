
create DATABASE studentDB

create table Student_details (
    students_name NVARCHAR(50),
    Gender char(1),
    Age  TINYINT,
    Event_Date DATE,
    Distace_covered decimal(5, 2),
    )

-- drop table Student_detais



INSERT into Student_details(students_name,Gender,Age,Event_Date,Distace_covered) 
VALUES('Ramesh', 'M', 23, '2024-04-23', 123.11)

insert into Student_details VALUES ('Hari', 'M', 22, '2023-04-13', 111.11)

SELECT * from Student_details


INSERT into Student_details(students_name,Gender,Age,Event_Date,Distace_covered) 
VALUES('Mamesh', 'M', 23, '2024-04-23', 123.11),
    ('Ganseh', 'M', 24, '2024-05-03', 110.11)
