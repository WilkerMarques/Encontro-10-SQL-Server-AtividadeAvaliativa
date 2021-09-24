CREATE PROCEDURE PR_Chave
@Chave BIGINT
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
WHERE Chave = @Chave



EXEC PR_Chave 20100150001





SELECT * FROM Funcionario

DROP PROCEDURE PR_Chave