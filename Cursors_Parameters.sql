SET SERVEROUTPUT ON;
DECLARE
    v_name VARCHAR2(30);
    --Declare the cursor
    CURSOR p_cur_tsutsuma (var_e_id VARCHAR2) IS
    SELECT first_name FROM employees
    WHERE employee_id < var_e_id;
BEGIN
    OPEN p_cur_tsutsuma(104);
    LOOP
        FETCH p_cur_tsutsuma INTO v_name;
        EXIT WHEN p_cur_tsutsuma%notfound;
        dbms_output.put_line(v_name);
    END LOOP;

    CLOSE p_cur_tsutsuma;
END;
/