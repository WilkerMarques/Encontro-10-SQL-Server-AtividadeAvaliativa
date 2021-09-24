
SELECT 
Empresa.Chave, 
Pessoais.FuncID, 
Empresa.Nome, 
Empresa.Sobrenome, 
Empresa.DataAdmissao, 
Pessoais.Sexo, 
Pessoais.DataNascimento, 
Pessoais.Email, 
Empresa.CTPS, 
Empresa.CTPSNum, 
Empresa.CTPSSerie, 
Pessoais.PaisID
FROM [RAWDATA-Funcionarios-DadosEmpresa] AS Empresa INNER JOIN
[RAWDATA-Funcionarios-DadosPessoais] AS Pessoais ON Pessoais.Chave = Empresa.Chave
ORDER BY Empresa.Chave



CREATE TABLE Funcionario(
Chave BIGINT NOT NULL, 
FuncionarioID INT NOT NULL, 
Nome VARCHAR(50) NOT NULL, 
Sobrenome VARCHAR(50) NOT NULL, 
DataAdmissao DATETIME NOT NULL, 
Sexo CHAR(1) NOT NULL,
DataNascimento DATETIME NOT NULL,
Email VARCHAR(50) NOT NULL,
CTPS VARCHAR(50) NOT NULL, 
CTPSNum BIGINT NOT NULL, 
CTPSSerie INT NOT NULL,
PaisID INT NOT NULL, 
DataInsert DATETIME NULL DEFAULT GETDATE(),
CONSTRAINT PK_Funcionario PRIMARY KEY (Chave)
)
GO


INSERT INTO Funcionario(Chave, FuncionarioID, Nome, Sobrenome, DataAdmissao, Sexo, DataNascimento, Email, CTPS, CTPSNum, CTPSSerie, PaisID)
SELECT
Empresa.Chave, 
Pessoais.FuncID, 
Empresa.Nome, 
Empresa.Sobrenome, 
Empresa.DataAdmissao, 
Pessoais.Sexo, 
Pessoais.DataNascimento, 
Pessoais.Email, 
Empresa.CTPS, 
Empresa.CTPSNum, 
Empresa.CTPSSerie, 
Pessoais.PaisID
FROM [RAWDATA-Funcionarios-DadosEmpresa] AS Empresa INNER JOIN
[RAWDATA-Funcionarios-DadosPessoais] AS Pessoais ON Pessoais.Chave = Empresa.Chave
ORDER BY Empresa.Chave



SELECT * FROM Funcionario


