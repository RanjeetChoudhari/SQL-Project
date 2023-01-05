create database crash_record;
use crash_record;
show databases;
select* from airplane_crash;
show full columns from airplane_crash;
show tables;
describe airplane_crash;
create table employee (ID int,Ename varchar(20),Department varchar(20),Salary decimal(10,2),Location varchar(20));
insert into employee values(1,'Jay','HR','5000','Mumabi');
 insert into employee values(2,'Yash','Management','7000','Pune');
 insert into employee values(3,'Annad','Training','6000','Chennai');
 insert into employee values(4,'Ruhi','Sales','4000','Delhi');
 insert into employee values(5,'Pratik','Admin','3000','Pune');
 insert into employee values(6,'Raj','Training','5000','Mumabi');
 
  select * from employee;
delete from employee;
truncate employee;
drop table employee;
select* from airplane_crash;
alter table airplane_crash add reason varchar(20) after  summary;
alter table airplane_crash drop column reason ;
alter table airplane_crash modify fatalities decimal(20,10);
alter table airplane_crash rename column type TO crash_type;
select * from airplane_crash;
select operator, max(fatalities) as maximum_fatalities ,summary from airplane_crash;
select operator, min(fatalities) as minimum_fatalities ,summary from airplane_crash;
select operator, avg(fatalities) as avg_fatalities ,summary from airplane_crash;
select location,length(Operator) as operator_length  from airplane_crash;
select count(distinct location) from airplane_crash;
select location, count(location)  from airplane_crash group by location;

select distinct type from airplane_crash;
select count(type),location from airplane_crash;
select location,type,fatalities from airplane_crash where fatalities like 22  and aboard= 22;
select location,route,type,registration from airplane_crash order by registration desc ;
select concat(location,'      ', date) as loaction_date from airplane_crash where location like '%spain'; 
select fatalities,aboard,location from airplane_crash group by location  ;
select count(fatalities),aboard from airplane_crash group by aboard order by aboard;
select count(location),location,type from airplane_crash where location=(select max(location) from airplane_crash);
select * from airplane_crash;
select s1.date,s1.index from airplane_crash s1 inner join airplane_crash s2 on s1.date = s2.date ;
select * from airplane_crash_1908;
select s1.location,s1.operator,s2.location,s2.operator from airplane_crash s1 cross join airplane_crash_1908 s2 on s1.location = s2.location;
select s1.route,s1.type,s2.route,s2.type from airplane_crash s1 left outer join airplane_crash_1908 s2 on s1.route = s2.route;
select s1.route,s1.type,s2.route,s2.type from airplane_crash s1 right outer join airplane_crash_1908 s2 on s1.route = s2.route;
alter table airplane_crash_1908 rename crash_record_1908;
select * from crash_record_1908;
create view crash_record as select * from airplane_crash;
select * from crash_record;













