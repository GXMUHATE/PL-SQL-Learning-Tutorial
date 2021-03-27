SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER := 9;
BEGIN
    IF v_num < 10 THEN
    DBMS_OUTPUT.PUT_LINE('Inside the IF');
    END IF;
    DBMS_OUTPUT.PUT_LINE('Outside the IF');
END;