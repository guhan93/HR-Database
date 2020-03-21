create table location1(
l_id varchar(10) primary key,
streetadd varchar(10),
postcode number(10),
city varchar(20),
state varchar(10),
c_id varchar(10) ,
constraint f46 foreign key(c_id) references countries1(c_id));