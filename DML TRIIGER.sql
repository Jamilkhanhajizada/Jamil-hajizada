create TABLE Empolaye(
sh_name VARCHAR2(20)
);

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER BI_Empolaye
BEFORE INSERT ON Empolaye
FOR EACH ROW
ENABLE
DECLARE
v_user VARCHAR2(20);
BEGIN 
SELECT user into v_user FROM dual;
DBMS_OUTPUT.PUT_LINE('YOU JUST INSERTED A LINE MR. '||v_user);
END;
/
select * from Empolaye;

INSERT INTO Empolaye VALUES('JAMIL'); 


