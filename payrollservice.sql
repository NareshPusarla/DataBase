UC1:
create database payrollservice;
show databases;
use payrollservice;

UC2:
create table employee_payroll(id int, name varchar(255), salary int, start_date DATE);
describe employee_payroll;
alter table employee_payroll auto_increment=id;

UC3:
insert employee_payroll(id, name, salary, start_date) values (1,'Naresh',1000,now());

UC4:
select * from employee_payroll;

UC5;
select salary from employee_payroll where name = 'Naresh';
select * from employee_payroll where start_date between cast('2018-01-01' as date) and date(now());

UC6:
alter table employee_payroll add gender varchar(255);
select * from employee_payroll;
update employee_payroll set gender = 'M' where name = 'Naresh' or name = 'Ishu';
select * from employee_payroll;

UC7:
select sum(salary) from employee_payroll where gender = 'M' group by gender;
select avg(salary) from employee_payroll where gender = 'M' group by gender;
select min(salary) from employee_payroll group by gender;
select max(salary) from employee_payroll group by gender;
select max(salary) from employee_payroll;
select count(salary) from employee_payroll group by gender;

UC8:
alter table employee_payroll add phone_number varchar(255);
alter table employee_payroll add address varchar(255) default 'BLR';
alter table employee_payroll add department varchar(255) not null;
select * from employee_payroll;

UC9:
alter table employee_payroll add basic_pay int;
alter table employee_payroll add deductions int;
alter table employee_payroll add taxable_pay int;
alter table employee_payroll add income_tax int;
alter table employee_payroll add net_pay int;

UC10:
insert into employee_payroll (id,name,salary,start_date,gender,phone_number,address,department,basic_pay,deductions,taxable_pay,income_tax,net_pay) values (4,'Teresa',5000,now(),'F','9000000000','School Street','sales',0,0,0,0,0);
insert into employee_payroll (id,name,salary,start_date,gender,phone_number,address,department,basic_pay,deductions,taxable_pay,income_tax,net_pay) values (4,'Teresa',4000,'2021-01-03','F','9000000000','School Street','marketing',0,0,0,0,0);

UC11:
alter table employee_payroll drop column department;
alter table employee_payroll drop column salary;
delete from employee_payroll where start_date = '2021-01-03';
alter table employee_payroll add primary key (id);
create table department(id int,name varchar(255));
alter table department add primary key (id);
insert into department (id,name) values (1,'java');
insert into department (id,name) values (2,'python');
insert into department (id,name) values (3,'.net');
insert into department (id,name) values (4,'php');
create table emp_department(id int, dept_key int,emp_key int,salary int);
alter table emp_department add primary key(id);
insert into emp_department(id,dept_key,emp_key,salary) values (1,2,1,1000);
select * from employee_payroll as ep inner join emp_department as ed on ed.emp_key = ep.id inner join department as d on d.id = ed.dept_key;
insert into emp_department(id,dept_key,emp_key,salary) values (2,1,1,2000);
select * from employee_payroll as ep left join emp_department as ed on ed.emp_key = ep.id left join department as d on d.id = ed.dept_key;
select * from employee_payroll as ep right join emp_department as ed on ed.emp_key = ep.id right join department as d on d.id = ed.dept_key;
insert into emp_department(id,dept_key,emp_key,salary) values (3,1,2,2000);

UC12:
select * from employee_payroll as ep left join emp_department as ed on ed.emp_key = ep.id left join department as d on d.id = ed.dept_key;

