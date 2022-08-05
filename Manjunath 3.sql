CREATE DATABASE ORG
SHOW DATABASES
USE ORG

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME VARCHAR(25),
	LAST_NAME VARCHAR(25),
	SALARY VARCHAR(15),
	JOINING_DATE DATETIME,
	DEPARTMENT VARCHAR(25)
);
INSERT INTO Worker VALUES(001, 'Monika', 'Arora', 100000, '05-08-20 06:28:00', 'HR')
INSERT INTO Worker VALUES(002, 'Niharika', 'Verma', 80000, '05-08-20 06:35:00', 'Admin')
INSERT INTO Worker VALUES(003, 'Vishal', 'Singhal', 300000, '05-08-20 06:35:00', 'HR')
INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, '05-08-20 06:35:00', 'Admin')
INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, '05-08-20 06:35:00', 'Admin')
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '05-08-20 06:35:00', 'Account')
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, '05-08-20 06:35:00', 'Account')
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '05-08-20 06:35:00', 'Admin')

-- Write an SQL query to fetch 'FIRST_NAME' from Worker table using the alias name as <WORKER_NAME>.

SELECT FIRST_NAME AS WORKER_NAME from Worker

-- Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.

SELECT FIRST_NAME AS uppercase from Worker

--Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

select DISTINCT DEPARTMENT from Worker

--Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

SELECT SUBSTRING(FIRST_NAME,1,3) AS FIRSTTHREECHAR from Worker

--Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

select DISTINCT DATALENGTH (DEPARTMENT) AS LENGTHOFUNQUE from Worker

--Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.

select FIRST_NAME +' '+LAST_NAME AS FULLNAME from Worker

--Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.

SELECT * FROM Worker where FIRST_NAME in ('Vipul','satish')

--Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

SELECT * FROM Worker where DEPARTMENT in ('Admin')

--Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.

select *from Worker where FIRST_NAME  Like '%a' 

--Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

select *from Worker where FIRST_NAME  Like '%a%'



