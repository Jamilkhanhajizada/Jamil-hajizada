create table SH_Empolaye (
new_name VARCHAR2 (20),
old_name  VARCHAR2(20), 
user_name VARCHAR2(30),
entry_date VARCHAR2(30),
operation VARCHAR2(20)
);



CREATE OR REPLACE TRIGGER superheroes_audit3
BEFORE INSERT OR DELETE OR UPDATE ON Empolaye
FOR EACH ROW
ENABLE
DECLARE
v_user VARCHAR2(20);
v_date VARCHAR2(20);
BEGIN
SELECT USER, TO_CHAR(sysdate,'DD/MON/YYYY HH24:MI:SS') INTO v_user, v_date FROM dual;
IF INSERTING THEN
    INSERT INTO SH_Empolaye(new_name , old_name , user_name , entry_date , operation )
    VALUES(: NEW.sh_name , NULL , v_user , v_date , 'INSERT');
ELSIF DELETING THEN 
    INSERT INTO SH_Empolaye(new_name , old_name , user_name , entry_date , operation )
    VALUES (NULL , :OLD.sh_name , v_user , v_date , 'DELETE');
ELSIF UPDATING THEN
    INSERT INTO SH_Empolaye(new_name , old_name , user_name , entry_date , operation )
    VALUES (: NEW.sh_name , :OLD.sh_name , v_user , v_date , 'UPDATE');
END IF;
END;
/

INSERT INTO Empolaye VALUES('sharif');

SELECT * FROM SH_Empolaye;


