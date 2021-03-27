SET SERVEROUTPUT ON;
DECLARE
    --v_counter NUMBER := 0;
   -- v_test BOOLEAN := TRUE;
BEGIN
    FOR v_counter IN REVERSE 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(v_counter);
   END LOOP;
END;