CREATE DATABASE IF NOT EXISTS school;
USE school;

CREATE TABLE  classmates(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO classmates (rollno, name, marks, grade, city)
VALUES
    (101, "anil", 78, "C", "Pune"),
    (102, "bhumika", 93, "A", "Mumbai"),
    (103, "chetan", 85, "B", "Mumbai"),
    (104, "dhruv", 96, "A", "Delhi"),
    (105, "emanuel", 12, "F", "Delhi"),
    (106, "farah", 82, "B", "Delhi");

SELECT * FROM classmates LIMIT 3;

SELECT * FROM classmates ORDER BY marks ASC;

SELECT MAX(marks) FROM classmates;
SELECT COUNT(marks) FROM classmates;
SELECT MIN(marks) FROM classmates;
SELECT SUM(marks) FROM classmates;
SELECT AVG(marks) FROM classmates;

SELECT city , COUNT(rollno) 
FROM classmates
GROUP BY city;

SELECT city ,AVG(marks)
FROM classmates
GROUP BY city
ORDER BY city ASC;

SELECT city ,COUNT(city)
FROM classmates
GROUP BY city
HAVING MAX(marks)> 90;

SELECT city
FROM classmates
WHERE GRADE = "A"
GROUP BY city
HAVING MAX(marks) >= 90	
ORDER BY city DESC;