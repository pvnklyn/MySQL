create database sundaydb;
use sundaydb;

create table studentdata(
stud_id int,
stud_name varchar(20),
stud_age int,
subject varchar(20),
primary key(stud_id)
);

insert into studentdata(stud_id,stud_name,stud_age,subject)
values(1,'Alok',22,'Maths'),
(2,'Chirag',23,'History'),
(3,'Keshav',22,'Physics'),
(4,'Zoya',23,'Physics');

create table teacherdata(
teacher_id int,
teacher_name varchar(20),
subject varchar(20),
city varchar(20),
primary key(teacher_id)
);

insert into teacherdata(teacher_id,teacher_name,subject,city)
values(100,'Manish','Maths','Gwalior'),
(200,'Sheetal','History','Hyderabad'),
(300,'Meera','Geography','Lukhnow'),
(400,'Kunal','Physics','Indore');

show tables;
select * from teacherdata;

update studentdata
set stud_name='Priya', stud_age=25
where stud_id=4;

update teacherdata
set city='Bangalore' where teacher_id=200;

select * from teacherdata;
#alter table 

#adding a column in the table 
alter table teacherdata
add teacher_age int;

select * from teacherdata;
#adding multiple columns in the table 
alter table teacherdata
add salary int after city,
add email_id varchar(30) after teacher_name;

select * from teacherdata;
select * from studentdata;

alter table studentdata
add mobile_no varchar(10);

#modify datatype
alter table studentdata
modify mobile_no int;

select * from studentdata;

#drop a column from table 
alter table studentdata
drop column mobile_no;

select * from studentdata;
select * from teacherdata;
alter table teacherdata
drop column email_id;

alter table teacherdata
drop column salary;

alter table teacherdata
drop column teacher_age;

select * from teacherdata;

#rename a column from table
alter table teacherdata
change column city place varchar(20);

select * from teacherdata;

#rename a table 
alter table teacherdata
rename to teacherinfo;

alter table teacherinfo
add salary int after subject,
add email_id varchar(30) after place;

#drop multiple columns from table
alter table teacherinfo
drop column salary,
drop column email_id;

select * from teacherinfo;

#drop table
create table mydata(
stud_id int,
subject varchar(20),
primary key(stud_id)
);

show tables;

drop table mydata;

show tables;

#JOINS
select * from studentdata, teacherinfo where studentdata.subject=teacherinfo.subject ;
select * from studentdata join teacherinfo on studentdata.subject=teacherinfo.subject;






















