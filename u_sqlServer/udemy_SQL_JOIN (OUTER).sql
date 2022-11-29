--PRINCIPAIS TIPOS DE JOIN: 
-- a. INNER JOIN = funciona como uma intersecção
-- b. FULL OUTER JOIN = funciona como uma união
-- b.1. LEFT OUTER JOIN = retorna todos os registros da tabela a esquerda, independente de correspondência, podendo gerar valores nulos 
-- b.2. RIGHT OUTER JOIN = retorna todos os registros da tabela a direita, independente de correspondência, podendo gerar valores nulos

--encontrar pessoas que tem cartão de crédito registrado
SELECT * FROM Person.Person pp INNER JOIN Sales.PersonCreditCard sp ON pp.BusinessEntityID = sp.BusinessEntityID;
SELECT * FROM Person.Person pp LEFT JOIN Sales.PersonCreditCard sp ON pp.BusinessEntityID = sp.BusinessEntityID;
--RESULTADO: na primeira consulta, como se trata de intersecção (apenas pessoas com cartão), houve um resultado menor do que na segunda consulta, por ser união (todas as pessoas independente de ter cartão ou não) 
SELECT 19972 - 19118 AS "PESSOAS SEM CARTÃO"
--OU
SELECT COUNT(*) AS "PESSOAS SEM CARTÃO" FROM Person.Person pp LEFT JOIN Sales.PersonCreditCard sp 
ON pp.BusinessEntityID = sp.BusinessEntityID WHERE sp.BusinessEntityID IS NULL;

