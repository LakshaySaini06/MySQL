USE apna;

CREATE TABLE dept (
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS teacher (
id INT PRIMARY KEY ,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO dept 
VALUES
(101 , "ENG"),
(102 , "HIN");

INSERT INTO teacher
VALUES
(101 , "ABHA" , 101),
(102 , "Sunita " , 102);

UPDATE dept
SET id = 69
WHERE id = 102;

SELECT * FROM dept;
SELECT * FROM teacher;

