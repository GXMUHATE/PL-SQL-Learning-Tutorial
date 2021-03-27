CREATE OR REPLACE trigger superheroes_audit
BEFORE INSERT OR DELETE OR UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE
    v_user VARCHAR2 (30);
    v_date VARCHAR2 (30);
    userdefined_l VARCHAR2 (30) := 'Carrot';
BEGIN
SELECT user, TO_CHAR(sysdate, 'DD/MON/YYY HH24:MI:SS') INTO v_user, v_date FROM SYS.dual;
IF INSERTING THEN
    INSERT INTO sh_audit(new_name, old_name, user_name, entry_date, operation)
    VALUES (:NEW.sh_name, NULL, v_user, v_date, 'Insert');
ELSIF DELETING THEN
    INSERT INTO sh_audit (new_name, old_name, user_name, entry_date, operation)
    VALUES (NULL, :OLD.sh_name, v_user, v_date, 'Delete');
ELSIF UPDATING THEN
    INSERT INTO sh_audit (new_name, old_name, user_name, entry_date, operation)
    VALUES(:NEW.sh_name, :OLD.sh_name, v_user, v_date, 'Update');
END IF;
END;
/


SELECT * FROM sh_audit;
SELECT * FROM superheroes;
INSERT INTO superheroes VALUES ('Pantera');
UPDATE superheroes SET sh_name = 'Ironman' WHERE sh_name = 'Superman';
DELETE FROM superheroes WHERE sh_name = 'Ironman';




