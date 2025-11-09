USE AdventureWorks2022

--SELECT PersonType,SUM(EmailPromotion) EMAIL_COUNT FROM PERSON.Person
--GROUP BY PersonType
--ORDER BY 2


--SELECT PersonType,COUNT(EmailPromotion) EMAIL_SUM FROM PERSON.Person
--GROUP BY PersonType
--ORDER BY 2


--SELECT PersonType,CAST(SUM(EmailPromotion) AS float) /COUNT(EmailPromotion) EMAIL_AVG FROM PERSON.Person
--GROUP BY PersonType
--ORDER BY 2



--SELECT  JobTitle, COUNT(*) FROM HumanResources.Employee
--GROUP BY JobTitle
--HAVING COUNT(*)>5
--ORDER BY 2 DESC


 -- row count 504   --row count 121317
--SELECT * FROM Production.Product PP 
--LEFT join Sales.SalesOrderDetail SS ON
--PP.PRODUCTID=SS.ProductID
--ORDER BY PP.ProductID


--SELECT * FROM Production.Product PP 
--right join Sales.SalesOrderDetail SS ON
--PP.PRODUCTID=SS.ProductID
--ORDER BY PP.ProductID




--SELECT * FROM Sales.SalesOrderDetail SS
--inner join  Production.Product PP ON
--PP.PRODUCTID=SS.ProductID
--ORDER BY PP.ProductID


--SELECT COUNT(*),HE.JobTitle

--FROM (
--SELECT * FROM HumanResources.Employee HE WHERE Gender='F'
--) AS HE GROUP BY HE.JobTitle


--SELECT COUNT(*),HE.JobTitle
--FROM (
--SELECT * FROM HumanResources.Employee HE WHERE Gender='M'
--) AS HE GROUP BY HE.JobTitle

--SELECT JobTitle,COUNT(*) FROM HumanResources.Employee 
--WHERE BusinessEntityID IN
--( SELECT DISTINCT BusinessEntityID FROM HumanResources.EmployeeDepartmentHistory 
--WHERE OrganizationLevel<=3)
--GROUP BY JobTitle



--SELECT MIN(ModifiedDate) FROM SALES.CUSTOMER
--where TerritoryID=5

-- SATIS TEMSILCILERININ ADI SATISI


--SELECT FIRSTNAME,LASTNAME,

--CASE 
--	WHEN SALESlASTYEAR= 0 THEN 0
	
--	ELSE (SALESYTD/SALESlASTYEAR) 

--END  AS SALESGROW,

--BONUS FROM SALES.SALESPERSON  AS SS
--LEFT JOIN PERSON.PERSON AS PP ON SS.BusinessEntityID= PP.BusinessEntityID

--ORDER BY 3 DESC


SELECT FIRSTNAME,LASTNAME,ModifiedDate FROM PERSON.PERSON
WHERE BusinessEntityID IN 

(SELECT BusinessEntityID FROM PERSON.PERSONPHONE
WHERE ModifiedDate BETWEEN '2008-01-01' AND '2008-12-31' )