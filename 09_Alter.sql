USE college;

ALTER TABLE student 
ADD COLUMN age INT NOT NULL DEFAULT 19 ;
SELECT * FROM student;

ALTER TABLE student 
MODIFY column age VARCHAR(2);

ALTER TABLE student 
CHANGE age stu_age INT;

ALTER TABLE student
DROP COLUMN age;
SELECT * FROM student;

ALTER TABLE student
RENAME TO toppers;

TRUNCATE TABLE toppers;

-- ALTER TABLE student
-- CHANGE name Full_Name, VARCHAR(50);

-- DELETE FROM student
-- WHERE marks <80;

-- ALTER TABLE student 
-- DROP COLUMN grades; 



