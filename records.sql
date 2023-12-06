set SERVEROUTPUT ON;
DECLARE
    v_fname VARCHAR2(20);
    v_salary NUMBER;
    BEGIN
    SELECT Fname,Salary
    into v_fname,v_salary
    FROM Empolaye WHERE id=4;
    dbms_output.put_line(v_fname||' '||v_salary);
end;
/

DECLARE
    v_emp Empolaye%rowtype;
    BEGIN
    SELECT * INTO v_emp FROM Empolaye
   WHERE id=4;
   dbms_output.put_line(v_emp.Fname||' '||v_emp.Salary);

   end;