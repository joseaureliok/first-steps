--DATEPART
--� uma fun��o que faz a manipula��o de dados com tempo, conforme par�metros estabelecidos
--acessar DATEPART SQL SERVER (pelo buscador)

SELECT SalesOrderID, DATEPART(month, OrderDate) AS M�s
FROM Sales.SalesOrderHeader

SELECT AVG (TotalDue) as Media, DATEPART(month, OrderDate) AS Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY Mes