create database store;
use store;
create table product(pid int, pname varchar(500),prise int, quantity int);

insert into product() values(101,"VadaPav",20,6);
insert into product() values(102,"Misal Pav",35,8);
insert into product() values(101,"Gunshot Vada-Pav",48,30);
insert into product() values(103,"Idli",15,3);
insert into product() values(104,"Puri Baji",20,6);

select * from product;

update product 
set pname="Vada Pav" 
Where pname="VadaPav";

update product
set pid=101
where pname="Vada Pav";

select pid from product where pname="VadaPav" ;




describe product;

create table emp(eid int primary key,ename varchar(100),age int);

insert into emp() values(1001,"Kshitij",20);
insert into emp() values(1002,"Aditya",24);
insert into emp() values(1003,"Amit",30);
insert into emp() values(1004,"Rahul",19);
insert into emp() values(1005,"Akash",22);

select * from emp;


create table Customer(CustID int primary key,CustName Varchar(100),City varchar(50),ContactNo int,AadharNo int,PanNo int);
insert into Customer() values(101,"Kshitij","Thane",100120120,10010,12919);
insert into Customer() values(102,"Aditya","Navi Mumbai",100120120,10010,12919);
insert into Customer() values(103,"Amit","Kalyan",100120120,10010,12919);
insert into Customer() values(104,"Ekansh","Mumbai",100120120,10010,12919);
insert into Customer() values(105,"Gaurav","Mumbai",100120120,10010,12919);
insert into Customer() values(106,"Anjeena","Mumbai",100120120,10010,12919);

select * from Customer;

update Customer
set City="Thane"
where CustID=102;

delete from Customer where CustID=106;


select * from Customer where city="Mumbai";




