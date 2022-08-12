--1.What are the differences between local and global temporary tables?
ans local_temporary_table is used from their creation .global _temporary_table can be  acsess in other database

--2.What is CHECK constraint?
ans check constraint is used in the relational operators to get prefered input.

--3.What is a Trigger?
ans the trigger is used in table,database,server to block the ddl and dml commands

--4.What is an IDENTITY column in insert statements?
ans an IDENTITY column in insert statements is used give the unique values to the table like primary key

--5. What is the difference between COMMIT and ROLLBACK?
ans  commit is used to end the transaction where as ROLLBACK means it returns  the value 
	which is saved to the output

--6.What is Filtered Index?
ans 

--7.What is a JOIN, and mention its Types?
ans for the connection of two tables join is used. 
	they are four types of join:
	1 inner join
	2.full join 
	3.left join
	4.right join

--8.How can you relate a Foreign Key and a Primary Key?
ans we can relate a Foreign Key and a Primary Key by relateing uniquie values in the table 

--9.What is the difference between Stored Procedures and Functions?
ANS the Stored Procedures is used to store already created  data to acess faster.
	the Functions are used to manuplate the data which are created.there are three types of function,
	1 scalar function
	2 inline function
	3.multi function

--10.What do you mean by Clustered Indexes?
ans cluster indexes are used for the easy acess of the data from the table



CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY ,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	did int,
)

		INSERT INTO Worker VALUES (001, 'Monika', 'Arora', 100000, SYSDATETIME(), 'hr')
		INSERT INTO Worker VALUES(002, 'Niharika', 'Verma', 80000, SYSDATETIME(), 'admin')
		INSERT INTO Worker VALUES(003, 'Vishal', 'Singhal', 300000, SYSDATETIME(), 'hr')
		INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, SYSDATETIME(), 'admin')
		INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, SYSDATETIME(), 'admin')
		INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, SYSDATETIME(), 'account')
		INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, SYSDATETIME(), 'account')
		INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, SYSDATETIME(), 'admin')

		




--1.Write an SQL query to clone a new table from another table
select * into  clone from worker  
select * from clone

--2.Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
select (FIRST_NAME+LAST_NAME) AS NAME from worker

--3.Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * FROM WORKER ORDER BY FIRST_NAME

--4Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
SELECT *from worker where SALARY between 100000 and 500000

--5Write an SQL query to fetch the no. of workers for each department in the descending order.
select * from worker order by desc

--6.Create a DML trigger for update on table ‘Title’
create trigger trg_workerbase
on worker
for update
as 
begin 
	print'no dml operations'
	rollback transaction
end

disable trigger trg_workerbase on worker
----
create trigger trg_database
on database
for create_table,drop_table,alter_table
as 
begin 
	print'no dml operations'
	rollback transaction
end
disable trigger trg_database on database

--7.Create a Function to Calculate Simple Interest
alter function cal_s_i(@p int, @t decimal,@r int)
  returns int
  as
  begin
   return (@p*@r*@t)/100
   end
   select dbo.cal_s_i(1400,7.5,48) as SI
--8.Create a Stored Procedure to retrieve the average salary from ‘Worker’ table using Output parameter
create procedure sp_worker_SALARY(@avgsalary int output)
   as
   begin
   select @avgsalary = avg(salary) from worker
   end
   declare @averagesalary int
   exec sp_worker_SALARY.@averageSALARY output
   print @averageSALARY
	select *from worker

--9.Create a filtered index on ‘Bonus_Date’ column in ‘Bonus’ table

--10.Create an explicit transaction to commit insert statements and rollback delete statements in ‘Worker’ table
BEGIN TRANSACTION
	insert into grade values(10,'pass')
	delete from grade where mark=4
	SAVE TRANSACTION insert_st
	delete from grade where mark=5
ROLLBACK TRANSACTION insert_st
COMMIT TRANSACTION
select *from grade order by mark desc