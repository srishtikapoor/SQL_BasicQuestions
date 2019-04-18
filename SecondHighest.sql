use RemoveDuplicates;
create table SecondHighest(Id int, Salary int)
insert into SecondHighest Values (1, 5000);
insert into SecondHighest Values (2, 15000);
insert into SecondHighest Values (3, 2000);
insert into SecondHighest Values (4, 25000);
SELECT TOP 1 Salary from( Select top 2 Salary from SecondHighest order by Salary desc)As Result Order by Salary Asc;
