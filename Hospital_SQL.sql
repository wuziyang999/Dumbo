use master
go
--创建数据库
if exists(select * from sys.databases where name='Hospital')
drop database Hospital
go
create database Hospital
go

--使用数据库
use Hospital
go


--创建用户表
if exists(select * from sys.tables where name='Users')
drop table Users
go
create table Users
(
  UserID int primary key identity(1,1),--用户ID
  UserName varchar(20) ,--用户名
  UserNumber varchar(20),--账号
  UserPassword varchar(50) ,--用户密码
  UserSex char(5) ,--性别
  UserAge int not null,--年龄
  UserPhone varchar(50) ,--电话
  UserEmile varchar(50) ,--邮箱
  UserType int check(UserType=1 or UserType=2 or UserType=3),--角色(1=用户，2=医师，3=管理员)
)
go

--创建医师表
if exists(select * from sys.tables where name='Doctor')
drop table Doctor
go
create table Doctor
(
    DocID int primary key identity(1,1),--医师ID
	DocBrief varchar(200) ,--简介
	DocTech varchar(100) ,--医疗技术
	UserID int references Users(UserID),--医师外键
)
go

--创建挂号表

if exists(select * from sys.tables where name='Register')
drop table Register
go
create table Register
(
 RegID  int  primary key identity(1,1),--挂号ID
 RegDepartment varchar(20),--症状
 RegTime datetime default(getdate()),--就诊时间
 UserID int references Users(UserID),--病人ID
 UsersID int references Users(UserID),--医师ID
)
go

--创建就诊表
if exists(select * from sys.tables where name='See')
drop table See
go
create table See
(
  SeeID int primary key identity(1,1),--就诊ID
  SeezPresc int check(SeezPresc=1 or SeezPresc=2 or SeezPresc=3 or SeezPresc=4),--药房(1=针灸，2=中药，3=推拿，4=按摩)
  UserID int references Users(UserID),--就诊医师
)
go

