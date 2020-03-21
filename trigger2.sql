CREATE OR REPLACE TRIGGER disp_emp_monsal
before DELETE OR INSERT OR UPDATE ON employee1
FOR EACH ROW 
WHEN (NEW.EMP_ID > 0)
DECLARE 
mon_sal number; 
BEGIN mon_sal:=:OLD.salary/12; 
dbms_output.put_line('Old salary: ' || :OLD.salary); 
dbms_output.put_line('monthly salary: ' || mon_sal); 
END; 
/

