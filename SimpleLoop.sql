SET SERVEROUTPUT ON;
DECLARE
    v_counter NUMBER := 0;
    v_result NUMBER;
BEGIN
    LOOP
    v_counter := v_counter +1;
    v_result := 19* v_counter;
    DBMS_OUTPUT.PUT_LINE('19'||' X '||v_counter||' = '|| v_result);
    --EXIT CONDITION
    --IF v_counter >= 10 THEN
      --  EXIT;
    --END IF;
    EXIT WHEN v_counter >= 10;
    END LOOP;
END;