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


--�����û���Users
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
  UserType int check(UserType=1 or UserType=2 or UserType=3),--��ɫ(1=��2=ҽʦ��3=����Ա�û�)
)
select UserType,count(UserType) as ���� from Users  group by UserType
select * from Users
go
insert into Users values ('����','admin','admin','��',18,'17630036636','123123@qq.com',1)
insert into Users values ('����','1','2','��',18,'17630036636','123123@qq.com',1)
insert into Users values ('����','123','123','��',18,'17630036636','123123@qq.com',2)
insert into Users values ('����','456','456','��',18,'17630036636','123123@qq.com',3)
insert into Users values ('����','789','789','��',19,'17630036636','123123@qq.com',3)
delete from Users where UserID=5
select * from Users
select  UserAge, COUNT(UserAge) as number from Users group by UserAge
--��ݲ˵���
if exists(select * from sys.tables where name='TypeUser')
drop table TypeUser
go
create table TypeUser
(

  TypeID int primary key identity(1,1),--�û�ID
  menu varchar(20), --�˵�
  menuID int, --�˵�ID
  MenuTypeID int, --�����˵�ID
  UserType int check(UserType=1 or UserType=2 or UserType=3),--��ɫ(1=�û���2=ҽʦ��3=����Ա)
)
insert into TypeUser values('ҽԺ�ֲ�',1001,1009,1)
insert into TypeUser values('ҽʦ����',1001,1001,1)
insert into TypeUser values('��ٹ���',1001,1002,1)
insert into TypeUser values('���˹���',1001,1003,1)
insert into TypeUser values('����ͳ��',1001,1008,1)
insert into TypeUser values('���˴���',1002,1004,2)
insert into TypeUser values('�������',1002,1005,2)
insert into TypeUser values('�ҵĶ���',1003,1006,3)
insert into TypeUser values('�ҵ�ԤԼ',1003,1007,3)
select * from TypeUser where UserType=1
--�˵���
if exists(select * from sys.tables where name='MenuUser')
drop table MenuUser
go
create table MenuUser
(  
MenuID int primary key identity(1,1),--�û�ID
 Menu varchar(20), --�˵�
 Url varchar(50) , --����
 MenuTypeID int, --�����˵�ID
)
insert into MenuUser values('ȫ��ҽʦ','Javascript:void(0)',1001)
insert into MenuUser values('�����ҽʦ','Javascript:void(0)',1002)
insert into MenuUser values('δ����','Javascript:void(0)',1002)
insert into MenuUser values('ȫ������','Javascript:void(0)',1003)
insert into MenuUser values('δ����','Javascript:void(0)',1003)
insert into MenuUser values('�Һű�','Javascript:void(0)',1003)
insert into MenuUser values('ͳ��ͼ��','/Default/Echarts',1008)
insert into MenuUser values('ҽԺ�ֲ�','/Default/Ditu',1009)



insert into MenuUser values('�ѿ�ҩ��','Javascript:void(0)',1004)
insert into MenuUser values('ȫ������','Javascript:void(0)',1005)
insert into MenuUser values('δ����','Javascript:void(0)',1005)
insert into MenuUser values('��ԤԼ','Javascript:void(0)',1005)

insert into MenuUser values('�ҵĶ���','Javascript:void(0)',1006)
insert into MenuUser values('ȫ��ҽʦ','Javascript:void(0)',1007)
insert into MenuUser values('��ԤԼ','Javascript:void(0)',1007)

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

