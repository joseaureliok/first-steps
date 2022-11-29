SELECT * FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500
ORDER BY ListPrice DESC;

SELECT * FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500
ORDER BY ListPrice DESC;

SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2010/01/01' AND '2010/12/31'
ORDER BY HireDate ASC;

SELECT * FROM person.person
WHERE BusinessEntityID IN (10,20);

SELECT * FROM person.person
WHERE BusinessEntityID NOT IN (5, 10,20);

SELECT * FROM person.person
WHERE FirstName LIKE '%eg%';

SELECT * FROM person.person
WHERE FirstName LIKE '_EG%';
