CREATE OR REPLACE PROCEDURE print_contact(
    in_emp_id varchar )
IS
  e_contact employee1%ROWTYPE;
BEGIN
 
  SELECT *
  INTO e_contact
  FROM employee1
  WHERE emp_id = in_emp_id;
 
  
  dbms_output.put_line( e_contact.emp_name || ' ' ||
  e_contact.email || '<' || e_contact.salary ||'>' );
 
EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;

execute print_contact('E604');