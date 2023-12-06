set SERVEROUTPUT ON;
ACCEPT var_age NUMBER PROMPT 'How old are you?';
DECLARE
age number := &var_age;
begin 
IF age<18 then
RAISE_application_error(-20008,'You should be 18 or above for the drinks!');
END IF;

dbms_output.put_line('sure , what would you like to have ?');
EXCEPTION when OTHERS THEN 
dbms_output.put_line(sqlerrm);
END;