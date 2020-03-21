CREATE OR REPLACE PACKAGE emp_package AS
-- Adds an employee
PROCEDURE addEmp(c_empid employee1.emp_id%type,
c_empname employee1.emp_name%type,
c_email employee1.email%type,
c_phone employee1.ph_no%type,
c_dob employee1.dob%type,
c_salary employee1.salary%type,
c_deptid employee1.dept_id%type,
c_desgid employee1.desig_id%type);
-- Removes an app
PROCEDURE delEmp(c_empid employee1.emp_id%TYPE);
--Lists all apps
PROCEDURE listEmp;
END emp_package;
/

CREATE OR REPLACE PACKAGE BODY emp_package AS
PROCEDURE addEmp(c_empid employee1.emp_id%type,
c_empname employee1.emp_name%type,
c_email employee1.email%type,
c_phone employee1.ph_no%type,
c_dob employee1.dob%type,
c_salary employee1.salary%type,
c_deptid employee1.dept_id%type,
c_desgid employee1.desig_id%type)IS
BEGIN
INSERT INTO employee1
VALUES(c_empid,c_empname,c_email,c_phone,c_dob,c_salary ,c_deptid,c_desgid);
END addEmp;
PROCEDURE delEmp(c_empid employee1.emp_id%TYPE) IS
BEGIN
DELETE FROM employee1
WHERE emp_id = c_empid;
END delEmp;
PROCEDURE listEmp IS
CURSOR c_emp is
SELECT emp_name FROM employee1;
TYPE c_emplist is TABLE OF employee1.emp_name%type;
name_list c_emplist := c_emplist();
counter integer :=0;
BEGIN
FOR n IN c_emp LOOP
counter := counter +1;
name_list.extend;
name_list(counter) := n.emp_name;
dbms_output.put_line('Employee(' ||counter|| ')'||name_list(counter));
END LOOP;
END listEmp;
END emp_package;
/

DECLARE
ip employee1.emp_id%type:= &ip;
emp_package.listEmp;
emp_package.delEmp(ip);
emp_package.listEmp;
BEGIN
emp_package.listEmp;
END;
/

--emp_package.addEmp('&emp_id','&emp_name','&email','&ph_no','&dob','&salary','&dept_id','&desig_id');
--emp_package.listEmp;
--emp_package.delEmp(ip);
--emp_package.addEmp('&emp_id','&emp_name','&email','&ph_no','&dob','&salary','&dept_id','&desig_id');

PROCEDURE listAppsC(c_ccategory apps.category%type) IS
CURSOR c1_apps is
select app_id,aname FROM apps
where category:=c_ccategory;
TYPE c_applistc is TABLE OF apps.aname%type;
name_list1 c_applistc:=c_applistc();
counter1 integer:=0;
BEGIN
FOR n1 IN c1_apps LOOP
counter1 := counter1 +1;
name_list1.extend;
name_list1(counter1) := n1.aname;
dbms_output.put_line('App(' ||counter|| ')'||name_list1(counter));
END LOOP;
END listAppsC;