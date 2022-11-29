SELECT COUNT (*) 
FROM Production.Product
WHERE ListPrice > 1500;

SELECT COUNT (ListPrice) 
FROM Production.Product
WHERE ListPrice > 1500;


SELECT COUNT (LastName)
FROM person.Person
WHERE LastName LIKE 'P%';


SELECT COUNT(DISTINCT (City))
FROM person.Address;

SELECT DISTINCT(City)
FROM person.Address;

SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000;

SELECT COUNT(*)
FROM Production.Product
WHERE Name LIKE '%road%';