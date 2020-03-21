create or replace FUNCTION get_complete_address(in_e_id IN VARCHAR) 
   RETURN varchar
   IS emp_details varchar(150);

   BEGIN 

	  SELECT Name-'||employee1.emp_name||', 
        email-'|| employee1.email ||', phno-'||employee1.ph_no||', 
        salary-'||employee1.salary||'
      INTO emp_details
      FROM employee1
      WHERE employee1.emp_id = in_e_id;
 
     END;
	
	
	SELECT get_complete_address(E602) AS "Person Address" FROM DUAL