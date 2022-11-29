--UNION = apresenta dois ou mais resultado de SELECT em um só resultado, 
--UNION elimina duplicados (UNION) ou não elimina (UNION ALL),
--usado normalmente em tabelas não normalizadas (com inconsistência)

--
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION 
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE Name LIKE '%Decal%'
ORDER BY Name;

SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE Title = 'Mr.'
UNION 
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName = 'A'
ORDER BY FirstName, Title;