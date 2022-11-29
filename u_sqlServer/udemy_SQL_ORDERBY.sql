SELECT TOP 10 ProductID
FROM production.Product
ORDER BY ListPrice DESC;

SELECT Name, ProductNumber, ProductID
FROM production.Product
WHERE ProductID BETWEEN 1 AND 4
ORDER BY ProductID ASC;

SELECT TOP 4 Name, ProductNumber, ProductID
FROM production.Product
ORDER BY ProductID ASC;