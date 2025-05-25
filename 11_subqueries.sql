USE college;

SELECT name FROM classmates
UNION
SELECT name FROM classmates;

SELECT name FROM classmates
UNION ALL
SELECT name FROM classmates;

-- SUBQUERY in WHERE
SELECT name , marks 
FROM classmates
WHERE marks > (SELECT AVG(marks)FROM classmates) ;
-- 2
SELECT rollno , name
FROM classmates
WHERE rollno IN (SELECT rollno FROM classmates WHERE rollno % 2 =0);

-- USING FROM
SELECT MAX(marks)
FROM (SELECT * FROM classmates WHERE city = "Delhi") as temp;

-- USING SELECT
SELECT (SELECT MAX(marks) FROM classmates) , name
FROM classmates;
