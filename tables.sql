
-- Create table Actor

CREATE TABLE Autor (
IdAutor SMALLINT IDENTITY,
NomeAutor VARCHAR(50) NOT NULL,
SobrenomeAutor VARCHAR(60) NOT NULL,
CONSTRAINT pk_id_autor PRIMARY KEY(IdAutor)
);

-- Query the created table

sp_help Autor;

-- Create table Editora

CREATE TABLE Editora (
IdEditora  SMALLINT PRIMARY KEY IDENTITY,
NomeEditora VARCHAR(50) NOT NULL
);

-- Create table Subject 

CREATE TABLE Assunto (
IdAssunto TINYINT PRIMARY KEY IDENTITY,
NomeAssunto VARCHAR(25) NOT NULL
);

-- Create table Books

CREATE TABLE Livro (
IdLivro SMALLINT NOT NULL PRIMARY KEY IDENTITY(100,1),
NomeLivro VARCHAR(70) NOT NULL,
ISBN13 CHAR(13) UNIQUE NOT NULL,
DataPub DATE,
PreçoLivro MONEY NOT NULL,
NumeroPaginas SMALLINT NOT NULL,
IdEditora SMALLINT NOT NULL,
IdAssunto TINYINT NOT NULL,
CONSTRAINT fk_id_editora FOREIGN KEY (IdEditora)
	REFERENCES Editora(IdEditora) ON DELETE CASCADE,
CONSTRAINT fk_id_assunto FOREIGN KEY (IdAssunto)
	REFERENCES Assunto(IdAssunto) ON DELETE CASCADE,
CONSTRAINT verifica_preço CHECK(PreçoLivro >= 0)
);

-- Create table BookAuthor

CREATE TABLE LivroAutor (
IdLivro SMALLINT NOT NULL,
IdAutor SMALLINT NOT NULL,
CONSTRAINT fk_IdLivros FOREIGN KEY (IdLivro) REFERENCES Livro(IdLivro),
CONSTRAINT fk_IdAutores FOREIGN KEY (IdAutor) REFERENCES Autor(IdAutor),
CONSTRAINT pk_livro_autor PRIMARY KEY (IdLivro,IdAutor)
);

-- Check if the tables were created correctly

SELECT name FROM Biblioteca.sys.tables;