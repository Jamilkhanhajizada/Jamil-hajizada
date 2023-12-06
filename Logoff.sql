CREATE OR REPLACE TRIGGER tell_login_info
BEFORE LOGOFF on SCHEMA

BEGIN
    INSERT INTO login VALUES(
    ora_sysevent,
    NULL,
    NULL,
     sysdate,
    to_char (sysdate,'hh24:mi:ss')
    );
    COMMIT;
END;
/