use master
go
if exists(select * from sys.databases where name='ZuoYe1')
drop database ZuoYe1
go
create database ZuoYe1
go
use ZuoYe1
go
if exists(select * from sys.tables where name='QYXinXi')
drop table QYXinXi
go
create table QYXinXi --企业信息表
(
	QY_ID int primary key identity(1001,1),--企业id
	QY_Name varchar(100),--企业名称
	QY_Type varchar(100),--所属行业
	QY_BianH int,--企业编号
	QY_City varchar(50),--所在城市
	Demo varchar(max)--公司介绍
)
go

if exists(select * from sys.tables where name='ZhaoPin')
drop table ZhaoPin
go
create table ZhaoPin --招聘信息表
(
	ZP_ID int primary key identity(1001,1),--招聘信息id
	ZP_Name varchar(100),--岗位名称
	ZP_Time varchar(100),--工作年限
	ZP_BianH varchar(50),--方向
	ZP_LaiY varchar(50),--来源
	Demo varchar(max),--岗位描述
	QY_ID int--所属公司
)
go

if exists(select * from sys.tables where name='GangWei')
drop table GangWei
go
create table GangWei --招聘岗位信息表
(
	GW_ID int primary key identity(1001,1),--招聘岗位id
	GW_Name varchar(100),--岗位名称
	ZP_Shu int,--招聘人数
	GW_Time datetime,--方向
	EndTimr datetime,--来源
	GW_XinZi float,--岗位描述
	QY_ID int--所属公司
)
go

