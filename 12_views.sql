USE college;

CREATE VIEW view1 AS
SELECT rollno , name FROM classmates;

SELECT * FROM view1;

SELECT * FROM view1 
WHERE rollno > 103;

DROP VIEW view1;

