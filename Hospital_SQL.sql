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


--创建用户表Users
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
insert into Users values ('张三','admin','admin','男',18,'17630036636','123123@qq.com',1)
insert into Users values ('张三','123','123','男',18,'17630036636','123123@qq.com',2)
insert into Users values ('张三','456','456','男',18,'17630036636','123123@qq.com',3)
select * from Users as u,TypeUser as r,MenuUser as m 
where u.UserType=3 and r.menuID=1003

select * from Users as u,TypeUser where u.UserID=TypeUser.TypeID and u.UserType=3
select * from TypeUser,MenuUser where TypeUser.menuID=MenuUser.MenuTypeID and MenuUser.MenuTypeID =1002
--身份菜单表
if exists(select * from sys.tables where name='TypeUser')
drop table TypeUser
go
create table TypeUser
(

  TypeID int primary key identity(1,1),--用户ID
  menu varchar(20), --菜单
  menuID int, --菜单ID
  UserType int check(UserType=1 or UserType=2 or UserType=3),--角色(1=用户，2=医师，3=管理员)
)
insert into TypeUser values('一级菜单',1001,1)
insert into TypeUser values('一级菜单',1002,2)
insert into TypeUser values('一级菜单',1003,3)

--菜单表
if exists(select * from sys.tables where name='MenuUser')
drop table MenuUser
go
create table MenuUser
(  
MenuID int primary key identity(1,1),--用户ID
 Menu varchar(20), --菜单
 MenuTypeID int, --菜单ID
)
insert into MenuUser values('aaa',1001)
insert into MenuUser values('bbb',1001)
insert into MenuUser values('ccc',1001)
insert into MenuUser values('ddd',1002)
insert into MenuUser values('qqq',1002)
insert into MenuUser values('www',1002)
insert into MenuUser values('eee',1003)

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

