--soma de vendas por oferta
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;
--contagem de produtos vendidos por ID
SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;
--quantidade de nomes de pessoas cadastrados
SELECT FirstName, COUNT (FirstName) as "CONTAGEM"
FROM person.Person
GROUP BY FirstName;
--média de preço produtos 'silver'
SELECT Color, AVG(ListPrice) AS "MEDIA PREÇO"
FROM Production.Product
WHERE Color LIKE 'Silver'
GROUP BY Color;
--DESAFIOS
-- (1) encontrar o middle name e agrupar
SELECT MiddleName, 
COUNT (MiddleName) as "Nome do Meio"
FROM person.Person
GROUP BY MiddleName
ORDER BY [Nome do Meio] DESC;
--(2) quantidade média de cada produto vendido
SELECT ProductID, AVG(OrderQty) AS "QTD" 
FROM sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [QTD] DESC;
--(3) 10 vedas com maiores valores de venda do maior para menor
SELECT TOP 10 ProductID, MAX(LineTotal) AS "T10" 
FROM sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [T10] DESC;
--RESPOSTA CORRETA (3)
SELECT TOP 10 ProductID, SUM(LineTotal) AS "T10" 
FROM sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [T10] DESC;
-- (4) quantos produtos e qual quantidade media de produtos cadastrados por ID
SELECT ProductID, SUM(StockedQty) AS "QTD", AVG(StockedQty) AS "MED" 
FROM Production.WorkOrder
GROUP BY ProductID
ORDER BY ProductID;
--RESPOSTA CORRETA (4)
SELECT ProductID, COUNT(ProductID) AS "QTD", AVG(OrderQty) AS "MED" 
FROM Production.WorkOrder
GROUP BY ProductID
ORDER BY ProductID;
