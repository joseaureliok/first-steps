SELECT TOP 10 SUM(linetotal) AS "Soma Vendas"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(linetotal) AS "M�nimo"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(linetotal) AS "M�ximo"
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(linetotal) AS "M�dia"
FROM Sales.SalesOrderDetail