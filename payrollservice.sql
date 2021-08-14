UC1:
create database payrollservice;
show databases;
use payrollservice;

UC2:
create table employee_payroll(id int, name varchar(255), salary int, start_date DATE);
describe employee_payroll;
alter table employee_payroll auto_increment=1;

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
