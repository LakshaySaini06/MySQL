USE xyz;

CREATE TABLE hagu
(id INT PRIMARY KEY ,
name VARCHAR(50) NOT NULL,
rollno INT UNIQUE KEY);

-- PRIMARY KEY(rollno , name)


INSERT INTO hagu VALUES(0 , "Sandy", NULL);
INSERT INTO hagu VALUES(1 , "akki", 18);
INSERT INTO hagu VALUES(2 , "chikki" , 19);

SELECT * FROM hagu;

DROP TABLE hagu;

CREATE TABLE IF NOT EXISTS videshi
(id INT PRIMARY KEY,
cust_id INT ,FOREIGN KEY (cust_id) REFERENCES hagu(rollno),
salary  INT DEFAULT 60000,
CONSTRAINT salary_check CHECK (salary>10000 & cust_id > 10)
);

INSERT INTO videshi VALUES
(1, NULL, DEFAULT),
(2, 18 , 190),
(3, 19, DEFAULT);

SELECT * FROM videshi;