


CREATE TABLE USERS(Usr_Id INT IDENTITY(1,1), First_Name Varchar(30), Last_Name Varchar(30),EmployeeId int, Project_Id int,Task_Id int)
ALTER TABLE USERS ADD PRIMARY KEY (Usr_Id)
ALTER TABLE USERS ADD CONSTRAINT FK_ProjectId FOREIGN KEY (Project_Id) REFERENCES PROJECT(Project_Id)
ALTER TABLE USERS ADD CONSTRAINT FK_TaskId FOREIGN KEY (Task_Id) REFERENCES TASK(Task_Id)

CREATE TABLE PARENT_TASK(Parent_Id int identity(1,1),Parent_Task Varchar(30))
ALTER TABLE PARENT_TASK ADD PRIMARY KEY (Parent_Id)


CREATE TABLE TASK(Task_Id int identity(1,1), Parent_id int, Project_Id int,Task Varchar(30),Start_Date DateTime, End_Date DateTime, Priority int, Status varchar(30))
ALTER TABLE TASK ADD PRIMARY KEY (Task_Id)
ALTER TABLE TASK ADD CONSTRAINT FK_TProjectId FOREIGN KEY (Project_Id) REFERENCES PROJECT(Project_Id)
ALTER TABLE TASK ADD CONSTRAINT FK_ParentId FOREIGN KEY (Parent_id) REFERENCES PARENT_TASK(Parent_id)

CREATE TABLE PROJECT(Project_Id int identity(1,1), Project varchar(30),Start_Date DateTime, End_Date DateTime,Priority int)
ALTER TABLE PROJECT ADD PRIMARY KEY (Project_Id)


--Alter table TASK Alter Column Project_Id int

--INSERT PROJECT VALUES('FSE-Developement',GETDATE(), '12-31-2020',1);
--INSERT PROJECT VALUES('FSE-Testing',GETDATE()+30, '12-31-2020',1);
--INSERT PROJECT VALUES('FSE-ProductionSupport',GETDATE()+180, '12-31-2021',1);
--INSERT PROJECT VALUES('Tech-Enhancements',GETDATE()+5, '12-31-2020',1);
--INSERT PROJECT VALUES('Cloud-Enhancements',GETDATE()+5, '12-10-2020',1);
--INSERT PROJECT VALUES('AWS_Migration',GETDATE()+5, '07-31-2020',1);
--INSERT PROJECT VALUES('Data-CenterMigration',GETDATE()+5, '08-31-2020',1);
--INSERT PROJECT VALUES('Data-CenterMigration-Testing',GETDATE()+30, '08-31-2020',2);
--INSERT PROJECT VALUES('Data-CenterMigrationSupport',GETDATE()+31, '08-31-2020',3);
select *From PROJECT

--INSERT INTO PARENT_TASK values('Env Setup')
--INSERT INTO PARENT_TASK values('Construction')
--INSERT INTO PARENT_TASK values('Unit Testing')
--INSERT INTO PARENT_TASK values('UAT Testing')
--INSERT INTO PARENT_TASK values('Implementation')

--ALTER TABLE TASK 
--ADD Usr_Id Int


