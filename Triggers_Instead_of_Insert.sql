CREATE TABLE trainer
    (
        full_name VARCHAR2 (20)
    );
    
CREATE TABLE subject
(
    subject_name VARCHAR2(20)
);

INSERT INTO trainer VALUES ('Graçane Muhate');
INSERT INTO subject VALUES ('Oracle');

CREATE VIEW vw_tsutsuma AS
SELECT full_name, subject_name FROM trainer, subject;
INSERT INTO vw_tsutsuma VALUES('Gracane', 'Python');
--Instead of trigger
CREATE OR REPLACE TRIGGER tr_io_insert
INSTEAD OF INSERT ON vw_tsutsuma
FOR EACH ROW
BEGIN
    INSERT INTO trainer (full_name) VALUES (:new.full_name);
    INSERT INTO subject (subject_name) VALUES (:new.subject_name);
END;
/

SELECT * FROM trainer;
SELECT * FROM subject;