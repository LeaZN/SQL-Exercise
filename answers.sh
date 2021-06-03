1-




SELECT * FROM students;

SELECT * FROM students
WHERE age>30;


SELECT Name
FROM students
WHERE Gender = 'F' AND Age = 30;




SELECT Points
FROM students
WHERE Name ='Alex';



INSERT INTO students (ID, Name, Age, Gender, Points)
VALUES ('7', 'Lea', '32', 'F', '300');

UPDATE students
SET Points='400'
WHERE Name='Basma';

UPDATE students
SET Points ='150'
WHERE Name='Alex';






2-

CREATE TABLE graduates ( 
ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
Name varchar(255) NOT NULL UNIQUE,
Age int,
Gender varchar(255),
Points int,
Graduation varchar(20)
 );





 INSERT INTO graduates ( ID, Name, Age, Gender, Points) SELECT * FROM students
WHERE name='Layal'; 



UPDATE graduates
SET Graduation = '08/09/2018'
WHERE Name = 'Layal';


DELETE FROM students WHERE Name='Layal';



3-


with joined as ( SELECT e.Name, e.Company, c.Date
FROM employees e
INNER JOIN companies c ON c.Name=e.Company
)
SELECT * FROM joined WHERE Date <= 2000



with joined as ( SELECT e.Name, e.Company, c.Date
FROM employees e
INNER JOIN companies c ON c.Name=e.Company
)
SELECT  e.Company FROM employees e where e.Role='Graphic Designer'