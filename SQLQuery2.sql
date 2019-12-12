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
create table QYXinXi --��ҵ��Ϣ��
(
	QY_ID int primary key identity(1001,1),--��ҵid
	QY_Name varchar(100),--��ҵ����
	QY_Type varchar(100),--������ҵ
	QY_BianH int,--��ҵ���
	QY_City varchar(50),--���ڳ���
	Demo varchar(max)--��˾����
)
go

if exists(select * from sys.tables where name='ZhaoPin')
drop table ZhaoPin
go
create table ZhaoPin --��Ƹ��Ϣ��
(
	ZP_ID int primary key identity(1001,1),--��Ƹ��Ϣid
	ZP_Name varchar(100),--��λ����
	ZP_Time varchar(100),--��������
	ZP_BianH varchar(50),--����
	ZP_LaiY varchar(50),--��Դ
	Demo varchar(max),--��λ����
	QY_ID int--������˾
)
go

if exists(select * from sys.tables where name='GangWei')
drop table GangWei
go
create table GangWei --��Ƹ��λ��Ϣ��
(
	GW_ID int primary key identity(1001,1),--��Ƹ��λid
	GW_Name varchar(100),--��λ����
	ZP_Shu int,--��Ƹ����
	GW_Time datetime,--����
	EndTimr datetime,--��Դ
	GW_XinZi float,--��λ����
	QY_ID int--������˾
)
go

