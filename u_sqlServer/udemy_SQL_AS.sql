--o AS tem como fun��o renomear (nomes compostos exigem aspas duplas; nomes simples n�o)
SELECT TOP 10 AVG(ListPrice) AS "PRE�O MEDIO DO PRODUTO"
FROM Production.Product

--DESAFIOS
--(1) Encontrar o FirstName e LastName person.person
SELECT TOP 10 FirstName AS "NOME", LastName AS "SOBRENOME"
FROM person.Person
ORDER BY NOME;
--(2) ProductNumber da tabela production.product "Numero do Produto"
SELECT TOP 10 ProductNumber AS "NUMERO DO PRODUTO"
FROM Production.Product
ORDER BY ProductNumber;
--(3)sales. SalesOrderDetail unitPrice "Pre�o Unit�rio"
SELECT TOP 10 UnitPrice AS "PRE�O UNITARIO"
FROM sales.SalesOrderDetail
ORDER BY UnitPrice;
