/*Content:
update
And Operator
Or Operator
Like -A%
	 -%A
	 -%A% Operators
Count,Min,Max,Avg
Group By
Order By
*/

create database emp;
use emp;

create table employee(eid int primary key,ename varchar(55),salary numeric,designation varchar(55));

insert into employee() values(101,"Kshitij",50000,"Admin");
insert into employee() values(102,"Aditya",50000,"Tester");
insert into employee() values(103,"Amit",50000,"Devloper");
insert into employee() values(104,"Ekansh",50000,"Designer");
insert into employee() values(105,"Gaurav",50000,"Manager");
insert into employee() values(106,"Durgesh",50000,"Programmer");
insert into employee() values(107,"Ashik",50000,"Tester");

update employee
set salary=37500
where eid=102;


select * from employee;

/*And Operator*/
select * from employee where salary between 20000 and 40000;

/*OR Operator*/
select * from employee 
where salary=20000 or ename = "amit";

select ename,designation from employee 
where salary=20000 or ename = "amit";

#for getting name starts with A
select ename, designation from employee
where ename like 'A%';

#for getting designation end with r
select ename, designation from employee
where designation like '%r';

#for getting designation which has between anywhere in word 
select ename, designation from employee
where designation like '%an%';

select * from employee;

select designation,count(*) from employee 
group by designation;

select max(salary)from employee;
select min(salary)from employee;
select avg(salary)from employee;




##Group By clause
select designation,count(*) from employee 
group by designation
having designation ="Admin";

#here syntax is 1st should be column name and 2nd coumn will be aggrigate function
select salary,count(*) from employee
group by salary
having salary<=20000;



##Order By
select * from employee
order by designation;

select * from employee
order by designation DESC;

select * from employee
Where salary between 10000 and 20000
order by designation;

select * from employee
Where designation in("Tester","Manager")
order by designation DESC;



