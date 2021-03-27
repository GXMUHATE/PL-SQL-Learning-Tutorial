
--Bind Variables
VARIABLE v_bind1 VARCHAR2(20);
EXEC :v_bind1 := 'GracaneMuhate';
SET SERVEROUTPUT ON;
BEGIN
    :v_bind1 := 'Gracane Muhate';
    dbms_output.put_line(:v_bind1);
END;
/
PRINT :v_bind1;