CREATE DATABASE IF NOT EXISTS xyz;

USE xyz;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50) ,
salary INT);

INSERT INTO employee
(id, name , salary)
VALUES
(1, "Cardi" , 20000),
(2, "Nicki" , 10000),
(3, "Biubiu" , 50000);

SELECT * FROM employee;



