-- Ordenação de resultados em consultas SQL:

-- Clausula ORDER BY

SELECT * FROM Livro
ORDER BY NomeLivro;

SELECT NomeLivro, IdEditora 
FROM Livro
ORDER BY IdEditora;

SELECT NomeLivro, PreçoLivro 
FROM Livro
ORDER BY  PreçoLivro DESC;

SELECT NomeLivro, PreçoLivro, IdEditora
FROM Livro
ORDER BY  IdEditora ASC, PreçoLivro DESC;

-- Restrição de Resultados: SELECT TOP

/* Sintaxe 
SELECT TOP (numero|PERCENT) colunas
FROM tabela
ORDER BY;
*/
-- EXEMPLOS

SELECT TOP (2) NomeLivro 
FROM Livro
ORDER BY NomeLivro;

SELECT TOP (15) PERCENT NomeLivro
FROM Livro
ORDER BY NomeLivro;

SELECT TOP (3) NomeLivro
FROM Livro
ORDER BY NomeLivro DESC;


SELECT TOP (4) NomeLivro, PreçoLivro
FROM Livro
ORDER BY PreçoLivro DESC;

-- Exemplo com TIES

SELECT TOP (3) WITH TIES NomeLivro, IdAssunto
FROM Livro
ORDER BY IdAssunto DESC;
