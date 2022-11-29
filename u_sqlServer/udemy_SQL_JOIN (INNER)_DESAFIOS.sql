--DESAFIOS
--(1) Encontrar em PhoneNumberTyper e PersonPhone: BusinessEntityID, Name, PhoneNumberTypeID, PhoneNumber
SELECT TOP 10 * FROM Person.PhoneNumberType
SELECT TOP 10 * FROM Person.PersonPhone

SELECT TOP 10 pp.BusinessEntityID, pn.Name, pp.PhoneNumberTypeID, pp.PhoneNumber 
FROM Person.PersonPhone pp
INNER JOIN Person.PhoneNumberType pn 
ON pp.PhoneNumberTypeID = pn.PhoneNumberTypeID;

--(2) Encontrar StateProvince e Address: AdddresID, City, StateProvinceID, Nome do Estado
SELECT TOP 10 * FROM Person.StateProvince 
SELECT TOP 10 * FROM Person.Address;

SELECT TOP 10 a.AddressID, a.City AS "CIDADE", a.StateProvinceID, s.Name AS "NOME DO ESTADO"
FROM Person.Address a
INNER JOIN Person.StateProvince s 
ON a.StateProvinceID = s.StateProvinceID;