CREATE DATABASE IF NOT EXISTS Livraria;
USE Livraria;

CREATE TABLE Escritor(
	idEscritor INT,
    Nome VARCHAR(30),
    Sobrenome VARCHAR(60)    
);

CREATE TABLE Livro (
	idLivro INT PRIMARY KEY,
    Titulo VARCHAR(70),
    DataPublicacao DATE,
    FK_Escritor_idEscritor INT NOT NULL
);

-- Adicionar colunas
ALTER TABLE Escritor ADD Nacionalidade VARCHAR(10);

-- Adicionar Chave Primária (PK) e Chave Estrangeira (FK)
ALTER TABLE Escritor ADD CONSTRAINT pk_Escritor PRIMARY KEY(idEscritor);

ALTER TABLE Livro ADD CONSTRAINT fk_Escritor 
FOREIGN KEY (FK_Escritor_idEscritor) REFERENCES Escritor (idEscritor) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Alterar uma coluna
ALTER TABLE Livro MODIFY COLUMN DataPublicacao Varchar(10) NOT NULL;

-- Excluir uma coluna
ALTER TABLE Livro DROP COLUMN Titulo;

-- Excluir Chave Primária (PK)
ALTER TABLE Livro DROP PRIMARY KEY;

-- Excluir uma tabela
DROP TABLE Livro;