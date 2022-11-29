-- SUBSELECT: trata-se de um SELECT dentro de outro SELECT

-- relat�rio para todos os produtos cadastrados que tem pre�o de venda acima da m�dia
SELECT ProductID, Name, ListPrice, (SELECT AVG(ListPrice) FROM Production.Product) AS "M�DIA" 
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