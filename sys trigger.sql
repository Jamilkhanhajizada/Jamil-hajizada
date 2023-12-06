create table startup_sys(

    event_type VARCHAR2(20),
    event_date DATE,
    event_time VARCHAR2(20)

);

SELECT * FROM startup_sys;
create or REPLACE TRIGGER tr_sstartup_sys
AFTER STARTUP ON DATABASE
BEGIN
    insert into startup_sys values (
    ora_sysevent,
    sysdate,
    to_char(sysdate,'hh24:mm:ss')
    );
    
end;
/
INSERT INTO 