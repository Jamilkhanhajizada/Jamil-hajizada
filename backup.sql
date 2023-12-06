create table Empolaye_backup as SELECT * FROM Empolaye
where 1=2;

CREATE OR REPLACE TRIGGER empolayee_backup
BEFORE INSERT OR DELETE OR UPDATE ON Empolaye
FOR EACH ROW
ENABLE
BEGIN
   IF inserting THEN 
    insert into Empolaye_backup (sh_name) VALUES (:New.sh_name);
ELSIF deleting THEN
    DELETE from Empolaye_backup where sh_name= :old.sh_name;
 ELSIF updating THEN
    UPDATE Empolaye_backup SET sh_name=:new.sh_name where sh_name =:old.sh_name;
END IF;
END;
/
    
select * from Empolaye;
SELECT * FROM Empolaye_backup;

INSERT INTO Empolaye VALUES ('kabir');
INSERT INTO Empolaye VALUES ('haji');
UPDATE Empolaye SET sh_name = 'kamal' where sh_name = 'kabir';