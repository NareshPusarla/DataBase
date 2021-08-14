UC1:
create database AddressBookService;
use AddressBookService;
 
UC2:
create table addressbook(id int, first_name varchar(255), last_name varchar(255), address varchar(255), city varchar(255), state varchar(255), zip_code int, phone_number int, email varchar(255));
describe addressbook;

UC3:
insert into addressbook(id,first_name,last_name,address,city,state,Zipcode,PhoneNumber,email) values (1,'Naresh','Pusarla', 'Innispeta','Rajahmundry','A.P',533101, 95025,'nareshn2213@gmail.com');
select * from addressbook;

UC4:
update addressbook set address = 'Post office Street' where first_name = 'Naresh';
select * from addressbook;

UC5:
update addressbook set address = 'Post office Street' where first_name = 'Naresh';
select * from addressbook;

UC6:
select * from addressbook where city = 'Rajahmundry' or state = 'MP';

UC7:
select count(city) from addressbook;
select count(city), city from addressbook group by city;
select count(city), city, state from addressbook group by state;
select count(city), city, state from addressbook where city='Rajahmundry' and state='A.P' group by state;

UC8:
select * from addressbook order by addressbook.first_name;		//Ascending order
select * from addressbook order by addressbook.first_name desc;	//Descending order

