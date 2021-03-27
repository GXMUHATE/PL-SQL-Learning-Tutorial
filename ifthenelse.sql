SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER := &enter_a_number;
BEGIN
    IF MOD(v_num,2)= 0 THEN
    DBMS_OUTPUT.PUT_LINE(v_num || ' Is Even');
    ELSE
    DBMS_OUTPUT.PUT_LINE(v_num ||' Is Odd');
    END IF;
    DBMS_OUTPUT.PUT_LINE('If then else construct complete');
END;