CREATE TABLE superheroes (
    sh_name VARCHAR2 (20)
);

--EXAMPLE 01
SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER bi_superheroes
BEFORE INSERT ON superheroes
FOR EACH ROW
ENABLE
DECLARE
    v_user VARCHAR2 (20):= 'Carrot';
BEGIN
    --SELECT user INTO v_user FROM dual;
    DBMS_OUTPUT.PUT_LINE('You just inserted A Line Mr. ' ||v_user);
END;
/





SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER bu_superheroes
BEFORE UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE
    v_user VARCHAR2 (20):= 'Carrot';
BEGIN
    --SELECT user INTO v_user FROM dual;
    DBMS_OUTPUT.PUT_LINE('You just updated A Line Mr. ' ||v_user);
END;
/

UPDATE superheroes SET sh_name = 'Superman' WHERE sh_name = 'Ironman';