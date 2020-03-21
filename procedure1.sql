CREATE OR REPLACE PROCEDURE add_emp(
e_id in employee1.emp_id%type,
e_name in employee1.emp_name%type,
e_email in employee1.email%type,
e_no in employee1.ph_no%type,
e_dob in employee1.dob%type,
e_salary in employee1.salary%type,
e_dept employee1.dept_id%type,
e_desig in employee1.desig_id%type) is
begin
insert into employee1 values(e_id,e_name,e_email,e_no,e_dob,e_salary,e_dept,e_desig);
dbms_output.put_line('Employee added');
end;


EXECUTE add_emp('E612','kevin','kags@gmail.com',6547891235,'24-MAY-1995',700000,'D401','DS503') ;
);

insert into employee1 values('E613','kevin','kags@gmail.com',6547891235,'24-MAY-1995',700000,'D401','DS503');

UPDATE EMPLOYEE1 SET SALARY=25000 WHERE EMP_ID='E601';