CREATE TABLE login
(
    event_type VARCHAR2(20),
    Logon_Date DATE,
    logon_time VARCHAR2(20),
    logof_date DATE,
    logof_time VARCHAR2(20)
);

SELECT * FROM login;
TRUNCATE TABLE login;

CREATE OR REPLACE TRIGGER tell_login_info
AFTER LOGON on SCHEMA

BEGIN
    INSERT INTO login VALUES(
    ora_sysevent,
    sysdate,
    to_char (sysdate,'hh24:mi:ss'),
    NULL,
    NULL
    );
    COMMIT;
END;
/