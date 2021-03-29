CREATE TABLE startup_audit
    (
        event_type VARCHAR2 (30),
        event_date DATE,
        event_time VARCHAR2(15)
    );
--must have sys previleges

CREATE OR REPLACE TRIGGER tr_startup_audit
AFTER STARTUP ON DATABASE
BEGIN
    INSERT INTO startup_audit VALUES(
    ora_sysevent,
    SYSDATE,
    TO_CHAR(sysdate, 'hh24:mi:ss')
    );
END;
/