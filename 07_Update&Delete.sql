USE xyz;
SELECT * FROM employee;
SET SQL_SAFE_UPDATES = 0;

UPDATE employee
SET name = "saini"
WHERE salary BETWEEN 15000 AND 25000;

UPDATE employee
SET salary = salary -1;
SELECT * FROM employee;

DELETE FROM employee
WHERE salary < 10000;
SELECT * FROM employee;



