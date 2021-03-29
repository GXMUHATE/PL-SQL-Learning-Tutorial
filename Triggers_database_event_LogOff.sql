DESC hr_event_audit;
SELECT * FROM hr_event_audit;
TRUNCATE TABLE hr_event_audit;


CREATE OR REPLACE TRIGGER hr_logOff_audit
BEFORE LOGOFF ON SCHEMA
BEGIN
    INSERT INTO hr_event_audit VALUES(
    ora_sysevent,
    NULL,
    NULL,
    SYSDATE,
    TO_CHAR(sysdate, 'hh24:mi:ss')
    );
    COMMIT;
END;
/

SELECT * FROM hr_event_audit;

DISC;

--disconnect and then reconnect to your databse to see the trigger working and save the info to the audit database