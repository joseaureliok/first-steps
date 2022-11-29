--o AS tem como função renomear (nomes compostos exigem aspas duplas; nomes simples não)
SELECT TOP 10 AVG(ListPrice) AS "PREÇO MEDIO DO PRODUTO"
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
--(3)sales. SalesOrderDetail unitPrice "Preço Unitário"
SELECT TOP 10 UnitPrice AS "PREÇO UNITARIO"
FROM sales.SalesOrderDetail
ORDER BY UnitPrice;
