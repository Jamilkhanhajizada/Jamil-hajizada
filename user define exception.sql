set SERVEROUTPUT ON;
DECLARE
    vsr_dividend NUMBER :=22;
    var_divisor NUMBER := 2;
    var_result NUMBER;
    ex_divzero EXCEPTION;
BEGIN
    IF var_divisor=0 THEN
    RAISE ex_divzero;
    end IF;
     var_result:= vsr_dividend/var_divisor;
     dbms_output.put_line('Result = ' || var_result);
     EXCEPTION WHEN ex_divzero THEN
     dbms_output.put_line('ERROR ERROR!- Your devisor is zero');
END;
/   