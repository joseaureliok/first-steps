--SELF JOIN = somente poderá ser usado se utilizar o Alias(AS)
--sintaxe = SELECT A.nome_coluna, B.nome_coluna FROM tabela A, tabela B WHERE condição


SELECT A.AddressID, A.City, B.AddressID, B.City
FROM Person.Address A, Person.Address B
WHERE A.City = B.City;

SELECT A.BusinessEntityID, A.HireDate, B.BusinessEntityID, B.HireDate
FROM HumanResources.Employee A, HumanResources.Employee B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate);