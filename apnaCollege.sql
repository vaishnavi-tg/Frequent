create database if not exists college;

use college;

create table if not exists student(
	name varchar(50),
    id int primary key,
    age int);
    
insert into student (name,id,age)
values("vaishnavi",191,21),
("Alekhya",192,32),
("pinky",193,24),
("chinky",195,24),
("tazeen",782,45),
("Naina Tara",312,46);

select * from student;

show databases;
show tables; 

drop table student;
drop database college;

create database if not exists pink_ai;

use pink_ai;

create table if not exists employee(
	name varchar(50),
    id int primary key,
    salary int);
    
insert into employee (name ,id,salary)
values
("harish",1,450000),
("perish",2,50000),
("cherish",4,34000),
("marish",5,6000),
("zanish",6,58000),
("pinkish",9,950000);

select * from employee;

show databases;
show tables;

create table if not exists city(
	id int,
    city varchar(20));
    
insert into city (id,city)
values
(1,"hyd"),
(2,"blg"),
(3,"bly"),
(7,"hyd");

create table if not exists city(
	id int,
    city varchar(20));
    
insert into city (id,city)
values
(1,"hyd"),
(2,"blg"),
(3,"bly"),
(7,"hyd");

create table if not exists student(
    id int,
    name varchar(50),
    city_id int,
    city varchar(30));
    
insert into student (id,name,city_id,city)
values(1,"harish",3,"hyd"),
(2,"parish",4,"bly"),
(9,"harirh",5,"blg"),
(4,"hrrish",4,"gtd"),
(5,"monkey",3,"hyd");

select * from student; 

create table if not exists temp1(
	city_id int,
    salary int default 30000,
    foreign key (city_id) references student(city_id));
    
select * from temp1;

create table if not exists city(
	id int,
    city varchar(40),
    age int,
    age_check int check(not(age>18 and city='delhi'))
    );
    
insert into city (id,city,age)
values(1,"hyd",12),
(2,"delhi",19);

create database if not exists bitm;

use bitm;

create table if not exists student(
	rollno int primary key,
    name varchar(30),
    marks int not null,
    grade varchar(1),
    city varchar(20));
    
insert into student (rollno,name,marks,grade,city)
values(101,"anil",78,"c","pune"),
(102,"bhumika",93,"a","mumbai"),
(103,"chetan",85,"b","mumbai"),
(104,"dhruv",96,"a","delhi"),
(105,"emanuel",12,"f","delhi"),
(106,"farah",82,"b","delhi");

select * from student;

select name from student;

select name,grade from student;

select distinct city from student;
 
 select marks from student
 where marks>80;
 
 select * from student 
 where city = "delhi";
 
 select * from student 
 where marks+10>100;
 
 select * from student 
 where marks = 93;
 
 select * from student 
 where marks>90 and city="delhi";
 
 select * from student
 where marks>90 or city="mumbai";
 
 select * from student 
 where marks between 90 and 100;
 
 select * from student 
 where city in ("delhi","mumbai");
 
 select * from student
 where city not in ("delhi","mumbai");
 
 #limit clause
 
 select *
 from student
 where marks>50
 limit 2;
 
 # order by clause
 select *
 from student 
 order by marks desc ;
 
select *
from student 
order by city asc ;

select * 
from student 
where marks <50
order by marks asc;

select max(marks) from student;
select avg(marks) from student;
select min(marks) from student;
select count(name) from student; 
 
 # we have seen where ,orderby , limit, groupby
 
 select city ,count(name)
 from student 
 group by city;
 
  select city,name ,count(name)
 from student 
 group by city,name;
 
select city,avg(marks)
 from student 
 group by city;
 
select city , avg(marks) 
from student
group by city 
order by avg(marks) asc; 


select city ,count(name)
from student
group by city
having max(marks)>90;

 # Their is always a secific order to follow all these so...
 
 select city 
 from student 
 where grade="A"
 group by city
 having max(marks)>93
 order by max(marks)asc;
 
 # To update 

 update student
 set grade="o"
 where name="Anil";
 
 set sql_safe_updates = 0;
 
 select * from student;
 
 update student
 set marks=96
 where name="anil";
 
 delete from student
 where marks<35;
 
 create table if not exists dept(
	id int primary key,
    name varchar(50));
    
create table if not exists teacher(
	id int primary key ,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
    on update cascade
    on delete cascade
);

insert into dept 
values(101,"adam"),
(102,"bob");

select * from dept;
select * from teacher;

insert into teacher 
values(101,"adamson",101),
(102,"bobsi",101),
(103,"pinky",102);

-- Step 1: Update the teacher table
UPDATE teacher
SET dept_id = 102
WHERE dept_id = 101;

-- Step 2: Now update the department ID
UPDATE dept
SET id = 103
WHERE id = 101;

alter table student
add column age int;

select * from student;

alter table student 
drop column age ;

alter table student 
rename to people;

select * from people;

alter table people
rename to student;

#  u can change and 



    





