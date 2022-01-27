
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
--uc3
insert into Address_Books values('a','b','c','ddd','ts',5060,123456,'abcd@gmail.com');

insert into Address_Books values('d','b','g','hhh','ap',92300,321546,'gdhdggmail.com');

insert into Address_Books values('g','h','er','jjj','jk',31093,564895,'kkkkk@gmail.com');

insert into Address_Books values('Kt','tyr','dfrt ','gggg','ts',25832,4586952,'llll@gmail.com');
select * from Address_Books;

--uc4
UPDATE Address_Books SET first_name = 'ak' , last_name = 'kumar', Email_Id = 'kumar@gmail.com' where first_name = 'Ak';
--uc5
delete from Address_Books where City = 'jjj';
select * from Address_Books;
--uc6
select * from Address_Books where City='jjj';
--uc7
select count(City) as TotalContact from Address_Books; 
--uc8
select * from Address_Books where State='ts' order by (first_name);
select * from Address_Books;
----UC9:- Ability to identify each Address Book with name and Type.
--UC9.1:- Alter Address Book to add name and type.
alter table Address_BookS add Name varchar(255),Type varchar(255);
select * from Address_Books;

--UC9.2:- Here the type could Family, Friends, Profession, etc.
update Address_Books set name='akhil';

update Address_Books set Type ='Friend' where first_Name='VK' or first_Name='RC';
select * from Address_Books;

update Address_Books set Type ='Family' where first_Name='WARNER' or first_Name='SRH'; 
select * from Address_Books;
--uc10
select count(Type) from Address_Books;

select Type, count(*) as TypeCount from Address_BookS group by Type;
--uc11
insert into Address_Books(first_Name,last_Name,address,city,state,ZipCode,Phone_No,Email_Id,name,Type) values('abcdfg','gfdcba','hgfh','hnk','ts','50601','12546','abcdefg@gmail.com','abc','Family');
 
insert into Address_Books values('qwerty','keypad','lkjh','hnk','ts','506012','98745661','qwerty@gmail.com','qwertyContact','Friend');
select * from Address_Books;
--Er diagram
Create table Address(Address_id int not null identity(1,1) primary key,City varchar(20) not null,
State varchar(255) not null,ZipCode varchar(255) not null default '123456');
select * from Address;
--insert value  into Addresses table
insert into Address(City,State) values('wgl','ts');
insert into Address(City,State) values('hnk','ts');
insert into Address(City,State) values('hyd','ts');
select * from Address;

--Create table ContactDetails
create table Contact_Details(First_Name varchar(50) not null,Last_Name varchar(50) not null,Address varchar(50) not null, Contact_id int not null identity(1,1)
foreign key references Address(Address_id),Phone_No varchar(10) not null, Email_Id varchar(50) not null,Primary key(First_Name,Last_Name));
select * from Contact_Details;
--insert value  ContactDetails table
insert into Contact_Details(Contact_id,First_Name,Last_Name,Address,Phone_No,Email_Id)values('1','ch','kumar','wgl','1456982','cricket@gmail.com');
select * from Contact_Details;
