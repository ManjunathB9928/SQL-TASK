create database pro

create table bro(
EMPId Int primary key,
EMname varchar(20) unique not null,
EDesignation varchar(20) default 'software enginer',
mobil int not null,
salary int not null,
)
insert into bro values(1,'Manjunath','Test Enginer','98749284','12331')
insert into bro values(2,'Hulk','developer','3124324','2331')
insert into bro values(3,'ironman','data analyst','1234132','12')
insert into bro values(4,'thor','designer','1234124','11')

select *from bro
select EMPid as id from bro
 
 delete from bro where EMPId =4

 insert into bro values(4,'thor','designer','1234124','11')
 alter table bro add branchid int
 update bro  set branchid = 1 where  EMPid =1
 update bro  set branchid = 2 where  EMPid =2
 update bro  set branchid = 2 where  EMPid =3
 update bro  set branchid = 1 where  EMPid =4

 create table branch(
 branchid int not null,
 location varchar(20),
 ssn int FOREIGN KEY References bro(EMPid)
 )
 insert into branch values(1,'chennai',1)
 insert into branch values(2,'bangalore',2)
 select *from branch

 select ssn from branch
 delete  from branch where ssn = 2

 Create table aa(
 eid int Primary key,
 work varchar(20) unique,
 )
 insert into aa values(1,'a1')
 insert into aa values(2,'a2')
 insert into aa values(3,'a3')
 insert into aa values(4,'a4')

 select *from aa
 create table bb(
 eid int Primary key,
 ename varchar(20) unique,
 eno int FOREIGN KEY References aa(eid) on delete cascade on update cascade
 )
insert into bb values(100,'c1',1)
insert into bb values(101,'c2',2)
insert into bb values(102,'c3',1)
insert into bb values(103,'c4',2)

select *from bb


Create table a1(
 eid int Primary key,
 work varchar(20) unique,
 )
 insert into a1 values(1,'a1')
 insert into a1 values(2,'a2')
 insert into a1 values(3,'a3')
 insert into a1 values(4,'a4')

 select *from a1
 create table b1
 (
 eid int Primary key,
 ename varchar(20) unique,
 eno int FOREIGN KEY References a1(eid) on delete cascade on update cascade
 )
insert into b1 values(100,'c1',1)
insert into b1 values(101,'c2',2)
insert into b1 values(102,'c3',1)
insert into b1 values(103,'c4',2)

select *from b1

Create table a2(
 eid int Primary key,
 work varchar(20) unique,
 )
 insert into a2 values(1,'a1')
 insert into a2 values(2,'a2')
 insert into a2 values(3,'a3')
 insert into a2 values(4,'a4')

 select *from a2
 create table b2

 (
 eid int Primary key,
 ename varchar(20) unique,
 eno int FOREIGN KEY References a2(eid) on delete set default on update set default
 )
insert into b2 values(100,'c1',1)
insert into b2 values(101,'c2',2)
insert into b2 values(102,'c3',1)
insert into b2 values(103,'c4',2)

select *from b2
