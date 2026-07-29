-- Consultas simples com SELECT
SELECT NomeLivro FROM Livro;

SELECT SobrenomeAutor FROM AUTOR;

SELECT * FROM AUTOR;

SELECT NomeLivro, PreçoLivro, ISBN13
FROM Livro;

SELECT DISTINCT IdEditora 
From Livro;

-- SELECT INTO: criar uma tabela com dados de outra

/*
SELECT colunas(s)
INTO  nova_tabela
FROM tabela_atual;
*/

SELECT NomeLivro, ISBN13
INTO LivroISBN
FROM Livro;

SELECT * FROM LivroISBN;

DROP TABLE LivroISBN;

-- Exercicios pratica

--01 Retornar os nomes de livros, preços e datas de publicação

SELECT NomeLivro, PreçoLivro, DataPub
FROM Livro;

-- 02 Mostrar Apenas os sobrenomes dos autores

SELECT SobrenomeAutor 
FROM Autor;

-- 03 Retornar a lista de assuntos 

SELECT NomeAssunto 
FROM Assunto;

-- 04 Mostrar a lista de editoras com os IDs de cada uma, com a coluna de nomes de editoras a esquerda da coluna IDs.

SELECT NomeEditora, IdEditora 
FROM Editora;

-- 05 Mostrar os IDs de assuntos dos quais existem livros cadastrados na tabela livros, sem reptição.

SELECT DISTINCT IdAssunto 
FROM Livro;

-- 06 Criar uma nova tabela chamada "LivroFiccao" que contenha todos os dados dos livros relacionados ao assunto de id 1

SELECT * 
INTO LivroFiccao
FROM Livro
WHERE IdAssunto = 1;

SELECT * FROM LivroFiccao;

DROP TABLE LivroFiccao;
