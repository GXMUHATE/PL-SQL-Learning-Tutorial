DESC superheroes;
CREATE TABLE superheroes_backup AS SELECT * FROM superheroes WHERE 1=2;

CREATE OR REPLACE TRIGGER sh_backup
BEFORE INSERT OR DELETE OR UPDATE ON superheroes
FOR EACH ROW
ENABLE
BEGIN
IF inserting THEN
    INSERT INTO superheroes_backup (sh_name) VALUES (:NEW.sh_name);
ELSIF deleting THEN
    DELETE FROM superheroes_backup WHERE sh_name = :old.sh_name;
ELSIF updating THEN
    UPDATE superheroes_backup SET sh_name = :NEW.sh_name WHERE sh_name = :OLD.sh_name;
END IF;
END;
/

SELECT * FROM superheroes;

DELETE FROM superheroes;

SELECT * FROM superheroes_backup;

INSERT INTO superheroes VALUES ('Batman');

INSERT INTO superheroes VALUES ('Superman');

UPDATE superheroes SET sh_name = 'Ironman' WHERE sh_name = 'Batman';

DELETE FROM superheroes WHERE sh_name = 'Superman';



