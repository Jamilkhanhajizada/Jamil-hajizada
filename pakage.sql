--making pkg_class pakage
CREATE or REPLACE PACKAGE pkg_class is
FUNCTION prnt_strng RETURN VARCHAR2;
PROCEDURE proc_stu(f_name VARCHAR2, l_name VARCHAR2);
END pkg_class;

--create new table
CREATE TABLE new_student
(
f_name VARCHAR2(20),
l_name VARCHAR2(20)
);

--package body
CREATE OR REPLACE package BODY pkg_class IS
FUNCTION prnt_strng RETURN VARCHAR2 IS
BEGIN
RETURN 'jamil hajizada';
END prnt_strng;

PROCEDURE proc_stu(f_name VARCHAR2, l_name VARCHAR2) IS
BEGIN
INSERT into new_student (f_name,l_name) VALUES (f_name,l_name);
END;
END pkg_class;



--running package function part
set SERVEROUTPUT ON;
BEGIN
dbms_output.put_line(pkg_class.prnt_strng);
end;


--running the procedere part
BEGIN
pkg_class.proc_stu('ahmad','Ali');
END;

