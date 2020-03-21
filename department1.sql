create table department1(
dept_id varchar(10) primary key,
dept_name varchar(20),
manager_id varchar(10),
l_id varchar(10),
constraint f47 foreign key(l_id) references location1(l_id));