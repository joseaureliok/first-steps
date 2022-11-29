--MANIPULAÇÃO DE STRINGS
--pesquisar por strings operations SQL

--função de concatenação
SELECT CONCAT (FirstName, ' ', LastName)
FROM Person.Person

--função maiúsculo e minúsculo
SELECT UPPER (FirstName), LOWER (LastName)
FROM Person.Person

--função contagem
SELECT FirstName, LEN (FirstName) AS Caracteres_Nome, LastName, LEN(LastName) AS Caracteres_Sobrenome
FROM Person.Person

--função substring (parâmetro da coluna, índice inicial, numero de exibição)
SELECT FirstName, SUBSTRING (FirstName, 1,2)
FROM Person.Person

--função replace 
SELECT productNumber, REPLACE(ProductNumber, 'NULL', '-')
FROM Production.Product

