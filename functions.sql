create or replace function getAge(dob)
return number is
e_dob number(3,1);
 
begin
 for each loop
   e_dob:=floor(MONTHS_BETWEEN(SYSDATE,dob))/12;
 return e_dob;
 end loop
 end;
 /
 
 
 
CREATE OR REPLACE PROCEDURE getage1(in_emp_id varchar) IS 
ndob date;
nage number(10);
BEGIN
select dob into ndob from employee1; 
select (sysdate-(ndob))/365 into nage from dual;
dbms_output.put_line('the ages are :'||nage);
END;
/
SHOW ERRORS;