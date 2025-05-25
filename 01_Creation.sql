CREATE DATABASE temp1;
DROP DATABASE temp1;

CREATE DATABASE IF NOT EXISTS love;
DROP DATABASE IF EXISTS love;

SHOW DATABASES;

CREATE DATABASE College;

USE College;
SHOW TABLES;

CREATE TABLE student (
id INT PRIMARY KEY, 
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO student VALUES(01 , "Lakshaya" , 19);
INSERT INTO student VALUES(02 , "Parul" , 19);

SELECT * FROM student;

INSERT INTO student
(id , name, age)
VALUES
(10, "Dheeraj", 18),
(11, "Aadi", 19),
(12, "Dhruv", 20)
;
-- for inserting single row we can also use like this :-
INSERT INTO student VALUES(13,"Deepak" , 21);


