--DATEPART
--é uma função que faz a manipulação de dados com tempo, conforme parâmetros estabelecidos
--acessar DATEPART SQL SERVER (pelo buscador)

SELECT SalesOrderID, DATEPART(month, OrderDate) AS Mês
FROM Sales.SalesOrderHeader

SELECT AVG (TotalDue) as Media, DATEPART(month, OrderDate) AS Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY Mes