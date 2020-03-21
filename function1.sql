CREATE OR REPLACE Function FindEmpolyee( name_in IN varchar )
   RETURN number
IS
   e_id varchar;

   cursor e1 is
   SELECT emp_id
     FROM employee1
     WHERE emp_name = name_in;

BEGIN

   open e1;
   fetch e1 into e_id;
   close e1;

RETURN e_id;

EXCEPTION
WHEN OTHERS THEN
   raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
END;


SELECT emp_name, FindEmpolyee(emp_name) AS course_id
FROM employee1
WHERE dept_id = 'D403';