CREATE TABLE Departamento(
DepartamentoID INT NOT NULL IDENTITY(1,1),
Nome VARCHAR(50) NOT NULL,
DataInsert DATETIME NULL DEFAULT GETDATE(),
CONSTRAINT PK_Departamento PRIMARY KEY (DepartamentoID)
)
GO
 
 

 SET IDENTITY_INSERT Departamento ON
 INSERT INTO Departamento (DepartamentoID, Nome)
	SELECT
	DeptoID,
	Nome
	FROM [RAWDATA-Departamentos]
	ORDER BY DeptoID
SET IDENTITY_INSERT Departamento OFF




	SELECT * FROM Departamento

	
