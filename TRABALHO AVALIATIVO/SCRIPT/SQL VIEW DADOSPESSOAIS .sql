CREATE VIEW dbo.VW_DadosPessoais
AS
SELECT
	Funcionario.Chave,
	Funcionario.FuncionarioID, 
	Funcionario.Nome AS NomeFuncionario, 
	Funcionario.Sobrenome, 
	Funcionario.DataAdmissao, 
	Funcionario.Sexo, 
	Funcionario.DataNascimento, 
	Funcionario.Email, 
	Funcionario.PaisID,
	Pais.Nome AS NomePais
	FROM [Funcionario] AS Funcionario
	INNER JOIN [Pais] AS Pais ON Funcionario.PaisID = Pais.PaisID
	
	
	SELECT * FROM dbo.VW_DadosPessoais

	SELECT * FROM Pais
	














	SELECT * FROM [RAWDATA-Funcionarios-DadosPessoais]

	SELECT * FROM [RAWDATA-Funcionarios-DadosEmpresa]

	SELECT * FROM Funcionario