create table employee1(
emp_id varchar(10) primary key,
emp_name varchar(20),
email varchar(50),
ph_no number(10),
dob date,
salary number(6),
dept_id varchar(10),
constraint f48 foreign key(dept_id) references department1(dept_id),
desig_id varchar(10),
constraint f49 foreign key(desig_id) references designation1(desig_id));