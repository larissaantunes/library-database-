--ALTER DROP AND RENAME TABLE

--ALTER TABLE NomeTabela
--ADD/ALTER/DROP Objeto;

-- Adding a new column to a existing table.
ALTER TABLE  Livro
ADD Edição SMALLINT;

--Alter date type of column

ALTER TABLE Livro
ALTER COLUMN Edição TINYINT;

-- Adding a primary key to an existing table.
ALTER TABLE NomeTabela
ADD PRIMARY KEY (Coluna);

-- Removing a constraint from a column.
ALTER TABLE NomeTabela
DROP CONSTRAINT NomeConstraint;

-- Verifying constraint names.
sp_help Livro;

-- Remove column in the table.
ALTER TABLE Livro
DROP COLUMN Edição;

-- Remove Table.
DROP TABLE NomeTabela;

--Renaming a table.
--sp_rename 'nome atual','novo name';
sp_rename 'Livro', 'tbl_livros';
sp_rename 'tbl_livros', 'Livro';