-- SUBSELECT: trata-se de um SELECT dentro de outro SELECT

-- relatório para todos os produtos cadastrados que tem preço de venda acima da média
SELECT ProductID, Name, ListPrice, (SELECT AVG(ListPrice) FROM Production.Product) AS "MÉDIA" 
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)
ORDER BY Name;
--selecionando um cargo com SUBSELECT
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer');
--OU selecionando um cargo com JOIN
SELECT p.FirstName
FROM Person.Person p 
INNER JOIN HumanResources.Employee e
ON p.BusinessEntityID = e.BusinessEntityID
AND JobTitle = 'Design Engineer';