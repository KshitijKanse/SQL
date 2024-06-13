/*Content:
alter
update
Join
inner join
left outer join
right inner join
full outer join
Inner Join With Order By ASC
Inner Join With Order By DESC
Inner Join With Between
Inner Join With Group By
Top Clause
*/

/*Group By Function Required setting 
select @@sql_mode mode_before_replacing;
SET @@sql_mode = REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', '');
select @@sql_mode mode_after_replacing;
*/

#create and use database
create database jun07;
use jun07;


#Creating table 1
create table customer (cid int primary key,cname varchar(50),address varchar(50),contactno numeric );

describe customer;

select * from customer;
insert into customer() values(1001,"Kshitij","Thane",983232788);
insert into customer() values(1002,"Amit","Kalyan",4325634623);
insert into customer() values(1003,"Aditya","Airoli",7589648938);
insert into customer() values(1004,"Ekansh","Vikroli",1234567890);
insert into customer() values(1005,"Gaurav","Parel",9889648938);



#Creating table 2
create table transaction (tid int primary key,transtype varchar(50),amount varchar(50),date varchar(20),cid int);

select * from transaction;
insert into transaction () values(101,"Deposite",2000,"12 jun 2024",1001);
insert into transaction () values(102,"Deposite",60000,"6 july 2024",1005);
insert into transaction () values(103,"Withdraw",20000,"9 Aug 2024",1003);


#Alter command
/*
alter table tablename
add clumn column name;
*/

#update
update transaction
set date="6 July 2024"
where tid=102;


#Inner Join
select tid,cname,address,transtype,amount,date from customer
inner join transaction
on customer.cid=transaction.cid;

#Right Outer Join
select tid,cname,address,transtype,amount,date from customer
right outer join transaction
on customer.cid=transaction.cid;

#Left Outer Join
select tid,cname,address,transtype,amount,date from customer
Left outer join transaction
on customer.cid=transaction.cid;

#Full-Outer Join 
select tid,cname,address,transtype,amount,date from customer
Left outer join transaction
on customer.cid=transaction.cid

union

select tid,cname,address,transtype,amount,date from customer
right outer join transaction
on customer.cid=transaction.cid;




#Inner Join With Order By ASC
select tid,cname,address,transtype,amount,date from customer
inner join transaction
on customer.cid=transaction.cid
order by address asc;


#Inner Join With Order By DESC
select tid,cname,address,transtype,amount,date from customer
inner join transaction
on customer.cid=transaction.cid
order by address Desc;


#Inner Join With Between
select tid,cname,address,transtype,amount,date from customer
inner join transaction
on customer.cid=transaction.cid
where amount between 100 And 25000;


#Inner Join With Group By
select tid,cname,address,count(transtype),transtype,amount,date from customer
inner join transaction
on customer.cid=transaction.cid
group by transtype;




#Top Clause use limit
select * from customer
where cid between 1001 and 1004
limit 2;

select * from customer
limit 4;










/*Practice Question
#Learners

Eno,name,address,email,contactno

#Score

ExamId ExamName  score  Eno

perform CRUD

perform all join types with where,orderby
group by and Top clause
*/

#Lerner Table
create table lerners(eid int primary key,ename varchar(50),address varchar(200),email varchar(200),contactno numeric);
describe lerners;

insert into lerners() values(101,"Kshitij","Mumbai","kshitj20@gmail.com",9821344567);
insert into lerners() values(102,"Aditya","Airoli","aditya33@gmail.com",9375809646);
insert into lerners() values(103,"Amit","Kalyan","amit8@gmail.com",8629251558);
insert into lerners() values(104,"Rohan","Ghatkoper","rohan4@gmail.com",761254983);
insert into lerners() values(105,"Anita","Thane","anita2@gmail.com",8834527869);

select * from lerners;


#Score Table
create table Score(ExamId int primary key,ExamName varchar(50),Score int,eid int);
describe Score;

insert into Score() values(341,"SE",458,101);
insert into Score() values(342,"IA1",344,104);
insert into Score() values(343,"IA2",498,105);

select * from Score;


#Update
update lerners
set address="Thane"
where eid=101;
select * from lerners;

#delete
delete from lerners
where eid=105; 

#Inner Join
select ExamId,ExamName,ename,Score,address,email,contactno from lerners
inner join Score
on lerners.eid=Score.eid;


#Left Outer Join
select ExamId,ExamName,ename,Score,address,email,contactno from lerners
Left Outer join Score
on lerners.eid=Score.eid;

#Right Outer Join
select ExamId,ExamName,ename,Score,address,email,contactno from lerners
Right Outer join Score
on lerners.eid=Score.eid;


#Full Outer Join
select ExamId,ExamName,ename,Score,address,email,contactno from lerners
Left Outer join Score
on lerners.eid=Score.eid
Union
select ExamId,ExamName,ename,Score,address,email,contactno from lerners
Right Outer join Score
on lerners.eid=Score.eid;

#Inner Join Order by
select ExamId,ExamName,ename,Score,address,email,contactno from lerners
Inner join Score
on lerners.eid=Score.eid
order by ename asc;


#Inner Join Group by
select ExamId,ExamName,count(ExamName),Score,address,email,contactno from lerners
Inner join Score
on lerners.eid=Score.eid
Group by ExamName;


#Inner Join with where
select ExamId,ExamName,Score,address,email,contactno from lerners
Inner join Score
on lerners.eid=Score.eid
Where address="Thane" Or address="Kalyan";

#using top
select * from lerners
where eid limit 2;



