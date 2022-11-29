--MANIPULA��O DE STRINGS
--pesquisar por strings operations SQL

--fun��o de concatena��o
SELECT CONCAT (FirstName, ' ', LastName)
FROM Person.Person

--fun��o mai�sculo e min�sculo
SELECT UPPER (FirstName), LOWER (LastName)
FROM Person.Person

--fun��o contagem
SELECT FirstName, LEN (FirstName) AS Caracteres_Nome, LastName, LEN(LastName) AS Caracteres_Sobrenome
FROM Person.Person

--fun��o substring (par�metro da coluna, �ndice inicial, numero de exibi��o)
SELECT FirstName, SUBSTRING (FirstName, 1,2)
FROM Person.Person

--fun��o replace 
SELECT productNumber, REPLACE(ProductNumber, 'NULL', '-')
FROM Production.Product

