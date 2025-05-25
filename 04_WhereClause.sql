CREATE DATABASE apna;
USE apna;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student (rollno, name, marks, grade, city)
VALUES
    (101, "anil", 78, "C", "Pune"),
    (102, "bhumika", 93, "A", "Mumbai"),
    (103, "chetan", 85, "B", "Mumbai"),
    (104, "dhruv", 96, "A", "Delhi"),
    (105, "emanuel", 12, "F", "Delhi"),
    (106, "farah", 82, "B", "Delhi");
    
-- SELECT * FROM student;
-- SELECT name, city FROM student;
-- SELECT DISTINCT city FROM student;
-- SELECT * FROM student WHERE marks >80;
-- SELECT * FROM student WHERE marks > 70 AND city = "mumbai";
-- SELECT * FROM student WHERE marks > 70 OR city = "mumbai";
-- SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
-- SELECT * FROM student WHERE city IN ("mumbai" ,"delhi");
-- SELECT * FROM student WHERE city NOT IN ("mumbai" ,"delhi");
