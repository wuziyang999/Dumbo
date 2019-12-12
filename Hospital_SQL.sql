use master
go
--�������ݿ�
if exists(select * from sys.databases where name='Hospital')
drop database Hospital
go
create database Hospital
go

--ʹ�����ݿ�
use Hospital
go


--�����û���
if exists(select * from sys.tables where name='Users')
drop table Users
go
create table Users
(
  UserID int primary key identity(1,1),--�û�ID
  UserName varchar(20) ,--�û���
  UserNumber varchar(20),--�˺�
  UserPassword varchar(50) ,--�û�����
  UserSex char(5) ,--�Ա�
  UserAge int not null,--����
  UserPhone varchar(50) ,--�绰
  UserEmile varchar(50) ,--����
  UserType int check(UserType=1 or UserType=2 or UserType=3),--��ɫ(1=�û���2=ҽʦ��3=����Ա)
)
go

--����ҽʦ��
if exists(select * from sys.tables where name='Doctor')
drop table Doctor
go
create table Doctor
(
    DocID int primary key identity(1,1),--ҽʦID
	DocBrief varchar(200) ,--���
	DocTech varchar(100) ,--ҽ�Ƽ���
	UserID int references Users(UserID),--ҽʦ���
)
go

--�����Һű�

if exists(select * from sys.tables where name='Register')
drop table Register
go
create table Register
(
 RegID  int  primary key identity(1,1),--�Һ�ID
 RegDepartment varchar(20),--֢״
 RegTime datetime default(getdate()),--����ʱ��
 UserID int references Users(UserID),--����ID
 UsersID int references Users(UserID),--ҽʦID
)
go

--���������
if exists(select * from sys.tables where name='See')
drop table See
go
create table See
(
  SeeID int primary key identity(1,1),--����ID
  SeezPresc int check(SeezPresc=1 or SeezPresc=2 or SeezPresc=3 or SeezPresc=4),--ҩ��(1=��ģ�2=��ҩ��3=���ã�4=��Ħ)
  UserID int references Users(UserID),--����ҽʦ
)
go
