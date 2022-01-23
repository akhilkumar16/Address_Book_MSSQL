--uc1
create database Address_Book_Service;
--uc2
create table Address_Books(
Id int identity(1,1) primary key,
first_name varchar(150),
last_name varchar(150),
Address varchar(150),
City varchar(50),
State varchar(50),
ZipCode int,
Phone_No int,
Email_Id varchar(255)
);
select * from Address_Books;