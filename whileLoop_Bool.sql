SET SERVEROUTPUT ON;
DECLARE
    v_counter NUMBER := 0;
    v_test BOOLEAN := TRUE;
BEGIN
    WHILE v_test LOOP
    
    
    v_counter := v_counter +1;
    DBMS_OUTPUT.PUT_LINE(v_counter);
    --EXIT CONDITION
    IF v_counter = 10 THEN
        v_test := FALSE;
    END IF;
    END LOOP;
    DBMS_OUTPUT.put_line('Outside the Loop');
END;