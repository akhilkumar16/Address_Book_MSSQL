
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