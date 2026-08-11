-- Exclusão de registros (Linhas): DELETE FROM 

DELETE FROM Assunto
WHERE IdAssunto = 8;

SELECT * FROM Assunto;

INSERT INTO Assunto (NomeAssunto)
VALUES ('Policial');

DELETE FROM Assunto
WHERE NomeAssunto = 'Policial';


-- TRUNCATE TABLE: Limpar uma tabela

-- CRIAR TABELA TESTE
CREATE TABLE Teste (
	IdTeste SMALLINT PRIMARY KEY IDENTITY,
	ValorTeste SMALLINT NOT NULL);
-- Rotina para inserir dados na tabela 
DECLARE @Contador INT = 1

WHILE @Contador <= 100
BEGIN
	INSERT INTO Teste (ValorTeste) VALUES (@Contador *3)
	SET @Contador = @Contador + 1

END


SELECT * FROM Teste;

-- Limpar a tabela

TRUNCATE TABLE Teste;

--Verificar o valor atual de IDENTITY 

SELECT IDENT_CURRENT ('Teste');