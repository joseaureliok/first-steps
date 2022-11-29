--PRINCIPAIS TIPOS DE JOIN: 
-- a. INNER JOIN = funciona como uma intersec��o
-- b. FULL OUTER JOIN = funciona como uma uni�o
-- b.1. LEFT OUTER JOIN = retorna todos os registros da tabela a esquerda, independente de correspond�ncia, podendo gerar valores nulos 
-- b.2. RIGHT OUTER JOIN = retorna todos os registros da tabela a direita, independente de correspond�ncia, podendo gerar valores nulos

--encontrar pessoas que tem cart�o de cr�dito registrado
SELECT * FROM Person.Person pp INNER JOIN Sales.PersonCreditCard sp ON pp.BusinessEntityID = sp.BusinessEntityID;
SELECT * FROM Person.Person pp LEFT JOIN Sales.PersonCreditCard sp ON pp.BusinessEntityID = sp.BusinessEntityID;
--RESULTADO: na primeira consulta, como se trata de intersec��o (apenas pessoas com cart�o), houve um resultado menor do que na segunda consulta, por ser uni�o (todas as pessoas independente de ter cart�o ou n�o) 
SELECT 19972 - 19118 AS "PESSOAS SEM CART�O"
--OU
SELECT COUNT(*) AS "PESSOAS SEM CART�O" FROM Person.Person pp LEFT JOIN Sales.PersonCreditCard sp 
ON pp.BusinessEntityID = sp.BusinessEntityID WHERE sp.BusinessEntityID IS NULL;

