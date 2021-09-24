CREATE PROCEDURE PR_FuncionariosID
 @FuncionarioID INT 
AS
SELECT
Chave,
FuncionarioID,
Nome,
Sobrenome, 
DataAdmissao,
Sexo,
DataNascimento,
Email,
CTPS,
CTPSNum,
CTPSSerie,
PaisID
FROM Funcionario
WHERE FuncionarioID = @FuncionarioID



EXEC PR_FuncionariosID 10010

