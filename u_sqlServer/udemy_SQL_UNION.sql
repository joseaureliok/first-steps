--UNION = apresenta dois ou mais resultado de SELECT em um s� resultado, 
--UNION elimina duplicados (UNION) ou n�o elimina (UNION ALL),
--usado normalmente em tabelas n�o normalizadas (com inconsist�ncia)

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