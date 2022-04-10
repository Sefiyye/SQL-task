CREATE DATABASE Company

DROP DATABASE Company

USE Company

CREATE TABLE Employeers(
 [Id] int,
 [Name] nvarchar(15),
 [Surname] nvarchar(30),
 [WorkName] nvarchar(50),
 [WorkNo] varchar(10),
 [Salary] int
)

CREATE TABLE OldEmployee(
[Id] int,
[Name] nvarchar(15),
[Surname] nvarchar(30),
[WorkName] nvarchar(50),
[WorkNo] varchar(10),
[Salary] int
)

DROP TABLE OldEmployee

ALTER TABLE Employeers
DROP COLUMN Name

exec sp_rename 'Employeers.WorkName','Job'

CREATE TABLE AssitantWorkers(
[Id] int,
[Name] nvarchar(20),
[Surname] nvarchar (40),
[WorkName] nvarchar(25),
[WorkNo] varchar(15),
[Salary] int
)


insert into Employeers
values(1,'Mahmudzade','Developer','AP204',1900)

insert into AssitantWorkers(Id,Name,Surname, WorkName,WorkNo, Salary)
values(1,'Vefa','Quliyeva','Full Stack','689A1',2000),
(2,'Gunel','Rehmanova','Developer','686A1',1850),
(3,'Seide','Sultanova','Operator','219A1',1900),
(4,'Aynur','Miqbilova','Full Stack','329A1',2100)

select* from Employeers
select*from AssitantWorkers

select [Name],[Surname] from AssitantWorkers where [Salary]>2000;
select [Name],[Surname] from AssitantWorkers where [Salary]>1000 and [Salary]<2000 ;