DESC VW_TSUTSUMA;
UPDATE vw_tsutsuma SET full_name = 'Carrot McGold' WHERE subject_name = 'Python';

--Instead of Update trigger
CREATE OR REPLACE TRIGGER tr_update
INSTEAD OF UPDATE ON vw_tsutsuma
FOR EACH ROW
BEGIN
    UPDATE trainer SET full_name =:new.full_name
    WHERE full_name = :old.full_name;
    
    UPDATE subject SET subject_name = :new.subject_name
    WHERE subject_name = :old.subject_name;
END;
/

SELECT * FROM trainer;
SELECT * FROM subject;