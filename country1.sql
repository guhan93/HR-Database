create table countries1(
c_id varchar(10) primary key ,
c_name varchar(50),
r_id varchar(10),
constraint f45 foreign key(r_id) references regions1(r_id));