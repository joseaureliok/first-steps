--Instruções:
--having é muito usado em conjunto com GROUP BY para filtrar resultados de um agrupamento, em outras palavras, é o 'WHERE' de relacionamentos/dados agrupados
--a diferença entre HAVING e WHERE é que este deve ser aplicado antes do agrupamento de dados e aquele depois
SELECT firstname, COUNT(FirstName) AS "quantidade"
FROM person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) >10;
--para saber quais produtos tem total de vendas entre 162k e 500k
SELECT TOP 10 *
FROM Sales.SalesOrderDetail
SELECT productiD, SUM(linetotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(linetotal) BETWEEN 162000 AND 500000
ORDER BY TOTAL;

--DESAFIOS
--(1) encontrar as provincias com maior numero de cadastros, localizando, para tanto quais tem mais de 1000 registros
SELECT StateProvinceID, COUNT(StateProvinceID) AS "PRINCIPAL"
FROM person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000
ORDER BY PRINCIPAL DESC;
--(2) encontrar produtos que não estão trazendo, em média, no mínimo 1M em total de vendas
SELECT ProductID, AVG(linetotal) AS "PARAMETRO"
FROM sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG (linetotal) < 1000000
ORDER BY PARAMETRO DESC;

