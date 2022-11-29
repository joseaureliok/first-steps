--OPERADORES MATEMÁTICOS
--aplica as operações matemáticas entre as colunas ou operações de uma tabela

SELECT ROUND(AVG(UnitPrice / LineTotal), 2) AS Media
FROM Sales.SalesOrderDetail
--na query acima foram aplicadas múltiplas operações matemáticas:
--DIVISAO = UnitPrice / LineTotal; 
--AVG = média da divisao; 
--ROUND = arredondamento da média para duas casas decimais