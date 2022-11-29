SELECT *
FROM HumanResources.Employee
WHERE 
	MaritalStatus LIKE 'M'
	AND SalariedFlag = 1
ORDER BY BirthDate;