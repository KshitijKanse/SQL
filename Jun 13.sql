/*Content:
Sub-Query
distinct keyword
2nd higehst salry(IMP QUESTION)
*/

create database jun13;

use jun13;

create table employee(eid int primary key auto_increment,eName Varchar(50),salary numeric);

insert into employee(eName,salary)values("Kshitij",20000);
insert into employee(eName,salary)values("Aditya",15000);
insert into employee(eName,salary)values("Amit",27000);
insert into employee(eName,salary)values("Naimish",36000);
insert into employee(eName,salary)values("Vishal",40000);
insert into employee(eName,salary)values("Lokesh",52000);

select * from employee;

#max and min salary

select max(salary) from employee;

select min(salary) from employee;


#2nd higehst salry

#method 1
select max(salary) As salary from employee
where salary<(select max(salary) from employee );

#method 2
select * from employee
where salary=(select salary from employee
order by salary desc limit 1,1);

create table sales(sid int primary key,sname varchar(255));
 
insert into sales (sid,sname)values(10,"Aman");
insert into sales (sid,sname)values(20,"Aman");
insert into sales (sid,sname)values(30,"Anand");
   
select * from sales;
   
#distinct keyword
select distinct sname from sales;
select distinct sname,sid from sales;




























/*
Coding Challenge Day 3 (Week 3)
## Problem Statement
1. How many females and how many male passengers traveled for a minimum distance
of 600 KM s?
2. Find the minimum ticket price for Sleeper Bus.
3. Select passenger names whose names start with character 'S'
4. Calculate price charged for each passenger displaying Passenger name, Boarding City,
Destination City, Bus_Type, Price in the output
5. What is the passenger name and his/her ticket price who travelled in Sitting bus for a
distance of 1000 KM s
6. What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to
Panaji?
7. List the distances from the "Passenger" table which are unique (non-repeated distances)
in descending order.
8. Display the passenger name and percentage of distance travelled by that passenger from
the total distance travelled by all passengers without using user variables
*/

#Pid, Passenger name, gender, Boarding City, Destination City, Bus_Type(slepper/sitter), Price  ,Distance


  