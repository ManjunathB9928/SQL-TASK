create table okok(
id int identity(1,1),
ename varchar(20),
marks int,
)
select *from okok
insert into okok values('Manjunath',10)
insert into okok values('Ironman',8)
insert into okok values('Thor',7)
insert into okok values('Hulk',9)
insert into okok values('jack sparrow',5)

select AVG(marks) as 'average marks' from okok
select max(marks) as 'maximum marks' from okok
select min(marks) as 'minium marks' from okok
select sum(marks) as 'sum of marks' from okok
select count(marks) as ' count' from okok

select *from okok order by marks,id
select *from okok order by marks desc

create synonym ok for okok

create table grade(
mark int,
grd varchar(4),
)
select *from grade
insert into grade values(10,'pass')
insert into grade values(9,'pass')
insert into grade values(8,'pass')
--insert into grade values(7,'ok')
insert into grade values(5,'BYE')

select id,ename,marks,grd from ok inner join grade on mark = marks
select id,ename,marks,grd from okok left join grade on mark = marks
select id,ename,marks,grd from okok right join grade on mark = marks
select id,ename,marks,grd from okok full join grade on mark = marks

create view ko
as 
select id,ename,marks,grd from ok inner join grade on mark = marks
select * from ko


