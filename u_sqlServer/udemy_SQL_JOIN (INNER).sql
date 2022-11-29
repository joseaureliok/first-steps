--junçao entre duas tabelas
-- PK identifica unicamente uma tabela; FK é uma PK em outra tabela, mas que está fazendo referência na tabela atual
-- a cláusula 'ON' representa a condição de junção
--exemplo: SELECT C.ClienteID, C.Nome, E.Rua, E.Cidade FROM Cliente C INNER JOIN Endereco E ON E.EnderecoID = C.EnderecoID;

--encontrar BusinessEntityID, FirstName, LastName, EmailAddress
SELECT TOP 10 *
FROM person.Person;

SELECT TOP 10 *
FROM Person.EmailAddress;

SELECT p.BusinessEntityID, p.Firstname, p.LastName, pe.EmailAddress
FROM person.person as P
INNER JOIN Person.EmailAddress PE ON p.BusinessEntityID = pe.BusinessEntityID
ORDER BY FirstName;

--Nomes de produtos e subcategorias: ListPrice, Nome do Produto e Nome da Subcategoria
SELECT TOP 10 *
FROM Production.Product
SELECT TOP 10 *
FROM Production.ProductSubcategory
SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product pr
INNER JOIN Production.ProductSubcategory pc ON pc.ProductSubcategoryID = pr.ProductSubcategoryID;
--Juntando duas colunas por uma coluna comum
SELECT TOP 10 * FROM Person.BusinessEntityAddress
SELECT TOP 10 * FROM Person.Address
SELECT TOP 10 * FROM Person.BusinessEntityAddress ba INNER JOIN Person.Address pa ON  pa.AddressID = ba.AddressID;
