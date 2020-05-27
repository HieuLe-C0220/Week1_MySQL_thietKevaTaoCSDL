use quan_ly_account_ngan_hang;
create table Customers(
customer_number int auto_increment primary key,
fullname varchar(45),
address varchar(255),
email varchar(100),
phone int
);
create table Accounts(
account_number int auto_increment primary key,
accounttype varchar(45),
date date,
balance int);
alter table transactions
add constraint account_id foreign key(account_id) references accounts(account_number);
alter table transactions add account_id int;
select * from transactions;