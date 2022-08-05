create database pen

create table a(
Id int PRIMARY KEY,
Enam varchar(20) UNIQUE,
moble int,
)
select*from a
insert into a values(1,'manjunath','98765432')
insert into a values(2,'mou','98765432')
insert into a values(3,'man','12345678')
update a set id=1 where id=10
TRUNCATE table a
drop table a



create table ab(
Id int PRIMARY KEY,
Enam varchar(20) UNIQUE,
moble int default 1,
)
select*from ab
insert into ab values(1,'manjunath',1)
insert into ab values(2,'mou',1)
insert into ab values(3,'man',3)
update ab set id=1 where id=10

delete from ab where id=1

alter table ab Modify id=Eid
alter table ab add age int

select*from ab
update ab set age=19 where id=2
update ab set age=20 where id=3

update ab set id=1 where id =10

update ab set Id = 1 where Id = 3
select Id as EID, Enam as EName from ab
update ab set ID=Eid where  COLUMN EId = Id  
insert into ab values(3,'MaM',2,21)
insert into ab values(4,'mom',3,31)

select *from ab where Enam  Like '_a%' 
select *from ab where Enam  not Like '_a%' 
select Id  from ab where id= 2


insert into ab values(8,'Hello',12,20)
select DISTINCT age from ab
select *from ab where age in( 1,20)
select *from ab where id>2






