DESC VW_TSUTSUMA;
DELETE FROM vw_tsutsuma WHERE full_name = 'Carrot McGold';

--Instead of Update trigger
CREATE OR REPLACE TRIGGER tr_io_delete
INSTEAD OF DELETE ON vw_tsutsuma
FOR EACH ROW
BEGIN
    DELETE FROM trainer WHERE full_name =:old.full_name;
    DELETE subject WHERE subject_name = :old.subject_name;
END;
/

SELECT * FROM trainer;
SELECT * FROM subject;