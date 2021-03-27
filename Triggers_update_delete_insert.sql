CREATE OR REPLACE TRIGGER tr_superheroes
BEFORE INSERT OR DELETE OR UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE
    v_user VARCHAR2(20) := 'Carrot' ;
BEGIN
    --SELECT user INTO v_user FROM dual;
    IF INSERTING THEN
    DBMS_OUTPUT.PUT_LINE('One Row Inserted By '|| v_user);
    ELSIF DELETING THEN
    DBMS_OUTPUT.PUT_LINE('One Row Deleted By '|| v_user);
    ELSIF UPDATING THEN
    DBMS_OUTPUT.PUT_LINE('One Row Updated By '|| v_user);
    END IF;
END;
/

INSERT INTO superheroes VALUES ('Batman');
UPDATE superheroes SET sh_name = 'Superman' WHERE sh_name = 'Batman';
DELETE FROM superheroes WHERE sh_name = 'Superman';