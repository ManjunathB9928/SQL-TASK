select * from okok

insert into okok values('Thor',87)--

create clustered index ix_id on okok(id)

update okok set id = 6 where  id =5 

create  index ix_name on okok(ename)

update okok set ename ='thor' where id = 6

create unique index ix_marks on okok(marks)

select *from okok where ename='Thor'

create index ix_ename on okok(ename) where ename = 'thor' 

select  * from okok where ename = 'thor'


create trigger trg_ok
on okok
for INSERT,update,delete
as
begin
	print'You cannot acess data'
	rollback transaction
end

insert into okok values('sridhar',54)
update okok set ename='swasthik' where id=5
delete  okok where  id =6

disable trigger trg_ok on okok
enable trigger trg_ok on okok



create trigger trg_inserted
on okok
for insert
as 
begin 
	 print'yes'
end
-----------
ALTER table OKOK add edate char 

update okok set edate = '1/2/2020' where id=1


alter trigger trg_deleted
on okok
for update
as 
begin 
	select * from inserted 
	select * from deleted-- trigger table
end

update okok set ename =  '$$manjunath$$' where id = 1

create trigger trg_ddl
on database
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on sqlbatch db'
		rollback transaction --no ddl functons any more
	end

disable trigger trg_ddl on database
create table hero(
idd int,
)
drop table hero

create trigger trg_server
on ALL SERVER
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on SERVER'
		rollback transaction 
	end

	disable trigger trg_server on ALL SERVER
	enable trigger trg_server on ALL SERVER
create table hero(
idd int,
)
drop table hero

----Transaction 

select * from grade

delete from grade where mark=7

BEGIN TRANSACTION
	insert into grade values(3,'byee')
	delete from grade where mark=4
	SAVE TRANSACTION insert_st
	delete from grade where mark=5
ROLLBACK TRANSACTION insert_st
COMMIT TRANSACTION


SET IMPLICIT_TRANSACTIONS OFF


alter trigger trg_inserted
on okok
for insert
as 
begin 
	 print'yes'
	 rollback transaction
end

insert into okok values('hello',13422,121)
select *from okok