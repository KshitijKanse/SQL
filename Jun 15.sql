create database Jun14;
use Jun14;
#Mini Project...

use miniproject;

create table student(sdi int primary key auto_increment,sname varchar(50),sphone varchar(50),scity varchar(50));


describe student;

select * from student;

alter table student
rename column sdi to sid;