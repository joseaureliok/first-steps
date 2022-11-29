SELECT TOP 10 SUM(linetotal) AS "Soma Vendas"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(linetotal) AS "Mínimo"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(linetotal) AS "Máximo"
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(linetotal) AS "Média"
FROM Sales.SalesOrderDetail