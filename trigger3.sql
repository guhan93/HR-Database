create or replace trigger emp_prompt1
after insert or update or delete on regions1
begin
dbms_output.put_line('Record updated');
end;


INSERT INTO REGIONS1 VALUES ('R106','AFRICA');
