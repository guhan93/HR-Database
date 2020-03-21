DECLARE
	a varchar(20);

FUNCTION totalSalary
RETURN NUMBER IS
	A varchar(100):=0;
    cursor total is select sum(salary) as totalSal,dept_id
	FROM employee1 group by dept_id;
	myvar total%rowtype;
	
BEGIN
open total;

loop
fetch total into myvar;
exit when total%NOTFOUND;
dbms_output.put_line(myvar.dept_id||' '||myvar.totalSal);
A:=A+myvar.totalSal;

end loop;
RETURN A;
CLOSE total;

END;

BEGIN
	dbms_output.put_line('The total salary of employees is');
	a:=totalSalary;
	dbms_output.put_line('total Salary:'||a);
END;
/


