SET SERVEROUTPUT ON;
DECLARE
    v_counter NUMBER := 1;
    v_result NUMBER;
BEGIN
    WHILE v_counter <= 10 LOOP
    v_result := 19* v_counter;
    DBMS_OUTPUT.PUT_LINE('19'||' X '||v_counter||' = '|| v_result);
    v_counter := v_counter +1;
    --EXIT CONDITION
    END LOOP;
    DBMS_OUTPUT.put_line('Outside the Loop');
END;