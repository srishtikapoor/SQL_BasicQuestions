use RemoveDuplicates
create table #Info2(Id int, Name varchar(20))
Insert into #Info2 Values(505, 'shanker kumar');
Insert into #Info2 Values(505, 'xyz');
Insert into #Info2 Values(404, 'shristi kapoor');
delete from #Info2 where Id in(select Id from #Info2 group by Id having  count(*) >1);
select * from #Info2;