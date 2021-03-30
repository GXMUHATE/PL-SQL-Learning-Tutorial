SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(30);
    --Declare the cursor
    CURSOR cur_tsutsuma IS
    SELECT
        first_name
    FROM
        employees
    WHERE
        employee_id < 105;

BEGIN
    OPEN cur_tsutsuma;
    LOOP
        FETCH cur_tsutsuma INTO v_name;
        dbms_output.put_line(v_name);
        EXIT WHEN cur_tsutsuma%notfound;
    END LOOP;

    CLOSE cur_tsutsuma;
END;