-- window function
--1. row_number
--2. rank
--3. dense_rank  functions

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);

select * from Students

select * , ROW_NUMBER() OVER(order by marks desc) as [row no]
from students

select * , RANK() over(order by marks desc) as [rank]
from Students

select * , dense_rank() over(order by marks desc) as [dense rank]
from Students

------
------
--examples: to select the rank of each student on each subjenct

SELECT *, ROW_NUMBER() OVER(partition by subject order by marks desc) as [row_number]
from students

SELECT *, ROW_NUMBER() OVER(partition by student_name order by marks desc) as [row_number]
from students

select *, rank() over (PARTITION by student_name order by marks desc) as [rank]
 from students

 select *, dense_rank() over (PARTITION by subject order by marks desc) as [dense_rank]
 from students