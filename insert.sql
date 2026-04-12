--Insert Values 

--Table Assuntos
INSERT INTO Assunto (NomeAssunto)
VALUES 
('Ficção Cientifica'),('Botânica'),('Eletronica'),('Matemática'),
('Aventura'),('Romance'),('Finanças'),('Gastronomia'),
('Terror'),('Administração'),('Informática'),('Suspense');

--Verifying inserted data in the table 
SELECT * FROM Assunto;

-- Table Editoras
INSERT INTO Editora (NomeEditora)
VALUES
('Prentice Hall'),('O Reilly');

--Verifying inserted data in the table 
SELECT * FROM Editora;

-- Table Editoras
INSERT INTO Editora (NomeEditora)
VALUES
('Aleph'),('Microsoft Press'),('Wiley'),('HarperCollins'),
('Erica'),('Novatec'),('McGraw-Hill'),('Apress'),
('Francisco Alves') ,('Sybex'),('Globo'),('Companhia de Letras'),
('Morro Branco'),('Penguin Books'),('Martin Claret'),('Record'),
('Springer'),('Melhoramentos'),('Oxford'),('Taschen'),
('Ediouro'),('Bookman');


--Verifying inserted data in the table 
SELECT * FROM Editora;

-- Table Autores

INSERT INTO Autor (NomeAutor, SobrenomeAutor)
VALUES
('Umberto','Eco');

--Verifying inserted data in the table 
SELECT * FROM Autor;

-- Inserir multiplas linhas distintas (varios registros):
INSERT INTO Autor (NomeAutor, SobrenomeAutor)
VALUES
('Daniel', 'Barret'), ('Gerald', 'Carter'), ('Mark', 'Sobell'),
('William' , 'Stanek'), ('Christine', 'Bresnahan'), ('William', 'Gibson'),
('James','Joyce'), ('John', 'Emsley'), ('José', 'Saramago'),
('Richard','Silverman'), ('Robert', 'Byrnes'), ('Jay', 'Ts'),
('Robert','Eckstein'), ('Paul', 'Horowitz'), ('Winfield', 'Hill'),
('Joel', 'Murach'), ('Paul', 'Scherz'), ('Simon', 'Monk'), ('George', 'Orwell'),
('Ítalo', 'Calvino'), ('Machado', 'de Assis'), ('Oliver','Sacks'), ('Ray', 'Bradbury'), ('Walter', 'Isaacson'),
('Beniamin','Graham'), ('Júlio', 'Verne'), ('Marcelo', 'Gleiser'),
('Harri', 'Lorenzi'), ('Humphrey', 'Carpenter'), ('Isaac','Asimov'),
('Aldous', 'Huxley'), ('Arthur', 'Conan Doyle'), ('Blaise', 'Pascal'),
('Jostein', 'Gaarder'), ('Stéphen', 'Hawking'), ('Stephen', 'Jay Gould'),
('Neil','De Grasse Tyson'), ('Charles', 'Darwin'), ('Alan', 'Turing');

-- Verifição 
SELECT * FROM Autor;

-- Tabela de livros

INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PreçoLivro,
NumeroPaginas, IdAssunto, IdEditora)
VALUES ('A Arte da Eletrônica', '9788582604342', '20170308', 300.74,1160,3,24)

SELECT * FROM Livro;

INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PreçoLivro, NumeroPaginas, IdAssunto, IdEditora)
VALUES
('Vinte Mil Léguas Submarinas','9788582850022','2014-09-16', 24.50,448, 1, 16),
('O Investidor Inteligente', '9788595080805' , '2016-01-25', 79.90,
 450, 7, 6);

 SELECT * FROM Livro;

 --Inserir em lote (bulk) a partir do arquivo CSV

 INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PreçoLivro, NumeroPaginas, IdEditora, IdAssunto)
 SELECT 
	NomeLivro, ISBN13, DataPub, PreçoLivro, NumeroPaginas,
	IdEditora, IdAssunto
FROM OPENROWSET (
	BULK 'C:\SQL\Livros.CSV',
	FORMATFILE = 'C:\SQL\Formato.xml',
	CODEPAGE = '65001', --UTF-8
	FIRSTROW = 2
) AS LivrosCSV;

--Inserir grande volumes de dados.
INSERT INTO Livro (NomeLivro, ISBN13, DataPub, PreçoLivro, NumeroPaginas,  IdEditora, IdAssunto)
VALUES
	('2001 Um Odisséia no Espaço', '9788576571551', '20200930', 55.86, 336, 3, 1),
('Fahrenheit 451','9788525052247', '20120601', 43.56, 216, 3,1),
('Adminável mundo novo', '9788525056009', '20140101', 50.32, 312, 3, 1),
('1984', '9788535914849', '20090721', 29.67,416, 14, 1),
('A volta ao mundo em 80 dias', '9788537816134', '18730101', 59.41, 256, 11, 5),
('O Home da Rosa', '9788501115829', '20191216', 51.99, 592, 18, 5),
('memórias Póstumas de Brás Cubas', '9788525433131', '18810101', 34.90, 240, 14, 6),
('Evangelho Segundo Jesus Cristo', '9788535905595', '19910101', 49.90, 512, 14, 6),
('Cidades Invisíveis', '9788535907445','19720101',42.80, 176,14,6),
('Windows Server 2016: Installing & Configuring', '9781535074094', '20160712', 432.00, 436, 4, 11),
('Ensaio Sobre a Cegueira', '9788571645118', '19950101', 39.90, 312, 14, 6),
('Ulisses', '9780141184432', '19220202', 78.90,450,16,6),
('Practical Electronics for Inventors', '9781259587542', '20160711', 212.58, 1056, 9, 3),
('Eu Robô', '9788576571667', '19501202', 35.00, 300, 3,1),
('Dom Casmurro', '9788525404186', '19000101', 19.90, 256, 14, 6);

 SELECT * FROM Livro;

 -- Tabela LivroAutor

 INSERT INTO LivroAutor (IdLivro, IdAutor)
 VALUES
 (100,15),
 (100,16),
 (101,27),
 (102,26),
 (103,41),
 (104,24),
 (105,32),
 (106,20),
 (107,27),
 (108,1),
 (109,22),
 (110,10),
 (111,21),
 (112,5),
 (113,10),
 (114,8),
 (115,18),
 (115,19),
 (116,31),
 (117,22);

 --Verificação
 SELECT * FROM LivroAutor

 -- Verificação com INNER JOIN (3 tabelas conectadas)
 SELECT NomeLivro, NomeAutor, SobrenomeAutor
 FROM Livro
 INNER JOIN LivroAutor
	ON Livro.IdLivro = LivroAutor.IdLivro
INNER JOIN Autor
	ON Autor.IdAutor = LivroAutor.IdAutor
ORDER BY NomeLivro;

