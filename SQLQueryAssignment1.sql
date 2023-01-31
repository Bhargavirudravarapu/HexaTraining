create database Bank
use bank

create table customer(
customer_number varchar(10) primary key,
first_name varchar(30),
middle_name varchar(30),
last_name varchar(30),
customer_city varchar(30),
occupation varchar(20),
customer_dob date
)
drop table customer

create table customer(
customer_number varchar(10) primary key,
first_name varchar(30),
middle_name varchar(30),
last_name varchar(30),
customer_city varchar(30),
occupation varchar(20),
customer_dob date
)
select * from customer

insert into customer values('C000001','ramesh','chandra','sharma','delhi','service','1976-12-06')

insert into customer values('C000002','avinash','sunder','minha','delhi','service','1974-10-16')

insert into customer values('C000003','rahul','NULL','rastogi','delhi','student','1981-09-26')

insert into customer values('C000004','parul','NULL','gandhi','delhi','housewife','1976-11-03')

select * from customer

insert into customer values('C000005','naveen','chandra','aedekar','mumbai','service','1976-09-19')
insert into customer values('C000006','chitresh','NULL','barwe','mumbai','student','1992-11-06')
insert into customer values('C000007','amit','kumar','borkar','mumbai','student','1981-09-06')

select * from customer

-- queries

 select customer_city, count(customer_number) from customer group by customer_city	

 select distinct(customer_city) from customer

 select occupation, count(customer_number) from customer group by occupation	

 select * from customer order by first_name 

  select * from customer order by occupation desc, first_name

  select * from customer where middle_name is null

   select * from customer where middle_name = 'null'

