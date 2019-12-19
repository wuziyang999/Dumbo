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
  UserType int check(UserType=1 or UserType=2 or UserType=3),--角色(1=，2=医师，3=管理员用户)
)
select UserType,count(UserType) as 数量 from Users  group by UserType
select * from Users
go
insert into Users values ('张三','admin','admin','男',18,'17630036636','123123@qq.com',1)
insert into Users values ('张三','1','2','男',18,'17630036636','123123@qq.com',1)
insert into Users values ('张三','123','123','男',18,'17630036636','123123@qq.com',2)
insert into Users values ('张三','456','456','男',18,'17630036636','123123@qq.com',3)
insert into Users values ('张三','789','789','男',19,'17630036636','123123@qq.com',3)
delete from Users where UserID=5
select * from Users
select  UserAge, COUNT(UserAge) as number from Users group by UserAge
--身份菜单表
if exists(select * from sys.tables where name='TypeUser')
drop table TypeUser
go
create table TypeUser
(

  TypeID int primary key identity(1,1),--用户ID
  menu varchar(20), --菜单
  menuID int, --菜单ID
  MenuTypeID int, --二级菜单ID
  UserType int check(UserType=1 or UserType=2 or UserType=3),--角色(1=用户，2=医师，3=管理员)
)
insert into TypeUser values('医院分布',1001,1009,1)
insert into TypeUser values('医师管理',1001,1001,1)
insert into TypeUser values('请假管理',1001,1002,1)
insert into TypeUser values('病人管理',1001,1003,1)
insert into TypeUser values('数据统计',1001,1008,1)
insert into TypeUser values('病人处方',1002,1004,2)
insert into TypeUser values('病人情况',1002,1005,2)
insert into TypeUser values('我的订单',1003,1006,3)
insert into TypeUser values('我的预约',1003,1007,3)
select * from TypeUser where UserType=1
--菜单表
if exists(select * from sys.tables where name='MenuUser')
drop table MenuUser
go
create table MenuUser
(  
MenuID int primary key identity(1,1),--用户ID
 Menu varchar(20), --菜单
 Url varchar(50) , --链接
 MenuTypeID int, --二级菜单ID
)
insert into MenuUser values('全部医师','Javascript:void(0)',1001)
insert into MenuUser values('已请假医师','Javascript:void(0)',1002)
insert into MenuUser values('未审批','Javascript:void(0)',1002)
insert into MenuUser values('全部病人','Javascript:void(0)',1003)
insert into MenuUser values('未就诊','Javascript:void(0)',1003)
insert into MenuUser values('挂号表','Javascript:void(0)',1003)
insert into MenuUser values('统计图表','/Default/Echarts',1008)
insert into MenuUser values('医院分布','/Default/Ditu',1009)



insert into MenuUser values('已开药单','Javascript:void(0)',1004)
insert into MenuUser values('全部病人','Javascript:void(0)',1005)
insert into MenuUser values('未就诊','Javascript:void(0)',1005)
insert into MenuUser values('已预约','Javascript:void(0)',1005)

insert into MenuUser values('我的订单','Javascript:void(0)',1006)
insert into MenuUser values('全部医师','Javascript:void(0)',1007)
insert into MenuUser values('已预约','Javascript:void(0)',1007)

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

