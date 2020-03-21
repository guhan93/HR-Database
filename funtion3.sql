CREATE OR REPLACE FUNCTION calculate_tax(empId varchar)
   RETURN varchar
   IS tax varchar(10);

BEGIN 
   tax := 0;
   
      SELECT (sum(employee1.salary)*30)/100 INTO tax FROM employee1 WHERE emp_id = empId;
            
      RETURN tax;
      
END calculate_tax;

declare 
tax1 varchar(10);
begin
tax1:=calculate_tax('E603');
dbms_output.put_line(tax1);
end;

SELECT calculate_tax('E603') FROM DUAL;