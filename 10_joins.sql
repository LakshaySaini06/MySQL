USE college;
SELECT * FROM classmates;
SELECT * FROM toppers;

INSERT INTO toppers
VALUES 
(103 , "chetanya"),
(104 , "Bhumika"),
(106 , "Khan");

-- INNER JOIN
SELECT *
FROM classmates
INNER JOIN toppers
ON classmates.rollno = toppers.id;

-- LEFT JOIN
SELECT * 
FROM classmates as c
LEFT JOIN toppers as t
ON c.rollno = t.id;

-- RIGHT JOIN
SELECT * 
FROM classmates as c
RIGHT JOIN toppers as t
ON c.rollno = t.id;

-- FULL JOIN
SELECT * 
FROM classmates as c
LEFT JOIN toppers as t
ON c.rollno = t.id
UNION
SELECT * 
FROM classmates as c
RIGHT JOIN toppers as t
ON c.rollno = t.id;

-- LEFT EXCLUSIVE JOIN
SELECT * 
FROM classmates as c
LEFT JOIN toppers as t
ON c.rollno = t.id
WHERE t.id IS NULL;

-- RIGHT EXCLUSIVE JOIN
SELECT * 
FROM classmates as c
RIGHT JOIN toppers as t
ON c.rollno = t.id
WHERE c.rollno IS NULL;

-- FULL exclusive join
SELECT * 
FROM classmates as c
LEFT JOIN toppers as t
ON c.rollno = t.id
WHERE t.id IS NULL
UNION
SELECT * 
FROM classmates as c
RIGHT JOIN toppers as t
ON c.rollno = t.id
WHERE c.rollno IS NULL;

-- SELF JOIN
SELECT a.name ,b.city
FROM classmates as a
JOIN classmates as b
ON a.rollno = b.rollno;

