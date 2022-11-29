--OPERADORES MATEM�TICOS
--aplica as opera��es matem�ticas entre as colunas ou opera��es de uma tabela

SELECT ROUND(AVG(UnitPrice / LineTotal), 2) AS Media
FROM Sales.SalesOrderDetail
--na query acima foram aplicadas m�ltiplas opera��es matem�ticas:
--DIVISAO = UnitPrice / LineTotal; 
--AVG = m�dia da divisao; 
--ROUND = arredondamento da m�dia para duas casas decimais