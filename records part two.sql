set SERVEROUTPUT ON;
DECLARE
     v_emp Empolaye%rowtype;
    BEGIN
    SELECT Fname , Salary INTO v_emp.Fname ,v_emp.Salary FROM Empolaye
    WHERE id=3;
    
    dbms_output.put_line(v_emp.Fname);
        dbms_output.put_line(v_emp.Salary);

    end;