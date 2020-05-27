show databases;
use account_management;
Create table users(
user_id int auto_increment primary key,
username varchar(40),
password varchar(255),
email varchar(255));
select * from customers;
insert into users (username,password,email) values('lehieu',123456,'hieule@gmail.com');
alter table users
modify email varchar(255);
describe customers;
create table customers (
id int auto_increment primary key,
first_name varchar(15),
last_name varchar(15),
address varchar(255),
email varchar(255)
);
create table orders (
id int auto_increment,
staff varchar(50),
primary key(id),
customer_id int,
foreign key(customer_id) references customers(id)
);