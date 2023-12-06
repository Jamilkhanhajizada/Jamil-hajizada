--Table 1
CREATE TABLE teacher
(
Full_name VARCHAR2(20)
);
--table 2
CREATE TABLE subject
(
subject_name VARCHAR2(20)
);

INSERT INTO teacher VALUES('jamil');
INSERT INTO subject VALUES('Math');

 CREATE VIEW vw_changable AS
 SELECT Full_name , subject_name FROM teacher ,subject;
 INSERT into vw_changable VALUES('ahmad','oracle');
 --instead of trigger
 CREATE or REPLACE trigger tr_io_insert
 INSTEAD OF insert on vw_changable
 FOR EACH ROW
BEGIN
   INSERT INTO teacher(Full_name) VALUES (:new.Full_name);
    INSERT into subject(subject_name) VALUES (:new.subject_name);
END;
/

SELECT * FROM teacher;
SELECT * FROM subject;