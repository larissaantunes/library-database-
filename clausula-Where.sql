--Filtrar resultados de consultas com WHERE

SELECT Nomelivro, DataPub
FROM Livro
WHERE IdEditora = 3 ;

SELECT IdAutor, NomeAutor
FROM Autor
WHERE SobrenomeAutor = 'Verne';

SELECT NomeLivro, PreçoLivro
FROM Livro
WHERE PreçoLivro > 100
ORDER BY PreçoLivro;

--Subconsulta Select

SELECT NomeLivro, DataPub
FROM Livro
WHERE IdEditora = (
	SELECT IdEditora 
	FROM Editora
	WHERE NomeEditora = 'Aleph'
)
ORDER BY NomeLivro;
